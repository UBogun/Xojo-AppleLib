#tag Window
Begin Window SelectionWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   576
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   1
   Resizeable      =   True
   Title           =   "Welcome to OSXLib · written 2016 by Ulrich Bogun, xojoblog.me"
   Visible         =   True
   Width           =   750
   Begin PopupMenu PopupMenu1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      ListIndex       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   536
      Underline       =   False
      Visible         =   True
      Width           =   606
   End
   Begin PushButton PushButton1
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Show"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   650
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   536
      Underline       =   False
      Visible         =   True
      Width           =   80
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      Text            =   "Select a demo:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   512
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   304
   End
   Begin OSXLibView ImageWell1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AcceptTouchEvents=   False
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   0
      BackgroundColor =   &c000000FF
      BoundsRotation  =   0.0
      DoubleBuffer    =   True
      Enabled         =   True
      EraseBackground =   True
      FlippedCoordinates=   False
      FocusRingType   =   "Default"
      Height          =   500
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      TrackSwipes     =   False
      TranslatesAutoresizingMaskIntoConstraints=   False
      Transparent     =   True
      UseCustomColor  =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   750
   End
   Begin OSXLibCanvas OSXLibView1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AcceptTouchEvents=   False
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   0
      BackgroundColor =   &c000000FF
      BoundsRotation  =   0.0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      FlippedCoordinates=   False
      FocusRingType   =   "Default"
      Height          =   500
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      TrackSwipes     =   False
      TranslatesAutoresizingMaskIntoConstraints=   False
      Transparent     =   True
      UseCustomColor  =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   750
   End
End
#tag EndWindow

#tag WindowCode
	#tag Property, Flags = &h21
		Private SecondaryWindow As Window
	#tag EndProperty


#tag EndWindowCode

#tag Events PopupMenu1
	#tag Event
		Sub Open()
		  me.AddRow("Color Additions")
		  me.AddRow("NSView Additions")
		  me.AddRow("VisualEffectView")
		  me.AddRow("Notifications")
		  me.AddRow("CoreBluetooth")
		  me.AddRow("ScrollView")
		  me.AddRow("TableView")
		  me.AddRow("AVAudio")
		  me.AddRow "SpriteKit"
		  // me.AddRow ("OutlineView") // not ready for demo yet
		  
		  me.ListIndex = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  if SecondaryWindow <> nil then 
		    SecondaryWindow.Close
		    try
		      appleobject.release Ptr(SecondaryWindow.Handle)
		      System.DebugLog "Released Window"
		      SecondaryWindow = nil
		    catch
		      System.DebugLog "Release cause exception"
		      
		    end try
		  end if
		  select case PopupMenu1.Text
		  case "Color Additions"
		    SecondaryWindow = new ColorWindow
		  case "Notifications"
		    SecondaryWindow = new NotificationWindow
		  case "CoreBluetooth"
		    SecondaryWindow= new CoreBluetoothWindow
		  case "NSView Additions"
		    SecondaryWindow= new NSViewPlayWindow
		  case "ScrollView"
		    SecondaryWindow = new ScrollWindow
		  case "TableView"
		    msgbox "Closed for repairs"
		    // SecondaryWindow = new TableViewWindow
		  case "VisualEffectView"
		    SecondaryWindow = new VisualEffectWindow
		  case "OutlineView"
		    SecondaryWindow = new OutlineViewWindow
		  case "AVAudio"
		    SecondaryWindow = new AVAudioWindow
		  case "SpriteKit"
		    #if Target64Bit
		      SecondaryWindow = new SpriteKitWindow
		    #elseif Target32Bit
		      MsgBox "SpriteKit needs 64Bit to run"
		    #endif
		  end select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ImageWell1
	#tag Event
		Sub Shown()
		  me.AppleObject.Layer.ContentGravity = AppleCALayer.CALayerContentPosition.ResizeProportionally
		  dim bgpic as AppleImage = AppleImage.fromPicture(OSXLibLogo)
		  me.AppleObject.Layer.Contents =bgpic
		  dim shadow as new AppleShadow
		  shadow.ShadowColor = new applecolor (&c83838300)
		  shadow.ShadowOffset = FoundationFrameWork.NSMakeSize(4, -4)
		  shadow.ShadowBlurRadius = 2
		  me.AppleObject.Shadow = shadow
		  me.AppleObject.Frame  = FoundationFrameWork.NSMakeRect(-1*(me.Width*5),200, me.width * 10, me.height* 10)
		  dim ac as new AppleAnimationContext (me.AppleObject)
		  ac.Duration = 8
		  me.AppleObject.animator.Frame  = FoundationFrameWork.NSMakeRect (0, 50, me.width , me.height)
		  // dim ma as AppleAutoresizingMask = AppleAutoresizingMask.NoLock
		  // me.AppleObject.AutoResizingMask = ma
		  // me.AppleObject.TranslatesAutoresizingMaskIntoConstraints = true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OSXLibView1
	#tag Event
		Sub Paint(g as applecgcontext, Rect as FoundationFrameWork.NSRect)
		  
		  dim logo as new AppleImage(OSXLibLogo)
		  // g.ConcatenateTransform (TransformExtension.CGAffineTransformMake (1,0,0,-1,0,rect.Size_.height)) // flip the graphics to Xojo defaults vertically
		  dim FillColor as new AppleColor(&c7B609D00)
		  g.FillColor = FillColor.CGColor
		  g.FillRect rect
		  g.Rotate 0.3
		  logo = logo.reSize (0.035, 0.035, CoreGraphicsFramework.CGInterpolationQuality.High)
		  g.DrawTiledImage FoundationFrameWork.NSMakeRect (0,0,logo.Width, logo.Height), logo.CGImage
		  g.BlendMode = CoreGraphicsFramework.CGBlendMode.Multiply
		  g.DrawLinearGradient new AppleCGGradient (&c2C5D3D00, &cAEB0CC00, &cFFF59000, &cFF2EB700), _
		  FoundationFrameWork.NSMakePoint (0,0), FoundationFrameWork.NSMakePoint(rect.Size_.width, rect.size_.height), true, true
		End Sub
	#tag EndEvent
	#tag Event
		Sub Resized()
		  me.Invalidate
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
