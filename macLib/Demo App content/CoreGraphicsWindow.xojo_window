#tag Window
Begin Window CoreGraphicsWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   442
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
   Placement       =   0
   Resizeable      =   True
   Title           =   "CoreGraphics AddLines"
   Visible         =   True
   Width           =   600
   Begin OSXLibCanvas OSXLibCanvas1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AcceptTouchEvents=   False
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFFFF
      BoundsRotation  =   0.0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   False
      FlippedCoordinates=   False
      FocusRingType   =   "Default"
      Height          =   442
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      TrackSwipes     =   False
      TranslatesAutoresizingMaskIntoConstraints=   False
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   439
   End
   Begin Slider PointsSlider
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   451
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Maximum         =   200
      Minimum         =   2
      PageStep        =   20
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   31
      Value           =   3
      Visible         =   True
      Width           =   129
   End
   Begin Slider WidthSlider
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   451
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Maximum         =   50
      Minimum         =   1
      PageStep        =   20
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   73
      Value           =   2
      Visible         =   True
      Width           =   129
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
      Left            =   451
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Width"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   52
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Label Label2
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
      Left            =   451
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Lines"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   8
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Label Label3
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
      Left            =   451
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Miter Limit"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   95
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Slider MiterhSlider
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   451
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Maximum         =   200
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   116
      Value           =   2
      Visible         =   True
      Width           =   129
   End
   Begin PopupMenu LineCapMenu
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Butt\nRound\nSquare"
      Italic          =   False
      Left            =   451
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   151
      Underline       =   False
      Visible         =   True
      Width           =   129
   End
   Begin PopupMenu LineJoinMenu
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Miter\nJoin\nBevel"
      Italic          =   False
      Left            =   451
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   183
      Underline       =   False
      Visible         =   True
      Width           =   129
   End
   Begin CheckBox Antialiasbox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Antialias"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   451
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   243
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   100
   End
   Begin CheckBox FillBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Fill"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   451
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   215
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   47
   End
   Begin CheckBox EvenBox
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Even-Odd"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   495
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   215
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   97
   End
   Begin Label Label4
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   137
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   451
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "This draws just a few lines, but with the AddLines method of CGContext that takes an array of lines and is much faster than separate calls. Drag the corners if you like and tweak the properties. Many more CGContext features are included!"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   285
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   141
   End
End
#tag EndWindow

#tag WindowCode
	#tag Property, Flags = &h0
		CurrentPoint As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		Points() As FoundationFrameWork.NSPoint
	#tag EndProperty


#tag EndWindowCode

#tag Events OSXLibCanvas1
	#tag Event
		Sub Paint(g as applecgcontext, Rect as FoundationFrameWork.NSRect)
		  g.LineCap = CoreGraphicsFramework.CGLineCap(LineCapMenu.ListIndex)
		  g.LineJoin= CoreGraphicsFramework.CGLineJoin(LinejoinMenu.ListIndex)
		  g.Antialias = Antialiasbox.Value
		  g.LineWidth = WidthSlider.Value
		  g.MiterLimit = MiterhSlider.value
		  g.AddLines points
		  g.StrokePath
		  If FillBox.value Then
		    g.addlines points
		    g.FillPath (EvenBox.value)
		  End If 
		  #pragma unused rect
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E20746865207573657220686173207072657373656420746865206C656674206D6F75736520627574746F6E2E
		Sub MouseDown(anEvent As AppleNSEvent)
		  Dim curloc As FoundationFrameWork.NSPoint = Me.AppleObject.ConvertPointFromView (anEvent.LocationInWindow, Me.AppleObject.Window.ContentView)
		  curloc.x = Round(curloc.x)
		  curloc.y = Round (curloc.y)
		  system.DebugLog curloc.x.totext+", "+curloc.y.totext
		  For q As Integer = 0 To Points.Ubound
		    If (points(q).x <= curloc.x +5  and points(q).x >= curloc.x -5) And (points(q).y <= curloc.y +5 and points(q).y >= curloc.y -5)Then 
		      CurrentPoint = q
		      system.DebugLog "match"
		      Exit
		    End If
		  Next
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E207468652075736572206861732072656C656173656420746865206C656674206D6F75736520627574746F6E2E
		Sub MouseUp(anEvent As AppleNSEvent)
		  CurrentPoint = -1
		  #pragma unused anEvent
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F757365207769746820746865206C65667420627574746F6E20707265737365642E
		Sub MouseDrag(anEvent As AppleNSEvent)
		  If CurrentPoint > -1 Then 
		    Dim curloc As FoundationFrameWork.NSPoint = Me.AppleObject.ConvertPointFromView (anEvent.LocationInWindow, Me.AppleObject.Window.ContentView)
		    
		    points(CurrentPoint) = curloc
		    OSXLibCanvas1.Invalidate
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PointsSlider
	#tag Event
		Sub ValueChanged()
		  Using xojo.math
		  dim val as integer = me.Value
		  If Points.Ubound <=Val  -1 Then
		    For q As Integer = points.Ubound To Val -1 
		      points.Append FoundationFrameWork.NSMakePoint(RandomInt(0, OSXLibCanvas1.Width), Randomint(0,osxlibcanvas1.height))
		    Next
		  Elseif points.Ubound > Val -1 Then
		    redim points(val -1)
		  End If
		  OSXLibCanvas1.Invalidate
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  using xojo.math
		  For q As Integer = 0 to 1
		    points.Append FoundationFrameWork.NSMakePoint(RandomInt(0, OSXLibCanvas1.Width), Randomint(0,osxlibcanvas1.height))
		  Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events WidthSlider
	#tag Event
		Sub ValueChanged()
		  OSXLibCanvas1.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MiterhSlider
	#tag Event
		Sub ValueChanged()
		  OSXLibCanvas1.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LineCapMenu
	#tag Event
		Sub Change()
		  OSXLibCanvas1.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LineJoinMenu
	#tag Event
		Sub Change()
		  OSXLibCanvas1.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Antialiasbox
	#tag Event
		Sub Action()
		  OSXLibCanvas1.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FillBox
	#tag Event
		Sub Action()
		  OSXLibCanvas1.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EvenBox
	#tag Event
		Sub Action()
		  OSXLibCanvas1.Invalidate
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
		Name="CurrentPoint"
		Group="Behavior"
		InitialValue="-1"
		Type="Integer"
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
		Visible=true
		Group="Deprecated"
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
