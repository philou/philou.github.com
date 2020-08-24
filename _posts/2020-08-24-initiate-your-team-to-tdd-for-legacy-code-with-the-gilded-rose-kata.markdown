---
layout: single-mailing-list
title: Initiate your team to TDD for Legacy Code with the Gilded Rose kata
date: 2020-08-27
comments: true
categories:
- TODO
description: TODO
header:
  teaser: "/imgs/2020-08-24-initiate-your-team-to-tdd-for-legacy-code-with-the-gilded-rose-kata/TODO-teaser.jpeg"
  og_image: "/imgs/2020-08-24-initiate-your-team-to-tdd-for-legacy-code-with-the-gilded-rose-kata/TODO-og.jpeg"
---
_Legacy code is where TDD is the trickiest. Start practicing the gilded rose kata with your team today! Your teammates will soon feel safe to apply TDD for legacy code._

A few days ago, a former colleague told me his current team was reluctant to give TDD a chance. Here are the typical comments he heard:

> "Adding a test in this old code is a three weeks task!"

> "All the tests we wrote in this code are mock-ridden, unmaintainable, and useless!"

> "How can we go tests first, when the code is already written?"

If you have worked with teams dealing with legacy code, you must have heard similar complaints.

## The barriers to TDD for Legacy Code

All these difficulties boil down to two root causes:

1.  It's impossible to write tests before code that was already written.
2.  Legacy code makes everything more complicated. In our case, it increases the learning curve of TDD for the team.

## The plan

To get a team dealing with legacy code to do TDD, you'll need to address these two fundamental barriers.

One option could be to put more pressure on the team: "From now on, TDD is mandatory." This strategy is not going to work for long. We want a sustainable pace, and the only way to get it is through regular learning.

1.  The first step is to coach the team to one effective technique to apply TDD in the legacy code context.
2.  The next step is to leverage this momentum to set up regular practice sessions.

## A straightforward technique

Here is, in my opinion, the most useful and straightforward TDD for legacy code technique. Let's say you need to add a new feature:

1.  Refactor the existing code to introduce an extension-point to host your new feature
2.  Implement your new feature using TDD. Make it compatible to your extension-point
3.  Once your new feature is ready, plug it in the legacy code through the extension-point
4.  Check that the whole thing is working. Use whatever test you have, either manual or automated.
5.  If it's not working as you expect, repeat the whole cycle (adapt extension point, TDD your new feature...)

All this might sound very easy in theory. Unfortunately, it can get pretty complicated in practice! Before trying this in production code, it's a good idea to practice and learn. Let's see how to do that!

## The Gilded Rose Kata

The gilded rose is a famous kata to practice refactoring techniques. I am going to use it to illustrate the above plan.

The gilded rose is an inventory management function. The goal of the kata is to manage a new kind of item: conjured items. Conjured items behave like standard items, except that they age twice as fast. You can check the full instructions on Github.

Let's jump into the code!

### Refactoring to an extension-point

The first step in our plan is to change the existing code before injecting our new feature. This step can be tricky as it touches the legacy code, and we don't want to break anything. Here are a few principles to cut risks:

*   Stick to the smallest possible change
*   Use any validation technique you have at your disposal:
    *   End to end tests
    *   Manual tests
    *   Integration tests
    *   Setting up a Golden Master test for the occasion is also a smart move.
*   Use many pairs of eyes. Refactoring in pair or mob will drastically reduce the risk for regression.

Fortunately, the gilded rose kata comes with a golden master test. It's a test that 'snapshots' the behavior of your code to let you refactor it. It's temporary because a precise snapshot is unmaintainable. You can learn more about the golden master technique through this live refactoring.

TODO live refactoring at Socrates

The gilded rose kata uses the Approvals.cpp library to help us with Golden Master testing. All we need to do is to add a set of test combination to the existing test:

#### [cpp/test/cpp_googletest_approvaltest/GildedRoseGoogletestApprovalTests.cc](https://github.com/emilybache/GildedRose-Refactoring-Kata/blob/master/cpp/test/cpp_googletest_approvaltest/GildedRoseGoogletestApprovalTests.cc)

```cpp
TEST(GildedRoseApprovalTests, VerifyCombinations) {

    std::vector<string> names { "Aged Brie"
                              , "Backstage passes to a TAFKAL80ETC concert"
                              , "Sulfuras, Hand of Ragnaros"
                              , "Leather Boots"
                              };
    std::vector<int> sellIns { -2, -1, 0, 1, 2, 3, 4, 5, 6, 7 };
    std::vector<int> qualities { 1, 3, 5, 10, 49, 50, 80 };

    auto f = [](string name, int sellIn, int quality) {
        vector<Item> items = {Item(name, sellIn, quality)};
        GildedRose app(items);
        app.updateQuality();
        return items[0];
    };

    ApprovalTests::CombinationApprovals::verifyAllCombinations(
            f,
            names, sellIns, qualities);

}
```

Now that we have a non-regression test, we are ready to change the existing code, so let's try to add an extension point. One way to do this is to add an array of 'item updaters' that can take care of specific types of items.

