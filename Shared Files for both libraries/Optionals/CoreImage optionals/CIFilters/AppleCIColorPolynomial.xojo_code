#tag Class
Protected Class AppleCIColorPolynomial
Inherits AppleCIFilter
	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E657720436F6C6F7220506F6C796E6F6D69616C2066696C7465722C2073657474696E6720496E707574496D61676520616E6420436F656666696369656E747320666F72205265642C20477265656E2C20426C756520616E6420416C7068612E
		Sub Constructor(inputImage as picture = nil, RedCoefficients as Color = &c00FF00FF, GreenCoefficients as Color = &c00FF00FF, BlueCoefficients as Color = &c00FF00FF, AlphaCoefficients as Color = &c00FF00FF)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIColorPolynomial
		  if coloradjustmentfilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  if inputImage <> nil then InputCIImage = new AppleCIImage(inputImage)
		  InputRedCoefficients = new applecicolor (RedCoefficients)
		  InputGreenCoefficients = new applecicolor (GreenCoefficients)
		  InputBlueCoefficients = new applecicolor (BlueCoefficients)
		  InputAlphaCoefficients = new applecicolor (AlphaCoefficients)
		  
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 54686520616C70686120766563746F722E2044656661756C742030304646303046462E
		#tag Getter
			Get
			  return minputAlphaCoefficients
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputAlphaCoefficients = value
			End Set
		#tag EndSetter
		InputAlphaCoefficients As AppleCIColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420416C70686120566563746F722070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputAlphaCoefficientsDict <> nil then return FilterAttributes.InputAlphaCoefficientsDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputAlphaCoefficientsDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626C756520766563746F722E2044656661756C742030303030464646462E
		#tag Getter
			Get
			  return minputBlueCoefficients
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputBlueCoefficients = value
			End Set
		#tag EndSetter
		InputBlueCoefficients As AppleCIColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420426C756520566563746F722070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputBlueCoefficientsDict <> nil then return FilterAttributes.InputBlueCoefficientsDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputBlueCoefficientsDescription As Text
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520677265656E20766563746F722E2044656661756C742030304646303046462E
		#tag Getter
			Get
			  return minputGreenCoefficients
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputGreenCoefficients = value
			End Set
		#tag EndSetter
		InputGreenCoefficients As AppleCIColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420477265656E20566563746F722070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputGreenCoefficientsDict<> nil then return FilterAttributes.InputGreenCoefficientsDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputGreenCoefficientsDescription As Text
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

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656420766563746F722E2044656661756C742030304646303046462E
		#tag Getter
			Get
			  return minputRedCoefficients
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputRedCoefficients = value
			End Set
		#tag EndSetter
		InputRedCoefficients As AppleCIColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E7075742052656420566563746F722070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputRedCoefficientsDict <> nil then return FilterAttributes.InputRedCoefficientsDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputRedCoefficientsDescription As Text
	#tag EndComputedProperty


	#tag Constant, Name = kCIColorPolynomial, Type = Text, Dynamic = False, Default = \"CIColorPolynomial", Scope = Private
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
			Name="InputAlphaCoefficientsDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputBiasVectorDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputBlueCoefficientsDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputGreenCoefficientsDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputImageDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputMaxComponentsDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputMinComponentsDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputRedCoefficientsDescription"
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
