#tag Class
Protected Class AppleSKPhysicsWorld
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 416464732061206A6F696E7420746F20746865207068797369637320776F726C642E
		Sub AddJoint(joint as AppleSKPhysicsJoint)
		  addJoint mid, joint.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addJoint Lib SpriteKitLibName Selector "addJoint:" (id as ptr, joint as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 536561726368657320666F7220746865206669727374207068797369637320626F6479207468617420696E74657273656374732061207261792E
		Function BodyAlongRay(startPoint as FoundationFramework.NSPoint, endPoint as FoundationFramework.NSPoint) As AppleSKPhysicsBody
		  return AppleSKPhysicsBody.MakeFromPtr (bodyAlongRay (mid, startPoint, endPoint))
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function bodyAlongRay Lib SpriteKitLibName Selector "bodyAlongRayStart:end:" (id as ptr, startPoint as FoundationFramework . NSPoint, endPoint as FoundationFramework . NSPoint) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 536561726368657320666F7220746865206669727374207068797369637320626F6479207468617420636F6E7461696E73206120706F696E742E
		Function BodyAtPoint(aPoint as FoundationFramework.NSPoint) As AppleSKPhysicsBody
		  return AppleSKPhysicsBody.MakeFromPtr (bodyAtPoint (mid, aPoint))
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function bodyAtPoint Lib SpriteKitLibName Selector "bodyAtPoint:" (id as ptr, startPoint as FoundationFramework . NSPoint) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 536561726368657320666F7220746865206669727374207068797369637320626F6479207468617420696E746572736563747320746865207370656369666965642072656374616E676C652E
		Function BodyInRect(aRect as FoundationFramework.NSRect) As AppleSKPhysicsBody
		  return AppleSKPhysicsBody.MakeFromPtr (bodyInRect (id, aRect))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function bodyInRect Lib SpriteKitLibName Selector "bodyInRect:" (id as ptr, rext as FoundationFramework . NSRect) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub enumerateBodiesAlongRay Lib SpriteKitLibName Selector "enumerateBodiesAlongRayStart:end:usingBlock:" (id as ptr, startPoint as FoundationFramework . NSPoint, endPoint as FoundationFramework . NSPoint, Block as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 456E756D65726174657320616C6C20746865207068797369637320626F6469657320696E20746865207363656E65207468617420636F6E7461696E206120706F696E742E
		Protected Declare Sub enumerateBodiesAtPoint Lib SpriteKitLibName Selector "enumerateBodiesAtPoint:usingBlock:" (id as ptr, startPoint as FoundationFramework . NSPoint, block as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub enumerateBodiesInRect Lib SpriteKitLibName Selector "enumerateBodiesInRect:usingBlock:" (id as ptr, rext as FoundationFramework . NSRect, block as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontactDelegate Lib SpriteKitLibName Selector "contactDelegate" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616C6C206A6F696E74732066726F6D20746865207068797369637320776F726C642E
		Sub RemoveAllJoints()
		  removeAllJoints mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeAllJoints Lib SpriteKitLibName Selector "removeAllJoints" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732061207370656369666963206A6F696E742066726F6D20746865207068797369637320776F726C642E
		Sub RemoveJoint(joint as AppleSKPhysicsJoint)
		  removeJoint mid, joint.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeJoint Lib SpriteKitLibName Selector "removeJoint:" (id as ptr, joint as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 456E756D65726174657320616C6C20746865207068797369637320626F6469657320696E20746865207363656E65207468617420696E7465727365637420612072617920616E642072756E73206120626C6F636B206F6E207468656D2E
		Sub RunBlockOnBodiesAlongRay(startPoint as FoundationFramework.NSPoint, endPoint as FoundationFramework.NSPoint, block as AppleBlock)
		  enumerateBodiesAlongRay (mid, startPoint, endPoint, block.Handle)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E756D65726174657320616C6C20746865207068797369637320626F6469657320696E20746865207363656E65207468617420636F6E7461696E206120706F696E7420616E642072756E73206120626C6F636B206F6E207468656D2E
		Sub RunBlockOnBodiesAtPoint(aPoint as FoundationFramework.NSPoint, block as AppleBlock)
		  enumerateBodiesAtPoint (mid, aPoint, block.Handle)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E756D65726174657320616C6C20746865207068797369637320626F6469657320696E20746865207363656E65207468617420696E7465727365637420746865207370656369666965642072656374616E676C6520616E642072756E73206120626C6F636B206F6E207468656D2E
		Sub RunBlockOnBodiesInRect(aRect as FoundationFramework.NSRect, block as AppleBlock)
		  enumerateBodiesInRect (mid, aRect, block.Handle)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub RunBlockPointRectTemplate(Body as ptr, byref stop as Boolean)
		  dim PhysicsBody as AppleSKPhysicsBody = AppleSKPhysicsBody.MakeFromPtr (body)
		  // do whatever you want to perform on the Body
		  // if you want to stop further body processing, set stop = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub RunBlockRayTemplate(Body as ptr, ContactPoint as FoundationFramework.NSPoint, Normal as FoundationFramework.CGVector, byref stop as Boolean)
		  dim PhysicsBody as AppleSKPhysicsBody = AppleSKPhysicsBody.MakeFromPtr (body)
		  // here you can evalue the point in screen coordinates where the ray hit and the distance from its startpoint to contactpoint
		  // if you want to stop further body processing, set stop = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53616D706C657320616C6C206F6620746865206669656C64206E6F64657320696E20746865207363656E6520616E642072657475726E73207468652073756D6D6174696F6E206F6620746865697220666F72636573206174207468617420706F696E742E
		Function SampleFields(Position as Vector_Float3) As Vector_Float3
		  return sampleFieldsAt (mid, Position)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function sampleFieldsAt Lib SpriteKitLibName Selector "sampleFieldsAt:" (id as ptr, pos as Vector_Float3) As Vector_Float3
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontactDelegate Lib SpriteKitLibName Selector "setContactDelegate:" (id as ptr, value as Ptr)
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
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKPhysicsWorld")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064656C656761746520746861742069732063616C6C6564207768656E2074776F207068797369637320626F6469657320636F6D6520696E20636F6E7461637420776974682065616368206F746865722E
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr ( getcontactDelegate (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setContactDelegate id, value.id
			End Set
		#tag EndSetter
		ContactDelegate As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120766563746F7220746861742073706563696669657320746865206772617669746174696F6E616C20616363656C65726174696F6E206170706C69656420746F207068797369637320626F6469657320696E20746865207068797369637320776F726C642E
		#tag Getter
			Get
			  return SpriteKitFramework.getgravity (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setGravity mid, value
			  
			End Set
		#tag EndSetter
		Gravity As FoundationFrameWork.cgvector
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072617465206174207768696368207468652073696D756C6174696F6E2065786563757465732E
		#tag Getter
			Get
			  return SpriteKitFramework.getspeed (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setSpeed (mid, value)
			  
			End Set
		#tag EndSetter
		Speed As Double
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
