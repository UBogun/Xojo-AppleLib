#tag Class
Protected Class AppleCBUUID
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E73206120434255554944206F626A6563742066726F6D20612031362D626974206F72203132382D6269742055554944206461746120636F6E7461696E65722E
		Sub Constructor(UUID as AppleData)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (UUIDWithData(classptr, uuid.id))
		    RetainClassObject
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E73206120434255554944206F626A6563742066726F6D20616E204170706C6555554944206F626A6563742E
		Sub Constructor(UUID as AppleUUID)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (UUIDWithNSUUID(classptr, uuid.id))
		    RetainClassObject
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E73206120434255554944206F626A6563742066726F6D20612031362D626974206F72203132382D626974205555494420737472696E672E
		Sub Constructor(UUID as cfstringRef)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (UUIDWithString(classptr, uuid))
		    RetainClassObject
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getdata Lib CoreBluetoothLibName Selector "data" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getUUIDString Lib CoreBluetoothLibName Selector "UUIDString" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleCBUUID
		  return if (aptr = nil, nil, new AppleCBUUID(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function UUIDWithData Lib CoreBluetoothLibName Selector "UUIDWithData:" (id as ptr, data as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function UUIDWithNSUUID Lib CoreBluetoothLibName Selector "UUIDWithNSUUID:" (id as ptr, UUID as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function UUIDWithString Lib CoreBluetoothLibName Selector "UUIDWithString:" (id as ptr, aString as cfstringRef) As Ptr
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		CFUUID constructor missing (because of CFUUID class being not yet implemented)
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CBUUID")
			  return mClassPtr
			  
			  // methods.Append new TargetClassMethodHelper("observeValueForKeyPath:ofObject:change:context:", AddressOf impl_observeKVOValue, "v@:@@@@")
			  
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064617461206F662074686520555549442E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appledata.MakefromPtr(getdata(id))
			  #endif
			End Get
		#tag EndGetter
		Data As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBUUIDAppearanceString as text = SystemConstantName("CBUUIDAppearanceString", CoreBluetoothPath)
			    return mCBUUIDAppearanceString
			  #endif
			End Get
		#tag EndGetter
		Shared kCBUUIDAppearanceString As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBUUIDCharacteristicAggregateFormatString as text = SystemConstantName("CBUUIDCharacteristicAggregateFormatString", CoreBluetoothPath)
			    return mCBUUIDCharacteristicAggregateFormatString
			  #endif
			End Get
		#tag EndGetter
		Shared kCBUUIDCharacteristicAggregateFormatString As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBUUIDCharacteristicExtendedPropertiesString as text = SystemConstantName("CBUUIDCharacteristicExtendedPropertiesString", CoreBluetoothPath)
			    return mCBUUIDCharacteristicExtendedPropertiesString
			  #endif
			End Get
		#tag EndGetter
		Shared kCBUUIDCharacteristicExtendedPropertiesString As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBUUIDCharacteristicFormatString as text = SystemConstantName("CBUUIDCharacteristicFormatString", CoreBluetoothPath)
			    return mCBUUIDCharacteristicFormatString
			  #endif
			End Get
		#tag EndGetter
		Shared kCBUUIDCharacteristicFormatString As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBUUIDCharacteristicUserDescriptionString as text = SystemConstantName("CBUUIDCharacteristicUserDescriptionString", CoreBluetoothPath)
			    return mCBUUIDCharacteristicUserDescriptionString
			  #endif
			End Get
		#tag EndGetter
		Shared kCBUUIDCharacteristicUserDescriptionString As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBUUIDClientCharacteristicConfigurationString as text = SystemConstantName("CBUUIDClientCharacteristicConfigurationString", CoreBluetoothPath)
			    return mCBUUIDClientCharacteristicConfigurationString
			  #endif
			End Get
		#tag EndGetter
		Shared kCBUUIDClientCharacteristicConfigurationString As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBUUIDDeviceNameString as text = SystemConstantName("CBUUIDDeviceNameString", CoreBluetoothPath)
			    return mCBUUIDDeviceNameString
			  #endif
			End Get
		#tag EndGetter
		Shared kCBUUIDDeviceNameString As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBUUIDGenericAccessProfileString as text = SystemConstantName("CBUUIDGenericAccessProfileString", CoreBluetoothPath)
			    return mCBUUIDGenericAccessProfileString
			  #endif
			End Get
		#tag EndGetter
		Shared kCBUUIDGenericAccessProfileString As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBUUIDGenericAttributeProfileString as text = SystemConstantName("CBUUIDGenericAttributeProfileString", CoreBluetoothPath)
			    return mCBUUIDGenericAttributeProfileString
			  #endif
			End Get
		#tag EndGetter
		Shared kCBUUIDGenericAttributeProfileString As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBUUIDPeripheralPreferredConnectionParametersString as text = SystemConstantName("CBUUIDPeripheralPreferredConnectionParametersString", CoreBluetoothPath)
			    return mCBUUIDPeripheralPreferredConnectionParametersString
			  #endif
			End Get
		#tag EndGetter
		Shared kCBUUIDPeripheralPreferredConnectionParametersString As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBUUIDPeripheralPrivacyFlagString as text = SystemConstantName("CBUUIDPeripheralPrivacyFlagString", CoreBluetoothPath)
			    return mCBUUIDPeripheralPrivacyFlagString
			  #endif
			End Get
		#tag EndGetter
		Shared kCBUUIDPeripheralPrivacyFlagString As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    
			    static mCBUUIDReconnectionAddressString as text = SystemConstantName("CBUUIDReconnectionAddressString", CoreBluetoothPath)
			    return mCBUUIDReconnectionAddressString
			  #endif
			End Get
		#tag EndGetter
		Shared kCBUUIDReconnectionAddressString As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBUUIDServerCharacteristicConfigurationString as text = SystemConstantName("CBUUIDServerCharacteristicConfigurationString", CoreBluetoothPath)
			    return mCBUUIDServerCharacteristicConfigurationString
			  #endif
			End Get
		#tag EndGetter
		Shared kCBUUIDServerCharacteristicConfigurationString As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBUUIDServiceChangedString as text = SystemConstantName("CBUUIDServiceChangedString", CoreBluetoothPath)
			    return mCBUUIDServiceChangedString
			  #endif
			End Get
		#tag EndGetter
		Shared kCBUUIDServiceChangedString As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865205555494420726570726573656E746564206173206120737472696E672E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getUUIDString(id)
			  #endif
			End Get
		#tag EndGetter
		UUIDString As Text
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
		#tag ViewProperty
			Name="UUIDString"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
