#tag Class
Protected Class AppleFontTraitMask
	#tag Method, Flags = &h0
		Shared Function Bold() As AppleFontTraitMask
		  return new AppleFontTraitMask(2)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function BoldItalic() As AppleFontTraitMask
		  return new AppleFontTraitMask(3)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(value as uinteger)
		  mid = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Italic() As AppleFontTraitMask
		  return new AppleFontTraitMask(1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Roman() As AppleFontTraitMask
		  return new AppleFontTraitMask(0)
		End Function
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
		Bold As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 436F6D7072657373656420666F6E742E
		#tag Getter
			Get
			  return HasBit(mid, 9)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 9, value)
			End Set
		#tag EndSetter
		Compressed As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 436F6E64656E73656420666F6E742E
		#tag Getter
			Get
			  return HasBit(mid, 6)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 6, value)
			End Set
		#tag EndSetter
		Condensed As Boolean
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
		Expanded As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 466978656420706974636820666F6E742E
		#tag Getter
			Get
			  return HasBit(mid, 10)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 10, value)
			End Set
		#tag EndSetter
		FixedPitch As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As UInteger
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
		Italic As Boolean
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
		Narrow As Boolean
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
		NonStandardCharacterSet As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 506F737465722D7374796C6520666F6E742E
		#tag Getter
			Get
			  return HasBit(mid, 8)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 8, value)
			End Set
		#tag EndSetter
		Poster As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 536D616C6C2D6361707320666F6E742E
		#tag Getter
			Get
			  return HasBit(mid, 7)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 7, value)
			End Set
		#tag EndSetter
		SmallCaps As Boolean
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
		UnBold As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120666F6E742074686174206973206E6F74206974616C69632E
		#tag Getter
			Get
			  return HasBit(mid, 24)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit (mid, 24, value)
			End Set
		#tag EndSetter
		Unitalic As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Bold"
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
			Name="Expanded"
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
			Name="Italic"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Narrow"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NonStandardCharacterSet"
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
			Name="UnBold"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Unitalic"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
