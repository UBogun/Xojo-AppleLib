#tag Class
Protected Class SCNPhysicsShapeOptionDictionary
Inherits AppleMutabledictionary
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(Capacity as uinteger = 1) -- From AppleMutableDictionary
		  // Constructor() -- From AppleDictionary
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor(3)
		  me.ShapeType = SCNShapeType.LowDetail
		  me.KeepAsCompound = true
		  me.Scale = SCNVector3Make(1.0, 1.0, 1.0)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As SCNPhysicsShapeOptionDictionary
		  return if (aptr = nil, nil, new SCNPhysicsShapeOptionDictionary(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746F2063726561746520612067726F7570206F6620696E646570656E64656E7420736861706573206F7220636F6D62696E65207468656D20696E746F20612073696E676C652073686170652E
		#tag Getter
			Get
			  dim value as AppleNumber = applenumber.MakefromPtr (me.PtrForKey(AppleSCNPhysicsShape.kSCNPhysicsShapeKeepAsCompoundKey))
			  if value <> nil then return value.BoolValue
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey (AppleSCNPhysicsShape.kSCNPhysicsShapeKeepAsCompoundKey) = new AppleNumber(value)
			End Set
		#tag EndSetter
		KeepAsCompound As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206B657920666F722073656C656374696E6720746865207363616C6520666163746F72206F66207468652073686170652072656C617469766520746F20746865206C6F63616C20636F6F7264696E617465207370616365206F6620746865206E6F646520636F6E7461696E696E672069742E2044656661756C742028312E302C20312E302C20312E3029
		#tag Getter
			Get
			  dim value as AppleValue = AppleValue.MakefromPtr (me.PtrForKey(AppleSCNPhysicsShape.kSCNPhysicsShapeScaleKey))
			  if value <> nil then return value.SCNVector3Value
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.ObjectForKey (AppleSCNPhysicsShape.kSCNPhysicsShapeScaleKey) = SceneKitFrameWork.MakeAppleValue(value)
			End Set
		#tag EndSetter
		Scale As SCNVector3
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6576656C206F662064657461696C20617420776869636820746F20637265617465207368617065732066726F6D2067656F6D657472792E
		#tag Getter
			Get
			  dim value as text = me.TextForKey(AppleSCNPhysicsShape.kSCNPhysicsShapeTypeKey)
			  select case value
			  case AppleSCNPhysicsShape.kSCNPhysicsShapeTypeBoundingBox
			    return SCNShapeType.BoundingBox
			  case AppleSCNPhysicsShape.kSCNPhysicsShapeTypeConvexHull
			    return SCNShapeType.LowDetail
			  case AppleSCNPhysicsShape.kSCNPhysicsShapeTypeConcavePolyhedron
			    return SCNShapeType.HighDetail
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  select case value
			  case SCNShapeType.BoundingBox
			    me.TextForKey (AppleSCNPhysicsShape.kSCNPhysicsShapeTypeKey)=  AppleSCNPhysicsShape.kSCNPhysicsShapeTypeBoundingBox
			  case SCNShapeType.LowDetail
			    me.TextForKey (AppleSCNPhysicsShape.kSCNPhysicsShapeTypeKey)=  AppleSCNPhysicsShape.kSCNPhysicsShapeTypeConvexHull
			  case SCNShapeType.HighDetail
			    me.TextForKey (AppleSCNPhysicsShape.kSCNPhysicsShapeTypeKey)=  AppleSCNPhysicsShape.kSCNPhysicsShapeTypeConcavePolyhedron
			  end select
			End Set
		#tag EndSetter
		ShapeType As SCNShapeType
	#tag EndComputedProperty


	#tag Enum, Name = SCNShapeType, Type = Integer, Flags = &h1
		BoundingBox
		  LowDetail
		HighDetail
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Count"
			Group="Behavior"
			Type="UInteger"
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
			Name="KeepAsCompound"
			Group="Behavior"
			Type="Boolean"
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
			Name="ShapeType"
			Group="Behavior"
			Type="SCNShapeType"
			EditorType="Enum"
			#tag EnumValues
				"0 - BoundingBox"
				"1 - LowDetail"
				"2 - HighDetail"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="StringsFileFormat"
			Group="Behavior"
			Type="Text"
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
