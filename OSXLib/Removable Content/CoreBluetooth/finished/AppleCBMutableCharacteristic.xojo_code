#tag Class
Protected Class AppleCBMutableCharacteristic
Inherits AppleCBCharacteristic
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(uuid as AppleCBUUID, properties as AppleCBCharacteristicProperties, value as appledata, permissions as AppleCBAttributePermissions)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor(initWithType(alloc(classptr), uuid.id, properties.Id, value.id, permissions.id))
		    MHasOwnership= true
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpermissions Lib CoreBluetoothLibName Selector "permissions" (id as ptr) As uinteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getsubscribedCentrals Lib CoreBluetoothLibName Selector "subscribedCentrals" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithType Lib CoreBluetoothLibName Selector "discoverIncludedServices:forService:" (id as ptr, uuid as ptr, type as uinteger, data as ptr, permission as uinteger) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleCBMutableCharacteristic
		  return if (aptr = nil, nil, new AppleCBMutableCharacteristic(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setdescriptors Lib CoreBluetoothLibName Selector "setDescriptors:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setpermissions Lib CoreBluetoothLibName Selector "setPermissions:" (id as ptr, value as uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setproperties Lib CoreBluetoothLibName Selector "setProperties:" (id as ptr, value as uinteger)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CBMutableCharacteristic")
			  return mClassPtr
			  
			  // methods.Append new TargetClassMethodHelper("observeValueForKeyPath:ofObject:change:context:", AddressOf impl_observeKVOValue, "v@:@@@@")
			  
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C697374206F66207468652064657363726970746F727320746861742068617665206265656E20646973636F766572656420696E20746869732063686172616374657269737469632E20
		#tag Getter
			Get
			  #If TargetMacOS then
			    return Applearray.MakefromPtr(getdescriptors(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setdescriptors id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		Descriptors As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207065726D697373696F6E73206F66207468652063686172616374657269737469632076616C75652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return new AppleCBAttributePermissions (getpermissions(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setpermissions id, value.id
			  #endif
			End Set
		#tag EndSetter
		Permissions As AppleCBAttributePermissions
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070726F70657274696573206F66207468652063686172616374657269737469632E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return new AppleCBCharacteristicProperties (getproperties(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setproperties id, value.id
			  #endif
			End Set
		#tag EndSetter
		Properties As AppleCBCharacteristicProperties
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C697374206F662063656E7472616C732063757272656E746C79207375627363726962656420746F20746865206368617261637465726973746963E28099732076616C75652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return Applearray.MakefromPtr(getsubscribedCentrals(id))
			  #endif
			End Get
		#tag EndGetter
		SubscribedCentrals As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520426C7565746F6F74682D73706563696669632055554944206F66207468652063686172616374657269737469632E20
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleCBUUID.MakeFromPtr(CoreBluetoothFramework.getuuid(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    CoreBluetoothFramework.setuuid(id, if (value = nil, nil, value.id))
			  #endif
			End Set
		#tag EndSetter
		UUID As AppleCBUUID
	#tag EndComputedProperty


	#tag ViewBehavior
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
	#tag EndViewBehavior
End Class
#tag EndClass
