#tag Class
Protected Class AppleCITemperatureAndTint
Inherits AppleCIFilter
	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E65772054656D706572617475726520616E642054696E7420636F6E76657273696F6E2066696C7465722C2073657474696E672074686520496E707574496D6167652C207069637475726520616E642074617267657420436F6C6F7254656D706572617475726520616E642054696E742E
		Sub Constructor(inputImage as picture = nil, NeutralTemperature as Double = 6500.0, NeutralTint as Double = 0.0, NeutralTargetTemperature As Double = 6500.0, NeutralTargetTint As Double = 0.0)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCITemperatureAndTint
		  if coloradjustmentfilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  if inputImage <> nil then InputCIImage = new AppleCIImage(inputImage)
		  InputNeutral = FoundationFrameWork.NSMakeSize(neutralTemperature, NeutralTint)
		  InputTargetNeutral = FoundationFrameWork.NSMakeSize(neutralTargetTemperature, NeutralTargetTint)
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 54686520696E70757420696D61676520696E20697473206E617469766520666F726D2E
		#tag Getter
			Get
			  return minputciimage
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputCIImage = value
			End Set
		#tag EndSetter
		InputCIImage As AppleCIImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E70757420696D61676520636F6E76657274656420746F20616E204170706C65496D616765
		#tag Getter
			Get
			  return new appleimage(InputCIImage)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  InputCIImage = new AppleCIImage(value.CGImage)
			End Set
		#tag EndSetter
		InputImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420696D6167652070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputImageDict <> nil then return FilterAttributes.InputImageDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputImageDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E707574206E65757472616C2070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputNeutralDict <> nil then return FilterAttributes.InputNeutralDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputINeutralDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420746172676574206E65757472616C2070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputTargetNeutralDict <> nil then return FilterAttributes.InputTargetNeutralDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputITargetNeutralDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 436F6C6F722074656D706572617475726520616E642074696E742076616C756520666F722074686520696E70757420696D6167652E2044656661756C742028363530302C203029
		#tag Getter
			Get
			  return mInputNeutral
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputNeutral = value
			End Set
		#tag EndSetter
		InputNeutral As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 436F6C6F722074656D706572617475726520616E642074696E742076616C756520666F7220746865206F757470757420696D6167652E2044656661756C742028363530302C203029
		#tag Getter
			Get
			  return mInputTargetNeutral
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputTargetNeutral = value
			End Set
		#tag EndSetter
		InputTargetNeutral As FoundationFrameWork.NSSize
	#tag EndComputedProperty


	#tag Constant, Name = kCITemperatureAndTint, Type = Text, Dynamic = False, Default = \"CITemperatureAndTint", Scope = Private
	#tag EndConstant


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
			Name="InputImageDescription"
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
			Name="LocalizedFilterName"
			Group="Behavior"
			Type="Text"
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
