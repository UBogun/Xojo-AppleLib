#tag Class
Protected Class AppleCBCharacteristic
Inherits AppleObject
	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getdescriptors Lib CoreBluetoothLibName Selector "descriptors" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getisBroadcasted Lib CoreBluetoothLibName Selector "isBroadcasted" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getisNotifying Lib CoreBluetoothLibName Selector "isNotifying" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getproperties Lib CoreBluetoothLibName Selector "properties" (id as ptr) As uinteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getservice Lib CoreBluetoothLibName Selector "service" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleCBCharacteristic
		  return if (aptr = nil, nil, new AppleCBCharacteristic(aPtr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CBCharacteristic")
			  return mClassPtr
			  
			  // methods.Append new TargetClassMethodHelper("observeValueForKeyPath:ofObject:change:context:", AddressOf impl_observeKVOValue, "v@:@@@@")
			  
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C697374206F66207468652064657363726970746F727320746861742068617665206265656E20646973636F766572656420696E20746869732063686172616374657269737469632E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return Applearray.MakefromPtr(getdescriptors(id))
			  #endif
			End Get
		#tag EndGetter
		Descriptors As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 596F752073686F756C64206E6F742075736520746869732070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getisBroadcasted (id)
			  #endif
			End Get
		#tag EndGetter
		IsBroadcasted As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520696E6469636174696E672077686574686572207468652063686172616374657269737469632069732063757272656E746C79206E6F74696679696E67206120737562736372696265642063656E7472616C206F66206974732076616C75652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getisNotifying (id)
			  #endif
			End Get
		#tag EndGetter
		IsNotifying As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D20616D6F756E74206F6620646174612C20696E2062797465732C2074686174207468652063656E7472616C2063616E207265636569766520696E20612073696E676C65206E6F74696669636174696F6E206F7220696E6469636174696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return applecbcentral.getmaximumUpdateValueLength (id)
			  #endif
			End Get
		#tag EndGetter
		MaximumUpdateValueLength As Uinteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070726F70657274696573206F66207468652063686172616374657269737469632E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return new AppleCBCharacteristicProperties (getproperties(id))
			  #endif
			End Get
		#tag EndGetter
		Properties As AppleCBCharacteristicProperties
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073657276696365207468617420746869732063686172616374657269737469632062656C6F6E677320746F2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleCBService.MakefromPtr(getservice(id))
			  #endif
			  
			End Get
		#tag EndGetter
		Service As AppleCBService
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520426C7565746F6F74682D73706563696669632055554944206F66207468652063686172616374657269737469632E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleCBUUID.MakeFromPtr(CoreBluetoothFramework.getuuid(id))
			  #endif
			End Get
		#tag EndGetter
		UUID As AppleCBUUID
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076616C7565206F66207468652063686172616374657269737469632E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return Appledata.MakefromPtr(CoreBluetoothFramework.getvalue(id))
			  #endif
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
			Name="IsBroadcasted"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsNotifying"
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
			Name="MaximumUpdateValueLength"
			Group="Behavior"
			Type="Uinteger"
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
