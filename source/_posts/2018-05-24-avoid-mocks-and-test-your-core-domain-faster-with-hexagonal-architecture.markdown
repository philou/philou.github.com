---
layout: post
title: "Avoid mocks and test your core domain faster with Hexagonal Architecture"
date: 2018-05-24 06:43
comments: true
categories: 
 - tdd
 - mocking
 - testing
 - programming
 - ruby
 - architecture
 - ddd
 - how-to-avoid-mocks-series
keywords: "Mocks, Unit Testing, Automated Testing, TDD, Test Driven Development, London School of Testing, Mocking, Ruby, Architecture, Hexagonal Architecture"
description: "An explanation of why large systems tend to favor the emergence of mocks and what Hexagonal Architecture can do against that. Illustrated with Ruby on Rails code examples."
---
As I've written in my last few posts, we can get a long way to avoid mocks with small scale coding best practices. Unfortunately, when systems reach a certain size, we need something at architecture scale.

This is the 6th post of a [series about avoiding mocks](/blog/categories/how-to-avoid-mocks-series/). If you haven't, you can start by [the beginning](/careless-mocking-considered-harmful/).

![A drawing of a hexagon-shaped building]({{site.url}}/imgs/2018-05-24-avoid-mocks-and-test-your-core-domain-faster-with-hexagonal-architecture/hexagonal-building.jpg)

## Why do we end up with mocks in large systems ?

