#tag Class
Protected Class AppleSKPhysicsJoint
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getreactionForce Lib SpriteKitLibName Selector "reactionForce" (id as ptr) As FoundationFrameWork.cgvector
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getreactionTorque Lib SpriteKitLibName Selector "reactionTorque" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function jointWithBodyAbodyBanchor Lib SpriteKitLibName Selector "jointWithBodyA:bodyB:anchor:" (id as ptr, bodyA as Ptr, bodyB as Ptr, anchor as FoundationFrameWork . NSPoint) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function jointWithBodyAbodyBanchorAanchorB Lib SpriteKitLibName Selector "jointWithBodyA:bodyB:anchorA:anchorB:" (id as ptr, bodyA as Ptr, bodyB as Ptr, anchorA As FoundationFrameWork . NSPoint, anchorB as FoundationFrameWork . NSPoint) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSKPhysicsJoint
		  return if (aptr = nil, nil, new AppleSKPhysicsJoint(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setBodyA Lib SpriteKitLibName Selector "setBodyA:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setBodyB Lib SpriteKitLibName Selector "setBodyB:" (id as ptr, value as Ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520666972737420626F647920636F6E6E656374656420627920746865206A6F696E742E
		#tag Getter
			Get
			  return AppleSKPhysicsBody.MakeFromPtr (SpriteKitFramework.getbodyA(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBodyA mid, value.id
			End Set
		#tag EndSetter
		BodyA As AppleSKPhysicsBody
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207365636F6E6420626F647920636F6E6E656374656420627920746865206A6F696E742E
		#tag Getter
			Get
			  return AppleSKPhysicsBody.MakeFromPtr (SpriteKitFramework.getbodyB(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBodyB mid, value.id
			End Set
		#tag EndSetter
		BodyB As AppleSKPhysicsBody
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E7374616E74616E656F7573207265616374696F6E20666F7263652063757272656E746C79206265696E672064697265637465642061742074686520616E63686F7220706F696E742C20696E204E6577746F6E732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getreactionForce (mid)
			  
			End Get
		#tag EndGetter
		ReactionForce As FoundationFrameWork.cgvector
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E7374616E74616E656F7573207265616374696F6E20746F727175652063757272656E746C79206265696E672064697265637465642061742074686520616E63686F7220706F696E742C20696E204E6577746F6E2D6D65746572732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getreactionTorque (mid)
			  
			End Get
		#tag EndGetter
		ReactionTorque As Double
	#tag EndComputedProperty


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
