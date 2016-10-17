#tag Class
Protected Class AppleCIColorMatrix
Inherits AppleCIFilter
	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E657720436F6C6F7220436C616D702C2073657474696E6720496E707574496D61676520616E6420636F6C6F7220766563746F72732E
		Sub Constructor(inputImage as picture = nil, RVector as Color = &cFF0000FF, GVector as Color = &c00FF00FF, BVector as Color = &c0000ffFF, AVector as Color = &c00000000, BiasVector as Color = &c000000ff)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIColorMatrix
		  if coloradjustmentfilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  if inputImage <> nil then InputCIImage = new AppleCIImage(inputImage)
		  InputRVector = new applecicolor (rvector)
		  InputBVector =new applecicolor (Bvector)
		  InputGVector = new applecicolor (Gvector)
		  InputAVector = new applecicolor (Avector)
		  InputBiasVector =new applecicolor ( Biasvector)
		  
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 54686520616C70686120766563746F722E2044656661756C742046463030303046462E
		#tag Getter
			Get
			  return minputAVector
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputAVector = value
			End Set
		#tag EndSetter
		InputAVector As AppleCIColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E707574204120566563746F722070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputAVectorDict <> nil then return FilterAttributes.InputAVectorDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputAVectorDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120636F6C6F7220766563746F7220746F206170706C617920746F2074686520726573756C742E2044656661756C742030303030303046462E
		#tag Getter
			Get
			  return minputBiasVector
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputBiasVector = value
			End Set
		#tag EndSetter
		InputBiasVector As AppleCIColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E707574204269617320566563746F722070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputBiasVectorDict <> nil then return FilterAttributes.InputBiasVectorDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputBiasVectorDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626C756520766563746F722E2044656661756C742030303030464646462E
		#tag Getter
			Get
			  return minputBVector
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputBVector = value
			End Set
		#tag EndSetter
		InputBVector As AppleCIColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E707574204220566563746F722070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputBVectorDict <> nil then return FilterAttributes.InputBVectorDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputBVectorDescription As Text
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
			  return minputGVector
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputGVector = value
			End Set
		#tag EndSetter
		InputGVector As AppleCIColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E707574204720566563746F722070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputGVectorDict <> nil then return FilterAttributes.InputGVectorDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputGVectorDescription As Text
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

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656420766563746F722E2044656661756C742046463030303046462E
		#tag Getter
			Get
			  return minputRVector
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputRVector = value
			End Set
		#tag EndSetter
		InputRVector As AppleCIColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E707574205220566563746F722070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputRVectorDict <> nil then return FilterAttributes.InputRVectorDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputRVectorDescription As Text
	#tag EndComputedProperty


	#tag Constant, Name = kCIColorMatrix, Type = Text, Dynamic = False, Default = \"CIColorMatrix", Scope = Private
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
