#tag Class
Protected Class AppleCAAnimationGroup
Inherits AppleCAAnimation
	#tag Method, Flags = &h0, Description = 437265617465732061206E6577204341416E696D6174696F6E20696E7374616E63652E
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor(animation(classptr))
		    RetainClassObject
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getanimations Lib QuartzCoreLib Selector "animations" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleCAAnimationGroup
		  return if (aptr = nil, nil, new AppleCAAnimationGroup(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setanimations Lib QuartzCoreLib Selector "setAnimations:" (id as ptr, value as Ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F66204341416E696D6174696F6E206F626A6563747320746F206265206576616C756174656420696E207468652074696D65207370616365206F66207468652072656365697665722E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleArray.MakeFromPtr(getanimations(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setanimations id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		Animations As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CAAnimationGroup")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Autoreverses"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BeginTime"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FillMode"
			Group="Behavior"
			Type="FillModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Remove"
				"1 - Remain"
				"2 - Reset"
				"3 - Both"
			#tag EndEnumValues
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
			Name="MagnificationFilter"
			Group="Behavior"
			Type="ScalingFilters"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - Nearest"
				"2 - Trilinear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinificationFilter"
			Group="Behavior"
			Type="ScalingFilters"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - Nearest"
				"2 - Trilinear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinificationFilterBias"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RemovedOnCompletion"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepeatCount"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepeatDuration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeOffset"
			Group="Behavior"
			Type="Double"
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
