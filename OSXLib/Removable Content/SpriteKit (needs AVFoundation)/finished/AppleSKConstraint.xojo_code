#tag Class
Protected Class AppleSKConstraint
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120636F6E73747261696E742074686174206B656570732061206E6F64652077697468696E2061206365727461696E2064697374616E6365206F6620616E6F74686572206E6F64652E
		Shared Function DistanceToNode(Node As AppleSKNode, Distance As AppleSKRange) As AppleSKConstraint
		  dim result as  new AppleSKConstraint  (distancetoNode(ClassPtr, distance.id, node.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function distanceToNode Lib SpriteKitLibName Selector "distance:toNode:" (id as ptr, distance as ptr, node as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120636F6E73747261696E742074686174206B656570732061206E6F64652077697468696E2061206365727461696E2064697374616E6365206F66206120706F696E742E
		Shared Function DistanceToPoint(aPoint As FoundationFramework.NSPoint, Distance As AppleSKRange) As AppleSKConstraint
		  dim result as   AppleSKConstraint
		  result =  new AppleSKConstraint  (distanceToPoint(ClassPtr, Distance.id, aPoint))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function distanceToPoint Lib SpriteKitLibName Selector "distance:toPoint:" (id as ptr, distance as ptr, point as FoundationFrameWork . NSPoint) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120636F6E73747261696E742074686174206B656570732061206E6F64652077697468696E2061206365727461696E2064697374616E6365206F66206120706F696E7420696E20616E6F74686572206E6F6465E280997320636F6F7264696E6174652073797374656D2E
		Shared Function DistanceToPointInNode(aPoint As FoundationFramework.NSPoint, Node as AppleSKNode, Distance As AppleSKRange) As AppleSKConstraint
		  dim result as   AppleSKConstraint
		  result =  new AppleSKConstraint  (distanceToPointinNode(ClassPtr, Distance.id, aPoint, node.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function distanceToPointInNode Lib SpriteKitLibName Selector "distance:toPoint:inNode:" (id as ptr, distance as ptr, point as FoundationFrameWork . NSPoint, node as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getenabled Lib SpriteKitLibName Selector "enabled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getreferenceNode Lib SpriteKitLibName Selector "referenceNode" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120636F6E73747261696E74207468617420666F726365732061206E6F646520746F20726F74617465206261736564206F6E2074686520706F736974696F6E206F6620616E6F74686572206E6F64652E
		Shared Function OrientToNode(Node As AppleSKNode, Offset As AppleSKRange) As AppleSKConstraint
		  dim result as  new AppleSKConstraint  (orientToNode(ClassPtr, node.id, Offset.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function orientToNode Lib SpriteKitLibName Selector "orientToNode:offset:" (id as ptr, node as ptr, offset as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120636F6E73747261696E74207468617420666F726365732061206E6F646520746F20726F7461746520746F2066616365206120666978656420706F696E742E
		Shared Function OrientToPoint(aPoint As FoundationFramework.NSPoint, Offset As AppleSKRange) As AppleSKConstraint
		  dim result as   AppleSKConstraint
		  result =  new AppleSKConstraint  (orientToPoint(ClassPtr, aPoint, Offset.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function orientToPoint Lib SpriteKitLibName Selector "orientToPoint:offset:" (id as ptr, point as foundationFramework . NSPoint, offset as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120636F6E73747261696E74207468617420666F726365732061206E6F646520746F20726F7461746520746F2066616365206120706F696E7420696E20616E6F74686572206E6F6465E280997320636F6F7264696E6174652073797374656D2E
		Shared Function OrientToPointInNode(aPoint As FoundationFramework.NSPoint, Node as AppleSKNode, OffsetRadians As AppleSKRange) As AppleSKConstraint
		  dim result as   AppleSKConstraint
		  result =  new AppleSKConstraint  (orientToPointinNode(ClassPtr, aPoint, node.id, OffsetRadians.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function orientToPointInNode Lib SpriteKitLibName Selector "orientToPoint:inNode:offset:" (id as ptr, Point as FoundationFramework . NSPoint, node as ptr, offset as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120636F6E73747261696E7420746861742072657374726963747320626F746820636F6F7264696E61746573206F662061206E6F6465E280997320706F736974696F6E2E
		Shared Function Position(XRange As AppleSKRange, YRange As AppleSKRange) As AppleSKConstraint
		  dim result as  new AppleSKConstraint  (positionXY(ClassPtr, xRange.id, YRange.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120636F6E73747261696E742074686174207265737472696374732074686520782D636F6F7264696E617465206F662061206E6F6465E280997320706F736974696F6E2E
		Shared Function PositionX(XRange As AppleSKRange) As AppleSKConstraint
		  dim result as  new AppleSKConstraint  (positionX(ClassPtr, XRange.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function positionX Lib SpriteKitLibName Selector "positionX:" (id as ptr, x as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function positionXY Lib SpriteKitLibName Selector "positionX:Y:" (id as ptr, x as ptr, y as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120636F6E73747261696E742074686174207265737472696374732074686520792D636F6F7264696E617465206F662061206E6F6465E280997320706F736974696F6E2E
		Shared Function PositionY(YRange As AppleSKRange) As AppleSKConstraint
		  dim result as  new AppleSKConstraint  (positionY(ClassPtr, YRange.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function positionY Lib SpriteKitLibName Selector "positionY:" (id as ptr, y as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setenabled Lib SpriteKitLibName Selector "setEnabled:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setreferenceNode Lib SpriteKitLibName Selector "setReferenceNode:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120636F6E73747261696E742074686174206C696D69747320746865206F7269656E746174696F6E206F662061206E6F64652E
		Shared Function ZRotation(ZRange As AppleSKRange) As AppleSKConstraint
		  dim result as  new AppleSKConstraint  (zRotation(ClassPtr, ZRange.id))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function zRotation Lib SpriteKitLibName Selector "zRotation:" (id as ptr, x as ptr) As Ptr
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
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKConstraint")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E73747261696E74206973206170706C6965642E
		#tag Getter
			Get
			  return getenabled (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setenabled mid, value
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F64652077686F736520636F6F7264696E6174652073797374656D2073686F756C64206265207573656420746F206170706C792074686520636F6E73747261696E742E
		#tag Getter
			Get
			  return AppleSKNode.MakeFromPtr (getreferenceNode(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setReferenceNode mid, value.id
			End Set
		#tag EndSetter
		ReferenceNode As AppleSKNode
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
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