A few years ago, I joined a team working in a legacy system. We wanted to apply [TDD](https://en.wikipedia.org/wiki/Test-driven_development) and refactoring. As expected, adding tests legacy code proved a real challenge. With a lot of effort we could manage to add a few. Unfortunately, this did not seem to have any positive effect on our maintainability ! The tests we were writing all involved a lot of mocking. The system was such a large mass of spaghetti code that there was no clear place to mock. We were actually mocking where it seemed the easiest on a test by test basis. We were making progress at small scale, but the big picture was not improving at all !

Large systems are beasts with many faces. They  involve a lot of IOs. They write and read data from the disk and databases. They call 3rd parties and remote services.

As we test these large systems, we'll need to stub out these IOs. Even if the tests are fast enough, we usually don't want to call external services for real. Most of the time though, tests are slow. That's 2 reasons why end up adding some mocks.

Here comes the nasty part. These large systems are so complex that we, developers, don't have the full picture. When we test, we tend to mock at different places, depending on our knowledge. This is bad for maintenance. Mocks duplicate production code behavior. When many different mocks are in place to isolate an external dependency, we end up with 'n' versions of the code. That's a nightmare to refactor !

> 💡 When many different mocks are in place to isolate an external dependency, we end up with 'n' versions of the code !

## Hexagonal architecture to the rescue

[Alistair Cockburn](http://alistair.cockburn.us/Hexagonal+architecture) coined the term. The idea is pretty simple :  isolate a piece of code from all dependencies. This is particularly useful for the core functional areas. With this in place, it becomes straightforward (and fast) to test the core domain logic.

To main techniques to isolate a piece of code from any dependency are :

*   [Dependency injection](https://en.wikipedia.org/wiki/Dependency_injection)
*   [Observers](https://en.wikipedia.org/wiki/Observer_pattern)
*   [Adapters](https://en.wikipedia.org/wiki/Adapter_pattern)

It's also possible to split a system in many 'hexagons' and glue them together with adapters at startup. If you want to learn more on this style of architecture, have a look into the [Domain Driven Design lore](https://www.infoq.com/articles/ddd-contextmapping). This community has been building systems this way for years now.

## Enough talk, show me the code !

This post was the occasion to try to inject a Hexagonal Architecture and a dash of DDD in a Rails application. There's one caveat though : DDD shines on complex systems. Unfortunately, large and complex systems make very poor didactic examples. The following code highlights the gains about mocking. We would not use DDD for such a small app in real life.

### The starting point

I chose a simple TODO app. I started by generating a scaffold for a Task with a description and a done/not-done status. As third party interaction, completing a task sends an automatic tweet. Here is the only specific code I wrote on top of the Rails scaffold :

###### app/models/task.rb

```ruby
class Task < ApplicationRecord
  include ActiveModel::Dirty

  validates :description, presence: true

  before_save :tweet_if_done

  private
  def tweet_if_done
    if done_changed?
      TwitterClient::Client.update(self.description)
    end
  end
end
```

Thanks Jason Charnes for the [change attribute technique](https://jasoncharnes.com/changed-attributes-rails/).

###### spec/models/task_spec.rb

```ruby
require 'rails_helper'

RSpec.describe Task, type: :model do

  it "is valid with all attributes set" do
    expect(Task.create(description: "Finish presentation", done: false)).to be_valid
  end

  it "requires a description" do
    expect(Task.create(description: nil, done: false)).to be_invalid
    expect(Task.create(description: "", done: false)).to be_invalid
  end

  it "tweets when a task is finished" do
    task = Task.create(description: "Wash the car", done: false)

    expect(TwitterClient::Client).to receive(:update).with("Wash the car")

    task.done = true
    task.save
  end
end
```

This is pretty simple and to the point !

### 5 years later

Now let's imagine that the app grew to tens of thousands of lines. We added a lot of features to the app, which transformed the TODO domain into a very complex thing. Now suppose that, for the sake of maintenance, we want to isolate the domain logic into its own hexagon. Unlike traditional Rails ActiveRecords, we want to make it independent from the database. We also want it to be independent from the Twitter API.

Here is what the code might look like.

###### lib/core/task.rb

First, we have a core task class, independent from anything else. The Core module is our hexagon.

```ruby
module Core
  class Task

    attr_reader :description
    attr_accessor :db_id

    def initialize(attributes = {})
      @description= "What do you need to do ?"
      @done = false
      @done_subscribers = []

      self.update(attributes)
    end

    def done?
      @done
    end

    def mark_as_done
      @done = true
      @done_subscribers.each {|proc| proc.call(self) }
    end

    def update(attributes={})
      self.description= attributes[:description] unless attributes[:description].nil?
      self.mark_as_done if attributes[:done]
    end

    def notify_when_done(&proc)
      @done_subscribers.push(proc)
    end

    def description=(desc)
      raise ArgumentError.new("Task description cannot be blank") if desc.blank?

      @description = desc
    end
  end
end
```

As we can see, it contains only domain logic and nothing else.

####### spec/lib/core/task_spec.rb

Here is the corresponding test, fast, mock-free and independent from the database and any external system.

```ruby
require 'rails_helper'
require 'core/task'

context 'Task' do

  let(:task) { Core::Task.new}

  specify 'is not done by default' do
    expect(task).not_to be_done
  end

  specify 'comes with a default description' do
    expect(task.description).not_to be_blank
  end

  specify 'it can be initialized from a hash' do
    task = Core::Task.new(description: "Old description", done: true)

    expect(task.description).to eq("Old description")
    expect(task).to be_done
  end

  specify 'can have a custom description' do
    task.description= "Clean up the house"
    expect(task.description).to eq("Clean up the house")
  end

  specify 'forbids empty descriptions' do
    expect{task.description = nil }.to raise_error(ArgumentError)
    expect{task.description = "" }.to raise_error(ArgumentError)
  end

  specify 'can be done' do
    task.mark_as_done
    expect(task).to be_done
  end

  specify 'publishes when done' do
    done_task = nil
    task.notify_when_done {|t| done_task = t}

    task.mark_as_done

    expect(done_task).to be(task)
  end

  specify 'can be updated with a hash' do
    task.update(description: "New description", done: true)

    expect(task.description).to eq("New description")
    expect(task).to be_done
  end

  specify 'has no DB id by default' do
    expect(task.db_id).to be_nil
  end
end
```

####### lib/infrastructure/task_repo.rb

To read and save with the database, we now go through an adapter. This is not considered to be part of our core domain.

```ruby
module Infrastructure
  class TaskRepo

    def self.all
      Task.all.map do |db_task|
        from_db(db_task)
      end
    end

    def self.load(db_id)
      from_db(Task.find(db_id))
    end

    def self.save(task)
      if task.db_id.nil?
        db_task = Task.create!(to_db_attributes(task))
        task.db_id = db_task.id
      else
        db_task = Task.find(task.db_id)
        db_task.update!(to_db_attributes(task))
      end
      task
    end

    def self.delete(task)
      unless task.db_id.nil?
        db_task = Task.find(task.db_id)
        db_task.destroy!
        task.db_id = nil
      end
    end

    private

    def self.to_db_attributes(task)
      {description: task.description, done: task.done?}
    end

    def self.from_db(db_task)
      result = Core::Task.new
      result.db_id = db_task.id
      result.description = db_task.description
      result.mark_as_done if db_task.done?
      result
    end

  end
end
```

####### app/controllers/tasks_controller.rb

Finally, all the pieces interact together in the controller. This controller basically does what the previous version was, it's just using different classes. Obviously, we'll need to adapt the views and the tests.

```ruby
require 'core/task'
require 'infrastructure/task_repo'

class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  def index
    @tasks = Infrastructure::TaskRepo.all
  end

  # GET /tasks/1
  def show
  end

  # GET /tasks/new
  def new
    @task = Core::Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create
    begin
      @task = Core::Task.new(task_params)
      Infrastructure::TaskRepo.save(@task)

      redirect_to task_url(@task.db_id), notice: 'Task was successfully created.'

    rescue ArgumentError
      render :new
    end
  end

  # PATCH/PUT /tasks/1
  def update
    begin
      @task.update(task_params)
      Infrastructure::TaskRepo.save(@task)

      redirect_to task_url(@task.db_id), notice: 'Task was successfully updated.'

    rescue ArgumentError
      render :edit
    end
  end

  # DELETE /tasks/1
  def destroy
    Infrastructure::TaskRepo.delete(@task)
    redirect_to tasks_url, notice: 'Task was successfully destroyed.'
  end

  private
    def set_task
      @task = Infrastructure::TaskRepo.load(params[:id])
      @task.notify_when_done do |task|
        TwitterClient::Client.update(task.description)
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.permit(:description, :done)
    end
end
```

The main gain here is that our core domain, our most valuable asset is now easy to test without mocks. This means that we are able to write and execute fast tests for this area of the code. This puts us in a great position to increase our competitive advantage in our core business !

> 💡 By keeping your tests around your core domain fast, Hexagonal Architecture increases your competitive advantage.

As you can see, we are now wiring everything together at the controller level. We could later build a facade to isolate the controller from the inside of our domain. A [presenter](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93presenter) might do, but it seemed over-engineered, even in this made up example. (I'll post something about that some day)

## Next post

As we can deduce from the controller code above, we still have to use fakes or mocks when testing the controller. The good thing though is that this is now more local which already makes mocking less of an issue. If a mock is used in less tests, it's easier to use the same mock everywhere ! This is a great opportunity for simplifying test setup, as we'll see in the [next post about in-memory fakes](/get-rid-of-mocking-maintenance-with-full-fledged-in-memory-fakes/).
