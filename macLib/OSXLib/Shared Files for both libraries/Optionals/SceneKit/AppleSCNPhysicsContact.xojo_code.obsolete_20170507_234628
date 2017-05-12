#tag Class
Protected Class AppleSCNPhysicsContact
Inherits AppleSCNObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcollisionImpulse Lib SceneKitLibname Selector "collisionImpulse" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontactNormal Lib SceneKitLibname Selector "contactNormal" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontactPoint Lib SceneKitLibname Selector "contactPoint" (id as ptr) As SCNVector3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnodeA Lib SceneKitLibname Selector "nodeA" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnodeB Lib SceneKitLibname Selector "nodeB" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpenetrationDistance Lib SceneKitLibname Selector "penetrationDistance" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNPhysicsContact
		  return if (aptr = nil, nil, new AppleSCNPhysicsContact(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete & documented
		
		iOS 9.2.
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNPhysicsContact")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F726365206F7665722074696D65206F662074686520636F6C6C6973696F6E2C20696E206E6577746F6E2D7365636F6E64732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcollisionImpulse(mid)
			End Get
		#tag EndGetter
		CollisionImpulse As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F726D616C20766563746F722061742074686520636F6E7461637420706F696E74206265747765656E207468652074776F207068797369637320626F646965732C20696E207363656E6520636F6F7264696E617465732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcontactNormal(mid)
			  
			End Get
		#tag EndGetter
		ContactNormal As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E7461637420706F696E74206265747765656E207468652074776F207068797369637320626F646965732C20696E207363656E6520636F6F7264696E617465732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcontactPoint(mid)
			  
			End Get
		#tag EndGetter
		ContactPoint As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F646520636F6E7461696E696E672074686520666972737420626F647920696E2074686520636F6E746163742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleSCNNode.MakefromPtr(getnodea(mid))
			End Get
		#tag EndGetter
		NodeA As AppleSCNNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F646520636F6E7461696E696E6720746865207365636F6E6420626F647920696E2074686520636F6E746163742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleSCNNode.MakefromPtr(getnodeb(mid))
			End Get
		#tag EndGetter
		NodeB As AppleSCNNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F726365206F7665722074696D65206F662074686520636F6C6C6973696F6E2C20696E206E6577746F6E2D7365636F6E64732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getpenetrationDistance(mid)
			End Get
		#tag EndGetter
		PenetrationDistance As Double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="CollisionImpulse"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
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
			Name="PenetrationDistance"
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
