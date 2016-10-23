#tag Class
Protected Class AppleCBAdvertisementDataDictionary
Inherits appledictionary
	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleCBAdvertisementDataDictionary
		  return if (aptr = nil, nil, new AppleCBAdvertisementDataDictionary(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleNumber.MakefromPtr(me.PtrForKey (kCBAdvertisementDataIsConnectable)).boolvalue
			  #endif
			End Get
		#tag EndGetter
		DataIsConnectable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleArray.MakefromPtr(me.PtrForKey (kCBAdvertisementDataOverflowServiceUUIDsKey))
			  #endif
			End Get
		#tag EndGetter
		DataOverflowServiceUUIDs As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBAdvertisementDataIsConnectable as text = SystemConstantName("CBAdvertisementDataIsConnectable", CoreBluetoothPath)
			    return mCBAdvertisementDataIsConnectable
			  #endif
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kCBAdvertisementDataIsConnectable As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBAdvertisementDataLocalNameKey as text = SystemConstantName("CBAdvertisementDataLocalNameKey", CoreBluetoothPath)
			    return mCBAdvertisementDataLocalNameKey
			  #endif
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kCBAdvertisementDataLocalNameKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBAdvertisementDataManufacturerDataKey as text = SystemConstantName("CBAdvertisementDataManufacturerDataKey", CoreBluetoothPath)
			    return mCBAdvertisementDataManufacturerDataKey
			  #endif
			  
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kCBAdvertisementDataManufacturerDataKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    
			    static mCBAdvertisementDataOverflowServiceUUIDsKey as text = SystemConstantName("CBAdvertisementDataOverflowServiceUUIDsKey", CoreBluetoothPath)
			    return mCBAdvertisementDataOverflowServiceUUIDsKey
			  #endif
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kCBAdvertisementDataOverflowServiceUUIDsKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBAdvertisementDataServiceDataKey as text = SystemConstantName("CBAdvertisementDataServiceDataKey", CoreBluetoothPath)
			    return mCBAdvertisementDataServiceDataKey
			  #endif
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kCBAdvertisementDataServiceDataKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBAdvertisementDataServiceUUIDsKey as text = SystemConstantName("CBAdvertisementDataServiceUUIDsKey", CoreBluetoothPath)
			    return mCBAdvertisementDataServiceUUIDsKey
			  #endif
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kCBAdvertisementDataServiceUUIDsKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBAdvertisementDataSolicitedServiceUUIDsKey as text = SystemConstantName("CBAdvertisementDataSolicitedServiceUUIDsKey", CoreBluetoothPath)
			    return mCBAdvertisementDataSolicitedServiceUUIDsKey
			  #endif
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kCBAdvertisementDataSolicitedServiceUUIDsKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mCBAdvertisementDataTxPowerLevelKey as text = SystemConstantName("CBAdvertisementDataTxPowerLevelKey", CoreBluetoothPath)
			    return mCBAdvertisementDataTxPowerLevelKey
			  #endif
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kCBAdvertisementDataTxPowerLevelKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return me.TextForKey (kCBAdvertisementDataLocalNameKey)
			  #endif
			End Get
		#tag EndGetter
		LocalName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appledata.MakefromPtr(me.PtrForKey (kCBAdvertisementDataManufacturerDataKey))
			  #endif
			End Get
		#tag EndGetter
		ManufacturerData As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleDictionary.MakefromPtr(me.PtrForKey (kCBAdvertisementDataServiceDataKey))
			  #endif
			End Get
		#tag EndGetter
		ServiceData As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleArray.MakefromPtr(me.PtrForKey (kCBAdvertisementDataServiceUUIDsKey))
			  #endif
			End Get
		#tag EndGetter
		ServiceUUIDs As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleArray.MakefromPtr(me.PtrForKey (kCBAdvertisementDataSolicitedServiceUUIDsKey))
			  #endif
			End Get
		#tag EndGetter
		SolicitedServiceUUIDs As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleNumber.MakefromPtr (PtrForKey (kCBAdvertisementDataTxPowerLevelKey)).doublevalue
			  #endif
			End Get
		#tag EndGetter
		TxPowerLevel As Double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Count"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataIsConnectable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
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
			Name="LocalName"
			Group="Behavior"
			Type="Text"
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
			Name="StringsFileFormat"
			Group="Behavior"
			Type="Text"
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
			Name="TxPowerLevel"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
