#tag Class
Protected Class AppleSCNMaterialProperty
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 4164647320616E20616E696D6174696F6E206F626A65637420666F722074686520737065636966696564206B65792E
		Sub AddAnimation(Animation as AppleCAAnimation, Key as Text)
		  SceneKitFrameWork.addAnimation id, Animation.id, Key
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520616E696D6174696F6E20776974682074686520737065636966696564206B65792E
		Function Animation(Key as Text) As AppleCAAnimation
		  return AppleCAAnimation.MakeFromPtr(SceneKitFrameWork.getanimationForKey(id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E6720776865746865722074686520616E696D6174696F6E20617474616368656420746F20746865206F626A65637420776974682074686520737065636966696564206B6579206973207061757365642E
		Function AnimationPaused(Key As Text) As Boolean
		  return SceneKitFrameWork.getisAnimationForKeyPaused(id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577206D6174657269616C2070726F7065727479206F626A6563742077697468207468652073706563696669656420636F6E74656E74732E20436F6E74656E74732063616E206265206F6E65206F662074686520666F6C6C6F77696E67206F626A656374733A0A2A204120636F6C6F7220284E53436F6C6F722F5549436F6C6F72206F72204347436F6C6F72526566292C2073706563696679696E67206120636F6E7374616E7420636F6C6F72206163726F737320746865206D6174657269616CE280997320737572666163650A2A20416E20696D61676520284E53496D6167652F5549496D616765206F72204347496D616765526566292C2073706563696679696E672061207465787475726520746F206265206D6170706564206163726F737320746865206D6174657269616CE280997320737572666163650A2A20416E204E53537472696E67206F72204E5355524C206F626A6563742073706563696679696E6720746865206C6F636174696F6E206F6620616E20696D6167652066696C650A2A20416E206172726179206F662073697820696D6167657320284E534172726179292C2073706563696679696E6720746865206661636573206F6620612063756265206D61700A2A204120436F726520416E696D6174696F6E206C61796572202843414C61796572290A2A204120746578747572652028534B546578747572652C204D444C546578747572652C204D544C546578747572652C206F7220474C4B54657874757265496E666F290A2A204120537072697465204B6974207363656E652028534B5363656E6529
		Sub Constructor(Contents as AppleGeneralObject)
		  Declare function materialPropertyWithContents Lib SceneKitLibname selector "materialPropertyWithContents:" (id as ptr, contents as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (materialPropertyWithContents(ClassPtr,Contents.GeneralID))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getborderColor Lib SceneKitLibname Selector "borderColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getcontents Lib SceneKitLibname Selector "contents" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontentsTransform Lib SceneKitLibname Selector "contentsTransform" (id as ptr) As SCNMatrix4
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getintensity Lib SceneKitLibname Selector "intensity" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getmagnificationFilter Lib SceneKitLibname Selector "magnificationFilter" (id as ptr) As SCNFilterMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getmappingChannel Lib SceneKitLibname Selector "mappingChannel" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getmaxAnisotropy Lib SceneKitLibname Selector "maxAnisotropy" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getminificationFilter Lib SceneKitLibname Selector "minificationFilter" (id as ptr) As SCNFilterMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getmipFilter Lib SceneKitLibname Selector "mipFilter" (id as ptr) As SCNFilterMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getwrapS Lib SceneKitLibname Selector "wrapS" (id as ptr) As SCNWrapMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getwrapT Lib SceneKitLibname Selector "wrapT" (id as ptr) As SCNWrapMode
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleSCNMaterialProperty
		  return if (aptr = nil, nil, new AppleSCNMaterialProperty (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5061757365732074686520616E696D6174696F6E20617474616368656420746F20746865206F626A65637420776974682074686520737065636966696564206B65792E
		Sub PauseAnimation(Key As Text)
		  SceneKitFrameWork.pauseAnimationForKey(id, key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616C6C2074686520616E696D6174696F6E732063757272656E746C7920617474616368656420746F20746865206F626A6563742E
		Sub RemoveAllAnimations()
		  SceneKitFrameWork.removeAllAnimations(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732074686520616E696D6174696F6E20617474616368656420746F20746865206F626A65637420776974682074686520737065636966696564206B65792E
		Sub RemoveAnimation(Key As Text)
		  SceneKitFrameWork.removeAnimationForKey(id, key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732074686520616E696D6174696F6E20617474616368656420746F20746865206F626A65637420776974682074686520737065636966696564206B65792C20736D6F6F74686C79207472616E736974696F6E696E67206F7574206F662074686520616E696D6174696F6EE2809973206566666563742E
		Sub RemoveAnimation(Key As Text, FadeOutDuration As Double)
		  SceneKitFrameWork.removeAnimationForKeyFadeOut(id, key, FadeOutDuration)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526573756D657320612070726576696F75736C792070617573656420616E696D6174696F6E20617474616368656420746F20746865206F626A65637420776974682074686520737065636966696564206B65792E
		Sub ResumeAnimation(Key As Text)
		  SceneKitFrameWork.resumeAnimationForKey(id, key)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setborderColor Lib SceneKitLibname Selector "setBorderColor:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setcontents Lib SceneKitLibname Selector "setContents:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontentsTransform Lib SceneKitLibname Selector "setContentsTransform:" (id as ptr, value as SCNMatrix4)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setintensity Lib SceneKitLibname Selector "setIntensity:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setmagnificationFilter Lib SceneKitLibname Selector "setMagnificationFilter:" (id as ptr, value as SCNFilterMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setmappingChannel Lib SceneKitLibname Selector "setMappingChannel:" (id as ptr, value as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setMaxAnisotropy Lib SceneKitLibname Selector "setMaxAnisotropy:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setminificationFilter Lib SceneKitLibname Selector "setMinificationFilter:" (id as ptr, value as SCNFilterMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setmipFilter Lib SceneKitLibname Selector "setMipFilter:" (id as ptr, value as SCNFilterMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setwrapS Lib SceneKitLibname Selector "setWrapS:" (id as ptr, value as SCNWrapMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setwrapT Lib SceneKitLibname Selector "setWrapT:" (id as ptr, value as SCNWrapMode)
	#tag EndExternalMethod


	#tag Note, Name = Status completed & documented
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 416E20617272617920636F6E7461696E696E6720746865206B657973206F6620616C6C20616E696D6174696F6E732063757272656E746C7920617474616368656420746F20746865206F626A6563742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(SceneKitFrameWork.getanimationKeys(id))
			End Get
		#tag EndGetter
		AnimationKeys As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120636F6C6F72207573656420746F2066696C6C20696E206172656173206F662061206D6174657269616CE28099732073757266616365206E6F7420636F766572656420627920746865206D6174657269616C2070726F7065727479E280997320696D61676520636F6E74656E74732E0A506C65617365206E6F746520746869732070726F706572747920646F6573206E6F74206861766520746F20626520616E204170706C65436F6C6F722E20557365207468652065787465726E616C20676574426F72646572436F6C6F7220616E6420536574426F72646572436F6C6F72206D6574686F6473206F66207468697320636C61737320746F20637265617465206D6574686F6473206F722070726F7065727469657320666F72204347436F6C6F72732E
		#tag Getter
			Get
			  return  AppleColor.MakefromPtr (getborderColor (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setborderColor (id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		BorderColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mclassptr = nil then mclassptr  = FoundationFramework.NSClassFromString ("SCNMaterialProperty")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076697375616C20636F6E74656E7473206F6620746865206D6174657269616C2070726F7065727479E280946120636F6C6F722C20696D6167652C206F7220736F75726365206F6620616E696D6174656420636F6E74656E742E20416E696D617461626C652E0A5365652074686520636F6E7374727563746F7220666F7220706F737369626C65206F626A6563742074797065732E20596F752063616E207573652074686520676574436F6E74656E747320616E6420736574436F6E74656E74732070726976617465206D6574686F6473206F66207468697320636C61737320746F20646576656C6F7020637573746F6D20636F6D70757465642070726F706572746965732064656C69766572696E6720746865206578616374206B696E64206F66206F626A65637420696620796F75206C696B652E
		#tag Getter
			Get
			  return  AppleGeneralObject (appleobject.MakefromPtr (getcontents (id)))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setContents (id, if (value = nil, nil, value.GeneralID))
			End Set
		#tag EndSetter
		Contents As ApplegeneralObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207472616E73666F726D6174696F6E206170706C69656420746F20746865206D6174657269616C2070726F7065727479E28099732076697375616C20636F6E74656E74732E20416E696D617461626C652E
		#tag Getter
			Get
			  return  getcontentsTransform (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcontentsTransform id, value
			End Set
		#tag EndSetter
		ContentsTransform As SCNMatrix4
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206E756D626572206265747765656E20302E3020616E6420312E302074686174206D6F64756C617465732074686520656666656374206F6620746865206D6174657269616C2070726F70657274792E20416E696D617461626C652E
		#tag Getter
			Get
			  return  getintensity (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setintensity id, value
			End Set
		#tag EndSetter
		Intensity As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546578747572652066696C746572696E6720666F722072656E646572696E6720746865206D6174657269616C2070726F7065727479E280997320696D61676520636F6E74656E747320617420612073697A65206C6172676572207468616E2074686174206F6620746865206F726967696E616C20696D6167652E2044656661756C74204C696E6561722E
		#tag Getter
			Get
			  return  getmagnificationFilter (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmagnificationFilter id, value
			End Set
		#tag EndSetter
		MagnificationFilter As SCNFilterMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520736F75726365206F66207465787475726520636F6F7264696E6174657320666F72206D617070696E6720746865206D6174657269616C2070726F7065727479E280997320696D61676520636F6E74656E74732E
		#tag Getter
			Get
			  return  getmappingChannel (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmappingChannel id, value
			End Set
		#tag EndSetter
		MappingChannel As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616D6F756E74206F6620616E69736F74726F70696320746578747572652066696C746572696E6720746F2062652075736564207768656E2072656E646572696E6720746865206D6174657269616C2070726F7065727479E280997320696D61676520636F6E74656E74732E
		#tag Getter
			Get
			  return  getmaxAnisotropy (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setMaxAnisotropy id, value
			End Set
		#tag EndSetter
		MaxAnisotropy As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546578747572652066696C746572696E6720666F722072656E646572696E6720746865206D6174657269616C2070726F7065727479E280997320696D61676520636F6E74656E747320617420612073697A6520736D616C6C6572207468616E2074686174206F6620746865206F726967696E616C20696D6167652E2044656661756C74204C696E6561722E
		#tag Getter
			Get
			  return  getminificationFilter (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setminificationFilter id, value
			End Set
		#tag EndSetter
		MinificationFilter As SCNFilterMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546578747572652066696C746572696E6720666F72207573696E67206D69706D61707320746F2072656E64657220746865206D6174657269616C2070726F7065727479E280997320696D61676520636F6E74656E747320617420612073697A6520736D616C6C6572207468616E2074686174206F6620746865206F726967696E616C20696D6167652E2044656661756C74204E6F6E652E
		#tag Getter
			Get
			  return  getmipFilter (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmipFilter id, value
			End Set
		#tag EndSetter
		MipFilter As SCNFilterMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207772617070696E67206265686176696F7220666F72207468652053207465787475726520636F6F7264696E6174652E
		#tag Getter
			Get
			  return  getwrapS (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setwrapS id, value
			End Set
		#tag EndSetter
		WrapS As SCNWrapMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207772617070696E67206265686176696F7220666F72207468652054207465787475726520636F6F7264696E6174652E
		#tag Getter
			Get
			  return  getwrapT (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setwrapT id, value
			End Set
		#tag EndSetter
		WrapT As SCNWrapMode
	#tag EndComputedProperty


	#tag Enum, Name = SCNFilterMode, Type = Integer, Flags = &h0
		None = 0
		  Nearest = 1
		Linear = 2
	#tag EndEnum

	#tag Enum, Name = SCNWrapMode, Type = Integer, Flags = &h0
		Clamp = 1
		  Repeat = 2
		  ClampToBorder = 3
		Mirror = 4
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
			Name="Intensity"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MagnificationFilter"
			Group="Behavior"
			Type="SCNFilterMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Nearest"
				"2 - Linear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MappingChannel"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxAnisotropy"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinificationFilter"
			Group="Behavior"
			Type="SCNFilterMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Nearest"
				"2 - Linear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MipFilter"
			Group="Behavior"
			Type="SCNFilterMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Nearest"
				"2 - Linear"
			#tag EndEnumValues
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
		#tag ViewProperty
			Name="WrapS"
			Group="Behavior"
			Type="SCNWrapMode"
			EditorType="Enum"
			#tag EnumValues
				"1 - Clamp"
				"2 - Repeat"
				"3 - ClampToBorder"
				"4 - Mirror"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="WrapT"
			Group="Behavior"
			Type="SCNWrapMode"
			EditorType="Enum"
			#tag EnumValues
				"1 - Clamp"
				"2 - Repeat"
				"3 - ClampToBorder"
				"4 - Mirror"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
