#tag Class
Protected Class AppleCBPeripheral
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 446973636F76657273207468652073706563696669656420636861726163746572697374696373206F66206120736572766963652E
		Sub DiscoverCharacteristics(CharacterictisBUUIDs as applearray = nil, forService As AppleCBService)
		  discoverCharacteristics id, if (CharacterictisBUUIDs = nil, nil, CharacterictisBUUIDs.id), forservice.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub discoverCharacteristics Lib CoreBluetoothLibName Selector "discoverCharacteristics:forService:" (id as ptr, CBUUIDArray as ptr, forService as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 446973636F76657273207468652064657363726970746F7273206F6620612063686172616374657269737469632E
		Sub DiscoverDescriptors(forCharacteristic as AppleCBCharacteristic)
		  discoverDescriptorsForCharacteristic id, forCharacteristic.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub discoverDescriptorsForCharacteristic Lib CoreBluetoothLibName Selector "discoverDescriptorsForCharacteristic:" (id as ptr, characteristic as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 446973636F76657273207468652073706563696669656420696E636C75646564207365727669636573206F66206120736572766963652E
		Sub DiscoverIncludedServices(ServiceCBUUIDs as applearray = nil, forService as AppleCBService)
		  discoverIncludedServices id, if (ServiceCBUUIDs = nil, nil, ServiceCBUUIDs.id), forservice.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub discoverIncludedServices Lib CoreBluetoothLibName Selector "discoverIncludedServices:forService:" (id as ptr, CBUUIDArray as ptr, forService as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 446973636F766572732074686520737065636966696564207365727669636573206F6620746865207065726970686572616C2E
		Sub DiscoverServices(ServiceCBUUIDs as applearray)
		  discoverServices id, ServiceCBUUIDs.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub discoverServices Lib CoreBluetoothLibName Selector "discoverServices" (id as ptr, CBUUIDArray as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getidentifier Lib CoreBluetoothLibName Selector "identifier" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function getRSSI Lib CoreBluetoothLibName Selector "RSSI" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getservices Lib CoreBluetoothLibName Selector "services" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function getstate Lib CoreBluetoothLibName Selector "state" (id as ptr) As CBPeripheralState
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleCBPeripheral
		  return if (aptr = nil, nil, new AppleCBPeripheral(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526574726965766573207468652063757272656E7420525353492076616C756520666F7220746865207065726970686572616C207768696C6520697420697320636F6E6E656374656420746F207468652063656E7472616C206D616E616765722E
		Sub ReadRSSI()
		  readRSSI id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub readRSSI Lib CoreBluetoothLibName Selector "readRSSI" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 526574726965766573207468652076616C7565206F662061207370656369666965642063686172616374657269737469632E
		Sub ReadValue(forCharacteristic as AppleCBCharacteristic)
		  readValueForCharacteristic id, forCharacteristic.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526574726965766573207468652076616C7565206F662061207370656369666965642063686172616374657269737469632064657363726970746F722E
		Sub ReadValue(forDescriptor as AppleCBDescriptor)
		  readValueForDescriptor id, forDescriptor.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub readValueForCharacteristic Lib CoreBluetoothLibName Selector "readValueForCharacteristic:" (id as ptr, characteristic as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub readValueForDescriptor Lib CoreBluetoothLibName Selector "readValueForDescriptor:" (id as ptr, descriptor as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53657473206E6F74696669636174696F6E73206F7220696E6469636174696F6E7320666F72207468652076616C7565206F662061207370656369666965642063686172616374657269737469632E
		Sub SetNotifyValue(forCharacteristic as AppleCBCharacteristic, Enabled as boolean)
		  setNotifyValueforCharacteristic id, enabled, forCharacteristic.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setNotifyValueforCharacteristic Lib CoreBluetoothLibName Selector "setNotifyValue:forCharacteristic:" (id as ptr, enabled as boolean, characteristic as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 577269746573207468652076616C7565206F6620612063686172616374657269737469632E
		Sub WriteValue(forCharacteristic as AppleCBCharacteristic, type as CBCharacteristicWriteType, data as appledata)
		  writeValueforCharacteristic id, data.id, forCharacteristic.id, type
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 577269746573207468652076616C7565206F6620612063686172616374657269737469632064657363726970746F722E
		Sub WriteValue(forDescriptor as AppleCBDescriptor, data as AppleData)
		  writeValueForDescriptor id,data.id,  forDescriptor.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub writeValueforCharacteristic Lib CoreBluetoothLibName Selector "writeValue:forCharacteristic:type:" (id as ptr, data as ptr, characteristic as ptr, type as CBCharacteristicWriteType)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub writeValueForDescriptor Lib CoreBluetoothLibName Selector "writeValue:forDescriptor:" (id as ptr, data as ptr, descriptor as ptr)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CBPeripheral")
			  return mClassPtr
			  
			  // methods.Append new TargetClassMethodHelper("observeValueForKeyPath:ofObject:change:context:", AddressOf impl_observeKVOValue, "v@:@@@@")
			  
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652055554944206173736F636961746564207769746820746865207065726970686572616C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleUUID.MakefromPtr(getidentifier(id))
			End Get
		#tag EndGetter
		Identifier As AppleUUID
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F6620746865207065726970686572616C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return FoundationFrameWork.getName(id)
			End Get
		#tag EndGetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656C6567617465206F626A6563742073706563696669656420746F2072656365697665207065726970686572616C206576656E74732E
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr(AppKitFramework.getdelegate(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setdelegate(id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		PeripheralDelegate As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520525353492C20696E206465636962656C732C206F6620746865207065726970686572616C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return applenumber.MakeFromPtr(getRSSI(id)).DoubleValue
			End Get
		#tag EndGetter
		RSSI As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C697374206F66207365727669636573206F6E20746865207065726970686572616C20746861742068617665206265656E20646973636F76657265642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakefromPtr(getservices(id))
			End Get
		#tag EndGetter
		Services As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E7420636F6E6E656374696F6E207374617465206F6620746865207065726970686572616C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getstate(id)
			End Get
		#tag EndGetter
		State As CBPeripheralState
	#tag EndComputedProperty


	#tag Enum, Name = CBCharacteristicWriteType, Type = Integer, Flags = &h0
		WithResponse
		WithoutResponse
	#tag EndEnum

	#tag Enum, Name = CBPeripheralState, Type = Integer, Flags = &h0
		Disconnected
		  Connecting
		Connected
	#tag EndEnum


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
			Name="RSSI"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="State"
			Group="Behavior"
			Type="CBPeripheralState"
			EditorType="Enum"
			#tag EnumValues
				"0 - Disconnected"
				"1 - Connecting"
				"2 - Connected"
			#tag EndEnumValues
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
