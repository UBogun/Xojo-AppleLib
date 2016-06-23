#tag Class
Protected Class AppleCAPropertyAnimation
Inherits AppleCAAnimation
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function animationWithKeyPath Lib QuartzCoreLib Selector "animationWithKeyPath:" (id as ptr, eyppath as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20434150726F7065727479416E696D6174696F6E20696E7374616E636520666F722074686520737065636966696564206B657920706174682E
		Sub Constructor(KeyPath As CFStringRef)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCAAnimation
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor(animationWithKeyPath(classptr, KeyPath))
		    RetainClassObject
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisAdditive Lib QuartzCoreLib Selector "isAdditive" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisCumulative Lib QuartzCoreLib Selector "isCumulative" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getKeypath Lib QuartzCoreLib Selector "keyPath" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getvalueFunction Lib QuartzCoreLib Selector "valueFunction" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleCAPropertyAnimation
		  return if (aptr = nil, nil, new AppleCAPropertyAnimation(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setAdditive Lib QuartzCoreLib Selector "setAdditive:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setCumulative Lib QuartzCoreLib Selector "setCumulative:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setKeypath Lib QuartzCoreLib Selector "setKeyPath:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setvalueFunction Lib QuartzCoreLib Selector "setValueFunction:" (id as ptr, value as ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		OS X 10.11.5
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 4966207468652076616C7565207370656369666965642062792074686520616E696D6174696F6E20697320616464656420746F207468652063757272656E742072656E64657220747265652076616C756520746F2070726F6475636520746865206E65772072656E64657220747265652076616C75652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getisAdditive (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setAdditive id, value
			  #endif
			End Set
		#tag EndSetter
		Additive As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CAPropertyAnimation")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4966207468652076616C7565206F66207468652070726F7065727479206973207468652076616C75652061742074686520656E64206F66207468652070726576696F757320726570656174206379636C652C20706C7573207468652076616C7565206F66207468652063757272656E7420726570656174206379636C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getisCumulative (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setCumulative id, value
			  #endif
			End Set
		#tag EndSetter
		Cumulative As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206B657920706174682074686520726563656976657220616E696D617465732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getKeypath (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setkeypath id, value
			  #endif
			End Set
		#tag EndSetter
		KeyPath As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F7074696F6E616C2076616C75652066756E6374696F6E2074686174206973206170706C69656420746F20696E746572706F6C617465642076616C7565732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleCAValueFunction.MakefromPtr(getvalueFunction (id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setvalueFunction id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		ValueFunction As AppleCAValueFunction
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Additive"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
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
			Name="Cumulative"
			Group="Behavior"
			Type="Boolean"
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
			Name="KeyPath"
			Group="Behavior"
			Type="Text"
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
