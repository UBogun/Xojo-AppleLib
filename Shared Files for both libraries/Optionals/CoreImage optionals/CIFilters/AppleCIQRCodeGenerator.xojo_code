#tag Class
Protected Class AppleCIQRCodeGenerator
Inherits AppleCIFilter
	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E6577205152436F64652067656E657261746F722C2073657474696E6720746865206D6573736167652066726F6D20616E2055524C20616E642074686520636F7272656374696F6E206C6576656C2E
		Sub Constructor(Message As AppleURL, CorrectionLevel As QRCorrectionLevels = QRCorrectionLevels.Medium)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIQRCodeGenerator
		  if generatorFilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  InputMessage = new AppleData(message)
		  setCorrectionLevel (CorrectionLevel)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E6577205152436F64652067656E657261746F722C2073657474696E6720746865206D6573736167652066726F6D207465787420616E642074686520636F7272656374696F6E206C6576656C2E
		Sub Constructor(Message As Text, CorrectionLevel As QRCorrectionLevels = QRCorrectionLevels.Medium)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIQRCodeGenerator
		  if generatorFilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  InputMessage = Message.toAppleData(AppleString.StringEncodings.ISOLatin1)
		  setCorrectionLevel (CorrectionLevel)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetCorrectionLevel(level as QRCorrectionLevels)
		  dim t as text
		  select case level
		  case QRCorrectionLevels.Lowest
		    t = kl
		  case QRCorrectionLevels.Medium
		    t = kM
		  case QRCorrectionLevels.Higher
		    t = kQ
		  case QRCorrectionLevels.Highest
		    t = kH
		  end select
		  InputCorrectionLevel = t
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 5468652070657263656E74616765206F6620726564756E64616E637920746F2061646420746F20746865206D657373616765206461746120696E2074686520626172636F646520656E636F64696E672E20412068696768657220636F7272656374696F6E206C6576656C20616C6C6F7773206120626172636F646520746F20626520636F72726563746C792072656164206576656E207768656E207061727469616C6C792064616D616765642E
		#tag Getter
			Get
			  return mInputCorrectionLevelText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputCorrectionLevelText = value
			End Set
		#tag EndSetter
		InputCorrectionLevel As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420636F7272656374696F6E6C6576656C2070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputCorrectionLevelDict <> nil then return FilterAttributes.InputCorrectionLevelDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputCorrectionLevelDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20656E756D65726174696F6E20636F6E76656E69656E6365207772617070657220666F722074686520636F7272656374696F6E206C6576656C2E
		#tag Getter
			Get
			  select case InputCorrectionLevel
			  case kl
			    return QRCorrectionLevels.Lowest
			  case km
			    return QRCorrectionLevels.Medium
			  case kq
			    return QRCorrectionLevels.Higher
			  case kH
			    return QRCorrectionLevels.Highest
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SetCorrectionLevel (value)
			End Set
		#tag EndSetter
		InputCorrectionLevelEnumeration As QRCorrectionLevels
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


	#tag Constant, Name = kCIQRCodeGenerator, Type = Text, Dynamic = False, Default = \"CIQRCodeGenerator", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kH, Type = Text, Dynamic = False, Default = \"H", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kL, Type = Text, Dynamic = False, Default = \"L", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kM, Type = Text, Dynamic = False, Default = \"M", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kQ, Type = Text, Dynamic = False, Default = \"Q", Scope = Private
	#tag EndConstant


	#tag Enum, Name = QRCorrectionLevels, Type = Integer, Flags = &h0
		Lowest = 7
		  Medium = 15
		  Higher = 25
		Highest = 30
	#tag EndEnum


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
			Name="InputCorrectionLevel"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputCorrectionLevelDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputCorrectionLevelEnumeration"
			Group="Behavior"
			Type="QRCorrectionLevels"
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