#### [cpp/src/GildedRose.h](https://github.com/emilybache/GildedRose-Refactoring-Kata/blob/master/cpp/src/GildedRose.h)

The first thing we'll do is to:

* Create an ItemUpdater abstract class
* Add a list of ItemUpdater objects to the GildedRose constructor

```cpp
class ItemUpdater
{
public:
    virtual ~ItemUpdater();

    virtual bool handles(const Item& item) const = 0;
    virtual void updateQuality(Item& item) const = 0;
};

class GildedRose
{
public:
    vector<Item> & items;
    const std::vector<std::shared_ptr<const ItemUpdater> > itemUpdaters;
    GildedRose(vector<Item> & items, const std::vector<std::shared_ptr<const ItemUpdater> > & itemUpdaters);
    
    void updateQuality();

    void updateQuality(Item &item) const;
};
```

We'll just need to adapt the constructor calls from the tests with an empty array of ItemUpdaters `{}`.

#### [cpp/src/GildedRose.cc](https://github.com/emilybache/GildedRose-Refactoring-Kata/blob/master/cpp/src/GildedRose.cc)

In the implementation, we:

* Store the ItemUpdater objects
* Extract an `updateQuality(Item&)` method to handle a single item
* Delegate to an ItemUpdater that can handle a particular item

```cpp
ItemUpdater::~ItemUpdater() {
}


GildedRose::GildedRose(vector<Item> & items, const vector<std::shared_ptr<const ItemUpdater> > & itemUpdaters)
: items(items), itemUpdaters(itemUpdaters)
{}
    
void GildedRose::updateQuality() 
{
    for (int i = 0; i < items.size(); i++)
    {
        updateQuality(items[i]);
    }
}

void GildedRose::updateQuality(Item &item) const {
    for (int i = 0; i < itemUpdaters.size(); ++i)
    {
        std::shared_ptr<const ItemUpdater> itemUpdater = itemUpdaters[i];
        if (itemUpdater->handles(item))
        {
            itemUpdater->updateQuality(item);
            return;
        }
    }

    if (item.name != "Aged Brie" && item.name != "Backstage passes to a TAFKAL80ETC concert") {
    
    ...
}
```

It is now possible to inject an implementation for conjured items.

### Code Conjured item with TDD

The implementation of our extension point needs to deal with two aspects:

*   declare that it will handle conjured items
*   update quality and sellIn for a conjured item

Here is the implementation I came to using TDD

#### cpp/test/GildedRoseConjuredItemUpdaterTests.cpp

```cpp
// Include header files for test frameworks
#include <gtest/gtest.h>

// Include code to be tested
#include "ConjuredItemUpdater.h"

class ConjuredItemUpdaterTests : public ::testing::Test
{
protected:
    ConjuredItemUpdater updater;
};

TEST_F(ConjuredItemUpdaterTests, HandlesConjuredItems) {
    EXPECT_TRUE(updater.handles(Item("Conjured Mana Cake", 2, 2)));
    EXPECT_TRUE(updater.handles(Item("Conjured Leather Boots", 2, 2)));
    EXPECT_FALSE(updater.handles(Item("Leather Boots", 2, 2)));
}

TEST_F(ConjuredItemUpdaterTests, ConjuredItemsGetCloserToSellIn) {
    Item conjuredItem("Conjured Mana Cake", 2, 4);

    updater.updateQuality(conjuredItem);

    EXPECT_EQ(1, conjuredItem.sellIn);
}

TEST_F(ConjuredItemUpdaterTests, ConjuredItemsDegradeBy2PerDay) {
    Item conjuredItem("Conjured Mana Cake", 2, 4);

    updater.updateQuality(conjuredItem);

    EXPECT_EQ(2, conjuredItem.quality);
}

TEST_F(ConjuredItemUpdaterTests, ConjuredItemsCannotGetANegativeQuantity) {
    Item conjuredItem("Conjured Mana Cake", 2, 1);

    updater.updateQuality(conjuredItem);

    EXPECT_EQ(0, conjuredItem.quality);
}

TEST_F(ConjuredItemUpdaterTests, ConjuredItemsDegradeBy4PerDayOnSellInDate) {
    Item conjuredItem("Conjured Mana Cake", 0, 7);

    updater.updateQuality(conjuredItem);

    EXPECT_EQ(3, conjuredItem.quality);
}

TEST_F(ConjuredItemUpdaterTests, ConjuredItemsDegradeBy4PerDayPastSellInDate) {
    Item conjuredItem("Conjured Mana Cake", -1, 7);

    updater.updateQuality(conjuredItem);

    EXPECT_EQ(3, conjuredItem.quality);
}
```

#### cpp/src/ConjuredItemUpdater.h

