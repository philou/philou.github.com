---
layout: post
title: How to test a class using an implementation helper ?
published: true
date: 2011-12-14
categories:
- c#
- testing
posterous_url: http://philippe.bourgau.net/how-to-test-a-class-using-an-implementation-h
posterous_slug: how-to-test-a-class-using-an-implementation-h
---
<p>Suppose you have some duplicated code in the Foo &amp; Bar classes. You managed to extracted this code in an helper class. Fine, the helper class can now be tested on its own, but how do I get rid of duplication in FooTest and BarTest ?<p />I though of injecting a mock on the helper class in Foo &amp; Bar when testing, to make sure the helper instance is correctly used, but sometimes, it just feel as if testing an implementation ...<p />Here is what we eventually did at work : create an abstract base class to test the api of the helper class. Implement this abstract class once to test the helper class itself, and then implement it once each time it is reused.<p />Here is an exemple with a ListBuilder helper class that wraps a list and returns a copy of it each time it is asked for.<p />
```

public class ListBuilder&lt;T&gt;
{
&nbsp; private readonly List&lt;T&gt; _internalList = new List&lt;T&gt;();
&nbsp; private List&lt;T&gt; _listSnapshot = new List&lt;T&gt;();
&nbsp; private readonly object _locker = new object();

&nbsp; public List&lt;T&gt; ListSnapshot()
&nbsp; {
&nbsp;&nbsp;&nbsp; lock (_locker)
&nbsp;&nbsp;&nbsp; {
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (_listSnapshot.Count != _internalList.Count)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _listSnapshot = new List&lt;T&gt;(_internalList);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }
&nbsp;&nbsp;&nbsp; }

&nbsp;&nbsp;&nbsp; return _listSnapshot;
&nbsp; }

&nbsp; public void Add(T newItem)
&nbsp; {
&nbsp;&nbsp;&nbsp; lock (_locker)
&nbsp;&nbsp;&nbsp; {
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _internalList.Add(newItem);
&nbsp;&nbsp;&nbsp; }
&nbsp; }
}

```
<p />Here is the tests for ListBuilder class itself<p />
```

public abstract class ListBuilderContractTest&lt;T&gt;
{
&nbsp; protected abstract void AddAnItem();
&nbsp; protected abstract void VerifyAddedItem(T addedItem);
&nbsp; protected abstract List&lt;T&gt; ListCopy();

&nbsp; [Test]
&nbsp; public void TheDefaultListShouldBeEmpty()
&nbsp; {
&nbsp;&nbsp;&nbsp; Assert.AreEqual(0, ListCopy().Count);
&nbsp; }

&nbsp; [Test]
&nbsp; public void AddShouldAddItemInList()
&nbsp; {
&nbsp;&nbsp;&nbsp; AddAnItem();
&nbsp;&nbsp;&nbsp; VerifyItemWasAdded();
&nbsp; }

&nbsp; protected void VerifyItemWasAdded()
&nbsp; {
&nbsp;&nbsp;&nbsp; var copy = ListCopy();
&nbsp;&nbsp;&nbsp; Assert.AreEqual(1, copy.Count);
&nbsp;&nbsp;&nbsp; VerifyAddedItem(copy[0]);
&nbsp; }

&nbsp; [Test]
&nbsp; public void WhenOfSameSizeNewListCopyShoulReturnSameList()
&nbsp; {
&nbsp;&nbsp;&nbsp; AddAnItem();
&nbsp;&nbsp;&nbsp; Assert.AreSame(ListCopy(), ListCopy());
&nbsp; }

&nbsp; [Test]
&nbsp; public void CopiesShouldBeSnapshots()
&nbsp; {
&nbsp;&nbsp;&nbsp; var copy = ListCopy();

&nbsp;&nbsp;&nbsp; AssertExecution.Of(AddAnItem)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .ShouldNotChange(() =&gt; copy.Count);
&nbsp; }
}

[TestFixture]
public class ListBuilderTest : ListBuilderContractTest&lt;string&gt;
{
&nbsp; private const string ADDED_ITEM = "toto";

&nbsp; private ListBuilder&lt;string&gt; _appender;

&nbsp; [SetUp]
&nbsp; public void SetUp()
&nbsp; {
&nbsp;&nbsp;&nbsp; _appender = new ListBuilder&lt;string&gt;();
&nbsp; }

&nbsp; protected override void AddAnItem()
&nbsp; {
&nbsp;&nbsp;&nbsp; _appender.Add(ADDED_ITEM);
&nbsp; }
&nbsp; protected override void VerifyAddedItem(string addedItem)
&nbsp; {
&nbsp;&nbsp;&nbsp; Assert.AreEqual(ADDED_ITEM, addedItem);
&nbsp; }

&nbsp; protected override List&lt;string&gt; ListCopy()
&nbsp; {
&nbsp;&nbsp;&nbsp; return _appender.ListSnapshot();
&nbsp; }
}

```
<p />And here are tests for other class using it. First a simple one :<p />
```

[TestFixture]
public class OrderPresenterAsExecListBuilderTest : ListBuilderContractTest&lt;IExecRowPresenter&gt;
{
&nbsp; private OrderPresenter _presenter;
&nbsp; private Mock&lt;IExec&gt; _exec;

&nbsp; [SetUp]
&nbsp; public void SetUp()
&nbsp; {
&nbsp;&nbsp;&nbsp; _exec = new Mock&lt;IExec&gt;();
&nbsp;&nbsp;&nbsp; _exec.Setup(x =&gt; x.Id).Returns("an exec");
&nbsp;&nbsp;&nbsp; _exec.Setup(x =&gt; x.Price).Returns(123.456);
&nbsp;&nbsp;&nbsp; _exec.Setup(x =&gt; x.Quantity).Returns(36);

&nbsp;&nbsp;&nbsp; _presenter = new OrderPresenter();
&nbsp; }

&nbsp; protected override void AddAnItem()
&nbsp; {
&nbsp;&nbsp;&nbsp; _presenter.AddExec(_exec.Object);
&nbsp; }

&nbsp; protected override void VerifyAddedItem(IExecRowPresenter addedItem)
&nbsp; {
&nbsp;&nbsp;&nbsp; Assert.AreEqual(_exec.Object.Id, addedItem.Id);
&nbsp;&nbsp;&nbsp; Assert.AreEqual(_exec.Object.Price, addedItem.Price);
&nbsp;&nbsp;&nbsp; Assert.AreEqual(_exec.Object.Quantity, addedItem.Quantity);
&nbsp; }

&nbsp; protected override List&lt;IExecRowPresenter&gt; ListSnapshot()
&nbsp; {
&nbsp;&nbsp;&nbsp; return _presenter.GraphicalExecs;
&nbsp; }
}

```
<p />Then a more complex one :<p />
```

[TestFixture]
public class StrategyPresenterAsOrderPresenterListBuilderTest : ListBuilderContractTest&lt;IOrderPresenter&gt;
{
&nbsp; private StrategyPresenter _presenter;
&nbsp; private Mock&lt;IStrategy&gt; _strategy;
&nbsp; private Mock&lt;IOrder&gt; _order;

&nbsp; [SetUp]
&nbsp; public void SetUp()
&nbsp; {
&nbsp;&nbsp;&nbsp; _strategy= new Mock&lt;IStrategy&gt; { DefaultValue = DefaultValue.Mock };

&nbsp;&nbsp;&nbsp; _order = new Mock&lt;IOrder&gt;();
&nbsp;&nbsp;&nbsp; _order.Setup(x =&gt; x.Id).Returns(123);
&nbsp; &nbsp;
&nbsp;&nbsp;&nbsp; _presenter = new StrategyPresenter(_strategy.Object);
&nbsp; }

&nbsp; protected override void AddAnItem()
&nbsp; {
&nbsp;&nbsp;&nbsp; _strategy.Raise(x =&gt; x.SentQuantityChanged += null, new SentQuantityChangedEventArgs {Origin = _order.Object});
&nbsp; }

&nbsp; protected override void VerifyAddedItem(IOrderPresenter addedItem)
&nbsp; {
&nbsp;&nbsp;&nbsp; Assert.AreEqual(_order.Object.Id, addedItem.Id);
&nbsp; }

&nbsp; protected override List&lt;IOrderPresenter&gt; ListSnapshot()
&nbsp; {
&nbsp;&nbsp;&nbsp; return _presenter.GraphicalOrderList;
&nbsp; }


&nbsp; [Test]
&nbsp; public void ExecutedQuantityChangedShouldAddAnItem()
&nbsp; {
&nbsp;&nbsp;&nbsp; _strategy.Raise(x =&gt; x.ExecutedQuantityChanged += null, new ExecutedQuantityChangedEventArgs {Origin = _order.Object});

&nbsp;&nbsp;&nbsp; VerifyItemWasAdded();
&nbsp; }
}
```
<p />The solution really pleases me :<p />&nbsp;&nbsp;&nbsp; No code duplication<br />&nbsp;&nbsp;&nbsp; Robust tests<br />&nbsp;&nbsp;&nbsp; No artificial mocking<p /></p>
