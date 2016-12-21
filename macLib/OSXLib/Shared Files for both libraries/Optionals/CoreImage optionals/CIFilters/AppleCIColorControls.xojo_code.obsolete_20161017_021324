#tag Class
Protected Class AppleCIColorControls
Inherits AppleCIFilter
	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E657720436F6C6F7220436F6E74726F6C2066696C7465722C2073657474696E6720496E707574496D61676520616E642053617475726174696F6E2C204272696768746E65737320616E6420436F6E74726173742E
		Sub Constructor(inputImage as picture = nil, Saturation as Double = 1.0, Brightness As Double = 0.0, Contrast as Double = 1.0)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIColorControls
		  if coloradjustmentfilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  if inputImage <> nil then InputCIImage = new AppleCIImage(inputImage)
		  InputSaturation = saturation
		  InputBrightness = Brightness
		  InputContrast = Contrast
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 546865206272696768746E657373206C6576656C2E2044656661756C7420302E302E
		#tag Getter
			Get
			  return mInputBrightness
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputBrightness = value
			End Set
		#tag EndSetter
		InputBrightness As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E707574206272696768746E6573732070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputBrightnessDict <> nil then return FilterAttributes.InputBrightnessDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputBrightnessDescription As Text
	#tag EndComputedProperty

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

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E7472617374206C6576656C2E2044656661756C7420312E302E
		#tag Getter
			Get
			  return mInputContrast
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputContrast = value
			End Set
		#tag EndSetter
		InputContrast As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420636F6E74726173742070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputContrastDict <> nil then return FilterAttributes.InputContrastDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputContrastDescription As Text
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

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656E746572206F6620746865206566666563742E2044656661756C7420283135302C2031353029
		#tag Getter
			Get
			  return minputmincomponents
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputmincomponents = value
			End Set
		#tag EndSetter
		InputMinComponents As AppleCIColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073617475726174696F6E206C6576656C2E2044656661756C7420312E302E
		#tag Getter
			Get
			  return mInputSaturation
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputSaturation = value
			End Set
		#tag EndSetter
		InputSaturation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E7075742073617475726174696F6E2070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputSaturationDict <> nil then return FilterAttributes.InputSaturationDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputSaturationDescription As Text
	#tag EndComputedProperty


	#tag Constant, Name = kCIColorControls, Type = Text, Dynamic = False, Default = \"CIColorControls", Scope = Private
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
			Name="InputBrightness"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputBrightnessDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputContrast"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputContrastDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputImageDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputSaturation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputSaturationDescription"
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
