---
keywords: "binding, C#, UI, Making, properties, class, objects"
layout: single
title: Making C# properties first class objects
published: true
date: 2011-09-29
categories:
- binding
- c#
- UI
posterous_url: http://philippe.bourgau.net/making-c-properties-first-class-objects
posterous_slug: making-c-properties-first-class-objects
comments: true
---
Functions and methods have a better status in the .Net world than they had in the Java world ... They are now first class. This means that it is possible to assigne a function or an instance method to a variable, and pass it around as wished. Delegates are indeed very useful.

What about properties ? It's a shame but they are not first class, they cannot be assigned to a variable, and if you ever used WinForms data bindings, I am sure you wrote the following quite a lot :

```c#
public event EventHandler NameChanged;
private string _name;
public string Name
{
  get
  {
    return _name;
  }
  set
  {
    if (_name != value)
    {
      _name = value;
      InvokeNameChanged();
     }
  }
}
```

How great would it be if we could define base property types, inherit and override them ! This is how I came up with the idea of using Property<> classes instances instead of raw properties.

```c#
class Presenter
{
  public readonly Property<string> Name = new Property<string>();
}
```

The first advantage that we got was that Winforw gui bindings would now be a lot more type safe, and resharper safe :

```c#
public partial class MyForm : Form
{
  Presenter _presenter = new Presenter();

  public Form1()
  {
    InitializeComponent();
  }

  protected override void OnLoad(EventArgs e)
   {
    base.OnLoad(e);

    AddBinding(textBox1, "Text", _presenter.Name, false, DataSourceUpdateMode.OnPropertyChanged);
    AddBinding(textBox2, "Text", _presenter.Name, false, DataSourceUpdateMode.OnPropertyChanged);
   }

  void AddBinding<T>(Control control, string controlProperty, Property<T> property, bool formattingEnabled, DataSourceUpdateMode dataSourceUpdateMode)
  {
    control.DataBindings.Add(controlProperty, property, "Value", formattingEnabled, dataSourceUpdateMode);
   }
}
```

Creating a new AddBinding shareable function, the only presenter side property name hard coded in the gui could be "Value", and the real property could explicitly be used to set up a binding.<p /> After using this kind of property in our work project, we discovered and expanded a lot more around it :


* No need to test property event notifications every time, just test it once on the Property<> class
* Ultra simple property delegation</li><li>Reusable read only properties
* Computed properties with dependencies, able to notify changes automaticaly
* Properties able to validate their value, and notify precise errors to the UI

I hope this will help someone