```cpp
#ifndef GILDED_ROSE_REFACTORING_KATA_CPP_CONJUREDITEMUPDATER_H
#define GILDED_ROSE_REFACTORING_KATA_CPP_CONJUREDITEMUPDATER_H

#include "GildedRose.h"

class ConjuredItemUpdater : public ItemUpdater {
public:

    bool handles(const Item &item) const override;
    void updateQuality(Item &item) const override;
};

#endif //GILDED_ROSE_REFACTORING_KATA_CPP_CONJUREDITEMUPDATER_H

```

#### cpp/src/ConjuredItemUpdater.cpp

```cpp
#include "ConjuredItemUpdater.h"

namespace {
    static const char *const CONJURED_ITEM_PREFIX = "Conjured ";

    int degradation(const Item &item) {

        if (item.sellIn <= 0) {
            return 4;
        } else {
            return 2;
        }
    }

    void degradeQuality(Item &item, int degradation) {
        item.quality = max(item.quality - degradation, 0);
    }
}

bool ConjuredItemUpdater::handles(const Item &item) const {
    return item.name.find(CONJURED_ITEM_PREFIX) == 0;
}


void ConjuredItemUpdater::updateQuality(Item &item) const {

    degradeQuality(item, degradation(item));

    item.sellIn--;
}
```

### Inject into the existing code

This last part is a piece of cake. We only have to provide our implementation to the Item Updated when we instantiate it.

```cpp
GildedRose app(items, {std::make_shared<ConjuredItemUpdater>()});
```

In real life, we would use whatever test we have:

1.  to make sure that we did not break anything
2.  and that our new feature is behaving as expected

We would do this using any automated, and maybe slow, tests we have at our disposal. We could also run the system and test it manually.

During our Gilded Rose Kata, there are a few things we can do:

*   We can run the golden master to make sure that we did not break anything.
*   We can create a 'main' function, add some trace, and make sure that it's behaving as expected.
*   We can also run the golden master test and update it. Approvals.cpp will open your diff tool and highlight the changes with the snapshot. It's a very convenient way to check our work:

```cpp
TEST(GildedRoseApprovalTests, VerifyCombinations) {

    std::vector<string> names { "Aged Brie"
                                , "Backstage passes to a TAFKAL80ETC concert"
                                , "Sulfuras, Hand of Ragnaros"
                                , "Leather Boots"
                                , "Conjured Mana Cake"
                                };
    std::vector<int> sellIns { -2, -1, 0, 1, 2, 3, 4, 5, 6, 7 };
    std::vector<int> qualities { 1, 3, 5, 10, 49, 50, 80 };

    auto f = [](string name, int sellIn, int quality) {
        vector<Item> items = {Item(name, sellIn, quality)};
        GildedRose app(items, {std::make_shared<ConjuredItemUpdater>()});
        app.updateQuality();
        return items[0];
    };

    ApprovalTests::CombinationApprovals::verifyAllCombinations(
            f,
            names, sellIns, qualities);

}
```

### Close with a 10 minutes retrospective

Don't forget why you did this code kata! Participants in a coding dojo often get so caught up in the exercise that they forget it's only practice. When coaching, it's your job to get them back to reality! The quick retrospective is there to make sure they can apply what they learned in their day to day job.

I got my recipe for the mini-retrospective from the Cucumber team. It's only four questions:

1.  What did you do?
2.  What did you learn?
3.  What still puzzles you?
4.  What do you decide?

I won't go into the full details of how to animate a quick retrospective. (Note: I might write a post about this one day, so stay tuned). The main point is to make sure to be listening, and not speaking, 95% of the time. Here are some meaningful discussions to have about this kata:

*   How can you apply these techniques (bottom-up and Golden Master) in real life
*   How can you deal with the lack of end to end tests? It's an excellent time to suggest trying another kata around BDD Scaffolding. (This too could be the subject of a future post)

Use your 5% speaking time to hint participants to these discussions if they did rise by themselves. Suggest running follow-up katas or mob sessions to keep the momentum going. Don't forget, coaching a team is a long term task.

> ### _Side note: Many variants of Gilded Rose_
> 
> _The Gilded Rose kata is particularly interesting to practice different refactoring techniques:_
> 
> *   _The Bubble Context, as we did_
> *   _Setting up a Golden Master Test_
> *   _Refactor using safe baby steps_
> *   _The Strangler Application_
> *   _Testing with BDD scaffolding_

## To summarize, what should you do NOW?

First of all, keep problems in mind:

*   How to write tests before code that already exists?
*   Coach enough TDD for legacy code skills to the team.

As often, the solution is in the problem. Next time you hear these problems, suggest trying a refactoring kata. You might have to repeat the suggestion a few time before people accept. As soon as you have an opportunity, run the gilded rose, and coach one TDD for legacy code technique. Make sure to prepare the kata before, though.

Don't forget the long term plan either:

1.  Continue to practice TDD Katas regularly
2.  Help the team to bridge the gap with their real code, through mob sessions for example

Use the quick retrospective to get the team to try a second kata or a mob session as soon as possible.

## You can do it!

You don't have to be an official XP Coach to do all this:

*   It's a great way for tech leads to up-skill their team.
*   Nothing prevents developers from doing 'guerilla XP coaching.' 

Let's hack organizations for the better!