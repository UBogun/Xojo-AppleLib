#tag Class
Protected Class AppleCBDescriptor
Inherits AppleObject
	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleCBDescriptor
		  return if (aptr = nil, nil, new AppleCBDescriptor(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 546865206368617261637465726973746963207468617420746869732064657363726970746F722062656C6F6E677320746F2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleCBCharacteristic.MakeFromPtr(CoreBluetoothFramework.getcharacteristic(id))
			End Get
		#tag EndGetter
		Characteristic As AppleCBCharacteristic
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CBDescriptor")
			  return mClassPtr
			  
			  // methods.Append new TargetClassMethodHelper("observeValueForKeyPath:ofObject:change:context:", AddressOf impl_observeKVOValue, "v@:@@@@")
			  
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520426C7565746F6F74682D73706563696669632055554944206F66207468652063686172616374657269737469632E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleCBUUID.MakeFromPtr(CoreBluetoothFramework.getuuid(id))
			End Get
		#tag EndGetter
		UUID As AppleCBUUID
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076616C7565206F66207468652064657363726970746F722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleobject.MakefromPtr(CoreBluetoothFramework.getvalue(id))
			End Get
		#tag EndGetter
		Value As AppleObject
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
