#tag IOSView
Begin iosView ImageViewView
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "ImageWell extension / iOSLibImageView"
   Top             =   0
   Begin iOSLIbImageView iOSLIbImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      Animating       =   False
      AnimationDuration=   0.0
      AnimationRepeatCount=   0
      AutoLayout      =   iOSLIbImageView1, 3, TopLayoutGuide, 3, False, +1.00, 2, 1, 40, 
      AutoLayout      =   iOSLIbImageView1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLIbImageView1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLIbImageView1, 8, <Parent>, 8, False, +0.50, 1, 0, 0, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      CanBecomeFocused=   False
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   1.0
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   240.0
      Hidden          =   False
      Highlighted     =   False
      HighlightedImage=   ""
      Image           =   ""
      Left            =   0
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   2
      Tag             =   0
      TintAdjustmentMode=   ""
      Top             =   105
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSTextArea TextArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextArea1, 1, iOSLIbImageView1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TextArea1, 2, iOSLIbImageView1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   TextArea1, 3, iOSLIbImageView1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TextArea1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      Editable        =   True
      Height          =   127.0
      KeyboardType    =   "0"
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "This is an iOSLibImageView custom control showing an animation sequence of images playing 100 times. You do not need to use a custom class, all the features (except for the events) are forwarded transparently to Xojo’s iOSImageWell.\n\nBesides playing animated sequences, an ImageView owns a highlightedImage and a highlightedAnimationImages property to change the contents automatically when the control is selected.\n\nImages created by bevoullin.com and put into public domain CC0 license under http://opengameart.org/content/bevouliin-free-game-character-grumpy-bird."
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   353
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events iOSLIbImageView1
	#tag Event , Description = 4669726573207768656E2074686520636F6E74726F6C20686173206D6F766520746F206974732077696E646F772E
		Sub Shown()
		  me.ContentMode = UIKitFramework.UIViewContentMode.ScaleAspectFit
		  me.AnimationImages = array (frame1, frame2, frame3, frame4, frame5, frame6, frame7, frame8)
		  me.AnimationRepeatCount = 100
		  me.AnimationDuration = 1
		  me.StartAnimating
		  
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
