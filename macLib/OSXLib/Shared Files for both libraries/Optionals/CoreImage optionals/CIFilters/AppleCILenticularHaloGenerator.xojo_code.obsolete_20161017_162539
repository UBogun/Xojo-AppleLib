#tag Class
Protected Class AppleCILenticularHaloGenerator
Inherits AppleCIFilter
	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E65772048616C6F2047656E657261746F722C2073657474696E67207468652063656E7465722C20746865206D6178696D756D20636F6C6F72732C2068616C6F207261646975732C20776964746820616E64206F7665726C617020616E6420537472696174696F6E20737472656E67746820616E6420636F6E747261737420616E6420612074696D652070726F70657274792E
		Sub Constructor(centerx as double = 150, centery as double = 150, aColor as color = &cFFFFFF00, HaloRadius as Double = 70.0, HaloWidth as Double = 87.0, HaloOverlap as Double = 0.77, StriationStrength as Double = 0.50, StriationContrast as Double = 1.00, Time as Double = 0.0)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCILenticularHaloGenerator
		  if generatorFilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  InputCenter = FoundationFrameWork.NSMakePoint(centerx, centery)
		  InputColor =  new AppleCIColor(acolor)
		  InputHaloRadius = haloradius
		  InputHaloWidth = halowidth
		  InputHaloOverlap = halooverlap
		  InputStriationStrength = StriationStrength
		  InputStriationContrast = striationcontrast
		  InputTime = time
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

	#tag ComputedProperty, Flags = &h0, Description = 436F6E74726F6C73207468652070726F706F7274696F6E206F66207265642C20677265656E2C20616E6420626C75652068616C6F73
		#tag Getter
			Get
			  return minputcicolor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputcicolor = value
			End Set
		#tag EndSetter
		InputColor As AppleCIColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420636F6C6F722070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputColorDict <> nil then return FilterAttributes.InputColorDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputColorDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 436F6E74726F6C7320686F77206D75636820746865207265642C20677265656E2C20616E6420626C75652068616C6F73206F7665726C61702E20412076616C7565206F662030206D65616E73206E6F206F7665726C6170202861206C6F74206F662073657061726174696F6E292E20412076616C7565206F662031206D65616E732066756C6C206F7665726C6170202877686974652068616C6F73292E202044656661756C7420302E37372E
		#tag Getter
			Get
			  return mInputHaloOverlap
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputHaloOverlap = value
			End Set
		#tag EndSetter
		InputHaloOverlap As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E7075742068616C6F2077696474682070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputHaloOverlapDict <> nil then return FilterAttributes.InputHaloOverlapDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputHaloOverlapDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C656E7320666C617265207261646975732E2044656661756C742037302E302E
		#tag Getter
			Get
			  return mInputHaloRadius
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputHaloRadius = value
			End Set
		#tag EndSetter
		InputHaloRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E7075742068616C6F207261646975732070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputHaloRadiusDict <> nil then return FilterAttributes.InputHaloRadiusDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputHaloRadiusDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E6365206265747765656E20696E6E657220616E64206F7574657220666C6172652E2044656661756C742038372E302E
		#tag Getter
			Get
			  return mInputHaloWidth
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputHaloWidth = value
			End Set
		#tag EndSetter
		InputHaloWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E7075742068616C6F2077696474682070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputHaloWidthDict <> nil then return FilterAttributes.InputHaloWidthDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputHaloWidthDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420737472696174696F6E20737472656E6774682070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputStriationContrastDict <> nil then return FilterAttributes.InputStriationContrastDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputStriationContestDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 436F6E74726F6C7320746865206272696768746E657373206F6620746865207261696E626F772D636F6C6F7265642068616C6F20617265612E2044656661756C7420302E35302E
		#tag Getter
			Get
			  return minputStriationcontrast
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputStriationcontrast = value
			End Set
		#tag EndSetter
		InputStriationContrast As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 436F6E74726F6C7320746865206272696768746E657373206F6620746865207261696E626F772D636F6C6F7265642068616C6F20617265612E2044656661756C7420302E35302E
		#tag Getter
			Get
			  return minputStriationStrength
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputStriationStrength = value
			End Set
		#tag EndSetter
		InputStriationStrength As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420737472696174696F6E20737472656E6774682070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputStriationStrengthDict <> nil then return FilterAttributes.InputStriationStrengthDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputStriationStrengthDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4164647320612072616E646F6D6E65737320746F20746865206C656E7320666C6172653B206974206361757365732074686520666C61726520746F2022737061726B6C6522206173206974206368616E676573207468726F75676820766172696F75732074696D652076616C7565732E2044656661756C7420302E302E
		#tag Getter
			Get
			  return mInputTime
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputTime = value
			End Set
		#tag EndSetter
		InputTime As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E7075742074696D652070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputTimedict <> nil then return FilterAttributes.InputTimedict.LocalizedDescription
			End Get
		#tag EndGetter
		InputTimeDescription As Text
	#tag EndComputedProperty


	#tag Constant, Name = kCILenticularHaloGenerator, Type = Text, Dynamic = False, Default = \"CILenticularHaloGenerator", Scope = Private
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
			Name="InputColorDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputHaloOverlap"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputHaloOverlapDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputHaloRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputHaloRadiusDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputHaloWidth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputHaloWidthDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputStriationContestDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputStriationContrast"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputStriationStrength"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputStriationStrengthDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputTime"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputTimeDescription"
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
