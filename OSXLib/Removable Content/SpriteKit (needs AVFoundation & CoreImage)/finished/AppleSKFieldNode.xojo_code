#tag Class
Protected Class AppleSKFieldNode
Inherits AppleSKNode
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C64206E6F646520746861742063616C63756C6174657320616E64206170706C696573206120637573746F6D20666F72636520746F20746865207068797369637320626F64792E205365652074686520534B4649656C64466F7263654576616C7561746F72426C6F636B54656D706C617465206D6574686F647320666F722074656820726571756972656420626C6F636B207374727563747572652E
		Shared Function CustomField(Block as AppleBlock) As AppleSKFieldNode
		  return new AppleSKFieldNode (customFieldWithEvaluationBlock (ClassPtr, block.Handle), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function customFieldWithEvaluationBlock Lib SpriteKitLibName Selector "customFieldWithEvaluationBlock:" (id as ptr, block as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C64206E6F64652074686174206170706C696573206120666F7263652074686174207265736973747320746865206D6F74696F6E206F66207068797369637320626F646965732E
		Shared Function DragField() As AppleSKFieldNode
		  return new AppleSKFieldNode (dragField (ClassPtr), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function dragField Lib SpriteKitLibName Selector "dragField" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C64206E6F64652074686174206170706C69657320616E20656C656374726963616C20666F7263652070726F706F7274696F6E616C20746F2074686520656C656374726963616C20636861726765206F66207068797369637320626F646965732E
		Shared Function ElectricField() As AppleSKFieldNode
		  return new AppleSKFieldNode (electricField (ClassPtr), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function electricField Lib SpriteKitLibName Selector "electricField" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getanimationSpeed Lib SpriteKitLibName Selector "animationSpeed" (id as ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdirection Lib SpriteKitLibName Selector "direction" (id as ptr) As Vector_Float3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getExclusive Lib SpriteKitLibName Selector "isExclusive" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfalloff Lib SpriteKitLibName Selector "falloff" (id as ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getminimumRadius Lib SpriteKitLibName Selector "minimumRadius" (id as ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getRegion Lib SpriteKitLibName Selector "region" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsmoothness Lib SpriteKitLibName Selector "smoothness" (id as ptr) As Single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getstrength Lib SpriteKitLibName Selector "strength" (id as ptr) As Single
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C64206E6F6465207468617420616363656C657261746573207068797369637320626F6469657320696E206120737065636966696320646972656374696F6E2E
		Shared Function LinearGravityField(Direction as Vector_Float3) As AppleSKFieldNode
		  return new AppleSKFieldNode (linearGravityFieldWithVector (ClassPtr, Direction), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function linearGravityFieldWithVector Lib SpriteKitLibName Selector "linearGravityFieldWithVector:" (id as ptr, value as Vector_Float3) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C64206E6F64652074686174206170706C6965732061206D61676E6574696320666F726365206261736564206F6E207468652076656C6F6369747920616E6420656C656374726963616C20636861726765206F6620746865207068797369637320626F646965732E
		Shared Function MagneticField() As AppleSKFieldNode
		  return new AppleSKFieldNode (magneticField (ClassPtr), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function magneticField Lib SpriteKitLibName Selector "magneticField" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C64206E6F64652074686174206170706C69657320612072616E646F6D697A656420616363656C65726174696F6E20746F207068797369637320626F64696573
		Shared Function NoiseField(Smoothness as Double, AnimationSpeed as Double) As AppleSKFieldNode
		  return new AppleSKFieldNode (noiseFieldWithSmoothness (ClassPtr, Smoothness, AnimationSpeed), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function noiseFieldWithSmoothness Lib SpriteKitLibName Selector "noiseFieldWithSmoothness:animationSpeed:" (id as ptr, smoothness as CGFloat, speed as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C64206E6F6465207468617420616363656C657261746573207068797369637320626F6469657320746F7761726420746865206669656C64206E6F64652E
		Shared Function RadialGravityField() As AppleSKFieldNode
		  Return new AppleSKFieldNode (radialGravityField (ClassPtr), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function radialGravityField Lib SpriteKitLibName Selector "radialGravityField" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setanimationSpeed Lib SpriteKitLibName Selector "setAnimationSpeed:" (id as ptr, value as Single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdirection Lib SpriteKitLibName Selector "setDirection:" (id as ptr, value as Vector_Float3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setExclusive Lib SpriteKitLibName Selector "setExclusive:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfalloff Lib SpriteKitLibName Selector "setFalloff:" (id as ptr, value as Single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setminimumRadius Lib SpriteKitLibName Selector "setMinimumRadius:" (id as ptr, value as Single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setRegion Lib SpriteKitLibName Selector "setRegion:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setsmoothness Lib SpriteKitLibName Selector "setSmoothness:" (id as ptr, value as Single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setstrength Lib SpriteKitLibName Selector "setStrength:" (id as ptr, value as Single)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Function SKFieldForceEvaluatorBlockTemplate(Position as Vector_Float3, velocity as Vector_Float3, Mass as Single, Charge as Single, DeltaTime as Double) As Vector_Float3
		  // This is a template for the CustomField constructor.
		  // Use it to calculate your field's force from the values the block gets and return it as a single value.
		  
		  #Pragma unused Position
		  #pragma unused velocity
		  #pragma unused mass
		  #pragma unused Charge
		  #pragma unused DeltaTime
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C64206E6F64652074686174206170706C696573206120737072696E672D6C696B6520666F72636520746861742070756C6C73207068797369637320626F6469657320746F7761726420746865206669656C64206E6F64652E
		Shared Function SpringField() As AppleSKFieldNode
		  return new AppleSKFieldNode (springField (ClassPtr), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function springField Lib SpriteKitLibName Selector "springField" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C64206E6F64652074686174206170706C69657320612072616E646F6D697A656420616363656C65726174696F6E20746F207068797369637320626F646965732E
		Shared Function TurbulenceField(Smoothness as Double, AnimationSpeed as Double) As AppleSKFieldNode
		  return new AppleSKFieldNode (turbulenceFieldWithSmoothness (ClassPtr, Smoothness, AnimationSpeed), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function turbulenceFieldWithSmoothness Lib SpriteKitLibName Selector "turbulenceFieldWithSmoothness:animationSpeed:" (id as ptr, smoothness as CGFloat, speed as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function VelocityFieldWithTexture(Texture as AppleSKTexture) As AppleSKFieldNode
		  return new AppleSKFieldNode (VelocityFieldWithTexture (ClassPtr, texture.id), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function velocityFieldWithTexture Lib SpriteKitLibName Selector "velocityFieldWithTexture:" (id as ptr, texture as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function velocityFieldWithVector Lib SpriteKitLibName Selector "velocityFieldWithVector:" (id as ptr, value as Vector_Float3) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C64206E6F64652074686174206769766573207068797369637320626F64696573206120636F6E7374616E742076656C6F636974792E
		Shared Function VelocityFieldWithVector(Vector as Vector_Float3) As AppleSKFieldNode
		  return new AppleSKFieldNode (velocityFieldWithVector (ClassPtr, Vector), true, true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C64206E6F64652074686174206170706C69657320612070657270656E646963756C617220666F72636520746F207068797369637320626F646965732E
		Shared Function VortexField() As AppleSKFieldNode
		  Return new AppleSKFieldNode (vortexField (ClassPtr), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function vortexField Lib SpriteKitLibName Selector "vortexField" (id as ptr) As Ptr
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520726174652061742077686963682061206E6F697365206F722074757262756C656E6365206669656C64206E6F6465206368616E6765732E
		#tag Getter
			Get
			  return getanimationSpeed (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAnimationSpeed mid, value
			  
			End Set
		#tag EndSetter
		AnimationSpeed As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E65732077686963682063617465676F726965732074686973206669656C642062656C6F6E677320746F2E
		#tag Getter
			Get
			  return SpriteKitFramework.getcategoryBitMask (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setCategoryBitMask mid, value
			End Set
		#tag EndSetter
		CategoryBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return (ClassPtr <> nil)
			End Get
		#tag EndGetter
		Shared ClassAvailable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKFieldNode")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520646972656374696F6E206F6620612076656C6F63697479206669656C64206E6F64652E
		#tag Getter
			Get
			  return getdirection (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setDirection (mid, value)
			  
			End Set
		#tag EndSetter
		Direction As Vector_Float3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206669656C64206973206163746976652E
		#tag Getter
			Get
			  return AppKitFramework.getenabled (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setenabled mid, value
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206669656C64206E6F64652073686F756C64206F7665727269646520616C6C206F74686572206669656C64206E6F6465732074686174206D69676874206F746865727769736520616666656374207068797369637320626F646965732E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return getExclusive (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setExclusive mid, value
			End Set
		#tag EndSetter
		Exclusive As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206578706F6E656E74207468617420646566696E6573207468652072617465206F6620646563617920666F722074686520737472656E677468206F6620746865206669656C64206173207468652064697374616E636520696E63726561736573206265747765656E20746865206E6F646520616E6420746865207068797369637320626F6479206265696E672061666665637465642E2044656661756C7420302E
		#tag Getter
			Get
			  return getfalloff (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFalloff mid, value
			  
			End Set
		#tag EndSetter
		Falloff As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D2076616C756520666F722064697374616E63652D626173656420656666656374732E2044656661756C74207665727920736D616C6C206F76657220302E
		#tag Getter
			Get
			  return getminimumRadius (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setMinimumRadius mid, value
			End Set
		#tag EndSetter
		MinimumRadius As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652061726561202872656C617469766520746F20746865206E6F6465E2809973206F726967696E29207468617420746865206669656C6420616666656374732E2044656661756C7420696E66696E6974652E
		#tag Getter
			Get
			  return AppleSKRegion.MakefromPtr (getregion (mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setRegion mid, if (value = nil, nil, value.id)
			  
			End Set
		#tag EndSetter
		Region As AppleSKRegion
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520736D6F6F74686E657373206F6620746865206E6F697365207573656420746F2067656E65726174652074686520666F726365732E204D757374206265206265747765656E20302E3020616E6420312E302C20746865206C6174746572206D65616E696E6720756E69666F726D20736D6F6F74686E6573732E
		#tag Getter
			Get
			  return getsmoothness (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setSmoothness( mid, value)
			  
			End Set
		#tag EndSetter
		Smoothness As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520737472656E677468206F6620746865206669656C642E2044656661756C7420312E302E
		#tag Getter
			Get
			  return getstrength (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setStrength mid, value
			End Set
		#tag EndSetter
		Strength As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206E6F726D616C2074657874757265207468617420737065636966696573207468652076656C6F63697469657320617420646966666572656E7420706F696E747320696E20612076656C6F63697479206669656C64206E6F64652E
		#tag Getter
			Get
			  return AppleSKTexture.MakefromPtr (SpriteKitFramework.gettexture (mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setTexture mid, if (value = nil, nil, value.id)
			  
			End Set
		#tag EndSetter
		Texture As AppleSKTexture
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AnimationSpeed"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CategoryBitMask"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Exclusive"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecutesActions"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Falloff"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
			Group="Behavior"
			Type="Boolean"
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
			Name="MinimumRadius"
			Group="Behavior"
			Type="Single"
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
			Name="Smoothness"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Strength"
			Group="Behavior"
			Type="Single"
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
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
