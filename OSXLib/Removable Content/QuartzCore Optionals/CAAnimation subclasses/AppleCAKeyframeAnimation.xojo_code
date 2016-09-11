#tag Class
Protected Class AppleCAKeyframeAnimation
Inherits AppleCAPropertyAnimation
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbiasValues Lib QuartzCoreLib Selector "biasValues" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcalculationMode Lib QuartzCoreLib Selector "calculationMode" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontinuityValues Lib QuartzCoreLib Selector "continuityValues" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getkeyTimes Lib QuartzCoreLib Selector "keyTimes" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrotationMode Lib QuartzCoreLib Selector "rotationMode" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettensionValues Lib QuartzCoreLib Selector "tensionValues" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettimingFunctions Lib QuartzCoreLib Selector "timingFunctions" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getValues Lib QuartzCoreLib Selector "values" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleCAKeyframeAnimation
		  return if (aptr= nil, nil, new AppleCAKeyframeAnimation)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbiasValues Lib QuartzCoreLib Selector "setBiasValues:" (id as ptr, values as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcalculationMode Lib QuartzCoreLib Selector "setCalculationMode::" (id as ptr, values as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontinuityValues Lib QuartzCoreLib Selector "setContinuityValues:" (id as ptr, values as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setkeyTimes Lib QuartzCoreLib Selector "setKeyTimes:" (id as ptr, values as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrotationMode Lib QuartzCoreLib Selector "setRotationMode:" (id as ptr, values as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settensionValues Lib QuartzCoreLib Selector "setTensionValues:" (id as ptr, values as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settimingFunctions Lib QuartzCoreLib Selector "setTimingFunctions:" (id as ptr, values as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setValues Lib QuartzCoreLib Selector "setValues:" (id as ptr, values as ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		missing:
		
		path (CGPath)
		Clalculation and rotation mode could be turned into convenience methods without having to use string constants
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F66204E534E756D626572206F626A65637473207468617420646566696E652074686520706F736974696F6E206F66207468652063757276652072656C617469766520746F206120636F6E74726F6C20706F696E742E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleArray.MakeFromPtr(getbiasValues(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setbiasValues id, if (value = nil,nil,value.id)
			  #endif
			End Set
		#tag EndSetter
		BiasValues As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 53706563696669657320686F7720696E7465726D656469617465206B65796672616D652076616C756573206172652063616C63756C61746564206279207468652072656365697665722E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getcalculationMode(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setcalculationMode id, value
			  #endif
			End Set
		#tag EndSetter
		CalculationMode As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CAKeyframeAnimation")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F66204E534E756D626572206F626A65637473207468617420646566696E65207468652073686172706E657373206F66207468652074696D696E67206375727665E280997320636F726E6572732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleArray.MakeFromPtr(getcontinuityValues(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setcontinuityValues id, if (value = nil,nil,value.id)
			  #endif
			End Set
		#tag EndSetter
		ContinuityValues As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAAnimationCubic as text= SystemConstantName("kCAAnimationCubic", QuartzCorePath)
			    return mkCAAnimationCubic
			  #endif
			End Get
		#tag EndGetter
		Shared kCAAnimationCubic As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAAnimationCubicPaced as text= SystemConstantName("kCAAnimationCubicPaced", QuartzCorePath)
			    return mkCAAnimationCubicPaced
			  #endif
			End Get
		#tag EndGetter
		Shared kCAAnimationCubicPaced As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAAnimationDiscrete as text= SystemConstantName("kCAAnimationDiscrete", QuartzCorePath)
			    return mkCAAnimationDiscrete
			  #endif
			End Get
		#tag EndGetter
		Shared kCAAnimationDiscrete As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAAnimationLinear as text= SystemConstantName("kCAAnimationLinear", QuartzCorePath)
			    return mkCAAnimationLinear
			  #endif
			End Get
		#tag EndGetter
		Shared kCAAnimationLinear As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAAnimationPaced as text= SystemConstantName("kCAAnimationPaced", QuartzCorePath)
			    return mkCAAnimationPaced
			  #endif
			End Get
		#tag EndGetter
		Shared kCAAnimationPaced As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAAnimationRotateAuto as text= SystemConstantName("kCAAnimationRotateAuto", QuartzCorePath)
			    return mkCAAnimationRotateAuto
			  #endif
			End Get
		#tag EndGetter
		Shared kCAAnimationRotateAuto As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAAnimationRotateAutoReverse as text= SystemConstantName("kCAAnimationRotateAutoReverse", QuartzCorePath)
			    return mkCAAnimationRotateAutoReverse
			  #endif
			End Get
		#tag EndGetter
		Shared kCAAnimationRotateAutoReverse As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F66206F626A656374732074686174207370656369667920746865206B65796672616D652076616C75657320746F2075736520666F722074686520616E696D6174696F6E2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleArray.MakeFromPtr(getkeyTimes(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setkeyTimes id, if (value = nil,nil,value.id)
			  #endif
			End Set
		#tag EndSetter
		KeyTimes As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 44657465726D696E65732077686574686572206F626A6563747320616E696D6174696E6720616C6F6E6720746865207061746820726F7461746520746F206D617463682074686520706174682074616E67656E742E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getrotationMode(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setrotationMode id, value
			  #endif
			End Set
		#tag EndSetter
		RotationMode As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F66204E534E756D626572206F626A65637473207468617420646566696E65207468652074696768746E657373206F66207468652063757276652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleArray.MakeFromPtr(gettensionValues(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    settensionValues id, if (value = nil,nil,value.id)
			  #endif
			End Set
		#tag EndSetter
		TensionValues As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F7074696F6E616C206172726179206F662043414D6564696154696D696E6746756E6374696F6E206F626A65637473207468617420646566696E652074686520706163696E6720666F722065616368206B65796672616D65207365676D656E742E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleArray.MakeFromPtr(gettimingFunctions(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    settimingFunctions id, if (value = nil,nil,value.id)
			  #endif
			End Set
		#tag EndSetter
		TimingFunctions As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F66206F626A656374732074686174207370656369667920746865206B65796672616D652076616C75657320746F2075736520666F722074686520616E696D6174696F6E2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleArray.MakeFromPtr(getValues(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setvalues id, if (value = nil,nil,value.id)
			  #endif
			End Set
		#tag EndSetter
		Values As AppleArray
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
			Name="CalculationMode"
			Group="Behavior"
			Type="Text"
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
			Name="RotationMode"
			Group="Behavior"
			Type="Text"
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
