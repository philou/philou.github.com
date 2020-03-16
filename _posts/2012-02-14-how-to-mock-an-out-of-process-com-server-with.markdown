---
keywords: "C#, mocking, mock, out, process, COM, server"
layout: single-mailing-list
title: How to mock an out of process COM server with C#
published: true
date: 2012-02-14
categories:
- c-sharp
- mocking
posterous_url: http://philippe.bourgau.net/how-to-mock-an-out-of-process-com-server-with
posterous_slug: how-to-mock-an-out-of-process-com-server-with
comments: true
---
I am currently working to replace a legacy command line front end on a COM out of process server.

This server is written in C++ and communicates with the front end through COM. For our new front end project, we wanted a standalone integration test harness to run end to end tests. I thought it would have been great to use a mock library (like [MOQ](http://code.google.com/p/moq/)) to validate the interaction between the front end and the COM server.

After searching the web, I tried ServicedComponent but I did not manage to make it work ... I then found [How to develop and out-of-process COM component by using Visual C#](http://support.microsoft.com/kb/977996) in microsoft knowledge base. It is a full blown COM server completely written in C#.

After downloading it, the first thing I tried was to return a mock instead of a concrete object in the class factory

```c#
// CSSimpleObject.cs
internal class CSSimpleObjectClassFactory : IClassFactory
{
   public int CreateInstance(IntPtr pUnkOuter, ref Guid riid, out IntPtr ppvObject)
   {
      ...
      if (riid == new Guid(CSSimpleObject.ClassId) ||
         riid == new Guid(COMNative.IID_IDispatch) ||
         riid == new Guid(COMNative.IID_IUnknown))
      {
         // Create the instance of the .NET object
         var simpleObject = new Mock<CSSimpleObject> {CallBase = true};
         simpleObject.SetupGet(x => x.FloatProperty).Returns(666);
         simpleObject.Setup(x => x.HelloWorld()).Returns("Hello, you got pwned !!!");

         ppvObject = Marshal.GetComInterfaceForObject(
            simpleObject.Object, typeof(ICSSimpleObject));
         }
         ...
```

Launching&nbsp;CSExeCOMClient.vbs test program told me that it worked.

So here is how I eventually integrated this in our test harness :

* I ran tlbimp.exe on the real COM server I wanted to mock
* In CSSimpleObject.cs, I returned a Mock on the interface of the COM component I wanted to mock
* In CSSimpleObject.cs, I removed SimpleObjectsXXX types
* To skip registration and to keep access on the returned mock, I started this mock COM server in a new thread at the beginning of each test
* I tested our new front end in a new process, to make sure we would go through out-of-process COM communication

### Edit:

We discovered a problem with this technique when we did not manage to implement events correctly. The problem is with COM and not with the mocking framework because it does not work with a real implementation neither
