#tag Class
Protected Class AppleCBCentralManager
Inherits AppleObject
	#tag ExternalMethod, Flags = &h21
		Private Declare Sub cancelPeripheralConnection Lib CoreBluetoothLibName Selector "cancelPeripheralConnection:" (id as ptr, peripheral as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Connect(Peripheral As AppleCBPeripheral, NotifyOnDisconnect as boolean = false)
		  dim optdict as new AppleMutableDictionary(1)
		  optdict.setValue(kCBConnectPeripheralOptionNotifyOnDisconnectionKey, new applenumber(NotifyOnDisconnect))
		  connectPeripheralOptions id, Peripheral.id, optdict.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub connectPeripheralOptions Lib CoreBluetoothLibName Selector "connectPeripheral:options:" (id as ptr, peripheral as ptr, options as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
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
		  CBCentralManagerDelegate = self
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
		  RaiseEvent FailedToConnect (Peripheral, error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOncentralManagerdidRetrieveConnectedPeripherals(Peripherals as applearray)
		  RaiseEvent ConnectedPeripheralsRetrieved (Peripherals)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informoncentralManagerdidRetrievePeripherals(Peripherals as applearray)
		  RaiseEvent PeripheralsRetrieved (Peripherals)
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
		  RaiseEvent WillRestoreState (StateDictionary)
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
		Sub RegisterControl(ParentControl As control)
		  XojoControls.Value (id) = xojo.core.WeakRef.Create(ParentControl)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveControl()
		  XojoControls.Remove (id)
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
		Sub Scan(PeripheralUUIDs as AppleArray =nil, options as AppleDictionary = nil)
		  scanForPeripheralsWithServices id, if (PeripheralUUIDs = nil, nil, PeripheralUUIDs.id), if (options = nil, nil, options.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Scan(PeripheralUUIDs as AppleArray =nil, allowDuplicates as Boolean, ServiceCBUUIDs as Applearray = nil)
		  dim optdict as new AppleMutableDictionary(2)
		  optdict.setValue(kCBCentralManagerScanOptionAllowDuplicatesKey, new AppleNumber(allowDuplicates))
		  if ServiceCBUUIDs <> nil then optdict.setValue(kCBCentralManagerScanOptionSolicitedServiceUUIDsKey, ServiceCBUUIDs)
		  scanForPeripheralsWithServices id, if (PeripheralUUIDs = nil, nil, PeripheralUUIDs.id),  optdict.id
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


	#tag Hook, Flags = &h0, Description = 4669726573207768656E2061206E6577207065726970686572616C2077617320636F6E6E6563746564
		Event Connected(Peripheral as AppleCBPeripheral)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event ConnectedPeripheralsRetrieved(Peripherals as AppleArray)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Disconnected(Peripheral as AppleCBPeripheral, Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event FailedToConnect(Peripheral as AppleCBPeripheral, Error as AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event PeripheralDiscovered(Peripheral as AppleCBPeripheral, AdvertisementData as AppleDictionary, RSSI as double)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event PeripheralsRetrieved(Peripherals as AppleArray)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event StateChanged()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865204D616E61676572E2809973207374617465206368616E676573
		Event WillRestoreState(state as AppleDictionary)
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

	#tag Property, Flags = &h21
		Private Shared mXojoControls As xojo.Core.Dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getstate(id)
			End Get
		#tag EndGetter
		State As CBCentralManagerState
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mXojoControls = nil then mXojoControls = new xojo.Core.Dictionary
			  return mXojoControls
			End Get
		#tag EndGetter
		Shared XojoControls As xojo.Core.Dictionary
	#tag EndComputedProperty


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
