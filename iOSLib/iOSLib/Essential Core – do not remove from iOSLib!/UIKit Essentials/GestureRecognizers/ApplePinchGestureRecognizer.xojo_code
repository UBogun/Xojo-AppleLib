#tag Class
Protected Class ApplePinchGestureRecognizer
Inherits AppleGestureRecognizer
	#tag Method, Flags = &h1000
		Sub Constructor(target as AppleObject, SEL as ptr)
		  Super.Constructor (classptr, Target, SEL)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As ApplePinchGestureRecognizer
		  return if (aptr = nil, nil, new ApplePinchGestureRecognizer (aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIPinchGestureRecognizer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function scale lib UIKitLibname selector "scale" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function scale lib UIKitLibname selector "scale" (id as ptr) as single
			  #endif
			  return scale (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setScale lib UIKitLibname selector "setScale:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    Declare Sub setScale lib UIKitLibname selector "setScale:" (id as ptr, value as single)
			  #endif
			  setScale id, value
			End Set
		#tag EndSetter
		Scale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function velocity lib UIKitLibname selector "velocity" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function velocity lib UIKitLibname selector "velocity" (id as ptr) as single
			  #endif
			  return velocity (id)
			  
			End Get
		#tag EndGetter
		Velocity As Double
	#tag EndComputedProperty


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
			Name="Scale"
			Group="Behavior"
			Type="Double"
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
		#tag ViewProperty
			Name="Velocity"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
