#tag Class
Protected Class AppleCBCharacteristicProperties
	#tag Method, Flags = &h0
		Sub Constructor(Value as UInteger)
		  mid = value
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
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
		Alert As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496E6469636174696F6E73206F6620746865206368617261637465726973746963E28099732076616C756520617265207065726D69747465642C2077697468206120726573706F6E73652066726F6D207468652063656E7472616C20746F20696E64696361746520746861742074686520696E6469636174696F6E207761732072656365697665642E
		#tag Getter
			Get
			  return HasBit (mid, 6)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = SetBit (mid, 6)
			  else
			    mid = ClearBit(mid, 6)
			  end if
			End Set
		#tag EndSetter
		AuthenticatedSignedWrites As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206368617261637465726973746963E28099732076616C75652063616E2062652062726F616463617374207573696E67206120636861726163746572697374696320636F6E66696775726174696F6E2064657363726970746F722E
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
		Broadcast As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4164646974696F6E616C2063686172616374657269737469632070726F706572746965732061726520646566696E656420696E2074686520636861726163746572697374696320657874656E6465642070726F706572746965732064657363726970746F722E
		#tag Getter
			Get
			  return HasBit (mid, 7)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = SetBit (mid, 7)
			  else
			    mid = ClearBit(mid, 7)
			  end if
			End Set
		#tag EndSetter
		ExtendedProperties As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496E6469636174696F6E73206F6620746865206368617261637465726973746963E28099732076616C756520617265207065726D69747465642C2077697468206120726573706F6E73652066726F6D207468652063656E7472616C20746F20696E64696361746520746861742074686520696E6469636174696F6E207761732072656365697665642E
		#tag Getter
			Get
			  return HasBit (mid, 5)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = SetBit (mid, 5)
			  else
			    mid = ClearBit(mid, 5)
			  end if
			End Set
		#tag EndSetter
		Indicate As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4F6E6C79207472757374656420646576696365732063616E20656E61626C6520696E6469636174696F6E73206F6620746865206368617261637465726973746963E28099732076616C75652E
		#tag Getter
			Get
			  return HasBit (mid, 9)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = SetBit (mid, 9)
			  else
			    mid = ClearBit(mid, 9)
			  end if
			End Set
		#tag EndSetter
		IndicateEncryptionRequired As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mId As UInteger
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 4E6F74696669636174696F6E73206F6620746865206368617261637465726973746963E28099732076616C756520617265207065726D69747465642C20776974686F7574206120726573706F6E73652066726F6D207468652063656E7472616C20746F20696E646963617465207468617420746865206E6F74696669636174696F6E207761732072656365697665642E
		#tag Getter
			Get
			  return HasBit (mid, 4)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = SetBit (mid, 4)
			  else
			    mid = ClearBit(mid, 4)
			  end if
			End Set
		#tag EndSetter
		Notify As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4F6E6C79207472757374656420646576696365732063616E20656E61626C65206E6F74696669636174696F6E73206F6620746865206368617261637465726973746963E28099732076616C75652E
		#tag Getter
			Get
			  return HasBit (mid, 8)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = SetBit (mid, 8)
			  else
			    mid = ClearBit(mid, 8)
			  end if
			End Set
		#tag EndSetter
		NotifyEncryptionRequired As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206368617261637465726973746963E28099732076616C75652063616E20626520726561642E
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
		Read As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206368617261637465726973746963E28099732076616C75652063616E206265207772697474656E2C2077697468206120726573706F6E73652066726F6D20746865207065726970686572616C20746F20696E64696361746520746861742074686520777269746520776173207375636365737366756C2E
		#tag Getter
			Get
			  return HasBit (mid, 3)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    mid = SetBit (mid, 3)
			  else
			    mid = ClearBit(mid, 3)
			  end if
			End Set
		#tag EndSetter
		Write As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206368617261637465726973746963E28099732076616C75652063616E206265207772697474656E2C20776974686F7574206120726573706F6E73652066726F6D20746865207065726970686572616C20746F20696E64696361746520746861742074686520777269746520776173207375636365737366756C2E
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
		WriteWithoutResponse As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alert"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Broadcast"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Read"
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
