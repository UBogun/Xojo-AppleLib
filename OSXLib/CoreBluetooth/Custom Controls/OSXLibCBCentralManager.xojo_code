#tag Class
Protected Class OSXLibCBCentralManager
Inherits control
	#tag Event
		Sub Close()
		  raiseevent close
		  mAppleObject.RemoveControl
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub CreatePane()
		  #if TargetMacOS
		    mappleobject = new AppleCBCentralManager(true)
		    mAppleObject.RegisterControl self
		  #else
		    #pragma  warning OSXLibModule.kOSXOnlyClassWarning
		  #endif
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0, Description = 45737461626C69736865732061206C6F63616C20636F6E6E656374696F6E20746F2061207065726970686572616C2E0A5468652073797374656D2073686F756C6420646973706C6179206120646973636F6E6E656374696F6E20616C65727420666F72206120676976656E207065726970686572616C20696620746865206170702069732073757370656E646564206174207468652074696D65206F662074686520646973636F6E6E656374696F6E20696620796F75207061737320547275652E
		Sub Connect(Peripheral As AppleCBPeripheral, NotifyOnDisconnect as boolean = false)
		  AppleObject.Connect (Peripheral, NotifyOnDisconnect)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOncentralManagerdidConnectPeripheral(Peripheral as AppleCBPeripheral)
		  RaiseEvent Connected (Peripheral)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOncentralManagerdidDisconnectPeripheral(Peripheral as AppleCBPeripheral, error as AppleError)
		  if error = nil then
		    RaiseEvent Disonnected (peripheral, 0, "")
		  else
		    RaiseEvent Disonnected (Peripheral, error.code, error.localizedDescription)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnCentralManagerdidDiscoverPeripheral(Peripheral as AppleCBPeripheral, AdvertisementData as AppleCBAdvertisementDataDictionary, RSSI as double)
		  Raiseevent DiscoveredPeripheral (Peripheral, AdvertisementData, Rssi)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOncentralManagerdidFailToConnectPeripheral(Peripheral as AppleCBPeripheral, error as AppleError)
		  if error = nil then
		    RaiseEvent FailedToConnect (Peripheral, 0, "")
		  else
		    RaiseEvent FailedToConnect (Peripheral, error.code, error.localizedDescription)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOncentralManagerdidRetrieveConnectedPeripherals(Peripherals as Applearray)
		  RaiseEvent ConnectedPeripheralsRetrieved (Peripherals.CBPeripheralsToXojoArray)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informoncentralManagerdidRetrievePeripherals(Peripherals as Applearray)
		  RaiseEvent PeripheralsRetrieved (Peripherals.CBPeripheralsToXojoArray)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnCentralManagerDidUpdateState()
		  RaiseEvent StateChanged
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnCentralManagerwillRestoreState(StateDictionary as AppleDictionary)
		  RaiseEvent WillRestoreState (StateDictionary.TextKeyDicttoCoreDictionary)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5363616E7320666F72207065726970686572616C73207468617420617265206164766572746973696E672073657276696365732E200A5065726970686572616C4342555549447320697320616E206172726179206F6620434255554944206F626A656374732074686174207468652061707020697320696E746572657374656420696E2E20496E207468697320636173652C206561636820434255554944206F626A65637420726570726573656E7473207468652055554944206F662061207365727669636520746861742061207065726970686572616C206973206164766572746973696E672E0A416C6C6F774475706C6963617465732064697361626C65732066696C746572696E6720616E64206120646973636F76657279206576656E742069732067656E65726174656420656163682074696D65207468652063656E7472616C20726563656976657320616E206164766572746973696E67207061636B65742C206E6F74206F6E6C79207468652066697273742074696D652E0A536572766963654342555549447320697320616E20617272617920206F662073657276696365205555494473207468617420796F752077616E7420746F207363616E20666F722E2053706563696679696E672074686973207363616E206F7074696F6E20636175736573207468652063656E7472616C206D616E6167657220746F20616C736F207363616E20666F72207065726970686572616C7320736F6C69636974696E6720616E79206F662074686520736572766963657320636F6E7461696E656420696E207468652061727261792E
		Sub Scan(PeripheralCBUUIDs() as appleCBuuid =nil, allowDuplicates as Boolean, ServiceCBUUIDs() as applecbuuid = nil)
		  AppleObject.Scan (PeripheralCBUUIDs.toAppleArray, allowDuplicates, ServiceCBUUIDs.toAppleArray)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Connected(Peripheral as AppleCBPeripheral)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ConnectedPeripheralsRetrieved(Peripherals() As AppleCBPeripheral)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DiscoveredPeripheral(Peripheral as AppleCBPeripheral, AdvertisementData as AppleCBAdvertisementDataDictionary, RSSI as double)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Disonnected(Peripheral as AppleCBPeripheral, errornumber as integer, ErrorDescription as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event FailedToConnect(Peripheral as AppleCBPeripheral, errornumber as integer, ErrorDescription as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PeripheralsRetrieved(Peripherals() As AppleCBPeripheral)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event StateChanged()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillRestoreState(StateDictionary As xojo.Core.Dictionary)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mAppleObject
			End Get
		#tag EndGetter
		AppleObject As AppleCBCentralManager
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mAppleObject As AppleCBCentralManager
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mAppleObject.State
			End Get
		#tag EndGetter
		State As applecbcentralmanager.CBCentralManagerState
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
			Name="State"
			Group="Behavior"
			Type="applecbcentralmanager.CBCentralManagerState"
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