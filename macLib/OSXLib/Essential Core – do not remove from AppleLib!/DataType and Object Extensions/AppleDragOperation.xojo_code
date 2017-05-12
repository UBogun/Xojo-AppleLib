#tag Class
Protected Class AppleDragOperation
	#tag Method, Flags = &h0
		Sub Constructor(value as uinteger = 0)
		  mid = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416C6C2064726167206F7065726174696F6E732061726520616C6C6F7765642E
		Shared Function EveryOperation() As AppleDragOperation
		  #If Target32Bit
		    Return New AppleDragOperation(&hffff)
		  #ElseIf Target64Bit
		    return new AppleDragOperation(&hffffffff)
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function NoOperation() As AppleDragOperation
		  Return New AppleDragOperation(0)
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 546865206461746120726570726573656E7465642062792074686520696D6167652063616E20626520636F706965642E
		#tag Getter
			Get
			  return hasbit (id, 0)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit(mid, 0, value)
			  
			End Set
		#tag EndSetter
		Copy As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520646174612063616E2062652064656C657465642E
		#tag Getter
			Get
			  return hasbit (id, 5)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit(mid, 5, value)
			  
			End Set
		#tag EndSetter
		Delete As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7065726174696F6E2063616E20626520646566696E6564206279207468652064657374696E6174696F6E2E
		#tag Getter
			Get
			  return hasbit (id, 2)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit(mid, 2, value)
			  
			End Set
		#tag EndSetter
		Generic As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mID
			End Get
		#tag EndGetter
		ID As Uinteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520646174612063616E206265207368617265642E
		#tag Getter
			Get
			  return hasbit (id, 1)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit(mid, 1, value)
			  
			End Set
		#tag EndSetter
		Link As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mID As uinteger
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520646174612063616E206265206D6F7665642E
		#tag Getter
			Get
			  return hasbit (id, 4)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit(mid, 4, value)
			  
			End Set
		#tag EndSetter
		Move As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7065726174696F6E206973206E65676F74696174656420707269766174656C79206265747765656E2074686520736F7572636520616E64207468652064657374696E6174696F6E2E
		#tag Getter
			Get
			  return hasbit (id, 3)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid = Changebit(mid, 3, value)
			  
			End Set
		#tag EndSetter
		PrivateOperation As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Copy"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Delete"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Generic"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ID"
			Group="Behavior"
			Type="Uinteger"
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
			Name="Link"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Move"
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
			Name="PrivateOperation"
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
	#tag EndViewBehavior
End Class
#tag EndClass
