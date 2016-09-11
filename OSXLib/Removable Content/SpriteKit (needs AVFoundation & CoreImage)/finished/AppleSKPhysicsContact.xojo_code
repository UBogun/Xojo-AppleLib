#tag Class
Protected Class AppleSKPhysicsContact
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcollisionImpulse Lib SpriteKitLibName Selector "collisionImpulse" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontactNormal Lib SpriteKitLibName Selector "contactNormal" (id as ptr) As FoundationFrameWork.CGVector
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontactPoint Lib SpriteKitLibName Selector "contactPoint" (id as ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSKPhysicsContact
		  return if (aptr = nil, nil, new AppleSKPhysicsContact(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520666972737420626F647920696E2074686520636F6E746163742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleSKPhysicsBody.MakeFromPtr (SpriteKitFramework.getbodya(mid))
			  
			End Get
		#tag EndGetter
		BodyA As AppleSKPhysicsBody
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207365636F6E6420626F647920696E2074686520636F6E746163742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleSKPhysicsBody.MakeFromPtr (SpriteKitFramework.getbodyB(mid))
			  
			End Get
		#tag EndGetter
		BodyB As AppleSKPhysicsBody
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696D70756C736520746861742073706563696669657320686F7720686172642074686573652074776F20626F646965732073747275636B2065616368206F7468657220696E206E6577746F6E2D7365636F6E64732E2028727761642D6F6E6C7929
		#tag Getter
			Get
			  return getcollisionImpulse(mid)
			  
			End Get
		#tag EndGetter
		CollisionImpulse As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F726D616C20766563746F722073706563696679696E672074686520646972656374696F6E206F662074686520636F6C6C6973696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcontactNormal (mid)
			  
			End Get
		#tag EndGetter
		ContactNormal As FoundationFrameWork.cgvector
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E7461637420706F696E74206265747765656E207468652074776F207068797369637320626F646965732C20696E207363656E6520636F6F7264696E617465732E
		#tag Getter
			Get
			  return getcontactPoint (mid)
			  
			End Get
		#tag EndGetter
		ContactPoint As FoundationFramework.NSPoint
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
