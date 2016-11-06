#tag IOSView
Begin iosView ButtonView
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "iOSButton extension / iOSLibButton"
   Top             =   0
   Begin iOSLibButton iOSLibButton1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   iOSLibButton1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibButton1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibButton1, 3, <Parent>, 3, False, +1.00, 1, 1, 102, 
      AutoLayout      =   iOSLibButton1, 8, , 0, False, +1.00, 1, 1, 51, 
      AutoresizesSubviews=   False
      BackgroundColor =   &cFFFFFF00
      CanBecomeFocused=   True
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   0.0
      DisabledTitle   =   ""
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   51.0
      Hidden          =   False
      HighlightedTitle=   ""
      Left            =   0
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      NormalTitle     =   "Test"
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   2
      SelectedTitle   =   ""
      Tag             =   0
      TintAdjustmentMode=   "Automatic"
      Top             =   102
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSTextArea TextArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextArea1, 1, iOSLibButton1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TextArea1, 2, iOSLibButton1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TextArea1, 4, <Parent>, 4, False, +1.00, 1, 1, -*kStdGapCtlToViewV, 
      AutoLayout      =   TextArea1, 8, , 0, False, +1.00, 1, 1, 200, 
      Editable        =   True
      Height          =   200.0
      KeyboardType    =   "0"
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "iOSLibButton gives you access to button subclasses and a variety of conditional text and graphics effects, depending on the button’s state. \nAgain, the extension module will be enough in most cases, except for when you want info-buttons and the like.\n\nUnder iOS 9 and 10, InfoLightButton and InfoDarkButton seem to be exactly the same, and instead of the disclosure sign the Info symbol appears again. Don’t know why … If you should have an idea, please tell me!"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   260
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSLibInfoButton iOSLibInfoButton1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   iOSLibInfoButton1, 8, , 0, False, +1.00, 2, 1, 22, 
      AutoLayout      =   iOSLibInfoButton1, 3, <Parent>, 3, False, +1.00, 1, 1, 168, 
      AutoLayout      =   iOSLibInfoButton1, 7, , 0, False, +1.00, 1, 1, 22, 
      AutoLayout      =   iOSLibInfoButton1, 1, <Parent>, 1, False, +1.00, 1, 1, 52, 
      AutoresizesSubviews=   False
      BackgroundColor =   &cFFFFFF00
      CanBecomeFocused=   True
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   0.0
      DisabledTitle   =   ""
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   22.0
      Hidden          =   False
      HighlightedTitle=   ""
      Left            =   52
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      NormalTitle     =   ""
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   2
      SelectedTitle   =   ""
      Tag             =   0
      TintAdjustmentMode=   "Automatic"
      Top             =   168
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   22.0
   End
   Begin iOSLibAddButton iOSLibAddButton1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   iOSLibAddButton1, 7, , 0, False, +1.00, 1, 1, 22, 
      AutoLayout      =   iOSLibAddButton1, 3, <Parent>, 3, False, +1.00, 1, 1, 168, 
      AutoLayout      =   iOSLibAddButton1, 1, <Parent>, 1, False, +1.00, 1, 1, 117, 
      AutoLayout      =   iOSLibAddButton1, 8, , 0, False, +1.00, 2, 1, 22, 
      AutoresizesSubviews=   False
      BackgroundColor =   &cFFFFFF00
      CanBecomeFocused=   True
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   0.0
      DisabledTitle   =   ""
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   22.0
      Hidden          =   False
      HighlightedTitle=   ""
      Left            =   117
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      NormalTitle     =   ""
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   2
      SelectedTitle   =   ""
      Tag             =   0
      TintAdjustmentMode=   "Automatic"
      Top             =   168
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   22.0
   End
   Begin iOSLibDiscosureButton iOSLibDiscosureButton1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   iOSLibDiscosureButton1, 1, <Parent>, 1, False, +1.00, 1, 1, 174, 
      AutoLayout      =   iOSLibDiscosureButton1, 7, , 0, False, +1.00, 1, 1, 22, 
      AutoLayout      =   iOSLibDiscosureButton1, 3, iOSLibAddButton1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibDiscosureButton1, 4, iOSLibAddButton1, 4, False, +1.00, 1, 1, 0, 
      AutoresizesSubviews=   False
      BackgroundColor =   &cFFFFFF00
      CanBecomeFocused=   True
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   0.0
      DisabledTitle   =   ""
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   22.0
      Hidden          =   False
      HighlightedTitle=   ""
      Left            =   174
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      NormalTitle     =   ""
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   2
      SelectedTitle   =   ""
      Tag             =   0
      TintAdjustmentMode=   "Automatic"
      Top             =   168
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   22.0
   End
   Begin iOSLibCustomButton iOSLibCustomButton1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   iOSLibCustomButton1, 1, <Parent>, 1, False, +1.00, 1, 1, 234, 
      AutoLayout      =   iOSLibCustomButton1, 7, , 0, False, +1.00, 1, 1, 22, 
      AutoLayout      =   iOSLibCustomButton1, 3, iOSLibDiscosureButton1, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibCustomButton1, 4, iOSLibDiscosureButton1, 4, False, +1.00, 1, 1, 0, 
      AutoresizesSubviews=   False
      BackgroundColor =   &cFFFFFF00
      CanBecomeFocused=   True
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   0.0
      DisabledTitle   =   ""
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   22.0
      Hidden          =   False
      HighlightedTitle=   ""
      Left            =   234
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      NormalTitle     =   ""
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   0
      SelectedTitle   =   ""
      Tag             =   0
      TintAdjustmentMode=   "Automatic"
      Top             =   168
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   22.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events iOSLibButton1
	#tag Event , Description = 4669726573207768656E2074686520636F6E74726F6C20686173206D6F766520746F206974732077696E646F772E
		Sub Shown()
		  me.BackgroundColor = &cF8CC5000
		  me.AppleObject.Layer.BorderWidth = 1
		  me.AppleObject.Layer.CornerRadius = 8
		  me.AppleObject.TitleShadowColor(AppleControlState.Normal) = new applecolor(&c3DB47600)
		  me.AppleObject.TitleShadowOffset = FoundationFrameWork.NSMakeSize(2, 2)
		  me.AppleObject.ReversesTitleShadowWhenHighlighted = true
		  me.AppleObject.BackgroundImage(AppleControlState.Highlighted) = new AppleImage(iosLibLogo)
		  dim title as  AppleAttributedString = AppleAttributedString.StringFromTextAndFont("You tapped on me!", "GillSans-Bold", 24)
		  // Something’s not working here: The text is applied, but not the font.
		  me.AppleObject.AttributedTitle(AppleControlState.Highlighted) = title
		  me.AppleObject.TitleColor(AppleControlState.Highlighted) = new applecolor (&cFF0A0E00)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  System.DebugLog "Touched!"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events iOSLibCustomButton1
	#tag Event , Description = 4669726573207768656E2074686520636F6E74726F6C20686173206D6F766520746F206974732077696E646F772E
		Sub Shown()
		  me.AppleObject.Frame = FoundationFrameWork.NSMakeRect (0,0,22, 22)
		  me.AppleObject.Image(AppleControlState.Normal) = new AppleImage(iosLibLogo)
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
