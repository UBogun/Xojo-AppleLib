#tag Class
Protected Class AppleSKPhysicsJointPin
Inherits AppleSKPhysicsJoint
	#tag Method, Flags = &h1000, Description = 437265617465732061206E65772070696E206A6F696E742E
		Sub Constructor(BodyA As AppleSKPhysicsBody, BodyB as AppleSKPhysicsBody, Anchor as FoundationFramework.NSPoint)
		  super.Constructor (jointWithBodyAbodyBanchor(ClassPtr, bodyA.id, Bodyb.id, Anchor))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfrictionTorque Lib SpriteKitLibName Selector "frictionTorque" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrotationSpeed Lib SpriteKitLibName Selector "rotationSpeed" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfrictionTorque Lib SpriteKitLibName Selector "setFrictionTorque:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrotationSpeed Lib SpriteKitLibName Selector "setRotationSpeed:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKPhysicsJointPin")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652070696E206A6F696E74E280997320726F746174696F6E206973206C696D6974656420746F20612073706563696669632072616E6765206F662076616C7565732E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return SpriteKitFramework.getshouldEnableLimits (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setShouldEnableLimits mid, value
			End Set
		#tag EndSetter
		EnableLimits As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726573697374616E6365206170706C696564206279207468652070696E206A6F696E7420746F207370696E6E696E672061726F756E642074686520616E63686F7220706F696E742E2044656661756C7420302E302C206D617820312E302E
		#tag Getter
			Get
			  return getfrictionTorque (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFrictionTorque mid, value
			  
			End Set
		#tag EndSetter
		FrictionTorque As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520736D616C6C65737420616E676C6520616C6C6F77656420666F72207468652070696E206A6F696E742C20696E2072616469616E732E
		#tag Getter
			Get
			  return SpriteKitFramework.getLowerAngleLimit (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setLowerAngleLimit mid, value
			End Set
		#tag EndSetter
		LowerAngleLimit As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073706565642C20696E2072616469616E7320706572207365636F6E642C20617420776869636820746865207068797369637320626F64696573206172652064726976656E2061726F756E64207468652070696E206A6F696E742E
		#tag Getter
			Get
			  return getrotationSpeed (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setRotationSpeed mid, value
			  
			End Set
		#tag EndSetter
		RotationSpeed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C61726765737420616E676C6520616C6C6F77656420666F72207468652070696E206A6F696E742C20696E2072616469616E732E
		#tag Getter
			Get
			  return SpriteKitFramework.getupperAngleLimit (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setUpperAngleLimit mid, value
			End Set
		#tag EndSetter
		UpperAngleLimit As Double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableLimits"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrictionTorque"
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
			Name="LowerAngleLimit"
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
			Name="ReactionTorque"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RotationSpeed"
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
			Name="UpperAngleLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
