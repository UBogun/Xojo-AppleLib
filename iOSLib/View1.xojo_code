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
   Begin iOSLIbCanvas Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   Canvas1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 20, 
      AutoLayout      =   Canvas1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Canvas1, 7, <Parent>, 7, False, +1.00, 2, 1, 0, 
      AutoLayout      =   Canvas1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
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
      Begin iOSLIbView iOSLIbView2
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         Alpha           =   1.0
         AutoLayout      =   iOSLIbView2, 7, , 0, False, +1.00, 1, 1, 320, 
         AutoLayout      =   iOSLIbView2, 10, <Parent>, 10, False, +1.00, 2, 1, -20, 
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
   Begin AppleAVAudioSession AppleAVAudioSession1
      Category        =   ""
      DebugDescription=   ""
      HasOwnership    =   False
      InputAvailable  =   False
      InputGain       =   0.0
      InputGainSettable=   False
      InputLatency    =   0.0
      InputNumberOfChannels=   0
      IOBufferDuration=   0.0
      Left            =   0
      LockedInPosition=   False
      MaximumInputNumberOfChannels=   0
      MaximumOutputNumberOfChannels=   0
      mHasOwnership   =   False
      Mode            =   ""
      OtherAudioIsPlaying=   False
      OutputLatency   =   0.0
      OutputNumberOfChannels=   0
      OutputVolume    =   0.0
      PanelIndex      =   -1
      Parent          =   ""
      PreferredInputNumberOfChannels=   0
      PreferredIOBufferDuration=   0.0
      PreferredOutputNumberOfChannels=   0
      PreferredSampleRate=   0.0
      RetainCount     =   ""
      SampleRate      =   0.0
      Scope           =   0
      SecondaryAudioShouldBeSilenced=   False
      Top             =   0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub MakeRotation()
		  iOSLIbView2.AnimateTransform TransformExtension.MakeDegreesRotation(180), 2, AppleViewAnimationOption.OptionRepeatAndReverse
		End Sub
	#tag EndMethod


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
#tag Events AppleAVAudioSession1
	#tag Event
		Sub ServicesLost()
		  break
		End Sub
	#tag EndEvent
	#tag Event
		Sub ServicesReset()
		  break
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.RequestRecordPermission
		End Sub
	#tag EndEvent
	#tag Event
		Sub RecordPermissionReceived(Granted as Boolean)
		  dim m as new iOSMessageBox
		  m.Message = "An AVAudioSession instance was initialized, recording permission was "+if (not granted, "not ", "")+"granted"
		  m.show
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
