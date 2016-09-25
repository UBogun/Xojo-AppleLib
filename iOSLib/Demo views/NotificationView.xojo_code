#tag IOSView
Begin iosView NotificationView
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "iOSLibNotificationCenter"
   Top             =   0
   Begin iOSTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Table1, 4, TextField1, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, -0, 
      AutoLayout      =   Table1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 20, 
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   348.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   85
      Visible         =   True
      Width           =   320.0
   End
   Begin ioslibnotificationcenter AppleNotificationCenter1
      DebugDescription=   ""
      HasOwnership    =   False
      LockedInPosition=   False
      mHasOwnership   =   False
      RetainCount     =   ""
      Scope           =   0
   End
   Begin iOSTextField TextField1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField1, 1, <Parent>, 1, False, +1.00, 1, 1, 11, 
      AutoLayout      =   TextField1, 2, <Parent>, 2, False, +1.00, 1, 1, -73, 
      AutoLayout      =   TextField1, 8, , 0, True, +1.00, 1, 1, 31, 
      AutoLayout      =   TextField1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   11
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Type here (and leave the field)"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   441
      Visible         =   True
      Width           =   236.0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 1, TextField1, 2, False, +1.00, 1, 1, *kStdControlGapH, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 56, 
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   Button1, 11, TextField1, 11, False, +1.00, 1, 1, , 
      Caption         =   "Info"
      Enabled         =   True
      Height          =   30.0
      Left            =   255
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   441
      Visible         =   True
      Width           =   56.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events Table1
	#tag Event
		Sub Open()
		  me.AddSection "Type into the textfield. "
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AppleNotificationCenter1
	#tag Event
		Sub Open()
		  
		  
		  me.RegisterNotification "UIKeyboardWillShowNotification"
		  me.RegisterNotification "UIKeyboardDidShowNotification"
		  me.RegisterNotification "UIKeyboardWillHideNotification"
		  me.RegisterNotification "UIKeyboardDidHideNotification"
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Notification(Notification as AppleNotification)
		  table1.AddRow 0, table1.CreateCell ("Notification received: ", Notification.Name)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Action()
		  dim i as new InfoView("iOSLibNotificationCenter makes handling Notifications a bit easier: "+eol + _
		  "Just register the text constants you want to monitor, and it will fire its Notification event every time such a Notification is received."+eol + _
		  "This demo monitors the Keyboard Show + Hide notifications"+eol + _
		  eol +"While alle NotificationCenters share the same instance, you can install as many iOSLibNotificationCenters as you like.")
		  self.pushto i
		  
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
