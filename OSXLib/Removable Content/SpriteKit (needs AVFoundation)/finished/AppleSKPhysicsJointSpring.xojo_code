#tag Class
Protected Class AppleSKPhysicsJointSpring
Inherits AppleSKPhysicsJoint
	#tag Method, Flags = &h1000, Description = 437265617465732061206E657720737072696E67206A6F696E742E
		Sub Constructor(BodyA As AppleSKPhysicsBody, BodyB as AppleSKPhysicsBody, AnchorA as FoundationFramework.NSPoint, AnchorB as FoundationFramework.NSPoint)
		  super.Constructor (jointWithBodyAbodyBanchorAanchorB(ClassPtr, bodyA.id, Bodyb.id, AnchorA, anchorB))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdamping Lib SpriteKitLibName Selector "damping" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfrequency Lib SpriteKitLibName Selector "frequency" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdamping Lib SpriteKitLibName Selector "setDamping:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfrequency Lib SpriteKitLibName Selector "setFrequency:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		macOs 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKPhysicsJointSpring")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 486F772074686520737072696E67E2809973206D6F74696F6E2073686F756C642062652064616D7065642064756520746F2074686520666F72636573206F66206672696374696F6E2E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getdamping (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setDamping (mid, value)
			  
			End Set
		#tag EndSetter
		Damping As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206672657175656E637920636861726163746572697374696373206F662074686520737072696E672E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getfrequency (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFrequency (mid, value)
			  
			End Set
		#tag EndSetter
		Frequency As Double
	#tag EndComputedProperty


	#tag ViewBehavior
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
			Name="Frequency"
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
