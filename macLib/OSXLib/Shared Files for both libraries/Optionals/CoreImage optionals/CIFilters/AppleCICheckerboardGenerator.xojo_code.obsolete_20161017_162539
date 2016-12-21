#tag Class
Protected Class AppleCICheckerboardGenerator
Inherits AppleCIFilter
	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E657720436865636B6572626F6172642067656E657261746F722C2073657474696E67207468652063656E7465722C20636F6C6F72732C207368617072706E65737320616E64207769647468206F662074686520737175617265732E
		Sub Constructor(CenterX as Double = 150, CenterY as Double = 150, Color0 as color = &c00000000, Color1 as Color = &cFFFFFF00, Width as Double = 80, Sharpness as Double = 1.0)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCICheckerboardGenerator
		  if generatorFilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  InputCenter = FoundationFrameWork.NSMakePoint(centerx, centery)
		  InputSharpness = sharpness
		  InputWidth = width
		  InputColor0 =  new AppleCIColor(color0)
		  InputColor1 = new AppleCIColor(color1)
		  
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 5468652063656E746572206F6620746865206566666563742E2044656661756C7420283135302C2031353029
		#tag Getter
			Get
			  return minputcenter
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputcenter = value
			End Set
		#tag EndSetter
		InputCenter As FoundationFramework.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E7075742063656E7465722070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputCenterDict <> nil then return FilterAttributes.InputCenterDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputCenterDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656E746572206F6620746865206566666563742E2044656661756C7420283135302C2031353029
		#tag Getter
			Get
			  return minputcolor0
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputcolor0 = value
			End Set
		#tag EndSetter
		InputColor0 As AppleCIColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656E746572206F6620746865206566666563742E2044656661756C7420283135302C2031353029
		#tag Getter
			Get
			  return minputcolor1
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputcolor1 = value
			End Set
		#tag EndSetter
		InputColor1 As AppleCIColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 44657465726D696E65732074686520616D6F756E74206F662073686172706E6573732E2044656661756C7420312E302E
		#tag Getter
			Get
			  return mInputsharpness
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputsharpness = value
			End Set
		#tag EndSetter
		InputSharpness As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E7075742073686172706E6573732070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputSharpnessDict <> nil then return FilterAttributes.InputSharpnessDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputSharpnessDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207769647468206F662065616368207371756172652E2044656661756C742038302E
		#tag Getter
			Get
			  return mInputWidth
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputWidth = value
			End Set
		#tag EndSetter
		InputWidth As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E7075742077696474682070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputWidthDict <> nil then return FilterAttributes.InputWidthDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputWidthDescription As Text
	#tag EndComputedProperty


	#tag Constant, Name = kCICheckerboardGenerator, Type = Text, Dynamic = False, Default = \"CICheckerboardGenerator", Scope = Private
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
			Name="InputCenterDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputSharpness"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputSharpnessDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputWidth"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputWidthDescription"
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
