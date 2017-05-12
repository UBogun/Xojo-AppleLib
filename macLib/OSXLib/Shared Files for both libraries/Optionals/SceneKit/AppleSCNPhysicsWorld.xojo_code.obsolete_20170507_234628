#tag Class
Protected Class AppleSCNPhysicsWorld
Inherits AppleScnObject
	#tag Method, Flags = &h0, Description = 416464732061206265686176696F7220746F20746865207068797369637320776F726C642E
		Sub AddBehavior(Behavior As AppleSCNPhysicsBehavior)
		  addBehavior mid, Behavior.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addBehavior Lib SceneKitLibname Selector "addBehavior:" (id as ptr, behavior as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436865636B7320666F7220636F6E7461637473206265747765656E206F6E65207068797369637320626F647920616E6420616E79206F7468657220626F6469657320696E20746865207068797369637320776F726C642E
		Function ContactTest(BodyA As AppleSCNPhysicsBody, BodyB As AppleSCNPhysicsBody, Options As SCNPhysicsWorldContactTestOptionsDictionary = nil) As AppleArray
		  return applearray.MakeFromPtr (contactTestBetweenBody (mid, bodya.id, bodyB.id, nilptr(options)))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436865636B7320666F7220636F6E7461637473206265747765656E2074776F207068797369637320626F646965732E
		Function ContactTest(Body As AppleSCNPhysicsBody, Options As SCNPhysicsWorldContactTestOptionsDictionary = nil) As AppleArray
		  return applearray.MakeFromPtr (contactTestWithBody (mid, body.id,  nilptr(options)))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function contactTestBetweenBody Lib SceneKitLibname Selector "contactTestBetweenBody:andBody:options:" (id as ptr, bodyA as ptr, bodyB as Ptr, options as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function contactTestWithBody Lib SceneKitLibname Selector "contactTestWithBody:options:" (id as ptr, body as ptr, options as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 536561726368657320666F72207068797369637320626F6469657320696E2074686520737061636520666F726D6564206279206D6F76696E67206120636F6E766578207368617065207468726F75676820746865207068797369637320776F726C642E
		Function ConvexSweepTest(shape as AppleSCNPhysicsShape, Transform1 as SCNMatrix4, Transform2 as SCNMatrix4, options as SCNPhysicsWorldContactTestOptionsDictionary = nil) As AppleArray
		  return AppleArray.MakeFromPtr (convexSweepTestWithShape (mid, shape.id, Transform1, Transform2, nilptr(options)))
		  
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convexSweepTestWithShape Lib SceneKitLibname Selector "convexSweepTestWithShape:fromTransform:toTransform:options:" (id as ptr, shape as ptr, fromTransform as SCNMatrix4, toTransform as SCNMatrix4, options as Ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  ContactDelegate = nil
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallBehaviors Lib SceneKitLibname Selector "allBehaviors" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontactDelegate Lib SceneKitLibname Selector "contactDelegate" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getgravity Lib SceneKitLibname Selector "gravity" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettimeStep Lib SceneKitLibname Selector "timeStep" (id as ptr) As double
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNPhysicsWorld
		  return if (aptr = nil, nil, new AppleSCNPhysicsWorld(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536561726368657320666F72207068797369637320626F6469657320616C6F6E672061206C696E65207365676D656E74206265747765656E2074776F20706F696E747320696E20746865207068797369637320776F726C642E
		Function RayTest(Point1 as SCNVector3, Point2 as SCNVector3, options as SCNPhysicsWorldContactTestOptionsDictionary = nil) As AppleArray
		  return AppleArray.MakeFromPtr (rayTestWithSegmentFromPoint (mid, point1, point2, nilptr(options)))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function rayTestWithSegmentFromPoint Lib SceneKitLibname Selector "rayTestWithSegmentFromPoint:toPoint:options:" (id as ptr, Origin as SCNVector3, Destination as SCNVector3, options as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616C6C206265686176696F727320616666656374696E6720626F6469657320696E20746865207068797369637320776F726C642E
		Sub RemoveAllBehaviors()
		  removeAllBehaviors id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeAllBehaviors Lib SceneKitLibname Selector "removeAllBehaviors" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732061206265686176696F722066726F6D20746865207068797369637320776F726C642E
		Sub RemoveBehavior(Behavior As AppleSCNPhysicsBehavior)
		  removeBehavior mid, Behavior.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeBehavior Lib SceneKitLibname Selector "removeBehavior:" (id as ptr, behavior as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function SearchModeConstant(value as SCNPhysicsSearchMode) As text
		  select case value
		  case SCNPhysicsSearchMode.All
		    return kSCNPhysicsTestSearchModeAll
		  case SCNPhysicsSearchMode.Any
		    Return kSCNPhysicsTestSearchModeAny
		  case SCNPhysicsSearchMode.Closest
		    return kSCNPhysicsTestSearchModeClosest
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function SearchModeForConstant(value as text) As SCNPhysicsSearchMode
		  select case value
		  case kSCNPhysicsTestSearchModeAll
		    return SCNPhysicsSearchMode.All
		  case  kSCNPhysicsTestSearchModeAny
		    return SCNPhysicsSearchMode.Any
		  case kSCNPhysicsTestSearchModeClosest
		    return SCNPhysicsSearchMode.Closest
		  end select
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontactDelegate Lib SceneKitLibname Selector "setContactDelegate:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setgravity Lib SceneKitLibname Selector "setGravity:" (id as ptr, value as SCNVector3)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settimeStep Lib SceneKitLibname Selector "setTimeStep:" (id as ptr, value as double)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 466F7263657320746865207068797369637320656E67696E6520746F2072656576616C7561746520706F737369626C6520636F6C6C6973696F6E73206265747765656E207068797369637320626F64696573
		Sub UpdateCollisionPairs()
		  updateCollisionPairs id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub updateCollisionPairs Lib SceneKitLibname Selector "updateCollisionPairs" (id as ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status complete & documented
		
		iOS 10/macOS 10.12.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 546865206C697374206F66206265686176696F727320616666656374696E6720626F6469657320696E20746865207068797369637320776F726C642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(getallBehaviors(id))
			End Get
		#tag EndGetter
		Behaviors As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("SCNPhysicsWorld")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064656C656761746520746861742069732063616C6C6564207768656E2074776F207068797369637320626F6469657320636F6D6520696E20636F6E7461637420776974682065616368206F746865722E20497320736574206175746F6D61746963616C6C7920746F20746865204170706C6553434E56696577207768656E20746865207363656E6520636F6E7461696E6720746968732050687973696373776F726C6420697320616464656420746F207468652076696577E2809973207363656E652070726F70657274792E
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr(getcontactDelegate(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcontactDelegate id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ContactDelegate As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206772617669746174696F6E616C20616363656C65726174696F6E206170706C69656420746F207068797369637320626F6469657320696E20746865207068797369637320776F726C642E
		#tag Getter
			Get
			  return getgravity(id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setgravity(id), value
			  
			End Set
		#tag EndSetter
		Gravity As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNPhysicsTestBackfaceCullingKey as text = SystemConstantName("SCNPhysicsTestBackfaceCullingKey", SceneKitPath)
			  return mkSCNPhysicsTestBackfaceCullingKey
			End Get
		#tag EndGetter
		Shared kSCNPhysicsTestBackfaceCullingKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNPhysicsTestCollisionBitMaskKey as text = SystemConstantName("SCNPhysicsTestCollisionBitMaskKey", SceneKitPath)
			  return mkSCNPhysicsTestCollisionBitMaskKey
			End Get
		#tag EndGetter
		Shared kSCNPhysicsTestCollisionBitMaskKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNPhysicsTestSearchModeAll as text = SystemConstantName("SCNPhysicsTestSearchModeAll", SceneKitPath)
			  return mkSCNPhysicsTestSearchModeAll
			End Get
		#tag EndGetter
		Shared kSCNPhysicsTestSearchModeAll As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNPhysicsTestSearchModeAny as text = SystemConstantName("SCNPhysicsTestSearchModeAny", SceneKitPath)
			  return mkSCNPhysicsTestSearchModeAny
			End Get
		#tag EndGetter
		Shared kSCNPhysicsTestSearchModeAny As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNPhysicsTestSearchModeClosest as text = SystemConstantName("SCNPhysicsTestSearchModeClosest", SceneKitPath)
			  return mkSCNPhysicsTestSearchModeClosest
			End Get
		#tag EndGetter
		Shared kSCNPhysicsTestSearchModeClosest As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkSCNPhysicsTestSearchModeKey as text = SystemConstantName("SCNPhysicsTestSearchModeKey", SceneKitPath)
			  return mkSCNPhysicsTestSearchModeKey
			End Get
		#tag EndGetter
		Shared kSCNPhysicsTestSearchModeKey As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072617465206174207768696368207468652073696D756C6174696F6E2065786563757465732E2044656661756C7420312E302E200A322E30206D65616E732074686520706879736963732073696D756C6174696F6E2074696D6520706173736573207477696365206173206661737420617320746865207363656E65E28099732074696D652E
		#tag Getter
			Get
			  return SceneKitFrameWork.getspeed (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setspeed (id, value)
			End Set
		#tag EndSetter
		Speed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D6520696E74657276616C206265747765656E207570646174657320746F2074686520706879736963732073696D756C6174696F6E2E2044656661756C7420312F36302E
		#tag Getter
			Get
			  return gettimeStep (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  settimeStep (id, value)
			End Set
		#tag EndSetter
		TimeStep As Double
	#tag EndComputedProperty


	#tag Enum, Name = SCNPhysicsSearchMode, Type = Integer, Flags = &h0
		Any
		  Closest
		All
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
			Name="Speed"
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
			Name="TimeStep"
			Group="Behavior"
			Type="Double"
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
