#tag Class
Protected Class AppleSCNPhysicsBody
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 4170706C696573206120666F726365206F7220696D70756C736520746F2074686520626F6479206174206974732063656E746572206F66206D6173732E20496620696E7374616E74616E656F757320646F657320736F206469726563746C792C20656C73652061742074686520656E64206F66207468652073696D756C6174696F6E20737465702E
		Sub ApplyForce(Force as SCNVector3, instantaneous as Boolean = false)
		  SceneKitFrameWork.applyForce mid, force, instantaneous
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C696573206120666F726365206F7220696D70756C736520746F2074686520626F6479206174206120737065636966696320706F696E742E20496620696E7374616E74616E656F757320646F657320736F206469726563746C792C20656C73652061742074686520656E64206F66207468652073696D756C6174696F6E20737465702E
		Sub ApplyForce(Force as SCNVector3, Position as SCNVector3, instantaneous as Boolean = false)
		  SceneKitFrameWork.applyForceAtPosition mid, force, position, instantaneous
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C6965732061206E657420746F72717565206F722061206368616E676520696E20616E67756C6172206D6F6D656E74756D20746F2074686520626F64792E20496620696E7374616E74616E656F757320646F657320736F206469726563746C792C20656C73652061742074686520656E64206F66207468652073696D756C6174696F6E20737465702E
		Sub ApplyTorque(Torque as SCNVector4, instantaneous as Boolean = false)
		  SceneKitFrameWork.applyTorque mid, Torque, instantaneous
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616E63656C7320616C6C20636F6E74696E756F757320666F7263657320616E6420746F727175657320616374696E67206F6E20746865207068797369637320626F647920647572696E67207468652063757272656E742073696D756C6174696F6E20737465702E
		Sub ClearAllForces()
		  clearAllForces id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Sub clearAllForces Lib SceneKitLibname Selector "clearAllForces" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h21, Description = 437265617465732061207068797369637320626F647920776974682074686520737065636966696564207479706520616E642073686170652E0A496620796F752070617373206E696C20666F722074686520736861706520706172616D657465722C205363656E654B6974206175746F6D61746963616C6C7920637265617465732061207068797369637320736861706520666F722074686520626F6479207768656E20796F752061747461636820697420746F2061206E6F64652C206261736564206F6E2074686174206E6F6465E28099732067656F6D657472792070726F70657274792E
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207068797369637320626F647920776974682074686520737065636966696564207479706520616E642073686170652E0A496620796F752070617373206E696C20666F722074686520736861706520706172616D657465722C205363656E654B6974206175746F6D61746963616C6C7920637265617465732061207068797369637320736861706520666F722074686520626F6479207768656E20796F752061747461636820697420746F2061206E6F64652C206261736564206F6E2074686174206E6F6465E28099732067656F6D657472792070726F70657274792E
		Sub Constructor(type as SCNPhysicsBodyType, shape as AppleSCNPhysicsShape = nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  declare function bodyWithType Lib SceneKitLibname selector "bodyWithType:shape:" (id as ptr, type as SCNPhysicsBodyType, shape as ptr) as ptr
		  Super.Constructor(bodyWithType(classptr, type, if (shape= nil, nil, shape.Id)))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207068797369637320626F647920746861742063616E20626520616666656374656420627920666F7263657320616E6420636F6C6C6973696F6E732E
		Shared Function DynamicBody() As AppleSCNPhysicsBody
		  declare function dynamicBody Lib SceneKitLibname selector "dynamicBody" (id as ptr) as ptr
		  dim result as new AppleSCNPhysicsBody(dynamicBody(classptr))
		  result.RetainClassObject
		  Return Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207068797369637320626F6479207468617420697320756E616666656374656420627920666F72636573206F7220636F6C6C6973696F6E732062757420746861742063616E20636175736520636F6C6C6973696F6E7320616666656374696E67206F7468657220626F64696573207768656E206D6F7665642E
		Shared Function KinematicBody() As AppleSCNPhysicsBody
		  declare function kinematicBody Lib SceneKitLibname selector "kinematicBody" (id as ptr) as ptr
		  dim result as new AppleSCNPhysicsBody(kinematicBody(classptr))
		  result.RetainClassObject
		  Return Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNPhysicsBody
		  return if (aptr = nil, nil, new AppleSCNPhysicsBody(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 557064617465732074686520706F736974696F6E20616E64206F7269656E746174696F6E206F66206120626F647920696E2074686520706879736963732073696D756C6174696F6E20746F206D617463682074686174206F6620746865206E6F646520746F2077686963682074686520626F64792069732061747461636865642E0A496620796F75206368616E67652074686520706F736974696F6E206F72206F7269656E746174696F6E206F662061206E6F6465207769746820616E20617474616368656420737461746963206F722064796E616D6963207068797369637320626F64792C2063616C6C2074686973206D6574686F642061667465727761726420746F20656E7375726520746861742074686520706879736963732073696D756C6174696F6E20696E636F72706F726174657320746865206368616E67652E20596F75206E656564206E6F742063616C6C2074686973206D6574686F6420666F72206B696E656D6174696320626F646965732E0A4E6F746520746861742064796E616D696320616E64207068797369637320626F64696573206172652064657369676E656420746F206265206D6F766564206F6E6C792062792074686520706879736963732073696D756C6174696F6E206F72206E6F7420617420616C6C2E20596F75206D6179207573652074686973206D6574686F6420746F206D6F7665207468656D207265676172646C657373206F662074686973207265737472696374696F6E2C20627574206174206120636F737420746F20706572666F726D616E63652E
		Sub ResetTransform()
		  SceneKitFrameWork.resetTransform id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207068797369637320626F6479207468617420697320756E616666656374656420627920666F72636573206F7220636F6C6C6973696F6E7320616E6420746861742063616E6E6F74206D6F76652E
		Shared Function StaticBody() As AppleSCNPhysicsBody
		  declare function staticBody Lib SceneKitLibname selector "staticBody" (id as ptr) as ptr
		  dim result as new AppleSCNPhysicsBody(staticBody(classptr))
		  result.RetainClassObject
		  Return Result
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete + documented
		ios 9.2.
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E657320776865746865722074686520636F6E7374616E742067726176697479206F662061207363656E6520616363656C6572617465732074686520626F64792E20417661696C61626C652073696E636520694F5320392E302E2044656661756C7420547275652E
		#tag Getter
			Get
			  if RespondsToSelector ("isAffectedByGravity", classptr) then return SceneKitFrameWork.getaffectedByGravity(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector ("setAffectedByGravity:", classptr) then SceneKitFrameWork.setaffectedByGravity(mid, value)
			End Set
		#tag EndSetter
		AffectedByGravity As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C75652074686174207370656369666965732077686574686572205363656E654B69742063616E206175746F6D61746963616C6C79206D61726B20746865207068797369637320626F647920617420726573742E2044656661756C7420547275652E
		#tag Getter
			Get
			  return SceneKitFrameWork.getallowsResting(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setallowsResting(mid, value)
			End Set
		#tag EndSetter
		AllowsResting As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120666163746F72207468617420726564756365732074686520626F6479E280997320616E67756C61722076656C6F636974792E
		#tag Getter
			Get
			  return SceneKitFrameWork.getangulardamping(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setangulardamping(mid, value)
			End Set
		#tag EndSetter
		AngularDamping As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120766563746F722064657363726962696E6720626F7468207468652063757272656E7420726F746174696F6E206178697320616E6420726F746174696F6E616C2073706565642028696E2072616469616E7320706572207365636F6E6429206F6620746865207068797369637320626F64792E
		#tag Getter
			Get
			  return SceneKitFrameWork.getangularvelocity(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setangularVelocity(mid, value)
			  
			End Set
		#tag EndSetter
		AngularVelocity As SCNVector4
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D756C7469706C69657220616666656374696E6720686F77205363656E654B6974206170706C69657320726F746174696F6E7320636F6D70757465642062792074686520706879736963732073696D756C6174696F6E20746F20746865206E6F646520636F6E7461696E696E6720746865207068797369637320626F64792E0A55736520746869732070726F706572747920746F20636F6E73747261696E206F722072657374726963742074686520656666656374206F6620706879736963732073696D756C6174696F6E206F6E20746865206E6F646520636F6E7461696E696E6720746865207068797369637320626F64792E20466F72206578616D706C652C20796F752063616E20666F726365206120626F647920746F20726F7461746520696E206F6E6C79206F6E6520617869732062792073657474696E672069747320616E67756C61722076656C6F6369747920666163746F7220746F207B302E302C20312E302C20302E307D2E
		#tag Getter
			Get
			  return SceneKitFrameWork.getangularvelocityFactor(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setangularVelocityFactor(mid, value)
			  
			End Set
		#tag EndSetter
		AngularVelocityFactor As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E65732077686963682063617465676F726965732074686520626F64792062656C6F6E677320746F2E
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520656C65637472696320636861726765206F662074686520626F64792C20696E20636F756C6F6D62732E
		#tag Getter
			Get
			  return SceneKitFrameWork.getCharge(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setcharge(mid, value)
			End Set
		#tag EndSetter
		Charge As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr 
			  if mclassptr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNPhysicsBody")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E65732077686963682063617465676F72696573206F6620626F6469657320636175736520696E74657273656374696F6E206E6F74696669636174696F6E7320776974682074686973207068797369637320626F64792E
		#tag Getter
			Get
			  return SceneKitFrameWork.getcollisionBitMask(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setcollisionBitMask mid, value
			End Set
		#tag EndSetter
		CollisionBitMask As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E65732077686963682063617465676F72696573206F6620626F6469657320636175736520696E74657273656374696F6E206E6F74696669636174696F6E7320776974682074686973207068797369637320626F64792E20417661696C61626C652073696E636520694F5320392E302E0A466F72206170706C69636174696F6E732072756E6E696E672020694F5320382C20746869732070726F7065727479E28099732076616C7565206D6174636865732074686174206F662074686520636F6C6C6973696F6E4269744D61736B2070726F7065727479E28094746861742069732C205363656E654B69742073656E647320636F6E74616374206D6573736167657320696620616E64206F6E6C79206966206120636F6C6C6973696F6E206F63637572732E20466F72206170706C69636174696F6E732072756E6E696E67206F6E20694F532039206F72206C617465722C20746869732070726F7065727479E28099732076616C75652064656661756C747320746F207A65726F20616E64206E656564206E6F74206D617463682074686520636F6C6C6973696F6E206D61736BE28094746861742069732C20612070616972206F6620626F646965732067656E65726174657320636F6E74616374206D65737361676573207768656E657665722074686520626F6469657320696E746572736563742C207265676172646C657373206F662077686574686572207468657920636F6C6C696465206F722070617373207468726F756768206F6E6520616E6F746865722E
		#tag Getter
			Get
			  if RespondsToSelector ("contactTestBitMask", classptr) then return SceneKitFrameWork.getcontactTestBitMask(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector ("setContactTestBitMask:", classptr) then  SceneKitFrameWork.setcontactTestBitMask mid, value
			End Set
		#tag EndSetter
		ContactTestBitMask As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120666163746F72207468617420726564756365732074686520626F6479E2809973206C696E6561722076656C6F636974792E
		#tag Getter
			Get
			  return SceneKitFrameWork.getdamping(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setdamping(mid, value)
			End Set
		#tag EndSetter
		Damping As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626F6479E280997320726573697374616E636520746F20736C6964696E67206D6F74696F6E2E
		#tag Getter
			Get
			  return SceneKitFrameWork.getfriction(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setfriction(mid, value)
			End Set
		#tag EndSetter
		Friction As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D617373206F662074686520626F64792C20696E206B696C6F6772616D732E
		#tag Getter
			Get
			  return SceneKitFrameWork.getMass(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setMass(mid, value)
			End Set
		#tag EndSetter
		Mass As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626F6479E2809973206D6F6D656E74206F6620696E65727469612C2065787072657373656420696E20746865206C6F63616C20636F6F7264696E6174652073797374656D206F6620746865206E6F6465207468617420636F6E7461696E732074686520626F64792E20417661696C61626C652073696E636520694F5320392E302E0A205573696E67206120637573746F6D206D6F6D656E74206F6620696E65727469612072657175697265732073657474696E6720746865207573657344656661756C744D6F6D656E744F66496E65727469612070726F706572747920746F2046616C73652E
		#tag Getter
			Get
			  if RespondsToSelector( "momentOfInertia", classptr) then
			    return SceneKitFrameWork.getmomentOfInertia(mid)
			  end if
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector ("setMomentOfInertia:", classptr) then
			    SceneKitFrameWork.setmomentOfInertia(mid, value)
			  end if
			End Set
		#tag EndSetter
		MomentOfInertia As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A656374207468617420646566696E65732074686520736F6C696420766F6C756D65206F6620746865207068797369637320626F647920666F722075736520696E20636F6C6C6973696F6E20646574656374696F6E2E
		#tag Getter
			Get
			  Declare function physicsShape Lib SceneKitLibname selector "physicsShape" (id as ptr) as ptr
			  return AppleSCNPhysicsShape.MakefromPtr(physicsShape(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setPhysicsShape Lib SceneKitLibname selector "setPhysicsShape:" (id as ptr, value as ptr)
			  setPhysicsShape id, if (value= nil, nil, value.id)
			End Set
		#tag EndSetter
		PhysicsShape As AppleSCNPhysicsShape
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C7565207468617420696E64696361746573207768657468657220746865207068797369637320626F647920697320617420726573742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return SceneKitFrameWork.getResting(mid)
			End Get
		#tag EndGetter
		Resting As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120666163746F7220746861742064657465726D696E657320686F77206D756368206B696E6574696320656E657267792074686520626F6479206C6F736573206F72206761696E7320696E20636F6C6C6973696F6E732E
		#tag Getter
			Get
			  return SceneKitFrameWork.getrestitution(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setrestitution(mid, value)
			End Set
		#tag EndSetter
		Restitution As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626F6479E280997320726573697374616E636520746F20726F6C6C696E67206D6F74696F6E2E
		#tag Getter
			Get
			  return SceneKitFrameWork.getrollingFriction(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setrollingFriction(mid, value)
			End Set
		#tag EndSetter
		RollingFriction As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120636F6E7374616E7420746861742064657465726D696E657320686F7720746865207068797369637320626F647920726573706F6E647320746F20666F7263657320616E6420636F6C6C6973696F6E732E
		#tag Getter
			Get
			  Declare function type Lib SceneKitLibname selector "type" (id as ptr) as SCNPhysicsBodyType
			  return type(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setType Lib SceneKitLibname selector "setType:" (id as ptr, value as SCNPhysicsBodyType)
			  setType id, value
			End Set
		#tag EndSetter
		Type As SCNPhysicsBodyType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E65732077686574686572205363656E654B6974206175746F6D61746963616C6C792063616C63756C617465732074686520626F6479E2809973206D6F6D656E74206F6620696E6572746961206F7220616C6C6F77732073657474696E67206120637573746F6D2076616C75652E20417661696C61626C652073696E636520694F5320392E302E2044656661756C7420547275652E
		#tag Getter
			Get
			  if RespondsToSelector ("usesDefaultMomentOfInertia", classptr) then return SceneKitFrameWork.getusesDefaultMomentOfInertia(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setusesDefaultMomentOfInertia(mid, value)
			End Set
		#tag EndSetter
		UsesDefaultMomentOfInertia As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120766563746F722064657363726962696E6720626F7468207468652063757272656E742073706565642028696E206D657465727320706572207365636F6E642920616E6420646972656374696F6E206F66206D6F74696F6E206F6620746865207068797369637320626F64792E
		#tag Getter
			Get
			  return SceneKitFrameWork.getvelocity(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setvelocity(mid, value)
			  
			End Set
		#tag EndSetter
		Velocity As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D756C7469706C69657220616666656374696E6720686F77205363656E654B6974206170706C696573207472616E736C6174696F6E7320636F6D70757465642062792074686520706879736963732073696D756C6174696F6E20746F20746865206E6F646520636F6E7461696E696E6720746865207068797369637320626F64792E0A55736520746869732070726F706572747920746F20636F6E73747261696E206F722072657374726963742074686520656666656374206F6620706879736963732073696D756C6174696F6E206F6E20746865206E6F646520636F6E7461696E696E6720746865207068797369637320626F64792E20466F72206578616D706C652C20796F752063616E20666F726365206120626F647920746F206D6F766520696E206F6E6C792074776F2064696D656E73696F6E732062792073657474696E67206974732076656C6F6369747920666163746F7220746F207B312E302C20312E302C20302E307D2E
		#tag Getter
			Get
			  return SceneKitFrameWork.getvelocityFactor(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setvelocityFactor(mid, value)
			  
			End Set
		#tag EndSetter
		VelocityFactor As SCNVector3
	#tag EndComputedProperty


	#tag Enum, Name = SCNPhysicsBodyType, Type = Integer, Flags = &h0
		StaticType
		  DynamicType
		KinematicType
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AffectedByGravity"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsResting"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AngularDamping"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CategoryBitMask"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Charge"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CollisionBitMask"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContactTestBitMask"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Damping"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Friction"
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
			Name="Mass"
			Group="Behavior"
			Type="Double"
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
			Name="Resting"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Restitution"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RollingFriction"
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
			Type="SCNPhysicsBodyType"
			EditorType="Enum"
			#tag EnumValues
				"0 - StaticType"
				"1 - DynamicType"
				"2 - KinematicType"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="UsesDefaultMomentOfInertia"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
