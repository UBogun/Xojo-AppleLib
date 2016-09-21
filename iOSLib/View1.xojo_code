#tag IOSView
Begin iosView View1
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   False
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSLibCanvas Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   Canvas1, 7, <Parent>, 7, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Canvas1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Canvas1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Canvas1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
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
      Height          =   440.0
      Hidden          =   False
      Left            =   0
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   0
      Tag             =   0
      TintAdjustmentMode=   ""
      Top             =   40
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Paint(G as AppleCGContext, Rect  as xojo.core.rect)
		  dim logo as new AppleImage(iosLibLogo)
		  g.ConcatenateTransform (TransformExtension.CGAffineTransformMake (1,0,0,-1,0,rect.Height)) // flip the graphics to Xojo defaults vertically
		  dim FillColor as new AppleColor(&c7B609D00)
		  g.FillColor = FillColor.CGColor
		  g.FillRect rect.tonsrect
		  g.Rotate 0.3
		  logo = logo.Resize (0.005, 0.005, CoreGraphicsFramework.CGInterpolationQuality.High)
		  g.DrawTiledImage FoundationFrameWork.NSMakeRect (0,0,logo.Width, logo.Height), logo.CGImage
		End Sub
	#tag EndEvent
	#tag Event
		Sub Resized()
		  me.Invalidate 
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2061206D6F74696F6E2068617320626567756E2E
		Sub MotionBegan(type as AppleNSEvent.UIEventSubtype, anEvent as AppleNSEvent)
		  break
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E20746865207573657220746F75636865732074686520636F6E74726F6C2077697468206F6E65206F72206D6F72652066696E676572732E
		Sub TouchesBegan(Touches() as appletouch, anEvent as AppleNSEvent)
		  break
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
