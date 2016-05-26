#tag Class
Protected Class AppleNSEvent
Inherits AppleObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettype Lib appkitlibname Selector "type" (id as ptr) As NSEventType
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleNSEvent
		  return if (aptr = nil, nil, new applensevent(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSEvent")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return gettype(id)
			End Get
		#tag EndGetter
		Type As NSEventType
	#tag EndComputedProperty


	#tag Enum, Name = NSEventType, Type = UInteger, Flags = &h0
		LeftMouseDown = 1
		  LeftMouseUp = 2
		  RightMouseDown =3
		  RightMouseUp = 4
		  MouseMoved = 5
		  LeftMouseDragged = 6
		  RightMouseDragged = 7
		  MouseEntered =8
		  MouseExited = 9
		  KeyDown = 10
		  KeyUp = 11
		  FlagsChanged = 12
		  AppKitDefined = 13
		  SystemDefined = 14
		  ApplicationDefined = 15
		  Periodic = 16
		  CursorUpdate = 17
		  ScrollWheel = 22
		  TabletPoint = 23
		  TabletProximity = 24
		  OtherMouseDown = 25
		  OtherMouseUp = 26
		  OtherMouseDragged = 27
		  Gesture = 28
		  Magnify = 29
		  Swipe = 30
		  Rotate = 18
		  BeginGesture = 19
		  EndGesture = 20
		  SmartMagnify = 32
		  QuickLook = 33
		Pressure = 34
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
