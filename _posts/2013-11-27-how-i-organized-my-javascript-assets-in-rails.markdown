---
keywords: "Rails, assets, testing, javascript, organized"
layout: single-mailing-list
title: "How I organized my javascript assets in Rails"
date: 2013-11-27 05:56
comments: true
categories:
  - rails
  - assets
  - testing
  - javascript
published: true
---
[Lately](/jasmine-and-coffeescript-setup-for-rails/), I have been introducing javascript and coffeescript in [www.mes-courses.fr](http://www.mes-courses.com) (with structural architecture issues as a side effect, but that's another story ...).

Here are the general goals I had when using the rails asset pipeline :

* most of js compiled in a single file
* no js code in your html files : I want to use unintrusive javascript techniques, and have some outside js hook code that will wire js and html together
* sometimes, I want some js code to be only explicitly included by some particular pages (example: hooking a timer on the document ready event of a particular html page). This means that I cannot simply compile all js code in a single minified file
* In unit tests, I want to be able to manually set up and tear down the js hooks

So, here is how I eventually organized my js code :

* I create a specific dependencies.js file that will require all outside dependencies
* I split my js code under 3 subdirectories :
  * explicit : hooks that will be explicitly included
  * hooks : all the other hooks
  * application : all the real code
* In my application.js, I include dependencies and all files under application and hooks. Here is my app/assets/javascript/application.js

```javascript
//= require dependencies.js
//= require_tree ./application
//= require_tree ./hooks
```

* In my tests, I only load dependencies and files from the application directory. Here is my spec/javascript/spec.js.coffee

```coffeescript
#= require ../../app/assets/javascripts/dependencies.js
#= require_tree ../../app/assets/javascripts/application
#= require_tree ./
```

* Hook code only consists of calling a setup function from the 'real' code. For example, here is my app/assets/javascript/hooks/cart_lines/index.coffee file

```coffeescript
$(document).ready(window.mesCourses.cartLines.index.setUp)
```

this setUp function is defined in the app/assets/javascript/application/cart_lines/index.coffee file

* This way, from the unit tests, I can explicitly call this setUp function, here is the beginning of my spec/javascript/application/cart_lines/index_spec.coffee file

```coffeescript
describe 'mesCourses.cartLines.index', ->

  beforeEach ->
    window.mesCourses.cartLines.index.setUp()

  ...
```

And you, how are you organizing your javacript assets ?
