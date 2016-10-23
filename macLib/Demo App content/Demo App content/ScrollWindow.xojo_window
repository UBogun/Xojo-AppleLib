#tag Window
Begin window ScrollWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   True
   HasBackColor    =   False
   Height          =   578
   ImplicitInstance=   False
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
   Placement       =   0
   Resizeable      =   True
   Title           =   "ScrollView"
   Visible         =   True
   Width           =   704
   Begin OSXLibScrollView OSXLibScrollView1
      AcceptFocus     =   True
      AcceptTabs      =   False
      AcceptTouchEvents=   True
      AllowMagnification=   True
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   0
      BackgroundColor =   &cFF000000
      BorderType      =   "3"
      BoundsRotation  =   0.0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      FlippedCoordinates=   False
      FocusRingType   =   "Default"
      Height          =   578
      HelpTag         =   ""
      HorizontalScroller=   True
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Magnification   =   10.0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      TrackSwipes     =   False
      TranslatesAutoresizingMaskIntoConstraints=   False
      Transparent     =   True
      UseCustomColor  =   False
      UseFocusRing    =   True
      VerticalScroller=   True
      Visible         =   True
      Width           =   704
   End
   Begin TextArea TextArea1
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &cFF00FFFF
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   268
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   65
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "This is a much better, more native implementation. Try scrolling and gestures like Magnify. On 64Bit SmartMagnify (doubleTap) works too. When the magnification factor gets too low, the image is placed in the lower left corner by default. For a better behavior, you should subclass ClipView or add a custom event handler to the LiveMaginficationFinished event (or tell me!).\n\n"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   133
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   244
   End
End
#tag EndWindow

#tag WindowCode
#tag EndWindowCode

#tag Events OSXLibScrollView1
	#tag Event
		Sub Shown()
		  // The best way to work with a Scrollview is to use a Clipview as contentview. 
		  // You could as well add any view to its documentView instead.
		  
		  dim v as new AppleImageView(new AppleImage (OSXLibLogo)) // create an imageview from an image
		  dim cv as new AppleClipView(v.frame) // and create a clipview with the same dimensions
		  cv.DocumentView = v //make the imageciew its documentview
		  me.AppleObject.ContentView = cv // and the clipview the contentView of the Scrollview
		  
		  // Add a floating subview over it. This reduces the Scrollview’s performance a bit!
		  dim newview as new appleview(TextArea1)
		  newview.AutoResizingMask = AppleAutoresizingMask.FullResize
		  newview.TranslatesAutoresizingMaskIntoConstraints = true
		  me.AppleObject.AddFloatingSubview(newview, AppleNSEvent.NSEventGestureAxis.None)
		  // newview.RightAnchor.ConstraintGreaterThanOrEqualToAnchor (me.AppleObject.RightAnchor, 0.1).Active = true
		  // newview.WidthAnchor.ConstraintEqualToDimension(me.AppleObject.WidthAnchor, 0.1).Priority = AppleLayoutConstraint.NSLayoutPriority.DefaultLow
		  
		  
		  // Item1 as AppleObject, Attribute1 as NSLayoutAttribute, Relation as NSLayoutRelation, Item2 As AppleObject, Attribute2 as NSLayoutAttribute, Multiplier As Double, constant as Double
		  
		  // setting the magnification did not end in the scrollview showing the new maginification, only after a magnification gesture was started.
		  // Im am manually setting the view to 10 times and center it on the mid of the contentview.
		  me.AppleObject.SetMagnification 1, me.AppleObject.ConvertPointFromView(me.AppleObject.ContentView.Frame.center,  me.AppleObject.ContentView)
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E206120737562766965772077617320616464656420746F2074686520766965772E
		Sub AddedSubview(Subview as AppleView)
		  TextArea1.AppendText "Added Subview "+subview.DebugDescription+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Sub BecameSubview()
		  TextArea1.AppendText "Became Subview"+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Sub WillBecomeSubview(SuperView as AppleView)
		  TextArea1.AppendText "Will become Subview of "+superview.DebugDescription+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Sub WillShow(Window As Applewindow)
		  TextArea1.AppendText "Will show in "+window.DebugDescription+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E20746865207573657220706572666F726D6564206120736D617274207A6F6F6D20676573747572652028646F75626C652D746170292E203634626974206F6E6C7921
		Sub SmartMagnifyGesture(anEvent As AppleNSEvent)
		  TextArea1.AppendText "Smart Magnify requested "+anEvent.Magnification.ToText+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E207468652074686520757365722068617320626567756E20612070696E636820676573747572652E
		Sub MagnifyGesture(anEvent As AppleNSEvent)
		  // TextArea1.AppendText "Magnify gesture"+EndOfLine
		  // me.AppleObject.Magnification =me.AppleObject.Magnification+ anEvent.Magnification
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Sub WillRemoveSubview(SubView as AppleView)
		  TextArea1.AppendText "Removing Subview "+subview.DebugDescription+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E20746865207573657220686173207072657373656420746865206C656674206D6F75736520627574746F6E2E
		Sub MouseDown(anEvent As AppleNSEvent)
		  TextArea1.AppendText anEvent.ClickCount.ToText+" left click at "+anEvent.LocationInWindow.x.ToText+", "+anEvent.LocationInWindow.y.ToText+ EndOfLine
		  
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520757365722068617320626567756E206120726F746174696F6E20676573747572652E
		Sub RotationGesture(anEvent As AppleNSEvent)
		  me.AppleObject.DocumentView.Rotate anEvent.Rotation
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520757365722068617320626567756E206120746F75636820676573747572652E
		Sub BeginGesture(anEvent As AppleNSEvent)
		  TextArea1.AppendText "Gesture received, type "+Integer(anEvent.Type).ToText+EndOfLine
		  
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520757365722068617320626567756E206120737769706520676573747572652E
		Sub SwipeGesture(anEvent As AppleNSEvent)
		  TextArea1.AppendText "Swipe Gesture received "+Integer(anEvent.type).ToText+EndOfLine
		End Sub
	#tag EndEvent
	#tag Event , Description = 54686520757365722066696E697368656420726573697A696E672074686520706172616E657420636F6E74726F6C2E2052657475726E207472756520746F206F76657272696465206175746F6D61746963207363726F6C6C7669657720656C656D656E747320706C6163656D656E742E
		Sub Resized()
		  TextArea1.AppendText "Resized"+eol
		End Sub
	#tag EndEvent
	#tag Event , Description = 466972657320696620746865207573657220686173207374617274656420726573697A696E672074686520766965772E
		Sub Resizing()
		  TextArea1.AppendText "Resizing"+eol
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
