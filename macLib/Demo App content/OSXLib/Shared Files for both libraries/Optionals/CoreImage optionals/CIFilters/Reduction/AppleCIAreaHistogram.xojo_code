#tag Class
Protected Class AppleCIAreaHistogram
Inherits AppleCIFilter
	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E657720436941726561417265614869736F6772616D2066696C7465722C2073657474696E6720696E707574496D6167652C20657874656E742C20436F756E7420616E64205363616C652E
		Sub Constructor(anImage as iosimage = nil, x as Double = 0, y as Double = 0, width as Double = 0, height as double = 0, Count as integer = 256, Scale as Double = 1)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIAreaHistogram
		  if reductionfilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  if anImage <> nil then
		    InputCIImage = new AppleciImage (anImage)
		    if width = 0 or height = 0 then
		      width = anImage.Width
		      height = anImage.Height
		    end if
		    InputExtent = FoundationFrameWork.NSMakerect (x, y, width, height)
		  end if
		  Inputcount = count
		  InputScale = Scale
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 437265617465732061206E657720436941726561417265614869736F6772616D2066696C7465722C2073657474696E6720696E707574496D6167652C20657874656E742C20436F756E7420616E64205363616C652E
		Sub Constructor(anImage as Picture = nil,x as Double = 0, y as Double = 0, width as Double = 0, height as double = 0, Count as integer = 256, Scale as Double = 1)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIAreaHistogram
		  if reductionfilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  if anImage <> nil then
		     InputCIImage = new AppleciImage (anImage)
		    if width = 0 or height = 0 then
		      width = anImage.Width
		      height = anImage.Height
		    end if
		    InputExtent = FoundationFrameWork.NSMakerect (x, y, width, height)
		  end if
		  
		  Inputcount = count
		  InputScale = Scale
		  
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E70757420696D61676520696E20697473206E617469766520666F726D2E
		#tag Getter
			Get
			  return minputcount
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputcount = value
			End Set
		#tag EndSetter
		InputCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520496E707574436F756E742070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputCountDict <> nil then return FilterAttributes.InputCountDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputCountDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206172656120746F20696E7665737469676174652E20
		#tag Getter
			Get
			  return minputextent
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputextent = value
			End Set
		#tag EndSetter
		InputExtent As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520496E707574457874656E742070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputExtentDict <> nil then return FilterAttributes.InputExtentDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputExtentDescription As Text
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

	#tag ComputedProperty, Flags = &h0, Description = 41207363616C6520666163746F7220666F722074686520686973746F6772616D2E2044656661756C7420312E
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


	#tag Constant, Name = kCIAreaHistogram, Type = Text, Dynamic = False, Default = \"CIAreaHistogram", Scope = Private
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
