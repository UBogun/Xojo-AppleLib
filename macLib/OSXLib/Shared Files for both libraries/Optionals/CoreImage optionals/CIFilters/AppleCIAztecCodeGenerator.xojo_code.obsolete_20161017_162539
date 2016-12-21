#tag Class
Protected Class AppleCIAztecCodeGenerator
Inherits AppleCIFilter
	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E657720417A746563436F64652067656E657261746F722C2073657474696E6720746865206D6573736167652066726F6D20616E2055524C2C20436F7272656374696F6E4C6576656C2C204C617965727320616E6420436F6D706163745374796C65
		Sub Constructor(Message As AppleURL, CorrectionLevel As Double = 23.0, Layers as Integer = 0, CompactStyle As Boolean = False)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIAztecCodeGenerator
		  if generatorFilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  InputMessage = new AppleData(message)
		  InputCorrectionLevel = CorrectionLevel
		  InputLayers = layers
		  InputCompactStyle = compactStyle
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E657720417A746563436F64652067656E657261746F722C2073657474696E6720746865206D6573736167652066726F6D20746578742C20436F7272656374696F6E4C6576656C2C204C617965727320616E6420436F6D706163745374796C65
		Sub Constructor(Message As Text, CorrectionLevel As Double = 23.0, Layers as Integer = 0, CompactStyle As Boolean = False)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIAztecCodeGenerator
		  if generatorFilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  InputMessage = Message.toAppleData(AppleString.StringEncodings.ISOLatin1)
		  InputCorrectionLevel = CorrectionLevel
		  InputLayers = layers
		  InputCompactStyle = compactStyle
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746F207573652074686520636F6D70616374206F722066756C6C2D73697A6520417A74656320626172636F646520666F726D61742E2044656661756C742066616C73652E
		#tag Getter
			Get
			  return minputCompactStyle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputCompactStyle = value
			End Set
		#tag EndSetter
		InputCompactStyle As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420636F6D70616374207374796C652070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputCompactStyleDict<> nil then return FilterAttributes.InputCompactStyleDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputCompactStyleDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070657263656E74616765206F6620726564756E64616E637920746F2061646420746F20746865206D657373616765206461746120696E2074686520626172636F646520656E636F64696E672E20412068696768657220636F7272656374696F6E206C6576656C20616C6C6F7773206120626172636F646520746F20626520636F72726563746C792072656164206576656E207768656E207061727469616C6C792064616D616765642E
		#tag Getter
			Get
			  return mInputCorrectionLevel
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputCorrectionLevel = value
			End Set
		#tag EndSetter
		InputCorrectionLevel As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420636F7272656374696F6E6C6576656C2070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputCorrectionLevelDict <> nil then return FilterAttributes.InputCorrectionLevelDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputCorrectionLevelDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620636F6E63656E7472696320737175617265732028776974682061207769647468206F662074776F20706978656C7320656163682920656E636F64696E672074686520626172636F646520646174612E205768656E207468697320706172616D657465722069732073657420746F207A65726F2C20436F726520496D616765206175746F6D61746963616C6C792064657465726D696E65732074686520617070726F707269617465206E756D626572206F66206C617965727320746F20656E636F646520746865206D657373616765206174207468652073706563696669656420636F7272656374696F6E206C6576656C2E2044656661756C7420302E
		#tag Getter
			Get
			  return mInputLayers
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputLayers = value
			End Set
		#tag EndSetter
		InputLayers As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420636F7272656374696F6E6C6576656C2070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputLayersDict <> nil then return FilterAttributes.InputLayersDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputLayersDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865204170706C6544617461206F626A65637420636F6E7461696E696E6720746865206D6573736167652E2043616E206265207365742066726F6D2054657874206F722055524C2E
		#tag Getter
			Get
			  return minputmessage
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputMessage = value
			End Set
		#tag EndSetter
		InputMessage As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E707574206D6573736167652070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputMessageDict <> nil then return FilterAttributes.InputMessageDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputMessageDescription As Text
	#tag EndComputedProperty


	#tag Constant, Name = kCIAztecCodeGenerator, Type = Text, Dynamic = False, Default = \"CIAztecCodeGenerator", Scope = Private
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
			Name="InputCompactStyle"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputCompactStyleDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputCorrectionLevel"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputCorrectionLevelDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputLayers"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputLayersDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputMessageDescription"
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
