#tag Class
Protected Class AppleSKShapeNode
Inherits AppleSKNode
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfillShader Lib SpriteKitLibName Selector "fillShader" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfillTexture Lib SpriteKitLibName Selector "fillTexture" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlineLength Lib SpriteKitLibName Selector "lineLength" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getstrokeShader Lib SpriteKitLibName Selector "strokeShader" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getstrokeTexture Lib SpriteKitLibName Selector "strokeTexture" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfillShader Lib SpriteKitLibName Selector "setFillShader:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfillTexture Lib SpriteKitLibName Selector "setFillTexture:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setstrokeShader Lib SpriteKitLibName Selector "setStrokeShader:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setstrokeTexture Lib SpriteKitLibName Selector "setStrokeTexture:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061207368617065206E6F6465207769746820612063697263756C617220706174682063656E7465726564206F6E20746865206E6F6465E2809973206F726967696E2E
		Shared Function ShapeNodeWithCircle(Radius as Double) As AppleSKShapeNode
		  dim result as  AppleSKShapeNode
		  result = new AppleSKShapeNode (shapeNodeWithCircleOfRadius (ClassPtr, radius))
		  result.RetainClassObject
		  return result
		  
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function shapeNodeWithCircleOfRadius Lib SpriteKitLibName Selector "shapeNodeWithCircleOfRadius:" (id as ptr, Radius as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061207368617065206E6F6465207769746820616E20656C6C6970746963616C207061746820746861742066696C6C7320746865207370656369666965642072656374616E676C652E
		Shared Function ShapeNodeWithEllipse(aRect as FoundationFramework.NSRect) As AppleSKShapeNode
		  dim result as  AppleSKShapeNode
		  result = new AppleSKShapeNode (shapeNodeWithEllipseInRect (ClassPtr, arect))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061207368617065206E6F6465207769746820616E20656C6C6970746963616C20706174682063656E7465726564206F6E20746865206E6F6465E2809973206F726967696E
		Shared Function ShapeNodeWithEllipse(aSize as FoundationFramework.NSSize) As AppleSKShapeNode
		  dim result as  AppleSKShapeNode
		  result = new AppleSKShapeNode  (shapeNodeWithEllipseOfSize (ClassPtr, aSize))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function shapeNodeWithEllipseInRect Lib SpriteKitLibName Selector "shapeNodeWithEllipseInRect:" (id as ptr, Rect As FoundationFrameWork . NSRect) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function shapeNodeWithEllipseOfSize Lib SpriteKitLibName Selector "shapeNodeWithEllipseOfSize:" (id as ptr, Rect As FoundationFrameWork . NSSize) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061207368617065206E6F64652066726F6D206120436F726520477261706869637320706174682E2049662063656E746572656420697320547275652C207468652070617468206973207472616E736C6174656420736F2074686174207468652063656E746572206F66207468652070617468E280997320626F756E64696E6720626F7820697320617420746865206E6F6465E2809973206F726967696E3B206F74686572776973652074686520706174682069732072656C617469766520746F20746865206E6F6465E2809973206F726967696E2E
		Shared Function ShapeNodeWithPath(aPath as AppleCGPath, centered as boolean = False) As AppleSKShapeNode
		  dim result as new AppleSKShapeNode (shapeNodeWithPath (ClassPtr, apath.CFTypeRef, centered))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function shapeNodeWithPath Lib SpriteKitLibName Selector "shapeNodeWithPath:centered:" (id as ptr, path as ptr, centered as Boolean) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061207368617065206E6F64652066726F6D206120736572696573206F6620706F696E74732E
		Shared Function ShapeNodeWithPoints(pointarray as AppleArray, count as uinteger = 0) As AppleSKShapeNode
		  if count = 0 then count = pointarray.Count
		  dim result as new AppleSKShapeNode (shapeNodeWithPoints (ClassPtr, pointarray.id, count))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061207368617065206E6F64652066726F6D206120736572696573206F6620706F696E74732E
		Shared Function ShapeNodeWithPoints(paramarray pointarray() as FoundationFramework.NSPoint) As AppleSKShapeNode
		  return ShapeNodeWithPoints (AppleMutableArray.NSPointArray (pointarray))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function shapeNodeWithPoints Lib SpriteKitLibName Selector "shapeNodeWithPoints:count:" (id as ptr, Points As Ptr, Count As Uinteger) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061207368617065206E6F6465207769746820612072656374616E67756C617220706174682E
		Shared Function ShapeNodeWithRect(aRect as FoundationFramework.NSRect) As AppleSKShapeNode
		  dim result as  AppleSKShapeNode
		  result = new AppleSKShapeNode (shapeNodeWithRect (ClassPtr, arect))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061207368617065206E6F6465207769746820612072656374616E67756C617220706174682063656E7465726564206F6E20746865206E6F6465E2809973206F726967696E2E
		Shared Function ShapeNodeWithRect(aSize as FoundationFramework.NSSize) As AppleSKShapeNode
		  dim result as  AppleSKShapeNode
		  result = new AppleSKShapeNode  (shapeNodeWithRectOfSize (ClassPtr, aSize))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function shapeNodeWithRect Lib SpriteKitLibName Selector "shapeNodeWithRect:" (id as ptr, Rect As FoundationFrameWork . NSRect) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function shapeNodeWithRectCorner Lib SpriteKitLibName Selector "shapeNodeWithRect:cornerRadius:" (id as ptr, Rect As FoundationFrameWork . NSRect, Radius As CGFloat) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function shapeNodeWithRectOfSize Lib SpriteKitLibName Selector "shapeNodeWithRectOfSize:" (id as ptr, Rect As FoundationFrameWork . NSSize) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function shapeNodeWithRectOfSizeCorner Lib SpriteKitLibName Selector "shapeNodeWithRectOfSize:cornerRadius:" (id as ptr, Rect As FoundationFrameWork . NSSize, radius as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061207368617065207769746820612072656374616E67756C61722070617468207769746820726F756E64656420636F726E6572732E
		Shared Function ShapeNodeWithRoundedRect(aRect as FoundationFramework.NSRect, Cornerradius as double) As AppleSKShapeNode
		  dim result as  AppleSKShapeNode
		  result = new AppleSKShapeNode (shapeNodeWithRectCorner (ClassPtr, arect, Cornerradius))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061207368617065207769746820612072656374616E67756C61722070617468207769746820726F756E64656420636F726E6572732063656E7465726564206F6E20746865206E6F6465E2809973206F726967696E2E
		Shared Function ShapeNodeWithRoundedRect(aSize as FoundationFramework.NSSize, Cornerradius as double) As AppleSKShapeNode
		  dim result as  AppleSKShapeNode
		  result = new AppleSKShapeNode ( shapeNodeWithRectofSizeCorner (ClassPtr, asize, Cornerradius))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061207368617065206E6F64652066726F6D206120736572696573206F662073706C696E6520706F696E74732E
		Shared Function ShapeNodeWithSplinePoints(pointarray as AppleArray, count as uinteger = 0) As AppleSKShapeNode
		  if count = 0 then count = pointarray.Count
		  dim result as new AppleSKShapeNode (shapeNodeWithSplinePoints (ClassPtr, pointarray.id, count))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061207368617065206E6F64652066726F6D206120736572696573206F662073706C696E6520706F696E74732E
		Shared Function ShapeNodeWithSplinePoints(paramarray pointarray() as FoundationFramework.NSPoint) As AppleSKShapeNode
		  return ShapeNodeWithSplinePoints (AppleMutableArray.NSPointArray (pointarray))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function shapeNodeWithSplinePoints Lib SpriteKitLibName Selector "shapeNodeWithSplinePoints:count:" (id as ptr, Points As Ptr, Count As Uinteger) As Ptr
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207374726F6B6564207061746820697320736D6F6F74686564207768656E20647261776E2E2044656661756C7420547275652E
		#tag Getter
			Get
			  Return SpriteKitFramework.getantialiased (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setAntialiased mid, value
			End Set
		#tag EndSetter
		AntiAliased As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626C656E64206D6F6465207573656420746F20626C656E642074686520736861706520696E746F2074686520706172656E74E2809973206672616D656275666665722E2044656661756C7420416C7068612E
		#tag Getter
			Get
			  return getBlendMode (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBlendMode mid, value
			End Set
		#tag EndSetter
		BlendMode As SKBlendMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKShapeNode")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72207573656420746F2066696C6C207468652073686170652E
		#tag Getter
			Get
			  return AppleColor.MakeFromPtr (SpriteKitFramework.getfillColor(mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setFillColor (mid, value.id)
			  
			End Set
		#tag EndSetter
		FillColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120637573746F6D20736861646572207573656420746F2064657465726D696E652074686520636F6C6F72206F66207468652066696C6C656420706F7274696F6E206F6620746865207368617065206E6F64652E
		#tag Getter
			Get
			  return AppleSKShader.MakeFromPtr (getfillShader (mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFillShader mid, if (value = nil, nil, value.id)
			  
			End Set
		#tag EndSetter
		FillShader As AppleSKShader
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074657874757265207573656420746F2066696C6C207468652073686170652E
		#tag Getter
			Get
			  return AppleSKTexture.MakeFromPtr (getfillTexture (mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFillTexture mid, if (value = nil, nil, value.id)
			  
			End Set
		#tag EndSetter
		FillTexture As AppleSKTexture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520676C6F77207468617420657874656E6473206F7574776172642066726F6D20746865207374726F6B6564206C696E652E2044656661756C7420302E302E
		#tag Getter
			Get
			  return SpriteKitFramework.getglowWidth(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setGlowWidth mid, value
			  
			End Set
		#tag EndSetter
		GlowWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207374796C65207573656420746F2072656E6465722074686520656E64706F696E7473206F6620746865207374726F6B656420706F7274696F6E206F6620746865207368617065206E6F64652E2044656661756C7420427574742E
		#tag Getter
			Get
			  Return AppKitFramework.getlineCap (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setLineCap mid, value
			End Set
		#tag EndSetter
		LineCap As CGLineCap
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206A756E6374696F6E20747970652075736564207768656E20746865207374726F6B656420706F7274696F6E206F6620746865207368617065206E6F64652069732072656E64657265642E2044656661756C7420426576656C2E
		#tag Getter
			Get
			  Return AppKitFramework.getlineJoin (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setLineJoin mid, value
			End Set
		#tag EndSetter
		LineJoin As CGLineJoin
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C656E677468206F6620746865206C696E6520646566696E656420627920746865207368617065206E6F64652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  
			  return getlineLength(mid)
			  
			End Get
		#tag EndGetter
		LineLength As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207769647468207573656420746F207374726F6B652074686520706174682E2044656661756C7420312E302E
		#tag Getter
			Get
			  return SpriteKitFramework.getLineWidth(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setLineWidth mid, value
			  
			End Set
		#tag EndSetter
		LineWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D69746572206C696D697420746F20757365207768656E20746865206C696E65206973207374726F6B6564207573696E672061206D69746572206A6F696E207374796C652E
		#tag Getter
			Get
			  return AppKitFramework.getmiterLimit(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setMiterLimit mid, value
			  
			End Set
		#tag EndSetter
		MiterLimit As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070617468207468617420646566696E6573207468652073686170652E
		#tag Getter
			Get
			  dim result as ptr = SpriteKitFramework.getpath(mid)
			  return if (result <> NIL, new AppleCGPath (result), NIL)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setPath (id, value.CFTypeRef)
			  
			End Set
		#tag EndSetter
		Path As AppleCGPath
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72207573656420746F207374726F6B65207468652073686170652E2044656661756C74205768697465436F6C6F722E
		#tag Getter
			Get
			  return AppleColor.MakeFromPtr (SpriteKitFramework.getstrokeColor(mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setStrokeColor mid, if (value = nil, nil, value.id)
			  
			End Set
		#tag EndSetter
		StrokeColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120637573746F6D20736861646572207573656420746F2064657465726D696E652074686520636F6C6F72206F6620746865207374726F6B656420706F7274696F6E206F6620746865207368617065206E6F64652E
		#tag Getter
			Get
			  return AppleSKShader.MakeFromPtr (getstrokeShader (mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setStrokeShader id, if (value = nil, nil, value.id)
			  
			End Set
		#tag EndSetter
		StrokeShader As AppleSKShader
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074657874757265207573656420746F207374726F6B65207468652073686170652E
		#tag Getter
			Get
			  return AppleSKTexture.MakeFromPtr (getstrokeTexture(mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setStrokeTexture mid, if (value = nil, nil, value.id)
			  
			End Set
		#tag EndSetter
		StrokeTexture As AppleSKTexture
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AntiAliased"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BlendMode"
			Group="Behavior"
			Type="SKBlendMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Alpha"
				"1 - Add"
				"2 - Subtract"
				"3 - Multiply"
				"4 - MultiplyX2"
				"5 - Screen"
				"6 - Replace"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecutesActions"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GlowWidth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
			Group="Behavior"
			Type="Boolean"
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
			Name="LineCap"
			Group="Behavior"
			Type="CGLineCap"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineJoin"
			Group="Behavior"
			Type="CGLineJoin"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineLength"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineWidth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MiterLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
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
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
