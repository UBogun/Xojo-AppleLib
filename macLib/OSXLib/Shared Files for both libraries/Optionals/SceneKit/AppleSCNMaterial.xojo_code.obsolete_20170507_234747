#tag Class
Protected Class AppleSCNMaterial
Inherits AppleSCNANimatableObject
	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577206D6174657269616C206F626A6563742E
		Sub Constructor()
		  Declare function material Lib SceneKitLibname selector "material" (id as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (material(classptr))
		  Retainclassobject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function getambientOcclusion Lib SceneKitLibname Selector "ambientOcclusion" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function getblendMode Lib SceneKitLibname Selector "blendMode" (id as ptr) As SCNBlendMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function getselfIllumination Lib SceneKitLibname Selector "selfIllumination" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function getshininess Lib SceneKitLibname Selector "shininess" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function gettransparency Lib SceneKitLibname Selector "transparency" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNMaterial
		  return if (aptr= nil, nil, new AppleSCNMaterial(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Sub setBlendMode Lib SceneKitLibname Selector "setBlendMode:" (id as ptr, value as SCNBlendMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Sub setshininess Lib SceneKitLibname Selector "setShininess:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Sub settransparency Lib SceneKitLibname Selector "settransparency:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		materialWithMDLMaterial Constructor missing
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A6563742074686174206D616E6167657320746865206D6174657269616CE280997320726573706F6E736520746F20616D6269656E74206C69676874696E672E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function ambient Lib SceneKitLibname selector "ambient" (id as ptr) as ptr
			  return  AppleSCNMaterialProperty.MakefromPtr (ambient (id))
			End Get
		#tag EndGetter
		Ambient As AppleSCNMaterialProperty
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A65637420746861742070726F766964657320636F6C6F722076616C75657320746F206265206D756C7469706C69656420776974682074686520616D6269656E74206C6967687420616666656374696E6720746865206D6174657269616C2E2028726561642D6F6E6C792920417661696C61626C6520696E20694F5320392E3020616E64206C617465722E
		#tag Getter
			Get
			  if RespondsToSelector("ambientOcclusion", classptr) then
			    return  AppleSCNMaterialProperty.MakefromPtr (getambientOcclusion (mid))
			  end if
			End Get
		#tag EndGetter
		AmbientOcclusion As AppleSCNMaterialProperty
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6F646520746861742064657465726D696E657320686F7720706978656C20636F6C6F72732072656E6465726564207573696E672074686973206D6174657269616C20626C656E642077697468206F7468657220706978656C20636F6C6F727320696E207468652072656E646572696E67207461726765742E20417661696C61626C6520696E20694F5320392E3020616E64206C617465722E
		#tag Getter
			Get
			  if RespondsToSelector ("blendMode", Classptr) then
			    return  getblendMode (mid)
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector( "setBlendMode:", classptr) then
			    setblendMode (mid, value)
			  end if
			End Set
		#tag EndSetter
		BlendMode As SCNBlendMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mclassptr = nil then mClassPtr= FoundationFramework.NSClassFromString ("SCNMaterial")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6F64652064657465726D696E696E67207768696368206661636573206F6620612073757266616365205363656E654B69742072656E646572732E20416E696D617461626C652E
		#tag Getter
			Get
			  Declare function cullMode Lib SceneKitLibname selector "cullMode" (id as ptr) as SCNCullMode
			  return  cullMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setcullMode Lib SceneKitLibname selector "setCullMode:" (id as ptr, value as SCNCullMode)
			  setcullMode (id, value)
			End Set
		#tag EndSetter
		CullMode As SCNCullMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A6563742074686174206D616E6167657320746865206D6174657269616CE2809973206469666675736520726573706F6E736520746F206C69676874696E672E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function diffuse Lib SceneKitLibname selector "diffuse" (id as ptr) as ptr
			  return  AppleSCNMaterialProperty.MakefromPtr (diffuse (id))
			End Get
		#tag EndGetter
		Diffuse As AppleSCNMaterialProperty
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205363656E654B69742073686F756C642072656E64657220626F74682066726F6E7420616E64206261636B206661636573206F66206120737572666163652E20416E696D617461626C652E
		#tag Getter
			Get
			  Declare function DoubleSided Lib SceneKitLibname selector "isDoubleSided" (id as ptr) as Boolean
			  return  DoubleSided (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setDoubleSided Lib SceneKitLibname selector "setDoubleSided:" (id as ptr, value as Boolean)
			  setDoubleSided (id, value)
			  
			End Set
		#tag EndSetter
		DoubleSided As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A656374207468617420646566696E65732074686520636F6C6F7220656D6974746564206279206561636820706F696E74206F6E206120737572666163652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function emission Lib SceneKitLibname selector "emission" (id as ptr) as ptr
			  return  AppleSCNMaterialProperty.MakefromPtr (emission (id))
			End Get
		#tag EndGetter
		Emission As AppleSCNMaterialProperty
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120666163746F7220616666656374696E6720746865206D6174657269616CE2809973207265666C65637469766974792E20416E696D617461626C652E
		#tag Getter
			Get
			  return SceneKitFrameWork.getfresnelExponent(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setfresnelExponent id, value
			End Set
		#tag EndSetter
		FresnelExponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mkSCNLightingModelBlinn as text = SystemConstantName("SCNLightingModelBlinn", SceneKitPath)
			  return mkSCNLightingModelBlinn
			End Get
		#tag EndGetter
		Private Shared kSCNLightingModelBlinn As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mkSCNLightingModelConstant as text = SystemConstantName("SCNLightingModelConstant", SceneKitPath)
			  return mkSCNLightingModelConstant
			End Get
		#tag EndGetter
		Private Shared kSCNLightingModelConstant As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mkSCNLightingModelLambert as text = SystemConstantName("SCNLightingModelLambert", SceneKitPath)
			  return mkSCNLightingModelLambert
			End Get
		#tag EndGetter
		Private Shared kSCNLightingModelLambert As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mkSCNLightingModelPhong as text = SystemConstantName("SCNLightingModelPhong", SceneKitPath)
			  return mkSCNLightingModelPhong
			End Get
		#tag EndGetter
		Private Shared kSCNLightingModelPhong As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C69676874696E6720666F726D756C612074686174205363656E654B6974207573657320746F2072656E64657220746865206D6174657269616C2E20436F6E76656E69656E6365206D6574686F6420666F72204C69676874696E674D6F64656C4E616D652E
		#tag Getter
			Get
			  select case LightingModelName
			  case kSCNLightingModelBlinn
			    return SCNLightingModel.Blinn
			  case kSCNLightingModelLambert
			    return SCNLightingModel.Lambert
			  case kSCNLightingModelPhong
			    return SCNLightingModel.Phong
			  case kSCNLightingModelConstant
			    return SCNLightingModel.ConstantLighting
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim result as text
			  select case value
			  case SCNLightingModel.Blinn
			    result = kSCNLightingModelBlinn
			  case SCNLightingModel.ConstantLighting
			    result = kSCNLightingModelConstant
			  case SCNLightingModel.Lambert
			    result = kSCNLightingModelLambert
			  case SCNLightingModel.Phong
			    result = kSCNLightingModelPhong
			  end select
			  LightingModelName  = result
			End Set
		#tag EndSetter
		LightingModel As SCNLightingModel
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C69676874696E6720666F726D756C612074686174205363656E654B6974207573657320746F2072656E64657220746865206D6174657269616C2E
		#tag Getter
			Get
			  Declare function lightingModelName Lib SceneKitLibname selector "lightingModelName" (id as ptr) as CFStringRef
			  return  lightingModelName (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setlightingModelName Lib SceneKitLibname selector "setLightingModelName:" (id as ptr, value as cfstringref)
			  setlightingModelName id, value
			End Set
		#tag EndSetter
		LightingModelName As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205363656E654B697420706572666F726D73206C69676874696E672063616C63756C6174696F6E732070657220766572746578206F722070657220706978656C2E20416E696D617461626C652E
		#tag Getter
			Get
			  Declare function litPerPixel Lib SceneKitLibname selector "isLitPerPixel" (id as ptr) as Boolean
			  return  litPerPixel (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setlitPerPixel Lib SceneKitLibname selector "setLitPerPixel:" (id as ptr, value as Boolean)
			  setlitPerPixel (id, value)
			  
			End Set
		#tag EndSetter
		LitPerPixel As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206D6174657269616C20726573706F6E6473206964656E746963616C6C7920746F20626F746820616D6269656E7420616E642064696666757365206C69676874696E672E20416E696D617461626C652E
		#tag Getter
			Get
			  Declare function locksAmbientWithDiffuse Lib SceneKitLibname selector "locksAmbientWithDiffuse" (id as ptr) as Boolean
			  return  locksAmbientWithDiffuse (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setlocksAmbientWithDiffuse Lib SceneKitLibname selector "setLocksAmbientWithDiffuse:" (id as ptr, value as Boolean)
			  setlocksAmbientWithDiffuse (id, value)
			  
			End Set
		#tag EndSetter
		LocksAmbientWithDiffuse As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A65637420746861742070726F766964657320636F6C6F722076616C756573207468617420617265206D756C7469706C696564207769746820706978656C7320696E2061206D6174657269616C20616674657220616C6C206F746865722073686164696E6720697320636F6D706C6574652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function multiply Lib SceneKitLibname selector "multiply" (id as ptr) as ptr
			  return  AppleSCNMaterialProperty.MakefromPtr (multiply (id))
			End Get
		#tag EndGetter
		Multiply As AppleSCNMaterialProperty
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206E616D65206173736F636961746564207769746820746865206D6174657269616C2E
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

	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A656374207468617420646566696E657320746865206E6F6D696E616C206F7269656E746174696F6E206F66207468652073757266616365206174206561636820706F696E7420666F722075736520696E206C69676874696E672E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function normal Lib SceneKitLibname selector "normal" (id as ptr) as ptr
			  return  AppleSCNMaterialProperty.MakefromPtr (normal (id))
			End Get
		#tag EndGetter
		Normal As AppleSCNMaterialProperty
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205363656E654B6974207573657320646570746820696E666F726D6174696F6E207768656E2072656E646572696E6720746865206D6174657269616C2E
		#tag Getter
			Get
			  Declare function readsFromDepthBuffer Lib SceneKitLibname selector "readsFromDepthBuffer" (id as ptr) as Boolean
			  return  readsFromDepthBuffer (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setreadsFromDepthBufferr Lib SceneKitLibname selector "setReadsFromDepthBuffer:" (id as ptr, value as Boolean)
			  setreadsFromDepthBufferr (id, value)
			  
			End Set
		#tag EndSetter
		ReadsFromDepthBuffer As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A656374207468617420646566696E657320746865207265666C656374656420636F6C6F7220666F72206561636820706F696E74206F6E206120737572666163652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function reflective Lib SceneKitLibname selector "reflective" (id as ptr) as ptr
			  return  AppleSCNMaterialProperty.MakefromPtr (reflective (id))
			End Get
		#tag EndGetter
		Reflective As AppleSCNMaterialProperty
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A65637420746861742070726F766964657320636F6C6F722076616C75657320746F20626520616464656420746F20746865206C69676874696E6720636F6E747269627574696F6E206F662074686520737572666163652E2028726561642D6F6E6C792920417661696C61626C6520696E20694F5320392E3020616E64206C617465722E
		#tag Getter
			Get
			  if RespondsToSelector ("selfIllumination", classptr) then
			    return  AppleSCNMaterialProperty.MakefromPtr (getselfIllumination (mid))
			  end if
			End Get
		#tag EndGetter
		SelfIllumination As AppleSCNMaterialProperty
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073686172706E657373206F662073706563756C617220686967686C69676874732E20416E696D617461626C652E
		#tag Getter
			Get
			  return getshininess(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshininess id, value
			End Set
		#tag EndSetter
		Shininess As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A6563742074686174206D616E6167657320746865206D6174657269616CE28099732073706563756C617220726573706F6E736520746F206C69676874696E672E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function specular Lib SceneKitLibname selector "specular" (id as ptr) as ptr
			  return  AppleSCNMaterialProperty.MakefromPtr (specular (id))
			End Get
		#tag EndGetter
		Specular As AppleSCNMaterialProperty
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520756E69666F726D207472616E73706172656E6379206F6620746865206D6174657269616C2E20416E696D617461626C652E
		#tag Getter
			Get
			  return gettransparency(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  settransparency id, value
			End Set
		#tag EndSetter
		Transparency As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6F6465205363656E654B6974207573657320746F2063616C63756C617465207472616E73706172656E637920666F7220746865206D6174657269616C2E2044656661756C7420414F6E652E
		#tag Getter
			Get
			  Declare function transparencyMode Lib SceneKitLibname selector "transparencyMode" (id as ptr) as SCNTransparencyMode
			  return  transparencyMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setTransparencyMode Lib SceneKitLibname selector "setTransparencyMode:" (id as ptr, value as SCNTransparencyMode)
			  setTransparencyMode (id, value)
			End Set
		#tag EndSetter
		TransparencyMode As SCNTransparencyMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A65637420746861742064657465726D696E657320746865206F706163697479206F66206561636820706F696E7420696E2061206D6174657269616C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function transparent Lib SceneKitLibname selector "transparent" (id as ptr) as ptr
			  return  AppleSCNMaterialProperty.MakefromPtr (transparent (id))
			End Get
		#tag EndGetter
		Transparent As AppleSCNMaterialProperty
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572205363656E654B69742070726F647563657320646570746820696E666F726D6174696F6E207768656E2072656E646572696E6720746865206D6174657269616C2E
		#tag Getter
			Get
			  Declare function writesToDepthBuffer Lib SceneKitLibname selector "writesToDepthBuffer" (id as ptr) as Boolean
			  return  writesToDepthBuffer (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setwritesToDepthBuffer Lib SceneKitLibname selector "setWritesToDepthBuffer:" (id as ptr, value as Boolean)
			  setwritesToDepthBuffer (id, value)
			  
			End Set
		#tag EndSetter
		WritesToDepthBuffer As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = SCNBlendMode, Type = Integer, Flags = &h0
		Alpha = 0
		  Add = 1
		  Subtract = 2
		  Multiply = 3
		  Screen = 4
		Replace = 5
	#tag EndEnum

	#tag Enum, Name = SCNCullMode, Type = Integer, Flags = &h0
		Back
		Front
	#tag EndEnum

	#tag Enum, Name = SCNLightingModel, Type = Integer, Flags = &h0
		Phong
		  Blinn
		  Lambert
		ConstantLighting
	#tag EndEnum

	#tag Enum, Name = SCNTransparencyMode, Type = Integer, Flags = &h0
		AOne = 0
		RGBZero = 1
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="BlendMode"
			Group="Behavior"
			Type="SCNBlendMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Alpha"
				"1 - Add"
				"2 - Subtract"
				"3 - Multiply"
				"4 - Screen"
				"5 - Replace"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CullMode"
			Group="Behavior"
			Type="SCNCullMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Back"
				"1 - Front"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleSided"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FresnelExponent"
			Group="Behavior"
			Type="Double"
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
			Name="LightingModel"
			Group="Behavior"
			Type="SCNLightingModel"
			EditorType="Enum"
			#tag EnumValues
				"0 - Phong"
				"1 - Blinn"
				"2 - Lambert"
				"3 - ConstantLighting"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LightingModelName"
			Group="Behavior"
			Type="text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LitPerPixel"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocksAmbientWithDiffuse"
			Group="Behavior"
			Type="Boolean"
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
			Name="ReadsFromDepthBuffer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Shininess"
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
			Name="Transparency"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TransparencyMode"
			Group="Behavior"
			Type="SCNTransparencyMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - AOne"
				"1 - RGBZero"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="WritesToDepthBuffer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
