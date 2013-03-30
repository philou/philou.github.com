---
layout: post
title: Making C# properties first class objects
published: true
date: 2011-09-29
categories:
- binding
- c#
- UI
posterous_url: http://philippe.bourgau.net/making-c-properties-first-class-objects
posterous_slug: making-c-properties-first-class-objects
---
<p>Functions and methods have a better status in the .Net world than they had in the Java world ... They are now first class. This means that it is possible to assigne a function or an instance method to a variable, and pass it around as wished. Delegates are indeed very useful.<p /> What about properties ? It's a shame but they are not first class, they cannot be assigned to a variable, and if you ever used WinForms data bindings, I am sure you wrote the following quite a lot :</p>
<p>
```



public event EventHandler NameChanged;
private string _name;
public string Name
{
&nbsp; get
&nbsp; {
&nbsp;&nbsp;&nbsp; return _name;
&nbsp; }
&nbsp; set
&nbsp; {
&nbsp;&nbsp;&nbsp; if (_name != value)
&nbsp;&nbsp;&nbsp; {
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _name = value;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; InvokeNameChanged();
 &nbsp;&nbsp;&nbsp; }
&nbsp; }
}
```
<p />How great would it be if we could define base property types, inherit and override them ! This is how I came up with the idea of using Property&lt;T&gt; classes instances instead of raw properties.<p /> 
```
class Presenter
{
&nbsp; public readonly Property&lt;string&gt; Name = new Property&lt;string&gt;();
}
```
<p />The first advantage that we got was that Winforw gui bindings would now be a lot more type safe, and resharper safe :<p /> 
```
public partial class MyForm : Form
{
&nbsp; Presenter _presenter = new Presenter();

&nbsp; public Form1()
&nbsp; {
&nbsp;&nbsp;&nbsp; InitializeComponent();
&nbsp; }

&nbsp; protected override void OnLoad(EventArgs e)
 &nbsp; {
&nbsp;&nbsp;&nbsp; base.OnLoad(e);

&nbsp;&nbsp;&nbsp; AddBinding(textBox1, "Text", _presenter.Name, false, DataSourceUpdateMode.OnPropertyChanged);
&nbsp;&nbsp;&nbsp; AddBinding(textBox2, "Text", _presenter.Name, false, DataSourceUpdateMode.OnPropertyChanged);
 &nbsp; }

&nbsp; void AddBinding&lt;T&gt;(Control control, string controlProperty, Property&lt;T&gt; property, bool formattingEnabled, DataSourceUpdateMode dataSourceUpdateMode)
&nbsp; {
&nbsp;&nbsp;&nbsp; control.DataBindings.Add(controlProperty, property, "Value", formattingEnabled, dataSourceUpdateMode);
 &nbsp; }
}
```
<p />Creating a new AddBinding shareable function, the only presenter side property name hard coded in the gui could be "Value", and the real property could explicitly be used to set up a binding.<p /> After using this kind of property in our work project, we discovered and expanded a lot more around it :<br />* No need to test property event notifications every time, just test it once on the Property&lt;T&gt; class<br /> * Ultra simple property delegation<br />* Reusable read only properties<br />* Computed properties with dependencies, able to notify changes automaticaly<br />* Properties able to validate their value, and notify precise errors to the UI<p /> I hope this will help someone</p>
