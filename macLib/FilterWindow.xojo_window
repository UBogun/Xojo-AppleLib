#tag Window
Begin Window FilterWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   True
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   745
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
   Title           =   "CIFIlter"
   Visible         =   True
   Width           =   1086
   Begin OSXLibView OSXLibView1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AcceptTouchEvents=   False
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   250077183
      BackgroundColor =   &c000000FF
      BoundsRotation  =   0.0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   False
      FlippedCoordinates=   False
      FocusRingType   =   "Default"
      Height          =   461
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      TrackSwipes     =   False
      TranslatesAutoresizingMaskIntoConstraints=   False
      Transparent     =   True
      UseCustomColor  =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   421
   End
   Begin Listbox Listbox1
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   ""
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
      Height          =   157
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "All Keys"
      Italic          =   False
      Left            =   440
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   2
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   74
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   626
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin OSXLibView OSXLibView2
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
      EraseBackground =   False
      FlippedCoordinates=   True
      FocusRingType   =   "Default"
      Height          =   180
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   440
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   281
      TrackSwipes     =   False
      TranslatesAutoresizingMaskIntoConstraints=   True
      Transparent     =   True
      UseCustomColor  =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   380
   End
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
      Left            =   440
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   10
      Underline       =   False
      Visible         =   True
      Width           =   626
   End
   Begin Label LocFilterNameLabel
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
      Left            =   440
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      Text            =   "Untitled"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   42
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   626
   End
   Begin HTMLViewer HTMLViewer1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   258
      HelpTag         =   ""
      Index           =   -2147483648
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Renderer        =   0
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   487
      Visible         =   True
      Width           =   1086
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   26
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   440
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      Text            =   "Controls below don’t work, sorry!"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   243
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   250
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  filter  = new AppleCIBlurFilter
		  OSXLibView1.AppleObject.AddContentFilter filter
		  ShowAttribues
		  dim attdict as CIFilterAttributeDictionary = filter.FilterAttributes
		  dim cats() as text = attdict.FilterCategoryKeys
		  dim min as double = attdict.MinimumValue
		  dim outdict as CIFilterAttributeDictionary =attdict.OutputImageDict
		  dim ref as appleurl = attdict.LocalizedReference
		  dim v as  AppleIKFilterUIView = filter.ConfigurationView (AppleCIFilter.IKUISizeFlavor.Regular, AppleCIFilter.CIUIParameters.Development)
		  v.AutoResizingMask = AppleAutoresizingMask.FullResize
		  // v.TranslatesAutoresizingMaskIntoConstraints = true
		  OSXLibView2.AppleObject.AddSubview v
		  // break
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub ShowAttribues()
		  Listbox1.DeleteAllRows
		  for q as integer = 0 to filter.FilterAttributes.Allkeys.Count -1
		    Listbox1.AddRow filter.FilterAttributes.Allkeys.TextAtIndex(q)
		  next
		  LocFilterNameLabel.text = filter.LocalizedFilterName
		  if filter.LocalizedReference <> nil then HTMLViewer1.LoadURL filter.LocalizedReference.AbsoluteURLString
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Controller As AppleObjectController
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Filter As AppleCIFIlter
	#tag EndProperty


#tag EndWindowCode

#tag Events PopupMenu1
	#tag Event
		Sub Open()
		  Me.AddRows (array("BoxBlur", "DiscBlur", "GaussianBlur", "MaskedVariableBlur", "MedianFilter", "MotionBlur", "NoiseReduction", "ZoomBlur"))
		  me.ListIndex = 2
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  select case me.Text
		  case "BoxBlur"
		    Filter = new AppleCIBlurFilter(AppleCIBlurFilter.BlurFilterTypes.BoxBlur)
		  case "DiscBlur"
		    Filter = new AppleCIBlurFilter(AppleCIBlurFilter.BlurFilterTypes.DiscBlur)
		  case "GaussianBlur"
		    Filter = new AppleCIBlurFilter(AppleCIBlurFilter.BlurFilterTypes.GaussianBlur)
		  case "MaskedVariableBlur"
		    Filter = new AppleCIBlurFilter(AppleCIBlurFilter.BlurFilterTypes.MaskedVariableBlur)
		  case "MedianFilter"
		    Filter = new AppleCIBlurFilter(AppleCIBlurFilter.BlurFilterTypes.MedianFilter)
		  case "MotionBlur"
		    Filter = new AppleCIBlurFilter(AppleCIBlurFilter.BlurFilterTypes.MotionBlur)
		  case "NoiseReduction"
		    Filter = new AppleCIBlurFilter(AppleCIBlurFilter.BlurFilterTypes.NoiseReduction)
		  case "ZoomBlur"
		    Filter = new AppleCIBlurFilter(AppleCIBlurFilter.BlurFilterTypes.ZoomBlur)
		  end select
		  dim arr as new AppleMutableArray (1)
		  arr.Addobject filter
		  OSXLibView1.AppleObject.ContentFilters = arr
		  ShowAttribues
		  if OSXLibView2.AppleObject.Subviews.Count > 0 then
		    dim configview as AppleIKFilterUIView = filter.ConfigurationView (AppleCIFilter.IKUISizeFlavor.Regular, AppleCIFilter.CIUIParameters.Advanced)
		    OSXLibView2.AppleObject.ReplaceSubview (appleview.MakefromPtr(OSXLibView2.AppleObject.Subviews.PtrAtIndex(0)), configview)
		    configview.ObjectController.AutomaticallyPreparesContent = true
		    controller = new AppleObjectController (configview.ObjectController.Content)
		    dim cii as new AppleCIImage (OSXLibLogo)
		    filter.Inputciimage = cii
		    Controller.AutomaticallyPreparesContent = true
		    break
		  end if
		  
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
