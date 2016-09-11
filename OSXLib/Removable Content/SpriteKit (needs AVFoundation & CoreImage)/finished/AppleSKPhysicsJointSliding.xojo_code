#tag Class
Protected Class AppleSKPhysicsJointSliding
Inherits AppleSKPhysicsJoint
	#tag Method, Flags = &h1000, Description = 437265617465732061206E657720736C6964696E67206A6F696E742E
		Sub Constructor(BodyA As AppleSKPhysicsBody, BodyB as AppleSKPhysicsBody, Anchor as FoundationFramework.NSPoint, Axis as FoundationFramework.CGVector)
		  super.Constructor (jointWithBodyAbodyBanchoraxis(ClassPtr, bodyA.id, Bodyb.id, Anchor, axis))
		  
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlowerDistanceLimit Lib SpriteKitLibName Selector "lowerDistanceLimit" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getupperDistanceLimit Lib SpriteKitLibName Selector "upperDistanceLimit" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function jointWithBodyAbodyBanchoraxis Lib SpriteKitLibName Selector "jointWithBodyA:bodyB:anchor:axis:" (id as ptr, bodyA as ptr, bodyB as ptr, anchor as FoundationFramework . NSPoint, axis as FoundationFramework . CGVector) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlowerDistanceLimit Lib SpriteKitLibName Selector "setLowerDistanceLimit:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setupperDistanceLimit Lib SpriteKitLibName Selector "setUpperDistanceLimit:" (id as ptr, value as CGFloat)
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
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKPhysicsJointSliding")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520736C6964696E67206A6F696E74206973207265737472696374656420736F207468617420746865206F626A65637473206D6179206F6E6C7920736C69646520612066696E6974652064697374616E63652066726F6D2074686520696E697469616C20616E63686F7220706F696E742E
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520736D616C6C6573742064697374616E636520616C6C6F77656420666F722074686520736C6964696E67206A6F696E742E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getlowerDistanceLimit (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setLowerDistanceLimit (mid, value)
			  
			End Set
		#tag EndSetter
		LowerDistanceLimit As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6172676573742064697374616E636520616C6C6F77656420666F722074686520736C6964696E67206A6F696E742E2044656661756C7420302E302E
		#tag Getter
			Get
			  return getupperDistanceLimit (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setUpperDistanceLimit (mid, value)
			  
			End Set
		#tag EndSetter
		UpperDistanceLimit As Double
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
			Name="LowerDistanceLimit"
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
			Name="UpperDistanceLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
