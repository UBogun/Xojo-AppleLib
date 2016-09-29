#tag Class
Protected Class AppleLongPressGestureRecognizer
Inherits AppleGestureRecognizer
	#tag Method, Flags = &h1000
		Sub Constructor(target as AppleObject, SEL as ptr)
		  Super.Constructor (classptr, Target, SEL)
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function allowableMovement lib UIKitLibname selector "allowableMovement" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function allowableMovement lib UIKitLibname selector "allowableMovement" (id as ptr) as single
			  #endif
			  return AllowableMovement (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setAllowableMovement lib UIKitLibname selector "setAllowableMovement:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    Declare Sub setAllowableMovement lib UIKitLibname selector "setAllowableMovement:" (id as ptr, value as single)
			  #endif
			  setAllowableMovement id, value
			End Set
		#tag EndSetter
		AllowableMovement As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UILongPressGestureRecognizer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function minimumPressDuration lib UIKitLibname selector "minimumPressDuration" (id as ptr) as double
			  return minimumPressDuration (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMinimumPressDuration lib UIKitLibname selector "setMinimumPressDuration:" (id as ptr, value as double)
			  setMinimumPressDuration id, value
			End Set
		#tag EndSetter
		MinimumPressDuration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return NumberOfTapsRequired
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SetNumberOfTapsRequired (value)
			End Set
		#tag EndSetter
		NumberOfTapsRequired As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return GetNumberOfTouchesRequired
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SetNumberOfTouchesRequired (value)
			End Set
		#tag EndSetter
		NumberOfTouchesRequired As UInteger
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowableMovement"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
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
			Name="MinimumPressDuration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfTapsRequired"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfTouches"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfTouchesRequired"
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
