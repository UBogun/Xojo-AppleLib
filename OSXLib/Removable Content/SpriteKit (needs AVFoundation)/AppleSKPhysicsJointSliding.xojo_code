#tag Class
Protected Class AppleSKPhysicsJointSliding
Inherits AppleSKPhysicsJoint
	#tag Method, Flags = &h1000
		Sub Constructor(BodyA As AppleSKPhysicsBody, BodyB as AppleSKPhysicsBody, Anchor as FoundationFramework.NSPoint, Axis as FoundationFramework.CGVector)
		  #if Target64Bit
		    declare function jointWithBodyA lib spritekitlibname selector "jointWithBodyA:bodyB:anchor:axis:" _
		    (id as ptr, bodyA as ptr, bodyB as ptr, anchor as FoundationFramework.NSPoint, axis as FoundationFramework.CGVector) as ptr
		    super.Constructor (jointWithBodyA(ClassPtr, bodyA.id, Bodyb.id, Anchor, axis))
		  #elseif Target32Bit
		    declare function jointWithBodyA lib spritekitlibname selector "jointWithBodyA:bodyB:anchor:axis:" _
		    (id as ptr, bodyA as ptr, bodyB as ptr, anchor as FoundationFramework.NSPoint32Bit, axis as FoundationFramework.CGVector32Bit) as ptr
		    super.Constructor (jointWithBodyA(ClassPtr, bodyA.id, Bodyb.id, Anchor.toNSPoint32, axis.toCGVector32))
		  #endif
		  RetainClassObject
		  
		End Sub
	#tag EndMethod


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

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function shouldEnableLimits lib spritekitlibname selector "shouldEnableLimits" (id as ptr) as Boolean
			  return shouldEnableLimits (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setShouldEnableLimits lib spritekitlibname selector "setShouldEnableLimits:" (id as ptr, value as Boolean)
			  setShouldEnableLimits id, value
			End Set
		#tag EndSetter
		EnableLimits As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function lowerDistanceLimit lib spritekitlibname selector "lowerDistanceLimit" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function lowerDistanceLimit lib spritekitlibname selector "lowerDistanceLimit" (id as ptr) as single
			  #endif
			  return lowerDistanceLimit (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare Sub setLowerDistanceLimit lib spritekitlibname selector "setLowerDistanceLimit:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare Sub setLowerDistanceLimit lib spritekitlibname selector "setLowerDistanceLimit:" (id as ptr, value as Single)
			  #endif
			  setLowerDistanceLimit (id, value)
			  
			End Set
		#tag EndSetter
		LowerDistanceLimit As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    declare function upperDistanceLimit lib spritekitlibname selector "upperDistanceLimit" (id as ptr) as Double
			  #elseif Target32Bit
			    declare function upperDistanceLimit lib spritekitlibname selector "upperDistanceLimit" (id as ptr) as single
			  #endif
			  return upperDistanceLimit (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare Sub setUpperDistanceLimit lib spritekitlibname selector "setUpperDistanceLimit:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    declare Sub setUpperDistanceLimit lib spritekitlibname selector "setUpperDistanceLimit:" (id as ptr, value as Single)
			  #endif
			  setUpperDistanceLimit (id, value)
			  
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
