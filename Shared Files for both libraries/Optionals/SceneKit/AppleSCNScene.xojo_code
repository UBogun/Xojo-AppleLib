#tag Class
Protected Class AppleSCNScene
Inherits AppleSCNObject
	#tag Method, Flags = &h0, Description = 41747461636865732061207061727469636C652073797374656D20746F20746865207363656E652C207573696E672074686520737065636966696564207472616E73666F726D2E
		Sub AddParticleSystem(ParticleSystem As AppleSCNParticleSystem, Transform as SCNMatrix4)
		  addParticleSystem mid, ParticleSystem.id, Transform
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub addParticleSystem Lib SceneKitLibname Selector "addParticleSystem:withTransform:" (id as ptr, particlesystem as ptr, transform as SCNMatrix4)
	#tag EndExternalMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  super.Constructor (SceneKitFrameWork.getScene(ClassPtr), true, true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4C6F6164732061207363656E652066726F6D20746865207370656369666965642055524C2C206368616E67696E6720616E206572726F7220706172616D65746572206966206F6E65206F636375727265642E
		Sub Constructor(URL as AppleURL, options as AppleDictionary = nil, byref error as appleerror)
		  dim p as ptr = Error.id
		  super.Constructor (sceneWithURL(ClassPtr, url.id, nilptr(options), p), true, true)
		  error = AppleError.MakefromPtr(p)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4C6F6164732061207363656E652066726F6D20612066696C6520776974682074686520737065636966696564206E616D6520696E2074686520617070E2809973206D61696E2062756E646C652E
		Sub Constructor(SceneName As CFStringRef)
		  super.Constructor (sceneNamed(ClassPtr, SceneName), true, true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4C6F6164732061207363656E652066726F6D20612066696C6520776974682074686520737065636966696564206E616D6520696E2061207370656369666963207375626469726563746F7279206F662074686520617070E2809973206D61696E2062756E646C652E
		Sub Constructor(SceneName As CFStringRef, Directory as CFStringRef, Options As AppleDictionary = nil)
		  super.Constructor (sceneNamedinDirectory(ClassPtr, SceneName, Directory, nilptr(options)), true, true)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbackground Lib Scenekitlibname Selector "background" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfogColor Lib SceneKitLibname Selector "fogColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfogDensityExponent Lib SceneKitLibname Selector "fogDensityExponent" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfogEndDistance Lib SceneKitLibname Selector "fogEndDistance" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfogStartDistance Lib SceneKitLibname Selector "fogStartDistance" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlightingEnvironment Lib Scenekitlibname Selector "lightingEnvironment" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getparticleSystems Lib SceneKitLibname Selector "particleSystems" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getphysicsWorld Lib SceneKitLibname Selector "physicsWorld" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNScene
		  return if (aptr = nil, nil, new AppleSCNScene(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProgresshandlerTemplate(TotalProgress As Single, Error as Ptr, Byref Stop as Boolean)
		  // This is a template for the WriteToURL progress handler.
		  
		  #Pragma unused TotalProgress
		  #Pragma Unused Error 
		  #Pragma unused Stop
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616E79207061727469636C652073797374656D73206469726563746C7920617474616368656420746F20746865207363656E652E
		Sub RemoveAllParticleSystems()
		  SceneKitFrameWork.removeAllParticleSystems mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732061207061727469636C652073797374656D20617474616368656420746F20746865207363656E652E
		Sub RemoveParticleSystem(ParticleSystem As AppleSCNParticleSystem)
		  SceneKitFrameWork.removeParticleSystem mid, ParticleSystem.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function sceneNamed Lib Scenekitlibname Selector "sceneNamed:" (id as ptr, name as cfstringRef) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function sceneNamedinDirectory Lib Scenekitlibname Selector "sceneNamed:inDirectory:options:" (id as ptr, name as cfstringRef, directory as cfstringref, options as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function sceneWithURL Lib Scenekitlibname Selector "sceneWithURL:options:error:" (id as ptr, url as ptr, options as ptr, byref error as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbackground Lib Scenekitlibname Selector "setBackground:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setfogColor Lib SceneKitLibname Selector "setFogColor:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setfogDensityExponent Lib SceneKitLibname Selector "setFogDensityExponent:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setfogEndDistance Lib SceneKitLibname Selector "setFogEndDistance:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setfogStartDistance Lib SceneKitLibname Selector "setFogStartDistance:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setlightingEnvironment Lib SceneKitLibname Selector "setLightingEnvironment:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4578706F72747320746865207363656E6520616E642069747320636F6E74656E747320746F20612066696C6520617420746865207370656369666965642055524C2E
		Function WriteToURL(url as appleurl, options as Appledictionary, ExportDelegate As AppleObject, ProgressHandler As AppleBlock) As Boolean
		  if RespondsToSelector ("writeToURL:options:delegate:progressHandler:", classptr) then _
		  return writeToURL (mid, url.id, nilptr(options), nilptr(ExportDelegate), ProgressHandler.Handle)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function writeToURL Lib SceneKitLibname Selector "writeToURL:options:delegate:progressHandler:" (id as ptr, url as ptr, options as ptr, del as ptr, progressblock as ptr) As Boolean
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		missing:
		
		SceneWithMDML
		import options Dictionary
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 41206261636B67726F756E6420746F2062652072656E6465726564206265666F7265207468652072657374206F6620746865207363656E652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleSCNMaterialProperty.MakeFromPtr (getbackground (mid))
			End Get
		#tag EndGetter
		Background As AppleSCNMaterialProperty
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("SCNScene")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520656E642074696D65206F6620746865207363656E652E
		#tag Getter
			Get
			  dim value as applenumber = AppleNumber.MakefromPtr(SceneKitFrameWork.getAttributeForKey(mid, kSCNSceneEndTimeAttributeKey))
			  if value <> nil then return value.DoubleValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim num as new AppleNumber(value)
			  SceneKitFrameWork.setAttributeForKey mid, num.id, kSCNSceneEndTimeAttributeKey
			  
			End Set
		#tag EndSetter
		EndTime As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F662074686520666F672065666665637420746F2062652072656E6465726564207769746820746865207363656E652E20416E696D617461626C652E0A596F752063616E20757365207468652065787465726E616C2067657420616E6420736574466F67436F6C6F72206D6574686F647320666F722061204347436F6C6F7252656620746F6F2E
		#tag Getter
			Get
			  return AppleColor.MakeFromPtr (getfogColor (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFogColor mid, nilptr(value)
			End Set
		#tag EndSetter
		FogColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207472616E736974696F6E20637572766520666F722074686520666F67E280997320696E74656E73697479206265747765656E2069747320737461727420616E6420656E642064697374616E6365732E20416E696D617461626C652E0A412076616C7565206F6620302E3020287468652064656661756C742920737065636966696573206E6F20617474656E756174696F6EE2809474686520666F67E280997320696E74656E73697479206973207468652073616D6520617420616C6C2064697374616E636573202E20412076616C7565206F6620312E30207370656369666965732061206C696E656172207472616E736974696F6E2C20616E6420612076616C7565206F6620322E3020737065636966696573206120717561647261746963207472616E736974696F6E2063757276652E204869676865722076616C7565732068617665206C6974746C652076697369626C65206566666563742E
		#tag Getter
			Get
			  return getfogDensityExponent(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfogDensityExponent mid, value
			End Set
		#tag EndSetter
		FogDensityExponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E63652066726F6D206120706F696E74206F66207669657720617420776869636820746865207363656E65E280997320636F6E74656E74732061726520636F6D706C6574656C79206F6273637572656420627920666F672E20416E696D617461626C652E0A5468652044656661756C74206F6620302E302064697361626C65732074686520666F67206566666563742E0A
		#tag Getter
			Get
			  return getfogEndDistance(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfogEndDistance mid, value
			End Set
		#tag EndSetter
		FogEndDistance As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E63652066726F6D206120706F696E74206F66207669657720617420776869636820746865207363656E65E280997320636F6E74656E747320626567696E20746F206265206F6273637572656420627920666F672E20416E696D617461626C652E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getfogStartDistance(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfogStartDistance mid, value
			End Set
		#tag EndSetter
		FogStartDistance As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206672616D652072617465206F6620746865207363656E652E0A546869732076616C7565206D61792062652070726573656E7420696E207363656E6573206C6F616465642066726F6D207363656E652066696C65732070726F6475636564207573696E672065787465726E616C20746F6F6C732C2062757420686173206E6F20656666656374206F6E205363656E654B6974E28099732072656E646572696E67206F6620746865207363656E652E
		#tag Getter
			Get
			  dim value as applenumber = AppleNumber.MakefromPtr(SceneKitFrameWork.getAttributeForKey(mid, kSCNSceneFrameRateAttributeKey))
			  if value <> nil then return value.DoubleValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim num as new AppleNumber(value)
			  SceneKitFrameWork.setAttributeForKey mid, num.id, kSCNSceneFrameRateAttributeKey
			  
			End Set
		#tag EndSetter
		FrameRate As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412063756265206D61702074657874757265207468617420646570696374732074686520656E7669726F6E6D656E7420737572726F756E64696E6720746865207363656E65E280997320636F6E74656E74732C207573656420666F7220616476616E636564206C69676874696E6720656666656374732E2028726561642D6F6E6C792920417661696C61626C652073696E636520694F532031302F6D61634F732031302E31322E
		#tag Getter
			Get
			  if RespondsToSelector ("lightingEnvironment", classptr) then return AppleSCNMaterialProperty.MakeFromPtr (getlightingEnvironment (mid))
			End Get
		#tag EndGetter
		LightingEnvironment As AppleSCNMaterialProperty
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207061727469636C652073797374656D7320617474616368656420746F20746865207363656E652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (getparticleSystems(mid))
			End Get
		#tag EndGetter
		ParticleSystems As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746F2072756E20616374696F6E732C20616E696D6174696F6E732C207061727469636C652073797374656D732C20616E6420706879736963732073696D756C6174696F6E7320696E20746865207363656E652067726170682E
		#tag Getter
			Get
			  return SceneKitFrameWork.getPaused(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setPaused mid, value
			End Set
		#tag EndSetter
		Paused As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706879736963732073696D756C6174696F6E206173736F636961746564207769746820746865207363656E652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleSCNPhysicsWorld.MakefromPtr(getphysicsWorld(mid))
			End Get
		#tag EndGetter
		PhysicsWorld As AppleSCNPhysicsWorld
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726F6F74206E6F6465206F6620746865207363656E652067726170682E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return new AppleSCNNode (SceneKitFrameWork.getrootNode (mid))
			End Get
		#tag EndGetter
		RootNode As AppleSCNNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073746172742074696D65206F6620746865207363656E652E
		#tag Getter
			Get
			  dim value as applenumber = AppleNumber.MakefromPtr(SceneKitFrameWork.getAttributeForKey(mid, kSCNSceneStartTimeAttributeKey))
			  if value <> nil then return value.DoubleValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim num as new AppleNumber(value)
			  SceneKitFrameWork.setAttributeForKey mid, num.id, kSCNSceneStartTimeAttributeKey
			  
			End Set
		#tag EndSetter
		StartTime As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7269656E746174696F6E206F6620746865207363656E652E0A546869732076616C7565206D61792062652070726573656E7420696E207363656E6573206C6F616465642066726F6D207363656E652066696C65732070726F6475636564207573696E672065787465726E616C20746F6F6C732C2062757420686173206E6F20656666656374206F6E205363656E654B6974E28099732070726F63657373696E67206F6620746865207363656E652E20557365207468697320766563746F72207768656E20636F6D62696E696E6720656C656D656E74732066726F6D20646966666572656E74207363656E657320736F207468617420746865792061707065617220696E207468656972206578706563746564206F7269656E746174696F6E2E
		#tag Getter
			Get
			  dim value as AppleValue = AppleNumber.MakefromPtr(SceneKitFrameWork.getAttributeForKey(mid, kSCNSceneUpAxisAttributeKey))
			  if value <> nil then return value.SCNVector3Value
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim num as  AppleValue = SceneKitFrameWork.makeapplevalue (value)
			  SceneKitFrameWork.setAttributeForKey mid, num.id, kSCNSceneUpAxisAttributeKey
			  
			End Set
		#tag EndSetter
		UpAxis As SCNVector3
	#tag EndComputedProperty


	#tag Constant, Name = kSCNSceneEndTimeAttributeKey, Type = Text, Dynamic = False, Default = \"SCNSceneEndTimeAttributeKey", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kSCNSceneFrameRateAttributeKey, Type = Text, Dynamic = False, Default = \"SCNSceneFrameRateAttributeKey", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kSCNSceneStartTimeAttributeKey, Type = Text, Dynamic = False, Default = \"SCNSceneStartTimeAttributeKey", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kSCNSceneUpAxisAttributeKey, Type = Text, Dynamic = False, Default = \"SCNSceneUpAxisAttributeKey", Scope = Protected
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EndTime"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FogDensityExponent"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FogEndDistance"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FogStartDistance"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameRate"
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
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StartTime"
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
	#tag EndViewBehavior
End Class
#tag EndClass
