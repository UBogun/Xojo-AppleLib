#tag Class
Protected Class AppleSCNParticlePropertyController
Inherits AppleObject
	#tag Method, Flags = &h1021, Description = 437265617465732061206E6577206D6174657269616C206F626A6563742E
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061207061727469636C652070726F706572747920636F6E74726F6C6C65722077697468207468652073706563696669656420436F726520416E696D6174696F6E20616E696D6174696F6E2E
		Sub Constructor(animation as AppleCAAnimation)
		  Declare function controllerWithAnimation Lib SceneKitLibname selector "controllerWithAnimation:" (id as ptr, animation as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (controllerWithAnimation(classptr, animation.id))
		  Retainclassobject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getanimation Lib SceneKitLibname Selector "animation" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getinputBias Lib SceneKitLibname Selector "inputBias" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getinputMode Lib SceneKitLibname Selector "inputMode" (id as ptr) As SCNParticleInputMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getinputOrigin Lib SceneKitLibname Selector "inputOrigin" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getinputProperty Lib SceneKitLibname Selector "inputProperty" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getinputScale Lib SceneKitLibname Selector "inputScale" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNParticlePropertyController
		  return if (aptr  = nil, nil, new AppleSCNParticlePropertyController(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setanimation Lib SceneKitLibname Selector "setAnimation:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setinputBias Lib SceneKitLibname Selector "setInputBias:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setinputMode Lib SceneKitLibname Selector "setInputMode:" (id as ptr, value as SCNParticleInputMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setinputOrigin Lib SceneKitLibname Selector "setInputOrigin:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setinputProperty Lib SceneKitLibname Selector "setInputProperty:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setinputScale Lib SceneKitLibname Selector "setInputScale:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod


	#tag Note, Name = Status complete & documented
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520436F726520416E696D6174696F6E206F626A65637420646566696E696E6720746865206265686176696F72206F66207468652070726F706572747920616E696D6174696F6E2E
		#tag Getter
			Get
			  return AppleCAAnimation.MakeFromPtr(getanimation(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setanimation mid, nilptr(value)
			End Set
		#tag EndSetter
		Animation As AppleCAAnimation
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNParticlePropertyController")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F666673657420746F2061646420746F2074686520696E7075742076616C7565206F662074686520636F6E74726F6C6C6572E280997320616E696D6174696F6E2E
		#tag Getter
			Get
			  return getinputBias (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setinputBias mid, value
			End Set
		#tag EndSetter
		InputBias As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6F646520746861742064657465726D696E657320696E7075742076616C75657320666F72207468652070726F706572747920636F6E74726F6C6C6572E280997320616E696D6174696F6E2E
		#tag Getter
			Get
			  return getinputMode (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setinputMode mid, value
			End Set
		#tag EndSetter
		InputMode As SCNParticleInputMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206E6F64652077686F73652064697374616E636520746F2065616368207061727469636C652070726F766964657320696E7075742076616C75657320666F722074686520636F6E74726F6C6C6572E280997320616E696D6174696F6E2E0A546869732070726F7065727479206170706C696573206F6E6C79207768656E2074686520636F6E74726F6C6C6572E280997320696E7075744D6F64652076616C75652069732053434E5061727469636C65496E7075744D6F64654F76657244697374616E63652E205768656E20796F752073656C656374207468617420696E707574206D6F64652C20746869732070726F7065727479E28099732076616C7565206D7573742062652061206E6F646520696E20746865207363656E6520636F6E7461696E696E6720746865207061727469636C652073797374656D3B206F74686572776973652C205363656E654B69742069676E6F72657320746869732070726F70657274792E205468652064656661756C742076616C7565206973206E696C2E
		#tag Getter
			Get
			  return AppleSCNNode.MakeFromPtr(getinputOrigin(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setinputOrigin mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		InputOrigin As AppleSCNNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207061727469636C652070726F706572747920746861742070726F766964657320696E7075742076616C75657320666F7220746869732070726F706572747920636F6E74726F6C6C6572E280997320616E696D6174696F6E2E
		#tag Getter
			Get
			  return getinputProperty (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setinputProperty mid, value
			End Set
		#tag EndSetter
		InputProperty As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120666163746F7220666F72206D756C7469706C79696E672074686520696E7075742076616C7565206F662074686520636F6E74726F6C6C6572E280997320616E696D6174696F6E2E
		#tag Getter
			Get
			  return getinputScale (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setinputScale mid, value
			End Set
		#tag EndSetter
		InputScale As Double
	#tag EndComputedProperty


	#tag Enum, Name = SCNParticleInputMode, Type = Integer, Flags = &h0
		OverLife
		  OverDistance
		OverOtherProperty
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
			Name="InputBias"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputMode"
			Group="Behavior"
			Type="SCNParticleInputMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - OverLife"
				"1 - OverDistance"
				"2 - OverOtherProperty"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputProperty"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputScale"
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
