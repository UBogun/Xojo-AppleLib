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
			  return AppleNumber.MakefromPtr(me.PtrForKey (kCBAdvertisementDataIsConnectable)).boolvalue
			End Get
		#tag EndGetter
		DataIsConnectable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleArray.MakefromPtr(me.PtrForKey (kCBAdvertisementDataOverflowServiceUUIDsKey))
			End Get
		#tag EndGetter
		DataOverflowServiceUUIDs As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mCBAdvertisementDataIsConnectable as text = SystemConstantName("CBAdvertisementDataIsConnectable", CoreBluetoothPath)
			  return mCBAdvertisementDataIsConnectable
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kCBAdvertisementDataIsConnectable As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mCBAdvertisementDataLocalNameKey as text = SystemConstantName("CBAdvertisementDataLocalNameKey", CoreBluetoothPath)
			  return mCBAdvertisementDataLocalNameKey
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kCBAdvertisementDataLocalNameKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mCBAdvertisementDataManufacturerDataKey as text = SystemConstantName("CBAdvertisementDataManufacturerDataKey", CoreBluetoothPath)
			  return mCBAdvertisementDataManufacturerDataKey
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kCBAdvertisementDataManufacturerDataKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mCBAdvertisementDataOverflowServiceUUIDsKey as text = SystemConstantName("CBAdvertisementDataOverflowServiceUUIDsKey", CoreBluetoothPath)
			  return mCBAdvertisementDataOverflowServiceUUIDsKey
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kCBAdvertisementDataOverflowServiceUUIDsKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mCBAdvertisementDataServiceDataKey as text = SystemConstantName("CBAdvertisementDataServiceDataKey", CoreBluetoothPath)
			  return mCBAdvertisementDataServiceDataKey
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kCBAdvertisementDataServiceDataKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mCBAdvertisementDataServiceUUIDsKey as text = SystemConstantName("CBAdvertisementDataServiceUUIDsKey", CoreBluetoothPath)
			  return mCBAdvertisementDataServiceUUIDsKey
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kCBAdvertisementDataServiceUUIDsKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mCBAdvertisementDataSolicitedServiceUUIDsKey as text = SystemConstantName("CBAdvertisementDataSolicitedServiceUUIDsKey", CoreBluetoothPath)
			  return mCBAdvertisementDataSolicitedServiceUUIDsKey
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kCBAdvertisementDataSolicitedServiceUUIDsKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mCBAdvertisementDataTxPowerLevelKey as text = SystemConstantName("CBAdvertisementDataTxPowerLevelKey", CoreBluetoothPath)
			  return mCBAdvertisementDataTxPowerLevelKey
			End Get
		#tag EndGetter
		Attributes( hidden ) Private Shared kCBAdvertisementDataTxPowerLevelKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return me.TextForKey (kCBAdvertisementDataLocalNameKey)
			End Get
		#tag EndGetter
		LocalName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return appledata.MakefromPtr(me.PtrForKey (kCBAdvertisementDataManufacturerDataKey))
			End Get
		#tag EndGetter
		ManufacturerData As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleDictionary.MakefromPtr(me.PtrForKey (kCBAdvertisementDataServiceDataKey))
			End Get
		#tag EndGetter
		ServiceData As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleArray.MakefromPtr(me.PtrForKey (kCBAdvertisementDataServiceUUIDsKey))
			End Get
		#tag EndGetter
		ServiceUUIDs As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleArray.MakefromPtr(me.PtrForKey (kCBAdvertisementDataSolicitedServiceUUIDsKey))
			End Get
		#tag EndGetter
		SolicitedServiceUUIDs As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleNumber.MakefromPtr (PtrForKey (kCBAdvertisementDataTxPowerLevelKey)).doublevalue
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
