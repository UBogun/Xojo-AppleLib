#tag Class
Protected Class AppleSKPhysicsJointLimit
Inherits AppleSKPhysicsJoint
	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577206C696D6974206A6F696E742E
		Sub Constructor(BodyA As AppleSKPhysicsBody, BodyB as AppleSKPhysicsBody, AnchorA as FoundationFramework.NSPoint, AnchorB as FoundationFramework.NSPoint)
		  super.Constructor (jointWithBodyAbodyBanchorAanchorB(ClassPtr, bodyA.id, Bodyb.id, AnchorA, anchorB))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getMaxLength Lib SpriteKitLibName Selector "maxLength" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setMaxLength Lib SpriteKitLibName Selector "setMaxLength:" (id as ptr, value as CGFloat)
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
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKPhysicsJointLimit")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D2064697374616E636520616C6C6F776564206265747765656E207468652074776F207068797369637320626F6469657320636F6E6E656374656420627920746865206C696D6974206A6F696E742E
		#tag Getter
			Get
			  return getmaxLength (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setMaxLength (mid, value)
			  
			End Set
		#tag EndSetter
		MaxLength As Double
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
			Name="MaxLength"
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
	#tag EndViewBehavior
End Class
#tag EndClass
