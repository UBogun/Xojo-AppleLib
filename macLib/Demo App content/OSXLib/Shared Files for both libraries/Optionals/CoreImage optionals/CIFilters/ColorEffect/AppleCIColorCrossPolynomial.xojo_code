#tag Class
Protected Class AppleCIColorCrossPolynomial
Inherits AppleCIFilter
	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E6577204369436F6C6F72496E766572742066696C7465722C2073657474696E672074686520696E707574496D6167652E
		Sub Constructor(anImage as iosimage = nil, RedCoefficients as appleLibVector10 = nil, GreenCoefficients as appleLibVector10 = nil,  BlueCoefficients as appleLibVector10 = nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIColorCrossPolynomial
		  if coloreffectfilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  if RedCoefficients = nil then RedCoefficients = new AppleLibVector10(1, 0, 0, 0, 0, 0, 0, 0, 0, 0)
		  if GreenCoefficients = nil then GreenCoefficients = new AppleLibVector10(0, 1, 0, 0, 0, 0, 0, 0, 0, 0)
		  if BlueCoefficients = nil then BlueCoefficients = new AppleLibVector10(0, 0, 1, 0, 0, 0, 0, 0, 0, 0)
		  
		  if anImage <> nil then InputCIImage = new AppleciImage (anImage)
		  InputRedCoefficients = RedCoefficients
		  InputGreenCoefficients = GreenCoefficients
		  InputBlueCoefficients = BlueCoefficients
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 437265617465732061206E6577204369436F6C6F72496E766572742066696C7465722C2073657474696E672074686520696E707574496D6167652E
		Sub Constructor(anImage as Picture = nil, RedCoefficients as appleLibVector10 = nil, GreenCoefficients as appleLibVector10 = nil,  BlueCoefficients as appleLibVector10 = nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIColorCrossPolynomial
		  if coloreffectfilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  if RedCoefficients = nil then RedCoefficients = new AppleLibVector10(1, 0, 0, 0, 0, 0, 0, 0, 0, 0)
		  if GreenCoefficients = nil then GreenCoefficients = new AppleLibVector10(0, 1, 0, 0, 0, 0, 0, 0, 0, 0)
		  if BlueCoefficients = nil then BlueCoefficients = new AppleLibVector10(0, 0, 1, 0, 0, 0, 0, 0, 0, 0)
		  
		  if anImage <> nil then InputCIImage = new AppleciImage (anImage)
		  InputRedCoefficients = RedCoefficients
		  InputGreenCoefficients = GreenCoefficients
		  InputBlueCoefficients = BlueCoefficients
		  
		  
		End Sub
	#tag EndMethod


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
		InputBlueCoefficients As AppleCIVector
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
		InputGreenCoefficients As AppleCIvector
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
		InputRedCoefficients As AppleCIvector
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E7075742052656420566563746F722070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputRedCoefficientsDict <> nil then return FilterAttributes.InputRedCoefficientsDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputRedCoefficientsDescription As Text
	#tag EndComputedProperty


	#tag Constant, Name = kCIColorCrossPolynomial, Type = Text, Dynamic = False, Default = \"CIColorCrossPolynomial", Scope = Private
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
