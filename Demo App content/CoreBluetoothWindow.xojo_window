#tag Window
Begin Window CoreBluetoothWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   784
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   142303231
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   1
   Resizeable      =   True
   Title           =   "CoreBluetooth"
   Visible         =   True
   Width           =   600
   Begin OSXLibCoreBluetoothController OSXLibCBCentralManager1
      Handle          =   0
      Index           =   -2147483648
      LockedInPosition=   False
      MouseX          =   0
      MouseY          =   0
      PanelIndex      =   0
      Scope           =   0
      State           =   ""
      TabPanelIndex   =   0
      Window          =   "0"
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
      _mWindow        =   "0"
   End
   Begin TextArea TextArea1
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFF00FF
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   744
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Make sure you have a compatible BLE enabled device connected to your Mac. This demo tries to connect to every available peripheral and subscribe to its properties.\n\n"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   560
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  // cb= new AppleCBCentralManager
		  // cb.Scan (false)
		  // dim uuid as new AppleUUID
		  // pm = new AppleCBPeripheralManager(true, uuid.UUIDString)
		  
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		Peripheral As AppleCBPeripheral
	#tag EndProperty


#tag EndWindowCode

#tag Events OSXLibCBCentralManager1
	#tag Event
		Sub StateChanged()
		  TextArea1.AppendText "CentralManager State change: "
		  select case me.AppleObject.State
		  case AppleCBCentralManager.CBCentralManagerState.PoweredOff
		    TextArea1.AppendText "Powered off"
		    me.AppleObject.StopScan
		  case AppleCBCentralManager.CBCentralManagerState.PoweredOn
		    TextArea1.AppendText "Powered on and ready"
		    me.Scan(false)
		  case AppleCBCentralManager.CBCentralManagerState.Resetting
		    TextArea1.AppendText "Resetting"
		  case AppleCBCentralManager.CBCentralManagerState.Unauthorized
		    TextArea1.AppendText "Unauthorized BLE state"
		  case AppleCBCentralManager.CBCentralManagerState.Unknown
		    TextArea1.AppendText "Unknown state"
		  case AppleCBCentralManager.CBCentralManagerState.Unsupported
		    TextArea1.AppendText "CoreBluetooth BLW hardware unspported"
		  end select
		  TextArea1.AppendText EndOfLine+EndOfLine
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DiscoveredPeripheral(Peripheral as AppleCBPeripheral, AdvertisementData as AppleCBAdvertisementDataDictionary, RSSI as double)
		  TextArea1.AppendText "Peripheral discovered: "+Peripheral.Name + " Data: "+AdvertisementData.DebugDescription+endofline + _
		  if (AdvertisementData.DataIsConnectable, "", "Not ")+"connectable · " + _
		  "RSSI: "+rssi.ToText+EndOfLine+EndOfLine
		  if AdvertisementData.DataIsConnectable then
		    if Peripheral.Services <> nil then 
		      dim uuidarray as new AppleMutableArray
		      for q as integer = 0 to Peripheral.Services.Count -1
		        dim curService as new AppleCBService (Peripheral.Services.PtrAtIndex(q))
		        uuidarray.Addobject curService.UUID
		      next
		      Peripheral.DiscoverServices(uuidarray)
		    end if
		    Peripheral.PeripheralDelegate = me.appleobject
		    if self.Peripheral = nil then 
		      
		      self.Peripheral =Peripheral
		      TextArea1.AppendText "Connection attempt"+EndOfLine+EndOfLine
		      me.AppleObject.Connect self.Peripheral, true
		    end if
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Connected(Peripheral as AppleCBPeripheral)
		  TextArea1.AppendText "Connected to "+Peripheral.Name+eol+eol
		  me.StopScan
		  Peripheral.DiscoverServices
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Disonnected(Peripheral as AppleCBPeripheral, errornumber as integer, ErrorDescription as Text)
		  TextArea1.AppendText "Disconnected from "+Peripheral.Name+ " with error "+ErrorDescription+EndOfLine+EndOfLine
		  self.Peripheral = nil
		  me.Scan(false)
		End Sub
	#tag EndEvent
	#tag Event
		Sub FailedToConnect(Peripheral as AppleCBPeripheral, errornumber as integer, ErrorDescription as Text)
		  TextArea1.AppendText "Failed to connect to "+Peripheral.Name+ " with error "+ErrorDescription+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Scan(true)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub PeripheralsRetrieved(Peripherals() As AppleCBPeripheral)
		  dim count as uinteger = Peripherals.Ubound + 1
		  TextArea1.AppendText count.totext + "Peripherals retrieved"
		End Sub
	#tag EndEvent
	#tag Event
		Sub ConnectedPeripheralsRetrieved(Peripherals() As AppleCBPeripheral)
		  TextArea1.AppendText "connected Peripherals retrieved: "+Peripherals.Ubound.ToText
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub WillRestoreState(StateDictionary As xojo.Core.Dictionary)
		  TextArea1.AppendText "Will restore State "+EndOfLine
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DiscoveredServices(Peripheral as AppleCBPeripheral, errornumber as integer, ErrorDescription as Text)
		  dim count as integer
		  if Peripheral.Services <> nil then count = Peripheral.Services.Count
		  TextArea1.AppendText "Discovered "+count.ToText+" services from "+Peripheral.Name+ " with"+if (errornumber =  0, "out ", " ")+" error "+ErrorDescription+EndOfLine
		  for q as integer = 0 to count -1
		    dim uu as AppleCBService = AppleCBService.MakefromPtr(Peripheral.Services.PtrAtIndex(q))
		    Peripheral.DiscoverCharacteristics(uu)
		    TextArea1.AppendText uu.DebugDescription+EndOfLine
		    Peripheral.DiscoverIncludedServices(uu)
		  next
		  TextArea1.AppendText EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub PeripheralManagerStateChanged()
		  TextArea1.AppendText "PeripheralManager State change: "
		  select case me.PeripheralManager.State
		  case AppleCBPeripheralManagerForControl.CBPeripheralManagerState.PoweredOff
		    TextArea1.AppendText "Powered off"
		  case AppleCBPeripheralManagerForControl.CBPeripheralManagerState.PoweredOn
		    TextArea1.AppendText "Powered on and ready"
		    me.PeripheralManager.StartAdvertising
		  case AppleCBPeripheralManagerForControl.CBPeripheralManagerState.Resetting
		    TextArea1.AppendText "Resetting"
		  case AppleCBPeripheralManagerForControl.CBPeripheralManagerState.Unauthorized
		    TextArea1.AppendText "Unauthorized BLE state"
		  case AppleCBPeripheralManagerForControl.CBPeripheralManagerState.Unknown
		    TextArea1.AppendText "Unknown state"
		  case AppleCBPeripheralManagerForControl.CBPeripheralManagerState.Unsupported
		    TextArea1.AppendText "CoreBluetooth BLW hardware unspported"
		  end select
		  TextArea1.AppendText EndOfLine+EndOfLine
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub AdvertisingStarted(errornumber as integer, ErrorDescription as Text)
		  TextArea1.AppendText "Started advertising with"+if (errornumber = 0,"out ", "") + "error "+ErrorDescription+EndOfLine+EndOfLine
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DiscoveredCharacteristics(Peripheral as AppleCBPeripheral, Service as AppleCBSErvice, errornumber as integer, ErrorDescription as Text)
		  dim count as integer
		  if Peripheral.Services <> nil then count = Peripheral.Services.Count
		  
		  TextArea1.AppendText "Discovered characteristics for "+count.ToText+" services from "+Peripheral.Name+ " with"+if (errornumber =  0, "out ", " ")+" error "+ErrorDescription+EndOfLine
		  for q as integer = 0 to count -1
		    dim uu as AppleCBService = AppleCBService.MakefromPtr(Peripheral.Services.PtrAtIndex(q))
		    TextArea1.AppendText "Service "+uu.DebugDescription+":"+EndOfLine
		    if uu.Characteristics <> nil then 
		      dim charcount as integer =uu.Characteristics.Count
		      for p as integer = 0 to charcount -1
		        dim c as AppleCBCharacteristic = AppleCBCharacteristic.MakefromPtr(uu.Characteristics.PtrAtIndex(p))
		        TextArea1.AppendText c.DebugDescription+EndOfLine
		        Peripheral.SetNotifyValue(c, true)
		        Peripheral.DiscoverDescriptors(c)
		        
		      next
		    end if
		  next
		  TextArea1.AppendText EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub CharacteristicUpdate(Peripheral as AppleCBPeripheral, Characteristic as AppleCBCharacteristic, errornumber as integer, ErrorDescription as Text)
		  TextArea1.AppendText "Characteristic update with"+if (errornumber = 0,"out ", "") + "error "+ErrorDescription+EndOfLine
		  TextArea1.AppendText Characteristic.DebugDescription+EndOfLine+EndOfLine
		  Peripheral.ReadRSSI
		End Sub
	#tag EndEvent
	#tag Event
		Sub DiscoveredIncludedServices(Peripheral as AppleCBPeripheral, Service as AppleCBSErvice, errornumber as integer, ErrorDescription as Text)
		  dim count as integer
		  if Peripheral.Services <> nil then count = Peripheral.Services.Count
		  TextArea1.AppendText "Discovered included service from "+Peripheral.Name+ " with"+if (errornumber =  0, "out ", " ")+" error "+ErrorDescription+EndOfLine
		  TextArea1.AppendText service.DebugDescription+EndOfLine
		  TextArea1.AppendText EndOfLine
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DiscoveredDescriptors(Peripheral as AppleCBPeripheral, Characteristic as AppleCBCharacteristic, errornumber as integer, ErrorDescription as Text)
		  dim count as integer = Characteristic.Descriptors.Count
		  TextArea1.AppendText "Discovered "+count.ToText+" descriptors for "+Peripheral.Name+" with"+ if(errornumber = 0, "out ", " ")+"error "+ErrorDescription+EndOfLine
		  for q as integer = 0 to count -1
		    dim desc as AppleCBDescriptor = AppleCBDescriptor.MakefromPtr(Characteristic.Descriptors.PtrAtIndex(q))
		    TextArea1.AppendText desc.DebugDescription+EndOfLine
		    Peripheral.ReadValue(desc)
		  next
		  TextArea1.AppendText EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub SubscribedToCharacteristic(Central as AppleCBCentral, characteristic as AppleCBCharacteristic)
		  TextArea1.AppendText "Subscribed to characteristic "+characteristic.DebugDescription+EndOfLine+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub DescriptorValueUpdate(Peripheral as AppleCBPeripheral, Descriptor as AppleCBDescriptor, errornumber as integer, ErrorDescription as Text)
		  TextArea1.AppendText "Descriptor value update for "+Descriptor.DebugDescription+ _
		  " with"+if (errornumber =0, "out ", " ")+"error"+EndOfLine+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub RSSIUpdate(Peripheral as AppleCBPeripheral, errornumber as integer, ErrorDescription as Text)
		  TextArea1.AppendText "RSSI update for "+Peripheral.Name+" with"+if (errornumber = 0,"out ", " ")+"error "+ErrorDescription+EndOfLine
		  TextArea1.AppendText "RSSI: "+Peripheral.RSSI.ToText+EndOfLine+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub NotificationStateUpdate(Peripheral as AppleCBPeripheral, Characteristic as AppleCBCharacteristic, errornumber as integer, ErrorDescription as Text)
		  TextArea1.AppendText "Did update notification state for "+Characteristic.DebugDescription+" with"+if (errornumber = 0,"out ", " ")+ _
		  "error "+ErrorDescription+EndOfLine+EndOfLine
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub ModifiedServices(Peripheral as ApplecBPeripheral, Services() As APpleCBService)
		  dim count as Integer = services.Ubound +1
		  TextArea1.AppendText "Modified Services for "+count.ToText+" Services"+EndOfLine+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub NameUpdate(Peripheral as AppleCBPeripheral)
		  TextArea1.AppendText "Name update for "+Peripheral.Name+EndOfLine+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub UnsubscribedFromCharacteristic(Central as AppleCBCentral, characteristic as AppleCBCharacteristic)
		  TextArea1.AppendText "Unsubscribed from characteristic "+characteristic.DebugDescription+EndOfLine+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub ReadRequest(Request as AppleCBATTRequest)
		  TextArea1.AppendText "Read Request "+Request.DebugDescription+EndOfLine+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub WriteRequest(Request as AppleCBATTRequest)
		  TextArea1.AppendText "Write Request "+Request.DebugDescription+EndOfLine+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub ReadyToUpdateSubscribers()
		  TextArea1.AppendText "Ready to update subscribers "+EndOfLine+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub ServiceAdded(Service as AppleCBService, errornumber as integer, ErrorDescription as Text)
		  TextArea1.AppendText "service added: "+service.DebugDescription+" with"+if (errornumber = 0,"out ", " ")+ _
		  "error "+ErrorDescription+EndOfLine+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub WroteCharacteristicValue(Peripheral as AppleCBPeripheral, Characteristic as AppleCBCharacteristic, errornumber as integer, ErrorDescription as Text)
		  TextArea1.AppendText "Wrote Characteristic value with"+if (errornumber = 0,"out ", "") + "error "+ErrorDescription+EndOfLine
		  TextArea1.AppendText Characteristic.DebugDescription+EndOfLine+EndOfLine
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub WroteDescriptorValue(Peripheral as AppleCBPeripheral, Descriptor as AppleCBDescriptor, errornumber as integer, ErrorDescription as Text)
		  TextArea1.AppendText "Wrote Descriptor value for "+Descriptor.DebugDescription+ _
		  " with"+if (errornumber =0, "out ", " ")+"error"+EndOfLine+EndOfLine
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
