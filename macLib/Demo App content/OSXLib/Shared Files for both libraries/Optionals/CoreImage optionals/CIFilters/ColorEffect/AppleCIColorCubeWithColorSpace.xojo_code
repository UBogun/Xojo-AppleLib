#tag Class
Protected Class AppleCIColorCubeWithColorSpace
Inherits AppleCIFilter
	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E6577204369436F6C6F72496E766572742066696C7465722C2073657474696E672074686520696E707574496D6167652E
		Sub Constructor(anImage as iosimage = nil, ColorCube as AppleLibColorCube = nil, ColorSpace As AppleCGColorSpace = nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIColorCubeWithColorSpace
		  if coloreffectfilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  InputCIImage = new AppleciImage (anImage)
		  if Colorcube <> nil then
		    InputCubeDimension = colorcube.cubesize
		    InputCubeData = new appledata (colorcube.cubedata)
		  end if
		  InputColorSpace = ColorSpace
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 437265617465732061206E6577204369436F6C6F72496E766572742066696C7465722C2073657474696E672074686520696E707574496D6167652E
		Sub Constructor(anImage as Picture = nil, ColorCube as AppleLibColorCube = nil, ColorSpace As AppleCGColorSpace = nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIColorCubeWithColorSpace
		  if coloreffectfilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  InputCIImage = new AppleciImage (anImage)
		  if Colorcube <> nil then
		    InputCubeDimension = colorcube.cubesize
		    InputCubeData = new appledata (colorcube.cubedata)
		  end if
		  InputColorSpace = ColorSpace
		  
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72737061636520666F722074686520726573756C742E20557365206E696C20746F20757365207468652064656661756C742073706163652E
		#tag Getter
			Get
			  return mInputColorspace
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputColorspace = value
			End Set
		#tag EndSetter
		InputColorSpace As AppleCGColorSpace
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520496E707574436F6C6F7253706163652070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputColorSpaceDict <> nil then return FilterAttributes.InputColorSpaceDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputColorSpaceDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520434C55542E205365652074686520646F63756D656E746174696F6E206F722075736520616E204170706C654C6962436F6C6F72437562652E
		#tag Getter
			Get
			  return mInputCubeData
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputCubeData = value
			End Set
		#tag EndSetter
		InputCubeData As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520496E70757443756265446174612070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputCubeDimensionDict <> nil then return FilterAttributes.InputCubeDimensionDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputCubeDataDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C656E6774682C20696E20746578656C732C206F6620656163682073696465206F6620746865206375626520746578747572652E2044656661756C7420322C206D6178203132382E
		#tag Getter
			Get
			  return mInputCubeDimension
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputCubeDimension = value
			End Set
		#tag EndSetter
		InputCubeDimension As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520496E7075744375626544696D656E73696F6E2070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputCubeDimensionDict <> nil then return FilterAttributes.InputCubeDimensionDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputCubeDimensionDescription As Text
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


	#tag Constant, Name = kCIColorCubeWithColorSpace, Type = Text, Dynamic = False, Default = \"CIColorCubeWithColorSpace", Scope = Private
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
			Name="InputColorSpaceDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputCubeDataDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputCubeDimension"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputCubeDimensionDescription"
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
