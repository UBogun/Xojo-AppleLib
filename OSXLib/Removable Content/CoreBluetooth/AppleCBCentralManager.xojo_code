#tag Class
Protected Class AppleCBCentralManager
Inherits AppleObject
	#tag ExternalMethod, Flags = &h21
		Private Declare Sub cancelPeripheralConnection Lib CoreBluetoothLibName Selector "cancelPeripheralConnection:" (id as ptr, peripheral as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 45737461626C69736865732061206C6F63616C20636F6E6E656374696F6E20746F2061207065726970686572616C2E0A5468652073797374656D2073686F756C6420646973706C6179206120646973636F6E6E656374696F6E20616C65727420666F72206120676976656E207065726970686572616C20696620746865206170702069732073757370656E646564206174207468652074696D65206F662074686520646973636F6E6E656374696F6E20696620796F75207061737320547275652E
		Sub Connect(Peripheral As AppleCBPeripheral, NotifyOnDisconnect as boolean = false)
		  dim optdict as new AppleMutableDictionary(1)
		  optdict.setValue(kCBConnectPeripheralOptionNotifyOnDisconnectionKey, new applenumber(NotifyOnDisconnect))
		  connectPeripheralOptions id, Peripheral.id, nil
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub connectPeripheralOptions Lib CoreBluetoothLibName Selector "connectPeripheral:options:" (id as ptr, peripheral as ptr, options as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A6573207468652063656E7472616C206D616E61676572207769746820696E697469616C697A6174696F6E206F7074696F6E732E
		Sub Constructor(AlertIfPoweredOff as Boolean = false)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  dim tempId as Ptr = init(alloc(classptr))
		  if AlertIfPoweredOff then
		    dim dict as new AppleMutableDictionary(1)
		    dict.setValue(kCBCentralManagerOptionShowPowerAlertKey, new AppleNumber(true))
		    super.Constructor(initWithDelegateOptions(Alloc(classptr), tempId, nil, dict.Id))
		  else
		    super.Constructor(initWithDelegate(Alloc(classptr), tempId, nil))
		  end if
		  MHasownership = true
		  release tempid
		  if XojoControls = nil then XojoControls = new xojo.Core.Dictionary
		  CBCentralManagerDelegate = self
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Destructor()
		  if mHasOwnership then
		    if XojoControls <> nil and XojoControls.HasKey(id) then XojoControls.Remove(id)
		    super.Destructor
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Disconnect(Peripheral As AppleCBPeripheral)
		  cancelPeripheralConnection id, Peripheral.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getstate Lib CoreBluetoothLibName Selector "state" (id as ptr) As CBCentralManagerState
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_centralManagerdidConnectPeripheral(pid as ptr, sel as ptr, CentralManager as Ptr, peripheral as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(CentralManager)
		  if cm <> nil then cm.informOncentralManagerdidConnectPeripheral (AppleCBPeripheral.MakeFromPtr(peripheral))
		  #Pragma unused pid
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_centralManagerdidDisconnectPeripheral(pid as ptr, sel as ptr, CentralManager as Ptr, peripheral as ptr, error as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(CentralManager)
		  if cm <> nil then cm.informOncentralManagerdidDisconnectPeripheral (AppleCBPeripheral.MakeFromPtr(peripheral), appleerror.MakefromPtr(error))
		  #Pragma unused pid
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_centralManagerdidDiscoverPeripheral(pid as ptr, sel as ptr, CentralManager as Ptr, Peripheral as ptr, Data as Ptr, RSSI as Ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(CentralManager)
		  if cm <> nil then cm.informOnCentralManagerdidDiscoverPeripheral (AppleCBPeripheral.MakefromPtr(Peripheral), AppleCBAdvertisementDataDictionary.MakeFromPtr(data), Applenumber.MakefromPtr(rssi).DoubleValue)
		  #Pragma unused pid
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_centralManagerdidFailToConnectPeripheral(pid as ptr, sel as ptr, CentralManager as Ptr, peripheral as ptr, error as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(CentralManager)
		  if cm <> nil then cm.informOncentralManagerdidFailToConnectPeripheral (AppleCBPeripheral.MakeFromPtr(peripheral), appleerror.MakefromPtr(error))
		  #Pragma unused pid
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_centralManagerdidRetrieveConnectedPeripherals(pid as ptr, sel as ptr, CentralManager as Ptr, peripherals as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(CentralManager)
		  if cm <> nil then cm.informoncentralManagerdidRetrieveConnectedPeripherals (AppleArray.MakeFromPtr(Peripherals))
		  #Pragma unused pid
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_centralManagerdidRetrievePeripherals(pid as ptr, sel as ptr, CentralManager as Ptr, peripherals as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(CentralManager)
		  if cm <> nil then cm.informoncentralManagerdidRetrievePeripherals (AppleArray.MakeFromPtr(Peripherals))
		  #Pragma unused pid
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_centralManagerDidUpdateState(pid as ptr, sel as ptr, CentralManager as Ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(CentralManager)
		  if cm <> nil then cm.informOnCentralManagerDidUpdateState
		  #Pragma unused pid
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_centralManagerwillRestoreState(pid as ptr, sel as ptr, CentralManager as Ptr, statedict as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(CentralManager)
		  if cm <> nil then cm.informOnCentralManagerwillRestoreState (AppleDictionary.MakeFromPtr(statedict))
		  #Pragma unused pid
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_didUpdateNotificationStateForCharacteristic(pid as ptr, sel as ptr, peripheral as ptr, characteristic as ptr, error as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheraldidUpdateNotificationStateForCharacteristic (AppleCBPeripheral.MakeFromPtr(peripheral), AppleCBCharacteristic.MakefromPtr(characteristic), appleerror.MakefromPtr(error))
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_PeripheraldidDiscoverCharacteristicsForService(pid as ptr, sel as ptr, peripheral as ptr, service as ptr, error as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheraldidDiscoverCharacteristicsForService (AppleCBPeripheral.MakeFromPtr(peripheral), AppleCBService.MakefromPtr(service), appleerror.MakefromPtr(error))
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_PeripheraldidDiscoverDescriptorsForCharacteristic(pid as ptr, sel as ptr, peripheral as ptr, characteristic as ptr, error as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheraldidDiscoverDescriptorsForCharacteristic (AppleCBPeripheral.MakeFromPtr(peripheral), AppleCBCharacteristic.MakefromPtr(characteristic), appleerror.MakefromPtr(error))
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_PeripheraldidDiscoverIncludedServicesForService(pid as ptr, sel as ptr, peripheral as ptr, service as ptr, error as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheraldidDiscoverIncludedServicesForService (AppleCBPeripheral.MakeFromPtr(peripheral), AppleCBService.MakefromPtr(service), appleerror.MakefromPtr(error))
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_PeripheraldidDiscoverServices(pid as ptr, sel as ptr, peripheral as ptr, error as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheraldidDiscoverServices (AppleCBPeripheral.MakeFromPtr(peripheral), appleerror.MakefromPtr(error))
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_peripheraldidModifyServices(pid as ptr, sel as ptr, peripheral as ptr, services as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnperipheraldidModifyServices (AppleCBPeripheral.MakeFromPtr(peripheral), applearray.MakefromPtr(services))
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_peripheralDidUpdateName(pid as ptr, sel as ptr, peripheral as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnperipheralDidUpdateName (AppleCBPeripheral.MakeFromPtr(peripheral))
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_peripheralDidUpdateRSSI(pid as ptr, sel as ptr, peripheral as ptr, error as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnperipheralDidUpdateRSSI (AppleCBPeripheral.MakeFromPtr(peripheral), appleerror.MakefromPtr(error))
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_PeripheraldidUpdateValueForCharacteristic(pid as ptr, sel as ptr, peripheral as ptr, characteristic as ptr, error as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheraleripheraldidUpdateValueForCharacteristic (AppleCBPeripheral.MakeFromPtr(peripheral), AppleCBCharacteristic.MakefromPtr(characteristic), appleerror.MakefromPtr(error))
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_PeripheraldidUpdateValueForDescriptor(pid as ptr, sel as ptr, peripheral as ptr, descriptor as ptr, error as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheraldidUpdateValueForDescriptor (AppleCBPeripheral.MakeFromPtr(peripheral), AppleCBDescriptor.MakefromPtr(descriptor), appleerror.MakefromPtr(error))
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_PeripheraldidWriteValueForCharacteristic(pid as ptr, sel as ptr, peripheral as ptr, characteristic as ptr, error as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheraldidWriteValueForCharacteristic (AppleCBPeripheral.MakeFromPtr(peripheral), AppleCBCharacteristic.MakefromPtr(characteristic), appleerror.MakefromPtr(error))
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub impl_PeripheraldidWriteValueForDescriptor(pid as ptr, sel as ptr, peripheral as ptr, descriptor as ptr, error as ptr)
		  dim cm as AppleCBCentralManager = AppleCBCentralManager.MakeFromPtr(pid)
		  if cm <> nil then cm.informOnPeripheraldidWriteValueForDescriptor (AppleCBPeripheral.MakeFromPtr(peripheral), AppleCBDescriptor.MakefromPtr(descriptor), appleerror.MakefromPtr(error))
		  #pragma unused sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOncentralManagerdidConnectPeripheral(Peripheral as AppleCBPeripheral)
		  if parentcontrol <> nil then
		    parentcontrol.informOncentralManagerdidConnectPeripheral(Peripheral)
		  else
		    RaiseEvent Connected (Peripheral)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOncentralManagerdidDisconnectPeripheral(Peripheral as AppleCBPeripheral, error as appleerror)
		  if parentcontrol <> nil then
		    parentcontrol.informOncentralManagerdidDisconnectPeripheral(Peripheral, error)
		  else
		    RaiseEvent DisConnected (Peripheral, error)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnCentralManagerdidDiscoverPeripheral(Peripheral as AppleCBPeripheral, AdvertisementData as AppleCBAdvertisementDataDictionary, RSSI as double)
		  if parentcontrol <> nil then
		    parentcontrol.informOnCentralManagerdidDiscoverPeripheral(Peripheral, AdvertisementData, Rssi)
		  else
		    RaiseEvent PeripheralDiscovered (Peripheral, AdvertisementData, RSSI)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOncentralManagerdidFailToConnectPeripheral(Peripheral as AppleCBPeripheral, error as appleerror)
		  if parentcontrol <> nil then
		    parentcontrol.informOncentralManagerdidFailToConnectPeripheral(Peripheral, error)
		  else
		    RaiseEvent FailedToConnect (Peripheral, error)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOncentralManagerdidRetrieveConnectedPeripherals(Peripherals as applearray)
		  if parentcontrol <> nil then
		    parentcontrol.informOncentralManagerdidRetrieveConnectedPeripherals(Peripherals)
		  else
		    RaiseEvent ConnectedPeripheralsRetrieved (Peripherals)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informoncentralManagerdidRetrievePeripherals(Peripherals as applearray)
		  if parentcontrol <> nil then
		    parentcontrol.informoncentralManagerdidRetrievePeripherals(Peripherals)
		  else
		    RaiseEvent PeripheralsRetrieved (Peripherals)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnCentralManagerDidUpdateState()
		  if parentcontrol <> nil then
		    parentcontrol.informOnCentralManagerDidUpdateState
		  else
		    RaiseEvent StateChanged
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnCentralManagerwillRestoreState(StateDictionary as AppleDictionary)
		  if parentcontrol <> nil then
		    parentcontrol.informOnCentralManagerwillRestoreState(StateDictionary)
		  else
		    RaiseEvent WillRestoreState (StateDictionary)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidDiscoverCharacteristicsForService(Peripheral as AppleCBPeripheral, service as applecbservice, error as appleerror)
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheraldidDiscoverCharacteristicsForService (Peripheral, service, error)
		  else
		    RaiseEvent PeripheralDiscoveredCharacteristics (Peripheral, service, error)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidDiscoverDescriptorsForCharacteristic(Peripheral as AppleCBPeripheral, characteristic as applecbcharacteristic, error as appleerror)
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheraldidDiscoverDescriptorsForCharacteristic (Peripheral, characteristic, error)
		  else
		    RaiseEvent PeripheralDiscoveredDescriptors (Peripheral, characteristic, error)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidDiscoverIncludedServicesForService(Peripheral as AppleCBPeripheral, service as applecbservice, error as appleerror)
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheraldidDiscoverIncludedServicesForService (Peripheral, service, error)
		  else
		    RaiseEvent PeripheralDiscoveredIncludedServices (Peripheral, service, error)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidDiscoverServices(Peripheral as AppleCBPeripheral, error as appleerror)
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheraldidDiscoverServices(Peripheral, error)
		  else
		    RaiseEvent PeripheralDiscoveredServices (Peripheral, error)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnperipheraldidModifyServices(Peripheral as AppleCBPeripheral, Services as AppleArray)
		  if parentcontrol <> nil then
		    parentcontrol.informOnperipheraldidModifyServices(Peripheral, services)
		  else
		    RaiseEvent ModifiedServices (Peripheral, Services)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheralDidStartAdvertising(error as appleerror)
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheralDidStartAdvertising(error)
		  else
		    RaiseEvent StartedAdvertising (error)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnperipheralDidUpdateName(Peripheral as AppleCBPeripheral)
		  if parentcontrol <> nil then
		    parentcontrol.informOnperipheralDidUpdateName(Peripheral)
		  else
		    RaiseEvent NameUpdate (Peripheral)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidUpdateNotificationStateForCharacteristic(Peripheral as AppleCBPeripheral, characteristic as applecbcharacteristic, error as appleerror)
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheraldidUpdateNotificationStateForCharacteristic (Peripheral, characteristic, error)
		  else
		    RaiseEvent NotificationSateUpdate (Peripheral, characteristic, error)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnperipheralDidUpdateRSSI(Peripheral as AppleCBPeripheral, error as appleerror)
		  if parentcontrol <> nil then
		    parentcontrol.informOnperipheralDidUpdateRSSI(Peripheral, error)
		  else
		    RaiseEvent RSSIUpdate (Peripheral, error)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidUpdateValueForDescriptor(Peripheral as AppleCBPeripheral, descriptor as applecbdescriptor, error as appleerror)
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheraldidUpdateValueForDescriptor (Peripheral, descriptor, error)
		  else
		    RaiseEvent DescriptorValueUpdate (Peripheral, descriptor, error)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidWriteValueForCharacteristic(Peripheral as AppleCBPeripheral, characteristic as applecbcharacteristic, error as appleerror)
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheraldidWriteValueForCharacteristic (Peripheral, characteristic, error)
		  else
		    RaiseEvent WroteCharacteristicValue (Peripheral, characteristic, error)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraldidWriteValueForDescriptor(Peripheral as AppleCBPeripheral, descriptor as applecbdescriptor, error as appleerror)
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheraldidWriteValueForDescriptor (Peripheral, descriptor, error)
		  else
		    RaiseEvent WroteDescriptorValue (Peripheral, descriptor, error)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnPeripheraleripheraldidUpdateValueForCharacteristic(Peripheral as AppleCBPeripheral, characteristic as applecbcharacteristic, error as appleerror)
		  if parentcontrol <> nil then
		    parentcontrol.informOnPeripheraleripheraldidUpdateValueForCharacteristic (Peripheral, characteristic, error)
		  else
		    RaiseEvent CharacteristicUpdate (Peripheral, characteristic, error)
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function initWithDelegate Lib CoreBluetoothLibName Selector "initWithDelegate:queue:" (id as ptr, adelegate as ptr, queue as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function initWithDelegateOptions Lib CoreBluetoothLibName Selector "initWithDelegate:queue:options:" (id as ptr, adelegate as ptr, queue as ptr, options as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleCBCentralManager
		  return if (aptr = nil, nil, new AppleCBCentralManager(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7465726E616C3A2054686520694F5375736572636F6E74726F6C20737562636C61737320696620636F6E7461696E656420696E20737563682E
		Attributes( hidden )  Function ParentControl() As OSXLibCBCentralManager
		  dim  wr as xojo.core.weakref = XojoControls.Lookup (id, nil)  
		  return if (wr = nil, nil,  OSXLibCBCentralManager(wr.Value))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RegisterControl(ParentControl As control)
		  XojoControls.Value (id) = xojo.core.WeakRef.Create(ParentControl)
		  super.registercontrol(parentcontrol)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RemoveControl()
		  XojoControls.Remove (id)
		  super.removecontrol
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RetrieveConnectedPeripherals(PeripheralServiceCBUUIDs as Applearray) As applearray
		  return applearray.MakeFromPtr(retrieveConnectedPeripheralsWithServices( id, PeripheralServiceCBUUIDs.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function retrieveConnectedPeripheralsWithServices Lib CoreBluetoothLibName Selector "retrieveConnectedPeripheralsWithServices:" (id as ptr, peripheralUUIDs as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function RetrievedPeripherals(PeripheralIdentifierNSUUIDs as Applearray) As applearray
		  return applearray.MakeFromPtr(retrievePeripheralsWithIdentifiers( id, PeripheralIdentifierNSUUIDs.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function retrievePeripheralsWithIdentifiers Lib CoreBluetoothLibName Selector "retrievePeripheralsWithIdentifiers:" (id as ptr, identifierNSUUIDs as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Scan(PeripheralCBUUIDs as AppleArray =nil, options as AppleDictionary = nil)
		  scanForPeripheralsWithServices id, if (PeripheralCBUUIDs = nil, nil, PeripheralCBUUIDs.id), if (options = nil, nil, options.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5363616E7320666F72207065726970686572616C73207468617420617265206164766572746973696E672073657276696365732E200A5065726970686572616C4342555549447320697320616E206172726179206F6620434255554944206F626A656374732074686174207468652061707020697320696E746572657374656420696E2E20496E207468697320636173652C206561636820434255554944206F626A65637420726570726573656E7473207468652055554944206F662061207365727669636520746861742061207065726970686572616C206973206164766572746973696E672E0A416C6C6F774475706C6963617465732064697361626C65732066696C746572696E6720616E64206120646973636F76657279206576656E742069732067656E65726174656420656163682074696D65207468652063656E7472616C20726563656976657320616E206164766572746973696E67207061636B65742C206E6F74206F6E6C79207468652066697273742074696D652E0A536572766963654342555549447320697320616E20617272617920206F662073657276696365205555494473207468617420796F752077616E7420746F207363616E20666F722E2053706563696679696E672074686973207363616E206F7074696F6E20636175736573207468652063656E7472616C206D616E6167657220746F20616C736F207363616E20666F72207065726970686572616C7320736F6C69636974696E6720616E79206F662074686520736572766963657320636F6E7461696E656420696E207468652061727261792E
		Sub Scan(PeripheralCBUUIDs as AppleArray =nil, allowDuplicates as Boolean, ServiceCBUUIDs as Applearray = nil)
		  dim optdict as new AppleMutableDictionary(2)
		  optdict.setValue(kCBCentralManagerScanOptionAllowDuplicatesKey, new AppleNumber(allowDuplicates))
		  if ServiceCBUUIDs <> nil then optdict.setValue(kCBCentralManagerScanOptionSolicitedServiceUUIDsKey, ServiceCBUUIDs)
		  scanForPeripheralsWithServices id, if (PeripheralCBUUIDs = nil, nil, PeripheralCBUUIDs.id),  optdict.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub scanForPeripheralsWithServices Lib CoreBluetoothLibName Selector "scanForPeripheralsWithServices:options:" (id as ptr, peripherals as ptr, options as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub StopScan()
		  stopScan id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub stopScan Lib CoreBluetoothLibName Selector "stopScan" (id as ptr)
	#tag EndExternalMethod


	#tag Hook, Flags = &h0
		Event CharacteristicUpdate(Peripheral as AppleCBPeripheral, Characteristic As AppleCBCharacteristic, Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061206E6577207065726970686572616C2077617320636F6E6E6563746564
		Event Connected(Peripheral as AppleCBPeripheral)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event ConnectedPeripheralsRetrieved(Peripherals as AppleArray)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DescriptorValueUpdate(Peripheral as AppleCBPeripheral, Descriptor As AppleCBDescriptor, Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Disconnected(Peripheral as AppleCBPeripheral, Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event FailedToConnect(Peripheral as AppleCBPeripheral, Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ModifiedServices(Peripheral as AppleCBPeripheral, Services as Applearray)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event NameUpdate(Peripheral as AppleCBPeripheral)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event NotificationSateUpdate(Peripheral as AppleCBPeripheral, Characteristic As AppleCBCharacteristic, Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event PeripheralDiscovered(Peripheral as AppleCBPeripheral, AdvertisementData as AppleDictionary, RSSI as double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PeripheralDiscoveredCharacteristics(Peripheral as AppleCBPeripheral, Service As AppleCBService, Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PeripheralDiscoveredDescriptors(Peripheral as AppleCBPeripheral, Characteristic As AppleCBCharacteristic, Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PeripheralDiscoveredIncludedServices(Peripheral as AppleCBPeripheral, Service As AppleCBService, Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PeripheralDiscoveredServices(Peripheral as AppleCBPeripheral, Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event PeripheralsRetrieved(Peripherals as AppleArray)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event RSSIUpdate(Peripheral as AppleCBPeripheral, Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event StartedAdvertising(error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event StateChanged()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event WillRestoreState(state as AppleDictionary)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WroteCharacteristicValue(Peripheral as AppleCBPeripheral, Characteristic As AppleCBCharacteristic, Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WroteDescriptorValue(Peripheral as AppleCBPeripheral, Descriptor As AppleCBDescriptor, Error as AppleError)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
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
		CBCentralManagerDelegate As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  // static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CBCentralManager")
			  // return mClassPtr
			  
			  static mClassPtr as ptr
			  if mClassPtr = Nil then
			    dim methods() as TargetClassMethodHelper
			    
			    //CBCentralManager Delegate Protocol:
			    methods.Append new TargetClassMethodHelper("centralManager:didConnectPeripheral:", AddressOf impl_centralManagerdidConnectPeripheral, "v@:@@")
			    methods.Append new TargetClassMethodHelper("centralManager:didDisconnectPeripheral:error:", AddressOf impl_centralManagerdidDisconnectPeripheral, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("centralManager:didFailToConnectPeripheral:error:", AddressOf impl_centralManagerdidFailToConnectPeripheral, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("centralManager:didDiscoverPeripheral:advertisementData:RSSI:", AddressOf impl_centralManagerdidDiscoverPeripheral, "v@:@@@@")
			    methods.Append new TargetClassMethodHelper("centralManager:didRetrieveConnectedPeripherals:", AddressOf impl_centralManagerdidRetrieveConnectedPeripherals, "v@:@@")
			    methods.Append new TargetClassMethodHelper("centralManager:didRetrievePeripherals:", AddressOf impl_centralManagerdidRetrievePeripherals, "v@:@@")
			    methods.Append new TargetClassMethodHelper("centralManagerDidUpdateState:", AddressOf impl_centralManagerDidUpdateState, "v@:@")
			    methods.Append new TargetClassMethodHelper("centralManager:willRestoreState:", AddressOf impl_centralManagerwillRestoreState, "v@:@@")
			    
			    //CBPeripheral Delegate Protocol:
			    //CBPeripheral Delegate Protocol:
			    methods.Append new TargetClassMethodHelper("peripheral:didDiscoverServices:", AddressOf impl_PeripheraldidDiscoverServices, "v@:@@")
			    methods.Append new TargetClassMethodHelper("peripheral:didDiscoverIncludedServicesForService:error:", AddressOf impl_PeripheraldidDiscoverIncludedServicesForService, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("peripheral:didDiscoverCharacteristicsForService:error:", AddressOf impl_PeripheraldidDiscoverCharacteristicsForService, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("peripheral:didDiscoverDescriptorsForCharacteristic:error:", AddressOf impl_PeripheraldidDiscoverDescriptorsForCharacteristic, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("peripheral:didUpdateValueForCharacteristic:error:", AddressOf impl_PeripheraldidUpdateValueForCharacteristic, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("peripheral:didUpdateValueForDescriptor:error:", AddressOf impl_PeripheraldidUpdateValueForDescriptor, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("peripheral:didWriteValueForCharacteristic:error:", AddressOf impl_PeripheraldidWriteValueForCharacteristic, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("peripheral:didWriteValueForDescriptor:error:", AddressOf impl_PeripheraldidWriteValueForDescriptor, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("peripheral:didUpdateNotificationStateForCharacteristic:error:", AddressOf impl_didUpdateNotificationStateForCharacteristic, "v@:@@@")
			    methods.Append new TargetClassMethodHelper("peripheralDidUpdateRSSI:error:", AddressOf impl_peripheralDidUpdateRSSI, "v@:@@")
			    methods.Append new TargetClassMethodHelper("peripheralDidUpdateName:", AddressOf impl_peripheralDidUpdateName, "v@:@")
			    methods.Append new TargetClassMethodHelper("peripheral:didModifyServices:", AddressOf impl_peripheraldidModifyServices, "v@:@@")
			    
			    mClassPtr = BuildTargetClass ("CBCentralManager", "OSXLibCBCentralManager",methods)
			  end if
			  Return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mCBCentralManagerOptionShowPowerAlertKey as text = SystemConstantName("CBCentralManagerOptionShowPowerAlertKey", CoreBluetoothPath)
			  return mCBCentralManagerOptionShowPowerAlertKey
			End Get
		#tag EndGetter
		Private Shared kCBCentralManagerOptionShowPowerAlertKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mCBCentralManagerScanOptionAllowDuplicatesKey as text = SystemConstantName("CBCentralManagerScanOptionAllowDuplicatesKey", CoreBluetoothPath)
			  return mCBCentralManagerScanOptionAllowDuplicatesKey
			End Get
		#tag EndGetter
		Private Shared kCBCentralManagerScanOptionAllowDuplicatesKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mCBCentralManagerScanOptionSolicitedServiceUUIDsKey as text = SystemConstantName("CBCentralManagerScanOptionSolicitedServiceUUIDsKey", CoreBluetoothPath)
			  return mCBCentralManagerScanOptionSolicitedServiceUUIDsKey
			End Get
		#tag EndGetter
		Private Shared kCBCentralManagerScanOptionSolicitedServiceUUIDsKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  static mCBConnectPeripheralOptionNotifyOnDisconnectionKey as text = SystemConstantName("CBConnectPeripheralOptionNotifyOnDisconnectionKey", CoreBluetoothPath)
			  return mCBConnectPeripheralOptionNotifyOnDisconnectionKey
			End Get
		#tag EndGetter
		Private Shared kCBConnectPeripheralOptionNotifyOnDisconnectionKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getstate(id)
			End Get
		#tag EndGetter
		State As CBCentralManagerState
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared XojoControls As xojo.Core.Dictionary
	#tag EndProperty


	#tag Enum, Name = CBCentralManagerState, Type = Integer, Flags = &h0
		Unknown
		  Resetting
		  Unsupported
		  Unauthorized
		  PoweredOff
		PoweredOn
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
			Name="State"
			Group="Behavior"
			Type="CBCentralManagerState"
			EditorType="Enum"
			#tag EnumValues
				"0 - Unknown"
				"1 - Resetting"
				"2 - Unsupported"
				"3 - Unauthorized"
				"4 - PoweredOff"
				"5 - PoweredOn"
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
