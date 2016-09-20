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
   Height          =   536
   ImplicitInstance=   False
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
   Width           =   956
   Begin OSXLibCoreBluetoothController BTLT
      CentralManagerState=   ""
      Enabled         =   True
      Handle          =   0
      Index           =   -2147483648
      IsAdvertising   =   False
      LockedInPosition=   False
      MouseX          =   0
      MouseY          =   0
      PanelIndex      =   0
      PeripheralManagerState=   ""
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
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   496
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   615
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
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
      Width           =   321
   End
   Begin Listbox devices
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   5
      ColumnsResizable=   False
      ColumnWidths    =   "15%,15%,45%,15%,10%"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   130
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "STATE	DEVICE	UUID	SERVICE1	Connect"
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   583
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin BevelButton button_clear
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   3
      Bold            =   False
      ButtonType      =   0
      Caption         =   "clear list"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   38
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   494
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   478
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   109
   End
   Begin TextArea datalog
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   177
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
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "after connected the data wil shown here\n"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   289
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   583
   End
   Begin BevelButton button_quit
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   3
      Bold            =   False
      ButtonType      =   0
      Caption         =   "quit"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   38
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   478
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   109
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Data log"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   257
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Slider power_slider
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   369
      LineStep        =   1
      LiveScroll      =   False
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Maximum         =   255
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   257
      Value           =   1
      Visible         =   True
      Width           =   182
   End
   Begin Label blt_watt
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   563
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "000"
      TextAlign       =   1
      TextColor       =   &c00FF0080
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   257
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   40
   End
   Begin Label blt_hr
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   72
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "000"
      TextAlign       =   1
      TextColor       =   &c00FF0000
      TextFont        =   "System"
      TextSize        =   40.0
      TextUnit        =   2
      Top             =   183
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   101
   End
   Begin Label blt_power3
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   72
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   133
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "000"
      TextAlign       =   1
      TextColor       =   &c00408000
      TextFont        =   "System"
      TextSize        =   40.0
      TextUnit        =   2
      Top             =   183
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   101
   End
   Begin Label blt_cadanze
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   72
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   246
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "000"
      TextAlign       =   1
      TextColor       =   &c00408000
      TextFont        =   "System"
      TextSize        =   40.0
      TextUnit        =   2
      Top             =   183
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   101
   End
   Begin Label blt_power
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   72
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   359
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "000"
      TextAlign       =   1
      TextColor       =   &c000080FF
      TextFont        =   "System"
      TextSize        =   40.0
      TextUnit        =   2
      Top             =   183
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   101
   End
   Begin Label Label9
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   472
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Kickr speed"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   162
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   101
   End
   Begin Label blt_rpm
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   72
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   472
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "000"
      TextAlign       =   1
      TextColor       =   &c000080FF
      TextFont        =   "System"
      TextSize        =   40.0
      TextUnit        =   2
      Top             =   183
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   101
   End
   Begin Label Label8
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   359
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Kickr power"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   162
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   101
   End
   Begin Label Label22
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   246
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Cadanze"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   162
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   101
   End
   Begin Label Label5
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   133
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Speed"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   162
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   101
   End
   Begin Label Label4
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Heart rate"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   162
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   101
   End
   Begin TextField bytefield
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &c00FFFFFF
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   277
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   256
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
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


	#tag Method, Flags = &h0
		Function devices_exsists(Peripheral as AppleCBPeripheral) As Boolean
		  dim x as Integer=0
		  dim found as Boolean=false
		  
		  for x =0 to devices.ListCount-1 
		    if devices.Cell(x,2)=Peripheral.Identifier.UUIDString and Peripheral.Identifier.UUIDString<>"" then
		      found=true
		    end if
		  next
		  
		  return found
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub devices_statusupdate(Peripheral as AppleCBPeripheral,status as string)
		  dim x as Integer=0
		  dim found as Boolean=false
		  
		  for x =0 to devices.ListCount-1 
		    
		    if devices.Cell(x,2)=Peripheral.Identifier.UUIDString then
		      
		      devices.Cell(x,0)=status
		      found=true
		      
		      devices.RowTag(x) = Peripheral 
		      
		    end if
		    
		  next
		  
		  // new
		  if found=false then
		    
		    devices.AddRow status, Peripheral.Name, Peripheral.Identifier.UUIDString, ""
		    devices.CellType( devices.LastIndex, 4 ) = Listbox.TypeCheckbox
		    devices.CellCheck( devices.LastIndex, 4 ) = False
		    
		    devices.RowTag(devices.LastIndex) = Peripheral 
		    
		  end if
		End Sub
	#tag EndMethod


	#tag Note, Name = Read Write Characteristics.
		
		Byc
		Cycling Power Control Point - Readable - 0x2A66
		Cycling Power Vector - Readable - 0x2A64
		Sensor Location - Readable - 0x2A5D
		Cycling Power Feature - Readable - 0x2A65
		Cycling Power Measurement - Readable - 0x2A63
		
		
		Bluetooth specific read/write functions.
		Client Characteristic Configuration - Readable and Writeable - 0x2902
		Server Characteristic Configuration - Readable and Writeable - 0x2903
		
		
	#tag EndNote


	#tag Property, Flags = &h0
		isConnectedBTLE As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Peripheral As AppleCBPeripheral
	#tag EndProperty

	#tag Property, Flags = &h0
		PeripheralDevice As AppleCBPeripheral
	#tag EndProperty

	#tag Property, Flags = &h0
		PowerControlFeature As AppleCBCharacteristic
	#tag EndProperty


