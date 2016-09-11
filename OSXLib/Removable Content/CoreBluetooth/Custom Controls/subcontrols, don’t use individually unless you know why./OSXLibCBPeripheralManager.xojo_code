#tag Class
Protected Class OSXLibCBPeripheralManager
Inherits control
	#tag Event
		Sub Close()
		  raiseevent close
		  // mAppleObject.RemoveControl
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub CreatePane()
		  #If TargetMacOS then
		    mappleobject = new AppleCBPeripheralManager(true)
		    mAppleObject.RegisterControl self
		  #else
		    //#pragma  warning OSXLibModule.kOSXOnlyClassWarning
		  #endif
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidDiscoverCharacteristicsForService(Peripheral as AppleCBPeripheral, Service As AppleCBService, error as appleerror)
		  if error = nil then
		    RaiseEvent DiscoveredCharacteristics (Peripheral, Service, 0, "")
		  else
		    RaiseEvent DiscoveredCharacteristics (Peripheral, Service, error.code, error.localizedDescription)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidDiscoverDescriptorsForCharacteristic(Peripheral as AppleCBPeripheral, characteristic As AppleCBCharacteristic, error as appleerror)
		  if error = nil then
		    RaiseEvent DiscoveredDescriptors (Peripheral, characteristic, 0, "")
		  else
		    RaiseEvent DiscoveredDescriptors (Peripheral, characteristic, error.code, error.localizedDescription)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidDiscoverIncludedServicesForService(Peripheral as AppleCBPeripheral, Service As AppleCBService, error as appleerror)
		  if error = nil then
		    RaiseEvent DiscoveredIncludedServices (Peripheral, Service, 0, "")
		  else
		    RaiseEvent DiscoveredIncludedServices (Peripheral, Service, error.code, error.localizedDescription)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidDiscoverServices(Peripheral as AppleCBPeripheral, error as appleerror)
		  if error = nil then
		    RaiseEvent DiscoveredServices (Peripheral, 0, "")
		  else
		    RaiseEvent DiscoveredServices (Peripheral, error.code, error.localizedDescription)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnperipheraldidModifyServices(Peripheral as AppleCBPeripheral, Services As Applearray)
		  RaiseEvent ModifiedServices (Peripheral, services.cbservicestoXojoarray)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheralDidStartAdvertising(error as appleerror)
		  if error = nil then
		    RaiseEvent AdvertisingStarted (0, "")
		  else
		    RaiseEvent AdvertisingStarted (error.code, error.localizedDescription)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnperipheralDidUpdateName(Peripheral as AppleCBPeripheral)
		  RaiseEvent NameUpdate (Peripheral) 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidUpdateNotificationStateForCharacteristic(Peripheral as AppleCBPeripheral, characteristic As AppleCBCharacteristic, error as appleerror)
		  if error = nil then
		    RaiseEvent NotificationStateUpdate (Peripheral, characteristic, 0, "")
		  else
		    RaiseEvent NotificationStateUpdate (Peripheral, characteristic, error.code, error.localizedDescription)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnperipheralDidUpdateRSSI(Peripheral as AppleCBPeripheral, error as appleerror)
		  if error = nil then
		    RaiseEvent RSSIUpdate (Peripheral, 0, "")
		  else
		    RaiseEvent RSSIUpdate (Peripheral, error.code, error.localizedDescription)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidUpdateValueForDescriptor(Peripheral as AppleCBPeripheral, Descriptor As AppleCBDescriptor, error as appleerror)
		  if error = nil then
		    RaiseEvent DescriptorValueUpdate (Peripheral, Descriptor, 0, "")
		  else
		    RaiseEvent DescriptorValueUpdate (Peripheral, Descriptor, error.code, error.localizedDescription)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidWriteValueForCharacteristic(Peripheral as AppleCBPeripheral, characteristic As AppleCBCharacteristic, error as appleerror)
		  if error = nil then
		    RaiseEvent WroteCharacteristicValue (Peripheral, characteristic, 0, "")
		  else
		    RaiseEvent WroteCharacteristicValue (Peripheral, characteristic, error.code, error.localizedDescription)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidWriteValueForDescriptor(Peripheral as AppleCBPeripheral, Descriptor As AppleCBDescriptor, error as appleerror)
		  if error = nil then
		    RaiseEvent WroteDescriptorValue (Peripheral, Descriptor, 0, "")
		  else
		    RaiseEvent WroteDescriptorValue (Peripheral, Descriptor, error.code, error.localizedDescription)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraleripheraldidUpdateValueForCharacteristic(Peripheral as AppleCBPeripheral, characteristic As AppleCBCharacteristic, error as appleerror)
		  if error = nil then
		    RaiseEvent CharacteristicUpdate (Peripheral, characteristic, 0, "")
		  else
		    RaiseEvent CharacteristicUpdate (Peripheral, characteristic, error.code, error.localizedDescription)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnperipheralManagercentraldidSubscribeToCharacteristic(Central as AppleCBCentral, characteristic as AppleCBCharacteristic)
		  RaiseEvent SubscribedToCharacteristic (central, characteristic)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnperipheralManagercentraldidUnSubscribefromCharacteristic(Central as AppleCBCentral, characteristic as AppleCBCharacteristic)
		  RaiseEvent UnsubscribedFromCharacteristic (central, characteristic)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheralManagerDidAddService(Service as AppleCBService, error as appleerror)
		  if error = nil then
		    RaiseEvent ServiceAdded (Service, 0, "")
		  else
		    RaiseEvent ServiceAdded (Service, error.code, error.localizedDescription)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheralManagerdidReceiveReadRequest(Request as AppleCBATTRequest)
		  raiseevent ReadRequest (request)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheralManagerdidReceiveWriteRequest(Request as AppleCBATTRequest)
		  raiseevent WriteRequest (request)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheralManagerDidUpdateState()
		  RaiseEvent StateChanged 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheralManagerIsReadyToUpdateSubscribers()
		  raiseevent ReadyToUpdateSubscribers
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheralManagerwillRestoreState(StateDictionary as AppleDictionary)
		  RaiseEvent WillRestoreState (StateDictionary.TextKeyDicttoCoreDictionary)
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AdvertisingStarted(errornumber as integer, ErrorDescription as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event CharacteristicUpdate(Peripheral as AppleCBPeripheral, Characteristic as AppleCBCharacteristic, errornumber as integer, ErrorDescription as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DescriptorValueUpdate(Peripheral as AppleCBPeripheral, Descriptor as AppleCBDescriptor, errornumber as integer, ErrorDescription as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DiscoveredCharacteristics(Peripheral as AppleCBPeripheral, Service as AppleCBSErvice, errornumber as integer, ErrorDescription as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DiscoveredDescriptors(Peripheral as AppleCBPeripheral, Characteristic as AppleCBCharacteristic, errornumber as integer, ErrorDescription as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DiscoveredIncludedServices(Peripheral as AppleCBPeripheral, Service as AppleCBSErvice, errornumber as integer, ErrorDescription as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DiscoveredServices(Peripheral as AppleCBPeripheral, errornumber as integer, ErrorDescription as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ModifiedServices(Peripheral as ApplecBPeripheral, Services() As APpleCBService)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event NameUpdate(Peripheral as AppleCBPeripheral)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event NotificationStateUpdate(Peripheral as AppleCBPeripheral, Characteristic as AppleCBCharacteristic, errornumber as integer, ErrorDescription as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ReadRequest(Request as AppleCBATTRequest)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ReadyToUpdateSubscribers()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event RSSIUpdate(Peripheral as AppleCBPeripheral, errornumber as integer, ErrorDescription as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ServiceAdded(Service as AppleCBService, errornumber as integer, ErrorDescription as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event StateChanged()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SubscribedToCharacteristic(Central as AppleCBCentral, characteristic as AppleCBCharacteristic)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event UnsubscribedFromCharacteristic(Central as AppleCBCentral, characteristic as AppleCBCharacteristic)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillRestoreState(StateDictionary As xojo.Core.Dictionary)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WriteRequest(Request as AppleCBATTRequest)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WroteCharacteristicValue(Peripheral as AppleCBPeripheral, Characteristic as AppleCBCharacteristic, errornumber as integer, ErrorDescription as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WroteDescriptorValue(Peripheral as AppleCBPeripheral, Descriptor as AppleCBDescriptor, errornumber as integer, ErrorDescription as Text)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mAppleObject
			End Get
		#tag EndGetter
		AppleObject As AppleCBPeripheralManager
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mAppleObject As AppleCBPeripheralManager
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mAppleObject.State
			End Get
		#tag EndGetter
		State As AppleCBPeripheralManager.CBPeripheralManagerState
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Handle"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
			Name="MouseX"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MouseY"
			Group="Behavior"
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
			Name="PanelIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Window"
			Group="Behavior"
			InitialValue="0"
			Type="Window"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mInitialParent"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mPanelIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mWindow"
			Group="Behavior"
			InitialValue="0"
			Type="Window"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
