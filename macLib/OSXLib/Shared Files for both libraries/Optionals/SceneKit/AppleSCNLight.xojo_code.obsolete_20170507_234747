#tag Class
Protected Class AppleSCNLight
Inherits AppleSCNAnimatableObject
	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577206C69676874206F626A6563742E
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (SceneKitFrameWork.getlight(ClassPtr), true, true)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getattenuationEndDistance Lib SceneKitLibname Selector "attenuationEndDistance" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getattenuationFalloffExponent Lib SceneKitLibname Selector "attenuationFalloffExponent" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getattenuationStartDistance Lib SceneKitLibname Selector "attenuationStartDistance" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getshadowBias Lib SceneKitLibname Selector "shadowBias" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getshadowColor Lib SceneKitLibname Selector "shadowColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getshadowMapSize Lib SceneKitLibname Selector "shadowMapSize" (id as ptr) As FoundationFrameWork.nssize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getshadowMode Lib SceneKitLibname Selector "shadowMode" (id as ptr) As SCNShadowMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getshadowRadius Lib SceneKitLibname Selector "shadowRadius" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getshadowSampleCount Lib SceneKitLibname Selector "shadowSampleCount" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getspotInnerAngle Lib SceneKitLibname Selector "spotInnerAngle" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getspotOuterAngle Lib SceneKitLibname Selector "spotOuterAngle" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getzFar Lib SceneKitLibname Selector "zFar" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getzNear Lib SceneKitLibname Selector "zNear" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNLight
		  return if (aptr = nil, nil, new AppleSCNLight(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setAttenuationEndDistance Lib SceneKitLibname Selector "setAttenuationEndDistance:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setAttenuationFalloffExponent Lib SceneKitLibname Selector "setAttenuationFalloffExponent:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setAttenuationStartDistance Lib SceneKitLibname Selector "setAttenuationStartDistance:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setShadowBias Lib SceneKitLibname Selector "setShadowBias:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setshadowColor Lib SceneKitLibname Selector "setShadowColor:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setShadowMapSize Lib SceneKitLibname Selector "setShadowMapSize:" (id as ptr, value as FoundationFrameWork . nssize)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setshadowMode Lib SceneKitLibname Selector "setShadowMode:" (id as ptr, value as SCNShadowMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setShadowRadius Lib SceneKitLibname Selector "setShadowRadius:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setShadowSampleCount Lib SceneKitLibname Selector "setShadowSampleCount:" (id as ptr, value as uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setSpotInnerAngle Lib SceneKitLibname Selector "setSpotInnerAngle:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setSpotOuterAngle Lib SceneKitLibname Selector "setSpotOuterAngle:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setZFar Lib SceneKitLibname Selector "setZFar:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setZNear Lib SceneKitLibname Selector "setZNear:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		lightWithMDLLight constructor missing
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E63652066726F6D20746865206C696768742061742077686963682069747320696E74656E7369747920697320636F6D706C6574656C792064696D696E69736865642E20416E696D617461626C652E
		#tag Getter
			Get
			  return getattenuationEndDistance(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAttenuationEndDistance id,value
			End Set
		#tag EndSetter
		AttenuationEndDistance As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207472616E736974696F6E20637572766520666F7220746865206C69676874E280997320696E74656E73697479206265747765656E2069747320617474656E756174696F6E20737461727420616E6420656E642064697374616E6365732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getattenuationFalloffExponent(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAttenuationFalloffExponent id,value
			End Set
		#tag EndSetter
		AttenuationFalloffExponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E63652066726F6D20746865206C696768742061742077686963682069747320696E74656E7369747920626567696E7320746F2064696D696E6973682E20416E696D617461626C652E
		#tag Getter
			Get
			  return getattenuationStartDistance(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAttenuationStartDistance id,value
			End Set
		#tag EndSetter
		AttenuationStartDistance As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206C6967687420636173747320736861646F77732E
		#tag Getter
			Get
			  return SceneKitFrameWork.getcastsShadow(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setcastsShadow id, value
			End Set
		#tag EndSetter
		CastsShadow As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E65732077686963682063617465676F726965732074686973206C696768742062656C6F6E677320746F2E
		#tag Getter
			Get
			  return SceneKitFrameWork.getcategoryBitMask(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setcategoryBitMask id, value
			End Set
		#tag EndSetter
		CategoryBitMask As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mclassptr = nil then mclassptr = FoundationFramework.NSClassFromString ("SCNLight")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20696D616765206F72206F746865722076697375616C20636F6E74656E7420616666656374696E672074686520736861706520616E6420636F6C6F72206F662061206C69676874E280997320696C6C756D696E6174656420617265612E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function gobo Lib SceneKitLibname selector "gobo" (id as ptr) as ptr
			  return AppleSCNMaterialProperty.MakeFromPtr (gobo(id))
			End Get
		#tag EndGetter
		Gobo As AppleSCNMaterialProperty
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F6620746865206C696768742E20416E696D617461626C652E0A506C65617365206E6F746520796F752063616E20616C736F207573652061204347436F6C6F72526566207468656F7265746963616C6C792E20496620796F75206E65656420746F2C20706C6561736520696E666F726D206D652E
		#tag Getter
			Get
			  Declare function color_ Lib SceneKitLibname selector "color" (id as ptr) as ptr
			  return AppleColor.MakeFromPtr (color_(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setColor Lib SceneKitLibname selector "setColor:" (id as ptr, value as Ptr)
			  setColor id,value.id
			End Set
		#tag EndSetter
		LightColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Declare function type Lib SceneKitLibname selector "type" (id as ptr) as CFStringRef
			  return type (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setType Lib SceneKitLibname selector "setType:" (id as ptr, value as CFStringRef)
			  setType id, value
			End Set
		#tag EndSetter
		Protected LightType As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206E616D65206173736F636961746564207769746820746865206C696768742E
		#tag Getter
			Get
			  return FoundationFrameWork.getName (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFrameWork.setName mid, value
			End Set
		#tag EndSetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7274686F67726170686963207363616C65205363656E654B69742075736573207768656E2072656E646572696E672074686520736861646F77206D617020666F72206120646972656374696F6E616C206C696768742E20546869732070726F7065727479206170706C696573206F6E6C7920696620746865206C69676874E280997320747970652070726F70657274792069732053434E4C6967687454797065446972656374696F6E616C2E
		#tag Getter
			Get
			  return SceneKitFrameWork.getorthographicScale(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setorthographicScale id, value
			End Set
		#tag EndSetter
		OrthographicScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616D6F756E74206F6620636F7272656374696F6E20746F206170706C7920746F2074686520736861646F7720746F2070726576656E742072656E646572696E67206172746966616374732E2044656661756C7420312E302E
		#tag Getter
			Get
			  return getshadowBias(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setShadowBias id,value
			End Set
		#tag EndSetter
		ShadowBias As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F6620736861646F7773206361737420627920746865206C696768742E20416E696D617461626C652E2054686520696E7465726E616C206D6574686F64732073657420616E6420676574536861646F77436F6C6F72206163636570742061204347436F6C6F7252656620746F6F2E
		#tag Getter
			Get
			  Return AppleColor.MakeFromPtr(getshadowColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshadowColor id, if(value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ShadowColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F662074686520736861646F77206D617020696D6167652074686174205363656E654B69742072656E64657273207768656E206372656174696E6720736861646F77732E
		#tag Getter
			Get
			  return getshadowMapSize(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setShadowMapSize mid,value
			  
			End Set
		#tag EndSetter
		ShadowMapSize As FoundationFrameWork.nssize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6F6465205363656E654B6974207573657320746F2072656E64657220736861646F77732E2044656661756C7420466F72776172642E
		#tag Getter
			Get
			  return getshadowMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshadowMode id, value
			End Set
		#tag EndSetter
		ShadowMode As SCNShadowMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206E756D6265722074686174207370656369666965732074686520616D6F756E74206F6620626C757272696E672061726F756E6420746865206564676573206F6620736861646F7773206361737420627920746865206C696768742E20416E696D617461626C65
		#tag Getter
			Get
			  return getshadowRadius(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setShadowRadius id,value
			End Set
		#tag EndSetter
		ShadowRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F662073616D706C65732066726F6D2074686520736861646F77206D61702074686174205363656E654B6974207573657320746F2072656E646572206561636820706978656C2E2044656661756C7420312E
		#tag Getter
			Get
			  return getshadowSampleCount(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setShadowSampleCount id, value
			End Set
		#tag EndSetter
		ShadowSampleCount As Uinteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616E676C652C20696E20646567726565732C206F662074686520617265612066756C6C79206C697420627920612073706F746C696768742E20416E696D617461626C652E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getspotInnerAngle(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setSpotInnerAngle id,value
			End Set
		#tag EndSetter
		SpotInnerAngle As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616E676C652C20696E20646567726565732C206F66207468652061726561207061727469616C6C79206C697420627920612073706F746C696768742E20416E696D617461626C652E2044656661756C742034352E302E
		#tag Getter
			Get
			  return getspotOuterAngle(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setSpotOuterAngle id,value
			End Set
		#tag EndSetter
		SpotOuterAngle As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120636F6E7374616E74206964656E74696679696E67207468652067656E6572616C206265686176696F72206F6620746865206C696768742E
		#tag Getter
			Get
			  select case LightType
			  case kSCNLightTypeAmbient
			    return SCNLightType.Ambient
			  case kSCNLightTypeDirectional
			    return SCNLightType.Directional
			  case kSCNLightTypeOmni
			    return SCNLightType.Omni
			  case kSCNLightTypeSpot
			    return SCNLightType.Spot
			  case kSCNLightTypeIES
			    return SCNLightType.IES
			  case kSCNLightTypeProbe
			    return SCNLightType.Probe
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  select case value
			  case SCNLightType.Ambient
			    LightType = kSCNLightTypeAmbient
			  case SCNLightType.Directional
			    LightType = kSCNLightTypeDirectional
			  case SCNLightType.Omni
			    LightType = kSCNLightTypeOmni
			  case SCNLightType.Spot
			    LightType = kSCNLightTypeSpot
			  case SCNLightType.ies
			    LightType = kSCNLightTypeIES
			  case SCNLightType.Probe
			    LightType = kSCNLightTypeProbe
			  end select
			End Set
		#tag EndSetter
		Type As SCNLightType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D2064697374616E6365206265747765656E20746865206C6967687420616E6420612076697369626C65207375726661636520666F722063617374696E6720736861646F77732E2044656661756C7420312E302E
		#tag Getter
			Get
			  return getzFar(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setzFar id, value
			End Set
		#tag EndSetter
		zFar As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D2064697374616E6365206265747765656E20746865206C6967687420616E6420612076697369626C65207375726661636520666F722063617374696E6720736861646F77732E20416E696D617461626C652E2044656661756C74203130302E302E
		#tag Getter
			Get
			  return getzNear(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setZNear id, value
			End Set
		#tag EndSetter
		zNear As Double
	#tag EndComputedProperty


	#tag Constant, Name = kSCNLightTypeAmbient, Type = Text, Dynamic = False, Default = \"SCNLightTypeAmbient", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSCNLightTypeDirectional, Type = Text, Dynamic = False, Default = \"SCNLightTypeDirectional", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSCNLightTypeIES, Type = Text, Dynamic = False, Default = \"SCNLightTypeIES", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSCNLightTypeOmni, Type = Text, Dynamic = False, Default = \"SCNLightTypeOmni", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSCNLightTypeProbe, Type = Text, Dynamic = False, Default = \"SCNLightTypeProbe", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSCNLightTypeSpot, Type = Text, Dynamic = False, Default = \"SCNLightTypeSpot", Scope = Private
	#tag EndConstant


	#tag Enum, Name = SCNLightType, Type = Integer, Flags = &h0
		Ambient
		  Omni
		  Directional
		  Spot
		  IES
		Probe
	#tag EndEnum

	#tag Enum, Name = SCNShadowMode, Type = Integer, Flags = &h0
		Forward = 0
		  Deferred = 1
		Modulated = 2
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AttenuationEndDistance"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AttenuationFalloffExponent"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AttenuationStartDistance"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CastsShadow"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CategoryBitMask"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
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
			Name="OrthographicScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowBias"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowMode"
			Group="Behavior"
			Type="SCNShadowMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Forward"
				"1 - Deferred"
				"2 - Modulated"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowSampleCount"
			Group="Behavior"
			Type="Uinteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SpotInnerAngle"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SpotOuterAngle"
			Group="Behavior"
			Type="Double"
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
		#tag ViewProperty
			Name="Type"
			Group="Behavior"
			Type="SCNLightType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Ambient"
				"1 - Omni"
				"2 - Directional"
				"3 - Spot"
				"4 - IES"
				"5 - Probe"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="zFar"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="zNear"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
