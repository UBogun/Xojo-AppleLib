#tag Class
Protected Class AppleGestureRecognizer
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub AddTarget(target as AppleObject, action as PTR)
		  declare Sub addTarget lib UIKitLibname Selector "addTarget:action:" (id as ptr, target as ptr, action as ptr)
		  addTarget id, Target.Id, action
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1001
		Protected Sub Constructor(aClass as ptr, target as Appleobject, SEL as ptr)
		  Constructor (aClass, Target.id, SEL)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1001
		Protected Sub Constructor(aClass as ptr, target as Ptr, SEL as ptr)
		  Declare function initWithTarget lib UIKitLibname selector "initWithTarget:action:" (id as ptr, Target as ptr, action as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (initWithTarget (Alloc(aClass), Target, SEL))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetNumberOfTapsRequired() As uinteger
		  Declare function numberOfTapsRequired lib UIKitLibname selector "numberOfTapsRequired" (id as ptr) as UInteger
		  return numberOfTapsRequired (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetNumberOfTouchesRequired() As uinteger
		  Declare function numberOfTouchesRequired lib UIKitLibname selector "numberOfTouchesRequired" (id as ptr) as UInteger
		  return numberOfTouchesRequired (id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LocationInView(aView as AppleView) As FoundationFramework.NSPoint
		  return UIKitFramework.getlocationInView (mid, aview.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LocationOfTouchInView(TouchIndex As UInteger, aView as AppleView) As FoundationFramework.NSPoint
		  Declare function locationOfTouch lib UIKitLibname selector "locationOfTouch:inView:" (id as ptr, touchindex as uinteger, view as ptr) as FoundationFramework.NSPoint
		  return locationOfTouch (id, TouchIndex, aview.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleGestureRecognizer
		  return if (aptr = nil, nil, new AppleGestureRecognizer (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveTarget(target as AppleObject, action as PTR)
		  declare Sub removeTarget lib UIKitLibname Selector "removeTarget:action:" (id as ptr, target as ptr, action as ptr)
		  removeTarget id, Target.Id, action
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RequireGestureRecognizerToFail(anotherRecognizer as AppleGestureRecognizer)
		  declare Sub requireGestureRecognizerToFail lib UIKitLibname Selector "requireGestureRecognizerToFail:" (id as ptr, recognizer as ptr)
		  requireGestureRecognizerToFail id, if (anotherRecognizer = NIL, NIL, anotherRecognizer.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetNumberOfTapsRequired(value as uinteger)
		  Declare Sub setNumberOfTapsRequired lib UIKitLibname selector "setNumberOfTapsRequired:" (id as ptr, value as UInteger)
		  setNumberOfTapsRequired id, value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetNumberOfTouchesRequired(value as uinteger)
		  Declare Sub setNumberOfTouchesRequired lib UIKitLibname selector "setNumberOfTouchesRequired:" (id as ptr, value as UInteger)
		  setNumberOfTouchesRequired id, value
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetmacos
			    Declare function action lib UIKitLibname selector "action" (id as ptr) as ptr
			    return action(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if targetmacos
			    Declare Sub setAction lib UIKitLibname selector "setAction:" (id as ptr, value as ptr)
			    setAction id, value
			  #endif
			End Set
		#tag EndSetter
		Action As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function cancelsTouchesInView lib UIKitLibname selector "cancelsTouchesInView" (id as ptr) as Boolean
			  return cancelsTouchesInView (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setCancelsTouchesInView lib UIKitLibname selector "setCancelsTouchesInView:" (id as ptr, value as Boolean)
			  setCancelsTouchesInView id, value
			End Set
		#tag EndSetter
		CancelsTouchesInView As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIGestureRecognizer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function delaysTouchesBegan lib UIKitLibname selector "delaysTouchesBegan" (id as ptr) as Boolean
			  return delaysTouchesBegan (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setDelaysTouchesBegan lib UIKitLibname selector "setDelaysTouchesBegan:" (id as ptr, value as Boolean)
			  setDelaysTouchesBegan id, value
			End Set
		#tag EndSetter
		DelaysTouchesBegan As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function delaysTouchesEnded lib UIKitLibname selector "delaysTouchesEnded" (id as ptr) as Boolean
			  return delaysTouchesEnded (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setDelaysTouchesEnded lib UIKitLibname selector "setDelaysTouchesEnded:" (id as ptr, value as Boolean)
			  setDelaysTouchesEnded id, value
			End Set
		#tag EndSetter
		DelaysTouchesEnded As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function enabled lib UIKitLibname selector "isEnabled" (id as ptr) as Boolean
			  return enabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setEnabled lib UIKitLibname selector "setEnabled:" (id as ptr, value as Boolean)
			  setEnabled id, value
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function numberOfTouches lib UIKitLibname selector "numberOfTouches" (id as ptr) as UInteger
			  return numberOfTouches (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setNumberOfTouches lib UIKitLibname selector "setNumberOfTouches:" (id as ptr, value as UInteger)
			  setNumberOfTouches id, value
			End Set
		#tag EndSetter
		NumberOfTouches As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function state lib UIKitLibname selector "state" (id as ptr) as UIGestureRecognizerState
			  return state (id)
			End Get
		#tag EndGetter
		State As UIGestureRecognizerState
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetmacos
			    Declare function target lib UIKitLibname selector "target" (id as ptr) as ptr
			    return AppleObject.MakeFromPtr(target(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if targetmacos
			    Declare Sub setTarget lib UIKitLibname selector "setTarget:" (id as ptr, value as ptr)
			    setTarget id, value.id
			  #endif
			End Set
		#tag EndSetter
		Target As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleView.MakeFromPtr(UIKitFramework.getview(id))
			  
			End Get
		#tag EndGetter
		View As AppleView
	#tag EndComputedProperty


	#tag Constant, Name = kPanGesture, Type = Text, Dynamic = False, Default = \"PanGesture", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="CancelsTouchesInView"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DelaysTouchesBegan"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DelaysTouchesEnded"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfTouches"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="State"
			Group="Behavior"
			Type="UIGestureRecognizerState"
			EditorType="Enum"
			#tag EnumValues
				"0 - Possible"
				"1 - Began"
				"2 - Changed"
				"3 - Ended"
				"4 - Cancelled"
				"5 - Failed"
			#tag EndEnumValues
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