#tag EndWindowCode

#tag Events BTLT
	#tag Event
		Sub StateChanged()
		  'TextArea1.AppendText "CentralManager State change: "
		  select case me.AppleObject.State
		  case AppleCBCentralManager.CBCentralManagerState.PoweredOff
		    'TextArea1.AppendText "Powered off"
		    me.AppleObject.StopScan
		  case AppleCBCentralManager.CBCentralManagerState.PoweredOn
		    'TextArea1.AppendText "Powered on and ready"
		    me.Scan(false)
		  case AppleCBCentralManager.CBCentralManagerState.Resetting
		    'TextArea1.AppendText "Resetting"
		  case AppleCBCentralManager.CBCentralManagerState.Unauthorized
		    'TextArea1.AppendText "Unauthorized BLE state"
		  case AppleCBCentralManager.CBCentralManagerState.Unknown
		    'TextArea1.AppendText "Unknown state"
		  case AppleCBCentralManager.CBCentralManagerState.Unsupported
		    'TextArea1.AppendText "CoreBluetooth BLW hardware unspported"
		  end select
		  'TextArea1.AppendText EndOfLine+EndOfLine
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DiscoveredPeripheral(Peripheral as AppleCBPeripheral, AdvertisementData as AppleCBAdvertisementDataDictionary, RSSI as double)
		  
		  
		  // only if not apple tv
		  if Peripheral.Name<>"" then
		    
		    devices_statusupdate(Peripheral,"discovered")
		    
		    'TextArea1.AppendText "Peripheral discovered: "+Peripheral.Name + " Data: "+AdvertisementData.DebugDescription+endofline + _
		    'if (AdvertisementData.DataIsConnectable, "", "Not ")+"connectable · " + _
		    '"RSSI: "+rssi.ToText+EndOfLine+EndOfLine
		    
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
		        
		        self.Peripheral = Peripheral
		        
		        TextArea1.AppendText "Connection attempt"+EndOfLine+EndOfLine
		        
		        'me.Connect self.Peripheral, true
		        
		      end if
		    end if
		    
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Connected(Peripheral as AppleCBPeripheral)
		  devices_statusupdate(Peripheral,"connected")
		  
		  TextArea1.AppendText "Connected to "+Peripheral.Name+eol+eol
		  //me.StopScan
		  
		  Peripheral.DiscoverServices
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Disonnected(Peripheral as AppleCBPeripheral, errornumber as integer, ErrorDescription as Text)
		  devices_statusupdate(Peripheral,"disconnected")
		  
		  'TextArea1.AppendText "Disconnected from "+Peripheral.Name+ " with error "+ErrorDescription+EndOfLine+EndOfLine
		  self.Peripheral = nil
		  me.Scan(false)
		  
		  #pragma Unused errornumber
		End Sub
	#tag EndEvent
	#tag Event
		Sub FailedToConnect(Peripheral as AppleCBPeripheral, errornumber as integer, ErrorDescription as Text)
		  'TextArea1.AppendText "Failed to connect to "+Peripheral.Name+ " with error "+ErrorDescription+EndOfLine
		  
		  #pragma Unused errornumber
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Scan(true)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub PeripheralsRetrieved(Peripherals() As AppleCBPeripheral)
		  'dim count as uinteger = Peripherals.Ubound + 1
		  'TextArea1.AppendText count.totext + "Peripherals retrieved"
		End Sub
	#tag EndEvent
	#tag Event
		Sub ConnectedPeripheralsRetrieved(Peripherals() As AppleCBPeripheral)
		  TextArea1.AppendText "connected Peripherals retrieved: "+Peripherals.Ubound.ToText
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub WillRestoreState(StateDictionary As xojo.Core.Dictionary)
		  'TextArea1.AppendText "Will restore State "+EndOfLine
		  
		  #pragma Unused StateDictionary
		End Sub
	#tag EndEvent
	#tag Event
		Sub DiscoveredServices(Peripheral as AppleCBPeripheral, errornumber as integer, ErrorDescription as Text)
		  dim count as integer
		  if Peripheral.Services <> nil then count = Peripheral.Services.Count
		  //TextArea1.AppendText "Discovered "+count.ToText+" services from "+Peripheral.Name+ " with"+if (errornumber =  0, "out ", " ")+" error "+ErrorDescription+EndOfLine
		  for q as integer = 0 to count -1
		    dim uu as AppleCBService = AppleCBService.MakefromPtr(Peripheral.Services.PtrAtIndex(q))
		    Peripheral.DiscoverCharacteristics(uu)
		    //TextArea1.AppendText uu.DebugDescription+EndOfLine
		    Peripheral.DiscoverIncludedServices(uu)
		  next
		  //TextArea1.AppendText EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub PeripheralManagerStateChanged()
		  TextArea1.AppendText "PeripheralManager State change: "+EndOfLine
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
		  //TextArea1.AppendText "Started advertising with"+if (errornumber = 0,"out ", "") + "error "+ErrorDescription+EndOfLine+EndOfLine
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DiscoveredCharacteristics(Peripheral as AppleCBPeripheral, Service as AppleCBSErvice, errornumber as integer, ErrorDescription as Text)
		  
		  dim count as integer
		  if Peripheral.Services <> nil then count = Peripheral.Services.Count
		  
		  //TextArea1.AppendText "Discovered characteristics for "+count.ToText+" services from "+Peripheral.Name+ " with"+if (errornumber =  0, "out ", " ")+" error "+ErrorDescription+EndOfLine
		  
		  
		  for q as integer = 0 to count -1
		    
		    dim uu as AppleCBService = AppleCBService.MakefromPtr(Peripheral.Services.PtrAtIndex(q))
		    
		    //TextArea1.AppendText "Service "+uu.DebugDescription+":"+EndOfLine
		    
		    if uu.Characteristics <> nil then 
		      
		      dim charcount as integer = uu.Characteristics.Count
		      
		      for p as integer = 0 to charcount -1
		        
		        dim c as AppleCBCharacteristic = AppleCBCharacteristic.MakefromPtr(uu.Characteristics.PtrAtIndex(p))
		        
		        //TextArea1.AppendText c.DebugDescription+EndOfLine
		        Peripheral.SetNotifyValue(c, true)
		        Peripheral.DiscoverDescriptors(c)
		        
		        If c.UUID.UUIDString = "A026E005-0A7D-4AB3-97FA-F1500F9FEB8B" Then
		          
		          TextArea1.AppendText "Found A026E005-0A7D-4AB3-97FA-F1500F9FEB8B" + EndOfLine
		          
		          isConnectedBTLE = True
		          
		          PeripheralDevice = Peripheral
		          PowerControlFeature = c
		          
		        End If
		        
		      next
		      
		    end if
		    
		  next
		  
		  ' A026E005-0A7D-4AB3-97FA-F1500F9FEB8B
		  
		  'TextArea1.AppendText EndOfLine
		  #pragma Unused service
		  #pragma Unused errornumber
		End Sub
	#tag EndEvent
	#tag Event
		Sub CharacteristicUpdate(Peripheral as AppleCBPeripheral, Characteristic as AppleCBCharacteristic, errornumber as integer, ErrorDescription as Text)
		  Dim b() As Byte
		  b.Append(0) // Welke opcode 0-255
		  b.Append(power_slider.Value) // De waarde afhankelijke van op code, variabele lengte
		  
		  Dim ad As New AppleData
		  ad.ByteBlock.Constructor( b)
		  dim nn as new AppleCBCharacteristic
		  dim uu as new AppleCBUUID( "2A66" )
		  
		  Peripheral.ReadRSSI
		  Peripheral.ReadValue( Characteristic )
		  
		  TextArea1.AppendText Characteristic.UUID.UUIDString + EndOfLine
		  
		  If Characteristic.UUID.UUIDString = "2A66" Then
		    // TODO
		    TextArea1.AppendText "2A66 event" + EndOfLine
		    TextArea1.AppendText Characteristic.Value.Base64String + EndOfLine
		  end if
		  
		  
		  // pass lengte
		  if len(Characteristic.UUID.UUIDString)=4 then
		    // 2A5B RPM
		    If Characteristic.UUID.UUIDString = "2A5B" Then
		      // cadans
		      //Dim Watt as Int16=Characteristic.Value.ByteBlock.Int16Value(2)
		      Dim RCad as Int16=Characteristic.Value.ByteBlock.Uint16Value(1)
		      blt_cadanze.Text=str(rCad)
		      
		      datalog.AppendText EndOfLine
		      Datalog.AppendText "Perhiperal: " + Peripheral.Name + EndOfLine
		      Datalog.AppendText "Characteristic: " + Characteristic.UUID.UUIDString + EndOfLine
		    elseIf Characteristic.UUID.UUIDString = "2A1B" Then
		      // onbekend Kickr
		    elseIf Characteristic.UUID.UUIDString = "2A19" Then
		      // Batterij
		    elseIf Characteristic.UUID.UUIDString = "2A1C" Then
		      // temperatuur
		    elseIf Characteristic.UUID.UUIDString = "2A63" Then
		      
		      // power measurement
		      Dim Watt as Int16=Characteristic.Value.ByteBlock.Int16Value(2)
		      Dim rpm as Int16=Characteristic.Value.ByteBlock.Uint16Value(6)
		      
		      blt_power.Text=Str( Watt )
		      blt_rpm.Text=str(Rpm)
		      
		    elseIf Characteristic.UUID.UUIDString = "2A37" Then
		      // heart rate
		      Dim Flags As Byte = Characteristic.Value.ByteBlock.Int8Value(0)
		      Dim HR8 As UInt8 
		      Dim HR16 As UInt16 
		      
		      If Bitwise.BitAnd( Flags, &b10000000 ) > 0 Then
		        'UInt16
		        HR16 = Characteristic.Value.ByteBlock.UInt16Value(1)
		        'Datalog.AppendText "CHARACTERISTIC UPDATED HRM Val: " + Str( HR16 ) + EndOfLine
		        blt_hr.Text=Str( HR16 )
		      Else
		        'UInt8
		        HR8 = Characteristic.Value.ByteBlock.UInt8Value(1)
		        'Datalog.AppendText "CHARACTERISTIC UPDATED HRM Val: " + Str( HR8 ) + EndOfLine
		        blt_hr.Text=Str( HR8 )
		      End If
		    else
		      // unknown
		      datalog.AppendText EndOfLine
		      Datalog.AppendText "Perhiperal: " + Peripheral.Name + EndOfLine
		      Datalog.AppendText "Characteristic: " + Characteristic.UUID.UUIDString + EndOfLine
		      
		    End If
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub DiscoveredIncludedServices(Peripheral as AppleCBPeripheral, Service as AppleCBSErvice, errornumber as integer, ErrorDescription as Text)
		  'dim count as integer
		  'if Peripheral.Services <> nil then count = Peripheral.Services.Count
		  
		  'TextArea1.AppendText EndOfLine
		  '
		  'TextArea1.AppendText "Discovered included service from "+Peripheral.Name+ " with"+if (errornumber =  0, "out ", " ")+" error "+ErrorDescription+EndOfLine
		  'TextArea1.AppendText service.DebugDescription+EndOfLine
		  'TextArea1.AppendText EndOfLine
		  
		  
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
		  'TextArea1.AppendText "Subscribed to characteristic "+characteristic.DebugDescription+EndOfLine+EndOfLine
		  
		  #pragma Unused central
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
		  'TextArea1.AppendText "RSSI update for "+Peripheral.Name+" with"+if (errornumber = 0,"out ", " ")+"error "+ErrorDescription+EndOfLine
		  'TextArea1.AppendText "RSSI: "+Peripheral.RSSI.ToText+EndOfLine+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub NotificationStateUpdate(Peripheral as AppleCBPeripheral, Characteristic as AppleCBCharacteristic, errornumber as integer, ErrorDescription as Text)
		  '
		  'TextArea1.AppendText "Did update notification state for "+Characteristic.DebugDescription+" with"+if (errornumber = 0,"out ", " ")+ _
		  '"error "+ErrorDescription+EndOfLine+EndOfLine
		  'datalog.AppendText Peripheral.Name+" "+Characteristic.DebugDescription+EndOfLine
		  '#pragma Unused Peripheral
		End Sub
	#tag EndEvent
	#tag Event
		Sub ModifiedServices(Peripheral as ApplecBPeripheral, Services() As APpleCBService)
		  'dim count as Integer = services.Ubound +1
		  'TextArea1.AppendText "Modified Services for "+count.ToText+" Services"+EndOfLine+EndOfLine
		  
		  #pragma Unused Peripheral
		End Sub
	#tag EndEvent
	#tag Event
		Sub NameUpdate(Peripheral as AppleCBPeripheral)
		  'TextArea1.AppendText "Name update for "+Peripheral.Name+EndOfLine+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub UnsubscribedFromCharacteristic(Central as AppleCBCentral, characteristic as AppleCBCharacteristic)
		  'TextArea1.AppendText "Unsubscribed from characteristic "+characteristic.DebugDescription+EndOfLine+EndOfLine
		  #pragma Unused Central
		End Sub
	#tag EndEvent
	#tag Event
		Sub ReadRequest(Request as AppleCBATTRequest)
		  'TextArea1.AppendText "Read Request "+Request.DebugDescription+EndOfLine+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub WriteRequest(Request as AppleCBATTRequest)
		  datalog.AppendText "Write Request "+Request.DebugDescription+EndOfLine+EndOfLine
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub ReadyToUpdateSubscribers()
		  'TextArea1.AppendText "Ready to update subscribers "+EndOfLine+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event
		Sub ServiceAdded(Service as AppleCBService, errornumber as integer, ErrorDescription as Text)
		  'TextArea1.AppendText "service added: "+service.DebugDescription+" with"+if (errornumber = 0,"out ", " ")+ _
		  '"error "+ErrorDescription+EndOfLine+EndOfLine
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub WroteCharacteristicValue(Peripheral as AppleCBPeripheral, Characteristic as AppleCBCharacteristic, errornumber as integer, ErrorDescription as Text)
		  datalog.AppendText "Wrote Characteristic value with"+if (errornumber = 0,"out ", "") + "error "+ErrorDescription+EndOfLine
		  datalog.AppendText Characteristic.DebugDescription+EndOfLine+EndOfLine
		  '#pragma Unused Peripheral
		End Sub
	#tag EndEvent
	#tag Event
		Sub WroteDescriptorValue(Peripheral as AppleCBPeripheral, Descriptor as AppleCBDescriptor, errornumber as integer, ErrorDescription as Text)
		  'TextArea1.AppendText "Wrote Descriptor value for "+Descriptor.DebugDescription+ _
		  '" with"+if (errornumber =0, "out ", " ")+"error"+EndOfLine+EndOfLine
		  '#pragma Unused Peripheral
		  '#pragma Unused ErrorDescription
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events devices
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  'me.ListIndex=row
		  '
		  'msgbox("connect how ?? UUID ="+me.Cell(me.ListIndex,1))
		  
		  #pragma Unused row
		  #pragma Unused column
		  #pragma Unused x
		  #pragma Unused y
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  Dim p As AppleCBPeripheral
		  
		  if column = 4 Then
		    
		    p = me.RowTag(row)
		    
		    If me.CellCheck( row, column ) Then
		      
		      BTLT.Connect p, True
		      
		    Else
		      
		      BTLT.Disconnect( p )
		      
		    End If
		    
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events button_clear
	#tag Event
		Sub Action()
		  devices.DeleteAllRows
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events button_quit
	#tag Event
		Sub Action()
		  Quit
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events power_slider
	#tag Event
		Sub ValueChanged()
		  blt_watt.Text=str(me.Value)
		  
		  If isConnectedBTLE Then
		    
		    If PowerControlFeature <> Nil Then
		      
		      TextArea1.AppendText "PowerControlFeature = active" + EndOfLine
		      
		      'Dim b() As Byte 
		      'b.Append(1) 'OP Code
		      'b.Append(255) 'Value is variable in type, length. Optional.
		      
		      Dim mb As new xojo.Core.MutableMemoryBlock(512)
		      mb.UInt8Value( 0 ) = &hF1 ' PAGE ID
		      mb.UInt8Value(1) = &h40 'OPCODE //40 is res // 42
		      mb.UInt8Value(2) = &h50 
		      mb.UInt8Value(3) = &h20 // &h00, &h20, &hC0 ?
		      mb.Int32Value(4) = me.Value
		      
		      Dim Dat As New AppleData
		      Dat.ByteBlock.Constructor( mb )
		      
		      PeripheralDevice.WriteValue( PowerControlFeature, AppleCBPeripheral.CBCharacteristicWriteType.WithResponse, dat )
		      
		    else
		      
		      TextArea1.AppendText "PowerControlFeature = inactive" + EndOfLine
		      
		    end if
		    
		  end if
		  
		  'Write to BTLE 
		  
		  ' Uint8 = Byte 
		  ' 0 - 255
		  
		  'PowerControlFeature = New AppleCBCharacteristic
		  '
		  'Dim s As String = "A026E005-0A7D-4AB3-97FA-F1500F9FEB8B"
		  '
		  'Dim mbx As new xojo.Core.MutableMemoryBlock(s.LenB)
		  'mbx.CStringValue(0) = "A026E005-0A7D-4AB3-97FA-F1500F9FEB8B"
		  '
		  'Dim Apdat As New AppleData( mbx.Data )
		  '
		  'PowerControlFeature.UUID.Constructor( apdat )
		  '
		  'System.DebugLog("PCF uuid made")
		  '
		  'If PowerControlFeature.Properties.Write Then
		  '
		  'System.DebugLog("PCF properties.write ok")
		  '
		  ''Dim b() As Byte 
		  ''b.Append(1) 'OP Code
		  ''b.Append(255) 'Value is variable in type, length. Optional.
		  '
		  'Dim mb As new xojo.Core.MutableMemoryBlock(512)
		  'mb.UInt8Value( 0 ) = &h44
		  ''mb.DoubleValue(1) = 1.0
		  'mb.UInt8Value(1) =  me.Value 
		  'mb.UInt8Value(2) = me.Value / 8
		  '
		  'Dim Dat As New AppleData
		  'Dat.ByteBlock.Constructor( mb )
		  'PeripheralDevice.WriteValue( PowerControlFeature, AppleCBPeripheral.CBCharacteristicWriteType.WithoutResponse, Dat )
		  '
		  '//Peripheral.WriteValue(Characteristic, AppleCBPeripheral.CBCharacteristicWriteType.WithoutResponse, ad )
		  
		  'Else
		  'MsgBox "can't write cb"
		  '
		  'end if
		  '
		  'End If
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
		Name="isConnectedBTLE"
		Group="Behavior"
		InitialValue="false"
		Type="Boolean"
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
