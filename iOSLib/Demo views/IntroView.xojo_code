#tag IOSView
Begin iosView IntroView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "iOSLib"
   Top             =   0
   Begin iOSLIbCanvas Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   Canvas1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Canvas1, 7, <Parent>, 7, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Canvas1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Canvas1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 20, 
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
      Height          =   395.0
      Hidden          =   False
      Left            =   0
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   0
      Tag             =   0
      TintAdjustmentMode=   ""
      Top             =   85
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   320.0
      Begin iOSLIbView iOSLIbView2
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         Alpha           =   1.0
         AutoLayout      =   iOSLIbView2, 10, <Parent>, 10, False, +1.00, 2, 1, -20, 
         AutoLayout      =   iOSLIbView2, 2, <Parent>, 2, False, +1.00, 2, 1, 0, 
         AutoLayout      =   iOSLIbView2, 8, , 0, False, +1.00, 1, 1, 198, 
         AutoLayout      =   iOSLIbView2, 9, <Parent>, 9, False, +1.00, 2, 1, 0, 
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
         Height          =   198.0
         Hidden          =   False
         Left            =   0
         LockedInPosition=   False
         MultipleTouchEnabled=   False
         Opaque          =   False
         PanelIndex      =   0
         Parent          =   "Canvas1"
         PreservesSuperviewLayoutMargins=   False
         Scope           =   2
         Tag             =   0
         TintAdjustmentMode=   ""
         Top             =   121
         TranslatesAutoresizingMaskIntoConstraints=   False
         UserInteractionEnabled=   True
         Visible         =   True
         Width           =   320.0
      End
   End
   Begin iOSButton MenuButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   MenuButton, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   MenuButton, 9, <Parent>, 9, False, +1.00, 1, 1, 0, 
      AutoLayout      =   MenuButton, 3, <Parent>, 3, False, +1.00, 1, 1, -6, 
      AutoLayout      =   MenuButton, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Menu"
      Enabled         =   True
      Height          =   30.0
      Left            =   110
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   -6
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSButton MenuButton1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   MenuButton1, 2, <Parent>, 2, False, +1.00, 2, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   MenuButton1, 7, , 0, False, +1.00, 1, 1, 48, 
      AutoLayout      =   MenuButton1, 8, , 0, False, +1.00, 1, 1, 30, 
      AutoLayout      =   MenuButton1, 11, MenuButton, 11, False, +1.00, 1, 1, 0, 
      Caption         =   "Info"
      Enabled         =   True
      Height          =   30.0
      Left            =   252
      LockedInPosition=   False
      Scope           =   2
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   -6
      Visible         =   True
      Width           =   48.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub MakeRotation()
		  iOSLIbView2.AnimateTransform TransformExtension.MakeDegreesRotation(180), 2, AppleViewAnimationOption.OptionRepeatAndReverse
		End Sub
	#tag EndMethod


	#tag Constant, Name = InfoText, Type = Text, Dynamic = False, Default = \"Welcome to AppleLib/iOSLib \xE2\x80\x93 a free library extending Xojo\xE2\x80\x99s iOS features!\n@ 2016 Ulrich Bogun\x2C xojoblog.me\n\nTo use ioOSLib\x2C simply copy the iOSLib folder from this project into your iOSLib project. You can remove folders you don\xE2\x80\x99t need from the Removable Contents folder (but must be aware of inheritances and some connections between different frameworks)\x2C but not from the Essential core folder.\n\nOn this intro view\x2C you can see the two different core UI classes iOSLib features: The background is an iOSLibCanvas\x2C more or less the exact iOSLib native resemblance of a Xojo Canvas. It features direct access to the extended AppleCGGraphics routines which extend your drawing possibilities and add a lot of events\x2C especially for full responsive designs with GestureRecognizers\x2C plus many of the methods an UIView offers\x2C including animation and subview handling. The background is a Color \xE2\x80\x93 you can create a color from a picture\x2C in this case the iOSLib logo which then results in a tiled image. While the color is being painted during the paint event\x2C it\xE2\x80\x99s blazing fast compared to the speed of drawing the logo several times in code \xE2\x80\x93 let alone the rotation which is created via the Transform as CGAffineTransform property.\n\nThe iOSLib logo is drawn on an iOSLibView instance \xE2\x80\x93 which is basically a Canvas minus the Paint event. While this may sound like a limitation\x2C you can use the layer object fully. Such the logo itself is not drawn but put into the layer\xE2\x80\x99s contents property. The system does all the resizing and redrawing by itself. The rather lame animation is just a side effect of Apple\xE2\x80\x99s Simulator which does a lot of stuff that usually runs on the graphics card on the Mic\xE2\x80\x99s CPU. But please note the animation runs even when the program stops during a breakpoint (click on the background to do so).\n\nBoth classes own a Shown event\x2C which I would recommend for any initialization instead of the usual Open event which is still available. Internally\x2C Shown fires when the view gets placed on its window (yes\x2C there is a window class even in iOS)\x2C which means all the size parameters have been set.\n\nExtension modules translate many of the native features to Xojo datatypes and objects. This way\x2C you can animate each Xojo control by addressing the AppleObject As AppleView property which the iOSControl extension adds to controls transparently. Plase feel free to add your own convenience methods and controls (and maybe make them accessible for others too by requesting a merge with your branch in the repository) or tell me which classes\x2C features or convenience methods you miss. Thanks a lot!", Scope = Private
	#tag EndConstant


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
	#tag Event , Description = 4669726573207768656E20746865207573657220746F75636865732074686520636F6E74726F6C2077697468206F6E65206F72206D6F72652066696E676572732E
		Sub TouchesBegan(Touches() as appletouch, anEvent as AppleNSEvent)
		  break
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events iOSLIbView2
	#tag Event
		Sub Shown()
		  dim logo as new AppleImage(iosLibLogo)
		  // dim smallogo as AppleImage = logo.Resize (0.005, 0.005, CoreGraphicsFramework.CGInterpolationQuality.High)
		  // dim col as new applecolor (smallogo)
		  // me.AppleObject.Layer.AffineTransform = TransformExtension.CGAffineTransformMakeRotation (30)
		  // me.AppleObject.Layer.GeometryFlipped = true
		  dim sublayer as new AppleCALayer
		  sublayer.Frame = FoundationFrameWork.NSMakerect(0,0,self.Size.Width, self.Size.Height)
		  subLayer.AffineTransform = TransformExtension.CGAffineTransformMakeRotation (-6)
		  // sublayer.ContentGravity = AppleCALayer.CALayerContentPosition.Resize
		  dim FillColor as new AppleColor(&c7B609D88)
		  sublayer.BackgroundColor = FillColor
		  // me.AppleObject.layer.AddSublayer sublayer
		  me.AppleObject.Layer.BackgroundColor = AppleColor.ClearColor
		  me.AppleObject.Layer.Opaque = false
		  me.AppleObject.layer.Contents = logo.Resize(0.1, 0.1).CGImage
		  me.AppleObject.layer.ContentGravity = AppleCALayer.CALayerContentPosition.ResizeProportionally
		  me.AppleObject.Layer.ShadowColor = AppleColor.WhiteColor
		  me.AppleObject.layer.ShadowOpacity = 0.91
		  me.AppleObject.layer.ShadowRadius = 12
		  
		  dim block as new appleblock (AddressOf makerotation)
		  me.AppleObject.Transform = TransformExtension.MakeScale (10)
		  me.AnimateTransform (TransformExtension.MakeScale(1), 8, appleviewAnimationOption.OptionNone, UIKitFramework.UIVIewAnimationCurve.EaseOut, _
		  0, block)
		  
		  // dim anim as new AppleCABasicAnimation ("transform")
		  // anim.FromValue = new applecgcolor(&c7B609D00)
		  // anim.ToValue = new Applecgcolor(&c07710000)
		  // anim.Autoreverses = true
		  // anim.Duration = 4
		  // anim.RepeatCount = 99999999999.9
		  // me.AppleObject.Layer.Animation("Rotate") = anim
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MenuButton
	#tag Event
		Sub Action()
		  dim iv as new MenuView
		  self.PushTo iv
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MenuButton1
	#tag Event
		Sub Action()
		  dim iv as new InfoView(InfoText)
		  self.PushTo iv
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
