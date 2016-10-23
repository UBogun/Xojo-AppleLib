#tag IOSView
Begin iosView CIFIlterView
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   "CFIlter"
   Title           =   ""
   Top             =   0
   Begin iOSLIbImageView iOSLIbImageView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      Animating       =   False
      AnimationDuration=   0.0
      AnimationRepeatCount=   0
      AutoLayout      =   iOSLIbImageView1, 8, <Parent>, 8, False, +0.50, 1, 1, 0, 
      AutoLayout      =   iOSLIbImageView1, 1, <Parent>, 1, False, +1.00, 1, 1, *kStdGapCtlToViewH, 
      AutoLayout      =   iOSLIbImageView1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   iOSLIbImageView1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      CanBecomeFocused=   False
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   "ScaleAspectFill"
      ContentScaleFactor=   0.0
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   240.0
      Hidden          =   False
      Highlighted     =   False
      HighlightedImage=   ""
      Image           =   ""
      Left            =   20
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   0
      Tag             =   0
      TintAdjustmentMode=   ""
      Top             =   73
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSLabel iOSLibTextfield1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   iOSLibTextfield1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, -*kStdControlGapV, 
      AutoLayout      =   iOSLibTextfield1, 1, iOSLIbImageView1, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibTextfield1, 2, iOSLIbImageView1, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibTextfield1, 3, iOSLIbImageView1, 4, False, +1.00, 1, 1, 30, 
      Enabled         =   False
      Height          =   129.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   343
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events iOSLIbImageView1
	#tag Event , Description = 4669726573207768656E2074686520636F6E74726F6C20686173206D6F766520746F206974732077696E646F772E
		Sub Shown()
		  me.ContentMode =UIKitFramework.UIViewContentMode.ScaleAspectFit
		  dim t as text = "Completed CIFIlter classes from macLib are available in iOSLib too. Stay tuned for module extensions like on the Mac part."
		  dim f as new AppleCIQRCodeGenerator(t)
		  dim img as AppleImage = f.OutputImage
		  img = img.Resize (me.AppleObject.Frame.Size_, true, coreGraphicsFramework.CGInterpolationQuality.None)
		  me.AppleObject.Image = img
		  iOSLibTextfield1.Text = t
		  
		  
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
