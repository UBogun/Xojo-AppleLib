#tag Class
Protected Class AppleWindow
Inherits AppleResponder
	#tag Method, Flags = &h0
		Sub Constructor(ViewController As AppleViewController)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(windowWithContentViewController(classptr, ViewController.id))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A657320616E20616C6C6F63617465642077696E646F77207769746820746865207370656369666965642076616C7565732E
		Sub Constructor(rect as FoundationFrameWork.NSRect,  Style as AppleWindowStyleMask, type as NSBackingStoreType, DeferCreation as Boolean = false)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor (initWithContentRect(alloc(classptr), rect, Style.ID, type, DeferCreation, nil), true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aWindow as Window)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(ptr(aWindow.Handle))
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontentViewController Lib appkitlibname Selector "contentViewController" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithContentRect Lib appkitlibname Selector "initWithContentRect:styleMask:backing:defer:screen:" (id as ptr, rect as FoundationFrameWork . NSRect, style as Uinteger, type as NSBackingstoreType, deferCreation as boolean, screen as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleWindow
		  return if (aptr = nil, nil,new applewindow(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function windowWithContentViewController Lib appkitlibname Selector "windowWithContentViewController:" (id as ptr, controller as ptr) As Ptr
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSWindow")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleViewController.MakefromPtr(getcontentViewController(id))
			End Get
		#tag EndGetter
		contentViewController As AppleViewController
	#tag EndComputedProperty


	#tag Enum, Name = NSBackingStoreType, Type = UInteger, Flags = &h0
		Retained = 0
		  NonRetained = 1
		Bufferd = 2
	#tag EndEnum

	#tag Enum, Name = NSWindowOrderingMode, Type = Integer, Flags = &h0
		Above = 1
		  Below= -1
		Out = 0
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
