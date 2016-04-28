---
keywords: "C#, testing, Windows, licker"
layout: post
title: Windows licker like with C#
published: true
date: 2012-11-07
categories:
- c#
- testing
posterous_url: http://philippe.bourgau.net/windows-licker-like-with-c
posterous_slug: windows-licker-like-with-c
comments: true
---
<p>In <a href="http://www.growing-object-oriented-software.com/">Growing object-oriented software guided by tests</a>&nbsp;they use a java library called <a href="http://code.google.com/p/windowlicker/">Window Licker</a>&nbsp;to pilot a gui running in&nbsp;test thread. Next time I started a new project, I&nbsp;wanted to apply the techniques I had learned in the book. As the project was in C#, I searched for a C# equivalent of Window Licker. I did not find any, but it turned out to be really simple to create an equivalent.</p>
<p>Here is the user test code I wanted to be able to write (inside a <a href="http://www.specflow.org">SpecFlow</a> step) :</p>
<p>
```c#
[Given(@"TheUserEntersHisEmail""(.*)""")]
public void GivenTheUserEntersHisEmail(string email)
{
  User.Enters(ScenarioContext.Current.UserForm().EmailTextBox, email);
}
```
</p>
<p>Here UserForm is an extension method I added to the ScenarioContext that is responsible for returning the current user form.</p>
<p>As you have noticed, the various gui components must be&nbsp;exposed through some kind of public api. What I did was to expose the main gui window as a property on the application top level object, and then have properties to access all the sub windows and the controls that the tests needed to access. It kind of breaks encapsulation, but it allows to keep the tests working during refactoring !</p>
<p>Eventually, I had to write the User class, and it turned out to be really simple :</p>
<p>
```c#
static class User
{
  internal static void Enters(TextBox textBox, string text)
  {
    textBox.Invoke(new MethodInvoker(() => textBox.Text = text));
  }
}
```
</p>
<p>That's it, all that was needed was to ask the thread of the control to update the text !</p>

