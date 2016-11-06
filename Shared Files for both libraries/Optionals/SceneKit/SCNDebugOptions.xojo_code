#tag Class
Protected Class SCNDebugOptions
	#tag Method, Flags = &h0
		Sub Constructor(value as uinteger)
		  mid = value
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 426F6C6420466F6E74
		#tag Getter
			Get
			  return HasBit(mid, 1)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 1, value)
			End Set
		#tag EndSetter
		BoundingBoxes As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 466F6E7420757365732061206E6F6E2D7374616E6461726420636861726163746572207365742E
		#tag Getter
			Get
			  return HasBit(mid, 3)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 3, value)
			End Set
		#tag EndSetter
		LightExtents As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 556E626F6C6420466F6E74
		#tag Getter
			Get
			  return HasBit(mid, 2)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 2, value)
			End Set
		#tag EndSetter
		LightInfluences As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mId As UInteger
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 4E6172726F7720666F6E742E
		#tag Getter
			Get
			  return HasBit(mid, 4)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 4, value)
			End Set
		#tag EndSetter
		PhysicsFields As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4974616C696320466F6E74
		#tag Getter
			Get
			  return HasBit(mid, 0)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 0, value)
			End Set
		#tag EndSetter
		PhysicsShapes As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 457870616E64656420666F6E742E
		#tag Getter
			Get
			  return HasBit(mid, 5)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 5, value)
			End Set
		#tag EndSetter
		WireFrame As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BoundingBoxes"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Compressed"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Condensed"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FixedPitch"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Id"
			Group="Behavior"
			Type="UInteger"
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
			Name="LightExtents"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LightInfluences"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PhysicsFields"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PhysicsShapes"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Poster"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SmallCaps"
			Group="Behavior"
			Type="Boolean"
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
			Name="Unitalic"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WireFrame"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
