#tag Class
Protected Class AppleCBAttributePermissions
	#tag Method, Flags = &h0
		Sub Constructor(Value as UInteger)
		  mid = value
		End Sub
	#tag EndMethod


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

	#tag ComputedProperty, Flags = &h0, Description = 546865206368617261637465726973746963E28099732076616C75652068617320726561642D6F6E6C79207065726D697373696F6E2E
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
		Readable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206368617261637465726973746963E28099732076616C7565206973207265616461626C65206F6E6C79206279207472757374656420646576696365732E
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
		ReadEncryptionRequired As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206368617261637465726973746963E28099732076616C7565206861732077726974652D6F6E6C79207065726D697373696F6E2E
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
		Writeable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206368617261637465726973746963E28099732076616C756520697320777269746561626C65206F6E6C79206279207472757374656420646576696365732E
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
		WriteEncryptionRequired As Boolean
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
			Name="AuthenticatedSignedWrites"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExtendedProperties"
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
			Name="Indicate"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IndicateEncryptionRequired"
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
			Name="Notify"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NotifyEncryptionRequired"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Readable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReadEncryptionRequired"
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
			Name="Writeable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WriteEncryptionRequired"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WriteWithoutResponse"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
