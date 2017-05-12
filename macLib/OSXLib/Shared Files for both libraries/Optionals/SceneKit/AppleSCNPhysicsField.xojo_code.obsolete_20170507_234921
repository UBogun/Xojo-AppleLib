#tag Class
Protected Class AppleSCNPhysicsField
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120637573746F6D206669656C6420746861742072756E73207468652073706563696669656420626C6F636B20746F2064657465726D696E652074686520666F7263652061206669656C64206170706C69657320746F2065616368206F626A65637420696E206974732061726561206F66206566666563742E
		Sub Constructor(Block as AppleBlock)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(customFieldWithEvaluationBlock(classptr, block.Handle))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function customFieldWithEvaluationBlock Lib SceneKitLibname Selector "customFieldWithEvaluationBlock:" (id as ptr, block as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C64207468617420736C6F777320616E79206F626A65637420696E206974732061726561206F66206566666563742077697468206120666F7263652070726F706F7274696F6E616C20746F20746865206F626A656374E28099732076656C6F636974792E
		Shared Function Dragfield() As AppleSCNPhysicsField
		  dim result as new AppleSCNPhysicsField(dragField(classptr))
		  result.RetainClassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function dragField Lib SceneKitLibname Selector "dragField" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C642074686174206174747261637473206F7220726570656C73206F626A65637473206261736564206F6E20746865697220656C656374726963616C2063686172676520616E64206F6E2074686569722064697374616E63652066726F6D20746865206669656C64E28099732063656E7465722E
		Shared Function ElectricField() As AppleSCNPhysicsField
		  dim result as new AppleSCNPhysicsField(electricField(classptr))
		  result.RetainClassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function electricField Lib SceneKitLibname Selector "electricField" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getactive Lib SceneKitLibname Selector "isActive" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdirection Lib SceneKitLibname Selector "direction" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getexclusive Lib SceneKitLibname Selector "isExclusive" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getfalloffExponent Lib SceneKitLibname Selector "falloffExponent" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethalfExtent Lib SceneKitLibname Selector "halfExtent" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getoffset Lib SceneKitLibname Selector "offset" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getscope Lib SceneKitLibname Selector "scope" (id as ptr) As SCNPhysicsFieldScope
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getstrength Lib SceneKitLibname Selector "strength" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getusesEllipsoidalExtent Lib SceneKitLibname Selector "usesEllipsoidalExtent" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C64207468617420616363656C657261746573206F626A6563747320696E206120737065636966696320646972656374696F6E2E
		Shared Function LinearGravityField() As AppleSCNPhysicsField
		  dim result as new AppleSCNPhysicsField(linearGravityField(classptr))
		  result.RetainClassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function linearGravityField Lib SceneKitLibname Selector "linearGravityField" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C642074686174206174747261637473206F7220726570656C73206F626A65637473206261736564206F6E20746865697220656C656374726963616C206368617267652C2076656C6F636974792C20616E642064697374616E63652066726F6D20746865206669656C64E280997320617869732E
		Shared Function MagneticField() As AppleSCNPhysicsField
		  dim result as new AppleSCNPhysicsField(electricField(classptr))
		  result.RetainClassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function magneticField Lib SceneKitLibname Selector "springField" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleSCNPhysicsField
		  return if (aptr = nil, nil, new AppleSCNPhysicsField(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C642074686174206170706C6965732072616E646F6D20666F7263657320746F206F626A6563747320696E206974732061726561206F66206566666563742E0A4120536D6F6F74686E6573732076616C7565206F6620302E3020737065636966696573206D6178696D756D206E6F6973652C20616E6420612076616C7565206F6620312E3020737065636966696573206E6F206E6F69736520617420616C6C2E20416E20616E696D6174696F6E5370656564206F6620302E30206D65616E73206120737461746963206669656C642E
		Shared Function NoiseField(Smoothness as Double, AnimationSpeed as Double) As AppleSCNPhysicsField
		  dim result as new AppleSCNPhysicsField(noiseFieldWithSmoothness(classptr, Smoothness, AnimationSpeed))
		  result.RetainClassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function noiseFieldWithSmoothness Lib SceneKitLibname Selector "noiseFieldWithSmoothness:animationSpeed:" (id as ptr, Smoothness as cgfloat, speed as cgfloat) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C64207468617420616363656C657261746573206F626A6563747320746F77617264206974732063656E7465722E
		Shared Function RadialGravityField() As AppleSCNPhysicsField
		  dim result as new AppleSCNPhysicsField(radialGravityField(classptr))
		  result.RetainClassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function radialGravityField Lib SceneKitLibname Selector "dragField" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Function SCNFieldForceEvaluatorTemplate(Position as SCNVector3, Velocity as SCNVector3, mass as single, charge as single, time as double) As SCNVector3
		  // This is a template for a custom Field Evaluator block suitable for 64 Bit.
		  // For a 32 Bit version, replace position, velocity and the return value by SCNVector3_32Bit structures.
		  // This block is called on every object in the field’s area of effect each view’s render cycle.
		  
		  // Remove the pragmas accordingly when calculating the force vector to apply which you must return.
		  #pragma unused Position
		  #pragma unused Velocity
		  #pragma unused Mass
		  #pragma unused Charge
		  #pragma unused Time
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setactive Lib SceneKitLibname Selector "setActive:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdirection Lib SceneKitLibname Selector "setDirection:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setexclusive Lib SceneKitLibname Selector "setExclusive:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setfalloffExponent Lib SceneKitLibname Selector "setFalloffExponent:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sethalfExtent Lib SceneKitLibname Selector "setHalfExtent:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setoffset Lib SceneKitLibname Selector "setOffset:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setscope Lib SceneKitLibname Selector "setScope:" (id as ptr, value as SCNPhysicsFieldScope)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub setstrength Lib SceneKitLibname Selector "setStrength:" (id as ptr, value as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setusesEllipsoidalExtent Lib SceneKitLibname Selector "setUsesEllipsoidalExtent:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C6420746861742070756C6C73206F626A6563747320746F77617264206974732063656E7465722077697468206120737072696E672D6C696B6520666F7263652E
		Shared Function SpringField() As AppleSCNPhysicsField
		  dim result as new AppleSCNPhysicsField(springField(classptr))
		  result.RetainClassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function springField Lib SceneKitLibname Selector "springField" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C642074686174206170706C6965732072616E646F6D20666F7263657320746F206F626A6563747320696E206974732061726561206F66206566666563742C2077697468206D61676E6974756465732070726F706F7274696F6E616C20746F2074686F7365206F626A65637473E280992076656C6F6369746965732E0A4120536D6F6F74686E6573732076616C7565206F6620302E3020737065636966696573206D6178696D756D206E6F6973652C20616E6420612076616C7565206F6620312E3020737065636966696573206E6F206E6F69736520617420616C6C2E20416E20616E696D6174696F6E5370656564206F6620302E30206D65616E73206120737461746963206669656C642E
		Shared Function TurbulenceField(Smoothness as Double, AnimationSpeed as Double) As AppleSCNPhysicsField
		  dim result as new AppleSCNPhysicsField(turbulenceFieldWithSmoothness(classptr, Smoothness, AnimationSpeed))
		  result.RetainClassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function turbulenceFieldWithSmoothness Lib SceneKitLibname Selector "turbulenceFieldWithSmoothness:animationSpeed:" (id as ptr, Smoothness as cgfloat, speed as cgfloat) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206669656C642077686F736520666F726365732063697263756C6174652061726F756E6420616E20617869732E
		Shared Function VortexField() As AppleSCNPhysicsField
		  dim result as new AppleSCNPhysicsField(vortexField(classptr))
		  result.RetainClassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function vortexField Lib SceneKitLibname Selector "vortexField" (id as ptr) As ptr
	#tag EndExternalMethod


	#tag Note, Name = Status completed and documented
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E6573207768657468657220746865206669656C64E28099732065666665637420697320656E61626C65642E2044656661756C7420547275652E
		#tag Getter
			Get
			  return getactive(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setactive mid, value
			End Set
		#tag EndSetter
		Active As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E65732077686963682063617465676F7269657320746869732070687973696373206669656C642062656C6F6E677320746F2E
		#tag Getter
			Get
			  return SceneKitFrameWork.getcategoryBitMask(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setcategoryBitMask mid, value
			End Set
		#tag EndSetter
		CategoryBitMask As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNPhysicsField")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206669656C64E280997320646972656374696F6E616C20617869732E
		#tag Getter
			Get
			  return getdirection(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setdirection mid, value
			  
			End Set
		#tag EndSetter
		Direction As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E6573207768657468657220746865206669656C64206F7665727269646573206F74686572206669656C64732077686F7365206172656173206F6620656666656374206974206F7665726C6170732E
		#tag Getter
			Get
			  return getexclusive(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setexclusive mid, value
			End Set
		#tag EndSetter
		Exclusive As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206578706F6E656E7420746861742064657465726D696E657320686F7720746865206669656C64E280997320737472656E6774682064696D696E697368657320776974682064697374616E63652E
		#tag Getter
			Get
			  return getfalloffExponent(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfalloffExponent mid, value
			End Set
		#tag EndSetter
		FalloffExponent As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C6F636174696F6E206D61726B696E672074686520656E64206F6620746865206669656C64E28099732061726561206F66206566666563742E0A546F20646566696E652061206669656C64E28099732061726561206F66206566666563742C207573652074686520706F736974696F6E2070726F7065727479206F6620746865206E6F6465207468617420636F6E7461696E7320746865206669656C6420616E6420746865206669656C64E28099732068616C66457874656E742070726F70657274792E205468652063656E746572206F66207468652061726561206F662065666665637420697320746865206E6F6465E280997320706F736974696F6E2E205468652068616C662D657874656E742C206120706F736974696F6E20766563746F7220696E20746865206C6F63616C20636F6F7264696E617465207370616365206F6620746865206E6F646520636F6E7461696E696E6720746865206669656C642C206D61726B73206F6E6520636F726E6572206F66206120626F782C20616E6420746865206E65676174697665206F66207468652068616C662D657874656E7420766563746F72206D61726B7320746865206F70706F7369746520636F726E6572206F662074686520626F782E20466F72206578616D706C652C2069662061206E6F6465E280997320706F736974696F6E2069732074686520766563746F72207B322E302C20322E302C20322E307D20616E6420697420636F6E7461696E7320612070687973696373206669656C642077686F73652068616C662D657874656E742069732074686520766563746F72207B302E352C20302E352C20302E357D2C20746865206669656C64E28099732061726561206F66206566666563742069732074686520626F7820657874656E64696E672066726F6D20312E3520746F20322E3520616C6F6E6720656163682061786973206F6620746865207363656E65E280997320636F6F7264696E6174652073797374656D2E0A0A42792064656661756C742C2061206669656C64E28099732061726561206F66206566666563742069732074686520696E746572696F72206F66207468697320626F782073686170652E20557365207468652075736573456C6C6970736F6964616C457874656E742070726F706572747920746F20696E7374656164206D616B65207468652061726561206F662065666665637420616E20656C6C6970736F696420626F756E646564206279207468697320626F782E20557365207468652073636F70652070726F706572747920746F2063686F6F73652077686574686572207468652061726561206F66206566666563742069732074686520696E746572696F72206F72206578746572696F72206F662074686520626F7820286F7220656C6C6970736F6964292E0A0A5468652064656661756C742068616C662D657874656E742069732074686520766563746F72207B494E46494E4954592C20494E46494E4954592C20494E46494E4954597D2C2073706563696679696E67207468617420746865206669656C64206166666563747320626F64696573206C6F636174656420616E79776865726520696E20746865207363656E652E
		#tag Getter
			Get
			  return gethalfExtent(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  sethalfExtent mid, value
			  
			End Set
		#tag EndSetter
		HalfExtent As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F6666736574206F6620746865206669656C64E28099732063656E7465722077697468696E206974732061726561206F66206566666563742E
		#tag Getter
			Get
			  return getoffset(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setoffset mid, value
			  
			End Set
		#tag EndSetter
		Offset As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206172656120616666656374656420627920746865206669656C642C2065697468657220696E73696465206F72206F7574736964652069747320726567696F6E2E
		#tag Getter
			Get
			  return getscope(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setscope mid, value
			End Set
		#tag EndSetter
		Scope As SCNPhysicsFieldScope
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D756C7469706C69657220666F722074686520666F726365207468617420746865206669656C64206170706C69657320746F206F626A6563747320696E206974732061726561206F66206566666563742E
		#tag Getter
			Get
			  return getstrength(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setstrength mid, value
			End Set
		#tag EndSetter
		Strength As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E6573207768657468657220746865206669656C64E28099732061726561206F662065666665637420697320736861706564206C696B65206120626F78206F7220656C6C6970736F69642E
		#tag Getter
			Get
			  return getusesEllipsoidalExtent(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setusesEllipsoidalExtent mid, value
			End Set
		#tag EndSetter
		UsesEllipsoidalExtent As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = SCNPhysicsFieldScope, Type = Integer, Flags = &h0
		InsideExtent
		OutsideExtent
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Active"
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
			Name="Exclusive"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FalloffExponent"
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
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Scope"
			Group="Behavior"
			Type="SCNPhysicsFieldScope"
			EditorType="Enum"
			#tag EnumValues
				"0 - InsideExtent"
				"1 - OutsideExtent"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Strength"
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
			Name="UsesEllipsoidalExtent"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
