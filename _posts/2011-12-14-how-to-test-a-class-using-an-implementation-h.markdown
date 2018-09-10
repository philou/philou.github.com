---
keywords: "c#, testing, test, class, using, implementation, helper"
layout: single
title: How to test a class using an implementation helper ?
published: true
date: 2011-12-14
categories:
- c#
- testing
posterous_url: http://philippe.bourgau.net/how-to-test-a-class-using-an-implementation-h
posterous_slug: how-to-test-a-class-using-an-implementation-h
comments: true
---
Suppose you have some duplicated code in the Foo & Bar classes. You managed to extracted this code in a helper class. Fine, the helper class can now be tested on its own, but how do I get rid of duplication in FooTest and BarTest ?

I though of injecting a mock on the helper class in Foo & Bar when testing, to make sure the helper instance is correctly used, but sometimes, it just feel as if testing an implementation ...

Here is what we eventually did at work : create an abstract base class to test the api of the helper class. Implement this abstract class once to test the helper class itself, and then implement it once each time it is reused.

Here is an exemple with a ListBuilder helper class that wraps a list and returns a copy of it each time it is asked for.

```c#
public class ListBuilder<T>
{
  private readonly List<T> _internalList = new List<T>();
  private List<T> _listSnapshot = new List<T>();
  private readonly object _locker = new object();

  public List<T> ListSnapshot()
  {
    lock (_locker)
    {
      if (_listSnapshot.Count != _internalList.Count)
      {
        _listSnapshot = new List<T>(_internalList);
      }
    }

    return _listSnapshot;
  }

  public void Add(T newItem)
  {
    lock (_locker)
    {
      _internalList.Add(newItem);
    }
  }
}

```

Here is the tests for ListBuilder class itself

```
public abstract class ListBuilderContractTest<T>
{
  protected abstract void AddAnItem();
  protected abstract void VerifyAddedItem(T addedItem);
  protected abstract List<T> ListCopy();

  [Test]
  public void TheDefaultListShouldBeEmpty()
  {
    Assert.AreEqual(0, ListCopy().Count);
  }

  [Test]
  public void AddShouldAddItemInList()
  {
    AddAnItem();
    VerifyItemWasAdded();
  }

  protected void VerifyItemWasAdded()
  {
    var copy = ListCopy();
    Assert.AreEqual(1, copy.Count);
    VerifyAddedItem(copy[0]);
  }

  [Test]
  public void WhenOfSameSizeNewListCopyShoulReturnSameList()
  {
    AddAnItem();
    Assert.AreSame(ListCopy(), ListCopy());
  }

  [Test]
  public void CopiesShouldBeSnapshots()
  {
    var copy = ListCopy();

    AssertExecution.Of(AddAnItem)
      .ShouldNotChange(() => copy.Count);
  }
}

[TestFixture]
public class ListBuilderTest : ListBuilderContractTest<string>
{
  private const string ADDED_ITEM = "toto";

  private ListBuilder<string> _appender;

  [SetUp]
  public void SetUp()
  {
    _appender = new ListBuilder<string>();
  }

  protected override void AddAnItem()
  {
    _appender.Add(ADDED_ITEM);
  }
  protected override void VerifyAddedItem(string addedItem)
  {
    Assert.AreEqual(ADDED_ITEM, addedItem);
  }

  protected override List<string> ListCopy()
  {
    return _appender.ListSnapshot();
  }
}

```

And here are tests for other class using it. First a simple one :

```c#
[TestFixture]
public class OrderPresenterAsExecListBuilderTest : ListBuilderContractTest<IExecRowPresenter>
{
  private OrderPresenter _presenter;
  private Mock<IExec> _exec;

  [SetUp]
  public void SetUp()
  {
    _exec = new Mock<IExec>();
    _exec.Setup(x => x.Id).Returns("an exec");
    _exec.Setup(x => x.Price).Returns(123.456);
    _exec.Setup(x => x.Quantity).Returns(36);

    _presenter = new OrderPresenter();
  }

  protected override void AddAnItem()
  {
    _presenter.AddExec(_exec.Object);
  }

  protected override void VerifyAddedItem(IExecRowPresenter addedItem)
  {
    Assert.AreEqual(_exec.Object.Id, addedItem.Id);
    Assert.AreEqual(_exec.Object.Price, addedItem.Price);
    Assert.AreEqual(_exec.Object.Quantity, addedItem.Quantity);
  }

  protected override List<IExecRowPresenter> ListSnapshot()
  {
    return _presenter.GraphicalExecs;
  }
}

```

Then a more complex one :

```c#
[TestFixture]
public class StrategyPresenterAsOrderPresenterListBuilderTest : ListBuilderContractTest<IOrderPresenter>
{
  private StrategyPresenter _presenter;
  private Mock<IStrategy> _strategy;
  private Mock<IOrder> _order;

  [SetUp]
  public void SetUp()
  {
    _strategy= new Mock<IStrategy> { DefaultValue = DefaultValue.Mock };

    _order = new Mock<IOrder>();
    _order.Setup(x => x.Id).Returns(123);

    _presenter = new StrategyPresenter(_strategy.Object);
  }

  protected override void AddAnItem()
  {
    _strategy.Raise(x => x.SentQuantityChanged += null, new SentQuantityChangedEventArgs {Origin = _order.Object});
  }

  protected override void VerifyAddedItem(IOrderPresenter addedItem)
  {
    Assert.AreEqual(_order.Object.Id, addedItem.Id);
  }

  protected override List<IOrderPresenter> ListSnapshot()
  {
    return _presenter.GraphicalOrderList;
  }


  [Test]
  public void ExecutedQuantityChangedShouldAddAnItem()
  {
    _strategy.Raise(x => x.ExecutedQuantityChanged += null, new ExecutedQuantityChangedEventArgs {Origin = _order.Object});

    VerifyItemWasAdded();
  }
}
```

The solution really pleases me :

* No code duplication
* Robust tests
* No artificial mocking
