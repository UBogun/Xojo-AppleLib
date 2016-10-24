#tag IOSView
Begin iosView MenuView
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Menu"
   Top             =   0
   Begin iOSTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, -0, 
      AutoLayout      =   Table1, 3, TopLayoutGuide, 3, False, +1.00, 1, 1, 0, 
      EditingEnabled  =   False
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   415.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      SectionCount    =   0
      Top             =   65
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events Table1
	#tag Event
		Sub Open()
		  me.AddSection("Custom Controls")
		  me.AddRow 0, me.CreateCell("AVAudioSession","The base class for recording and playing audio")
		  me.AddRow 0, me.CreateCell("iOSLibNotificationCenter","A wrapper class for NSUserNotifications")
		  me.AddRow 0, me.CreateCell("iOSLibSKView", "SceneKit for iOS")
		  me.AddRow 0, me.CreateCell("iOSLibTextField", "Extensions for Xojo’s textfield  and a custom Textfield control.")
		  me.AddRow 0, me.CreateCell("iOSLibImageView", "Extensions for Xojo’s ImageWell and a custom ImageView control.")
		  me.AddRow 0, me.CreateCell("iOSLibButton", "Extensions for Xojo’s iOSButton and a custom iOSLibButton control.")
		  me.AddRow 0, me.CreateCell("AppleCIFilter", "Allows CIFIlter usage directly or on a view property")
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  dim v as iOSView
		  select case me.RowData(section, row).Text
		  case "AVAudioSession"
		    v = new AVAudioView
		  case "iOSLibNotificationCenter"
		    v = new NotificationView
		  case "iOSLibSKView"
		    v = new SpriteKitview
		  case "iOSLibTextField"
		    v = new TextfieldView
		  case "iOSLibImageView"
		    v = new ImageViewView
		  case "iOSLibButton"
		    v = new ButtonView
		  case "AppleCIFilter"
		    v = new CiFilterMenu
		  end select
		  if v <> nil then self.PushTo v
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
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
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Group="Behavior"
		Type="iOSImage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
