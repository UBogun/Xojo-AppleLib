#tag IOSView
Begin iosView TextfieldView
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "TextFieldExtension / iOSLibTextfield"
   Top             =   0
   Begin iOSLibTextfield iOSLibTextfield1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustFontSize  =   True
      aFontType       =   "0"
      AllowTextAttributesEdit=   False
      Alpha           =   1.0
      AutocapitalizationType=   ""
      AutocorrectionType=   "2"
      AutoLayout      =   iOSLibTextfield1, 3, <Parent>, 3, False, +1.00, 1, 1, 83, 
      AutoLayout      =   iOSLibTextfield1, 8, , 0, False, +1.00, 1, 1, 35, 
      AutoLayout      =   iOSLibTextfield1, 1, <Parent>, 1, False, +1.00, 2, 1, 20, 
      AutoLayout      =   iOSLibTextfield1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      BackgroundImage =   ""
      BorderStyle     =   "3"
      CanBecomeFocused=   True
      Caption         =   "This textfield has a light keyboard"
      ClearButtonMode =   ""
      ClearsContextBeforeDrawing=   False
      ClearsOnEditBegin=   False
      ClearsOnInsertion=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   1.0
      DisabledBackgroundImage=   ""
      Editing         =   False
      EnablesReturnKeyAutomatically=   True
      ExclusiveTouch  =   False
      Focused         =   False
      FontName        =   ""
      FontSize        =   13.0
      HasAmbiguousLayout=   False
      Height          =   35.0
      Hidden          =   False
      KeyboardAppearance=   "2"
      KeyboardType    =   ""
      Left            =   20
      LeftViewMode    =   ""
      LockedInPosition=   False
      MinimumFontSize =   0.0
      MultipleTouchEnabled=   True
      Opaque          =   False
      Password        =   False
      Placeholder     =   "Placeholder"
      PreservesSuperviewLayoutMargins=   False
      ReturnKeyType   =   "11"
      RightViewMode   =   ""
      Scope           =   0
      SpellCheckingType=   ""
      Tag             =   0
      TextAlignment   =   ""
      TextColor       =   &c00000000
      TintAdjustmentMode=   ""
      Top             =   83
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLibTextfield iOSLibTextfield2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustFontSize  =   True
      aFontType       =   "0"
      AllowTextAttributesEdit=   True
      Alpha           =   1.0
      AutocapitalizationType=   "3"
      AutocorrectionType=   ""
      AutoLayout      =   iOSLibTextfield2, 3, <Parent>, 3, False, +1.00, 1, 1, 153, 
      AutoLayout      =   iOSLibTextfield2, 8, , 0, False, +1.00, 1, 1, 35, 
      AutoLayout      =   iOSLibTextfield2, 1, iOSLibTextfield1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibTextfield2, 2, iOSLibTextfield1, 2, False, +1.00, 2, 1, 0, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      BackgroundImage =   ""
      BorderStyle     =   "1"
      CanBecomeFocused=   True
      Caption         =   "Autocapitalizes and clears on enter. Green view disappears on edit."
      ClearButtonMode =   ""
      ClearsContextBeforeDrawing=   False
      ClearsOnEditBegin=   True
      ClearsOnInsertion=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   1.0
      DisabledBackgroundImage=   ""
      Editing         =   False
      EnablesReturnKeyAutomatically=   True
      ExclusiveTouch  =   False
      Focused         =   False
      FontName        =   "Baskerville"
      FontSize        =   13.0
      HasAmbiguousLayout=   False
      Height          =   35.0
      Hidden          =   False
      KeyboardAppearance=   "1"
      KeyboardType    =   ""
      Left            =   20
      LeftViewMode    =   ""
      LockedInPosition=   False
      MinimumFontSize =   3.0
      MultipleTouchEnabled=   True
      Opaque          =   False
      Password        =   False
      Placeholder     =   "RightImage disappears once you enter text."
      PreservesSuperviewLayoutMargins=   False
      ReturnKeyType   =   "1"
      RightViewMode   =   "2"
      Scope           =   0
      SpellCheckingType=   ""
      Tag             =   0
      TextAlignment   =   ""
      TextColor       =   &c00000000
      TintAdjustmentMode=   ""
      Top             =   153
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSTextArea TextArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextArea1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   TextArea1, 1, iOSLibTextfield2, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TextArea1, 2, iOSLibTextfield2, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TextArea1, 3, iOSLibTextfield2, 4, False, +1.00, 1, 1, 40, 
      Editable        =   True
      Height          =   244.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "AppleTextField/iOSLibTextField is quite unspectacular. You can, however, use much more properties like additional views to the left and right. For most of the features, you can simply use a Xojo TextField and the iOSTextField extension. (Almost) full control over text editing events are included in the customcontrol iOSLibTextField which is shown here."
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   228
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events iOSLibTextfield1
	#tag Event
		Function ShouldNotEdit() As Boolean
		  dim msg as new iOSMessageBox
		  msg.Title = "Textfield1 received Should not edit event"
		  msg.Message = "In here, you could disallow text edit mode by returning true."
		  msg.Buttons = array("Ok")
		  msg.Show
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ShouldNotChangeCharacters(Start as UInteger, Length as UInteger, Replacement as Text) As Boolean
		  dim msg as new iOSMessageBox
		  msg.Title = "Textfield1 received Should not Change Characters event"
		  msg.Message = "In here, you could disallow the text replacement of "+length.totext+" characters at position "+start.totext+" with "+Replacement
		  msg.Buttons = array("Ok")
		  msg.Show
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ShouldNotClear() As Boolean
		  dim msg as new iOSMessageBox
		  msg.Title = "Textfield1 received Should not Clear event"
		  msg.Message = "In here, you could disallow clearing the text content by returning true."
		  msg.Buttons = array("Ok")
		  msg.Show
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ShouldNotEndEdit() As Boolean
		  dim msg as new iOSMessageBox
		  msg.Title = "Textfield1 received Should not End Edit event"
		  msg.Message = "In here, you could disallow losing the focus by returning true."
		  msg.Buttons = array("Ok")
		  msg.Show
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ShouldNotReturn() As Boolean
		  dim msg as new iOSMessageBox
		  msg.Title = "Textfield1 received Should not Return event"
		  msg.Message = "In here, you can disable responding to a Return."
		  msg.Buttons = array("Ok")
		  msg.Show
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events iOSLibTextfield2
	#tag Event
		Function ShouldNotEdit() As Boolean
		  dim msg as new iOSMessageBox
		  msg.Title = "Textfield2 received Should not edit event"
		  msg.Message = "In here, you could disallow text edit mode by returning true."
		  msg.Buttons = array("Ok")
		  msg.Show
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Shown()
		  dim logo as new AppleImage(iosLibLogo)
		  me.AppleObject.RightView= new AppleImageView(logo.Resize(0.018))
		  me.AppleObject.RightView.BackgroundColor = new applecolor(&cD8FFE500)
		  me.AppleObject.AdjustsFontSizeToFitWidth = true
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ShouldNotChangeCharacters(Start as UInteger, Length as UInteger, Replacement as Text) As Boolean
		  dim msg as new iOSMessageBox
		  msg.Title = "Textfield2 received Should not Change Characters event"
		  msg.Message = "In here, you could disallow the text replacement of "+length.totext+" characters at position "+start.totext+" with "+Replacement
		  msg.Buttons = array("Ok")
		  msg.Show
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ShouldNotClear() As Boolean
		  dim msg as new iOSMessageBox
		  msg.Title = "Textfield2 received Should not Clear event"
		  msg.Message = "In here, you could disallow clearing the text content by returning true."
		  msg.Buttons = array("Ok")
		  msg.Show
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ShouldNotEndEdit() As Boolean
		  dim msg as new iOSMessageBox
		  msg.Title = "Textfield2 received Should not End Edit event"
		  msg.Message = "In here, you could disallow losing the focus by returning true."
		  msg.Buttons = array("Ok")
		  msg.Show
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ShouldNotReturn() As Boolean
		  dim msg as new iOSMessageBox
		  msg.Title = "Textfield2 received Should not Return event"
		  msg.Message = "In here, you can disable responding to a Return."
		  msg.Buttons = array("Ok")
		  msg.Show
		  
		End Function
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
