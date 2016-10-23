#tag Class
Protected Class AppleCILanczosScaleTransform
Inherits AppleCIFilter
	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E6577204C616E637A6F73205363616C65205472616E73666F726D20666F72206F7074696D697A656420646F776E7363616C652C2073657474696E6720696E707574496D6167652C207363616C6520666163746F7220616E642061737065637420726174696F2E
		Sub Constructor(anImage as iosImage = nil,  Scale AS Double = 1.0, AspectRatio As Double = 1.0)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCILanczosScaleTransform 
		  if geometryadjustmentfilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  if animage <> nil then InputCIImage = new AppleciImage (anImage)
		  InputScale = Scale
		  InputAspectRatio = AspectRatio
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 437265617465732061206E6577204C616E637A6F73205363616C65205472616E73666F726D20666F72206F7074696D697A656420646F776E7363616C652C2073657474696E6720696E707574496D6167652C207363616C6520666163746F7220616E642061737065637420726174696F2E
		Sub Constructor(anImage as Picture = nil,  Scale As Double = 1.0, AspectRatio As Double = 1.0)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCILanczosScaleTransform 
		  if geometryadjustmentfilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  if animage <> nil then InputCIImage = new AppleciImage (anImage)
		  InputScale = Scale
		  InputAspectRatio = AspectRatio
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 5468652061737065637420726174696F2E2044656661756C7420312E302E
		#tag Getter
			Get
			  return mInputAspectRatio
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputAspectRatio = value
			End Set
		#tag EndSetter
		InputAspectRatio As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E707574417370656374526174696F2070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputAspectRatioDict <> nil then return FilterAttributes.InputAspectRatioDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputAspectRatioDescription As Text
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

	#tag ComputedProperty, Flags = &h0, Description = 546865207363616C6520666163746F7220666F7220746865206566666563742E2044656661756C7420312E
		#tag Getter
			Get
			  return minputscale
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputscale = value
			End Set
		#tag EndSetter
		InputScale As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E707574207363616C652070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputScaleDict <> nil then return FilterAttributes.InputScaleDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputScaleDescription As Text
	#tag EndComputedProperty


	#tag Constant, Name = kCILanczosScaleTransform, Type = Text, Dynamic = False, Default = \"CILanczosScaleTransform", Scope = Private
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
			Name="InputAspectRatioDescription"
			Group="Behavior"
			Type="Text"
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
