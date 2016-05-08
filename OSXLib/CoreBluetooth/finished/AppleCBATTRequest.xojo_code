#tag Class
Protected Class AppleCBATTRequest
Inherits AppleObject
	#tag ExternalMethod, Flags = &h21
		Private Declare Function getCentral Lib CoreBluetoothLibName Selector "central" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getoffset Lib CoreBluetoothLibName Selector "offset" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleCBATTRequest
		  return if (aptr = nil, nil, new AppleCBATTRequest(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 5468652072656D6F74652063656E7472616C206465766963652074686174206F726967696E617465642074686520726571756573742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleCBCentral.MakefromPtr( getCentral(id))
			End Get
		#tag EndGetter
		Central As AppleCBCentral
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063686172616374657269737469632077686F73652076616C756520697320746F2062652072656164206F72207772697474656E2E2028726561642D6F6E6C7929
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
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CBATTRequest")
			  return mClassPtr
			  
			  // methods.Append new TargetClassMethodHelper("observeValueForKeyPath:ofObject:change:context:", AddressOf impl_observeKVOValue, "v@:@@@@")
			  
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207A65726F2D626173656420696E646578206F6620746865206669727374206279746520666F72207468652072656164206F7220777269746520726571756573742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getoffset(id)
			End Get
		#tag EndGetter
		Offset As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064617461206265696E672072656164206F72207772697474656E2E
		#tag Getter
			Get
			  return Appledata.MakefromPtr(CoreBluetoothFramework.getvalue(id))
			End Get
		#tag EndGetter
		Value As AppleData
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
