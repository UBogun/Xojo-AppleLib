#tag Class
Protected Class SCNBillboardAxis
	#tag Method, Flags = &h0
		Sub Constructor()
		  mid = 7
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Value as UInteger)
		  mid = value
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 416C69676E20616E206166666563746564206E6F64652073756368207468617420697473206F7269656E746174696F6E20616C77617973206D6174636865732074686174206F662074686520766965772E0A0A54686973206973207468652064656661756C74206F7074696F6E20666F72206E65776C7920637265617465642062696C6C626F61726420636F6E73747261696E74732E
		#tag Getter
			Get
			  return new SCNBillboardAxis (7)
			End Get
		#tag EndGetter
		Shared All As SCNBillboardAxis
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As UInteger
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mId As UInteger
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 416C69676E20616E206166666563746564206E6F6465207375636820746861742069747320782D6178697320697320616C7761797320706172616C6C656C20746F2074686174206F662074686520766965772C206C656176696E67206974206672656520746F20726F74617465206F74686572776973652E
		#tag Getter
			Get
			  return HasBit (mid, 0)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = SetBit (mid, 0)
			  else
			    mid = ClearBit(mid, 0)
			  end if
			End Set
		#tag EndSetter
		XAxis As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416C69676E20616E206166666563746564206E6F6465207375636820746861742069747320792D6178697320697320616C7761797320706172616C6C656C20746F2074686174206F662074686520766965772C206C656176696E67206974206672656520746F20726F74617465206F74686572776973652E
		#tag Getter
			Get
			  return HasBit (mid, 1)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = SetBit (mid, 1)
			  else
			    mid = ClearBit(mid, 1)
			  end if
			End Set
		#tag EndSetter
		YAxis As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416C69676E20616E206166666563746564206E6F64652073756368207468617420697473207A2D6178697320697320616C776179732070657270656E646963756C617220746F207468652076696577696E6720706C616E652C206C656176696E67206974206672656520746F20726F74617465206F74686572776973652E
		#tag Getter
			Get
			  return HasBit (mid, 2)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = SetBit (mid, 2)
			  else
			    mid = ClearBit(mid, 2)
			  end if
			End Set
		#tag EndSetter
		ZAxis As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
			Name="XAxis"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YAxis"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZAxis"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
