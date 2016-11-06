#tag Window
Begin Window ButtonWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   437
   ImplicitInstance=   False
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   1
   Resizeable      =   False
   Title           =   "AppleButton – Xojo control extensions"
   Visible         =   True
   Width           =   600
   Begin OSXLibEnhancedPushbutton PushButton1
      AllowsMixedState=   False
      AlternateCaption=   "it reacts to keyboard """"i"""""
      AlternateImage  =   0
      AutoDeactivate  =   True
      BezelColor      =   &c39B54900
      BezelStyle      =   "2"
      Bold            =   False
      Bordered        =   True
      ButtonStyle     =   "0"
      ButtonType      =   "2"
      Cancel          =   False
      Caption         =   "Toggle Button with an image and sound"
      Default         =   False
      Enabled         =   True
      Height          =   48
      HelpTag         =   ""
      Image           =   250077183
      ImageHugsTitle  =   True
      ImagePosition   =   "8"
      ImageScaling    =   "3"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      KeyEquivalent   =   "i"
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaxAcceleratorLevel=   1
      Scope           =   0
      ShowsBorderOnlyWhileMouseInside=   True
      Sound           =   "Purr"
      SpringLoaded    =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Calibri"
      TextSize        =   16.0
      TextUnit        =   0
      Top             =   32
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   347
   End
   Begin OSXLibEnhancedCheckBox CheckBox1
      AllowsMixedState=   False
      AlternateCaption=   "and I am now in checked state!"
      AlternateImage  =   0
      AutoDeactivate  =   True
      BezelColor      =   &c9C560C00
      BezelStyle      =   "13"
      Bold            =   False
      Bordered        =   True
      ButtonType      =   "3"
      Caption         =   "I am a checkbox!"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   40
      HelpTag         =   ""
      Image           =   250077183
      ImageHugsTitle  =   False
      ImagePosition   =   "2"
      ImageScaling    =   "0"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      KeyEquivalent   =   "j"
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaxAcceleratorLevel=   1
      Scope           =   0
      ShowsBorderOnlyWhileMouseInside=   False
      Sound           =   "Morse"
      SpringLoaded    =   False
      State           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   16.0
      TextUnit        =   0
      Top             =   362
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   315
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   244
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
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      Text            =   "The Pushbutton above is a normal Xojo Pushbutton subclass: OSXLibEnhancedPushbutton. It wraps many of the NSButton features into a Xojo control. More features are accessible via the AppleObject property of the control.\n\nPlease note that ButtonStyle is overriden by ButtonType and BezelStyle but cannot be deleted from the inspector properties. Accelerator Button types do not work in a subclass, I’d have to build own classes. Please send me a note if you need such.\n\nThe Checkbox below is again a normal Xojo checkbox, wrapped in an OSXLibEnhancedCheckbox control, as well as the RadioButtons being OSXLibEnhancedRadioButtons. All controls have a KeyboardEquivalent set: Use ""i"", ""j"", ""k"" and ""l"" to change their states. Please note that RadioButton1 is delayed in changing its state back to unselected. This changes once it is drawn bordered."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   106
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   549
   End
   Begin OSXLibEnhancedRadioButton RadioButton1
      AllowsMixedState=   False
      AlternateCaption=   "selected"
      AlternateImage  =   0
      AutoDeactivate  =   True
      BezelColor      =   &cFFFFFFFF
      BezelStyle      =   "1"
      Bold            =   False
      Bordered        =   False
      ButtonType      =   "4"
      Caption         =   "RadioButton1"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Image           =   0
      ImageHugsTitle  =   False
      ImagePosition   =   "0"
      ImageScaling    =   "0"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      KeyEquivalent   =   "k"
      Left            =   386
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaxAcceleratorLevel=   1
      Scope           =   0
      ShowsBorderOnlyWhileMouseInside=   False
      Sound           =   ""
      SpringLoaded    =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   362
      Transparent     =   False
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   155
   End
   Begin OSXLibEnhancedRadioButton RadioButton2
      AllowsMixedState=   False
      AlternateCaption=   "selected"
      AlternateImage  =   0
      AutoDeactivate  =   True
      BezelColor      =   &cFFFFFFFF
      BezelStyle      =   "2"
      Bold            =   False
      Bordered        =   True
      ButtonType      =   "4"
      Caption         =   "RadioButton2"
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Image           =   250077183
      ImageHugsTitle  =   False
      ImagePosition   =   "8"
      ImageScaling    =   "0"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      KeyEquivalent   =   "l"
      Left            =   386
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaxAcceleratorLevel=   1
      Scope           =   0
      ShowsBorderOnlyWhileMouseInside=   False
      Sound           =   ""
      SpringLoaded    =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   394
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   166
   End
End
#tag EndWindow

#tag WindowCode
#tag EndWindowCode

#tag Events CheckBox1
	#tag Event
		Sub Open()
		  dim invertimage as picture = OSXLibLogo
		  invertimage = invertimage.InvertColors
		  me.AlternateImage = invertimage
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RadioButton2
	#tag Event
		Sub Open()
		  dim invertimage as picture = OSXLibLogo
		  invertimage = invertimage.ChangeBrightness(0.5)
		  me.AlternateImage = invertimage
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
