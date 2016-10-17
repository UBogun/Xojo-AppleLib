#tag Class
Protected Class ApplePanGestureRecognizer
Inherits AppleGestureRecognizer
	#tag Method, Flags = &h1000
		Sub Constructor(target as AppleObject, SEL as ptr)
		  Super.Constructor (classptr, Target, SEL)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(target as Ptr, SEL as ptr)
		  Super.Constructor (classptr, Target, SEL)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As ApplePanGestureRecognizer
		  return if (aptr = nil, nil, new ApplePanGestureRecognizer (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TranslationInView(aView as AppleView) As FoundationFramework.NSPoint
		  Declare function translationInView lib UIKitLibname selector "translationInView:" (id as ptr, view as ptr) as FoundationFramework.NSPoint
		  return translationInView (id, aview.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TranslationInView(aView as AppleView, assigns value as FoundationFramework.NSPoint)
		  
		  Declare sub setTranslationInView lib UIKitLibname selector "setTranslation:inView:" (id as ptr, value as FoundationFramework.NSPoint, view as ptr)
		  setTranslationInView (id, value, aview.id)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VelocityInView(View as AppleView) As FoundationFramework.NSPoint
		  Declare function velocityInView lib UIKitLibname selector "velocityInView:" (id as ptr, view as ptr) as FoundationFramework.NSPoint
		  return velocityInView (id, view.id)
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIPanGestureRecognizer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function maximumNumberOfTouches lib UIKitLibname selector "maximumNumberOfTouches" (id as ptr) as UInteger
			  return maximumNumberOfTouches (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMaximumNumberOfTouches lib UIKitLibname selector "setMaximumNumberOfTouches:" (id as ptr, value as UInteger)
			  setMaximumNumberOfTouches id, value
			End Set
		#tag EndSetter
		MaximumNumberOfTouches As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function minimumNumberOfTouches lib UIKitLibname selector "minimumNumberOfTouches" (id as ptr) as UInteger
			  return minimumNumberOfTouches (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMinimumNumberOfTouches lib UIKitLibname selector "setMinimumNumberOfTouches:" (id as ptr, value as UInteger)
			  setMinimumNumberOfTouches id, value
			End Set
		#tag EndSetter
		MinimumNumberOfTouches As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if View <> nil then return TranslationInView (view)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if view <> nil then TranslationInView (view) = value
			End Set
		#tag EndSetter
		Translation As FoundationFramework.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if View <> nil then return VelocityInView (view)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  
			End Set
		#tag EndSetter
		Velocity As FoundationFramework.NSPoint
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CancelsTouchesInView"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
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
			Name="MaximumNumberOfTouches"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumNumberOfTouches"
			Group="Behavior"
			Type="UInteger"
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
			Name="RetainCount"
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
