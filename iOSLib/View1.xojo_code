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
   Begin iOSCanvas Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Canvas1, 3, <Parent>, 3, False, +1.00, 1, 1, 38, 
      AutoLayout      =   Canvas1, 1, <Parent>, 1, False, +1.00, 1, 1, 65, 
      AutoLayout      =   Canvas1, 7, , 0, False, +1.00, 1, 1, 200, 
      AutoLayout      =   Canvas1, 8, , 0, False, +1.00, 1, 1, 200, 
      Height          =   200.0
      Left            =   65
      LockedInPosition=   False
      Scope           =   0
      Top             =   38
      Visible         =   True
      Width           =   200.0
   End
   Begin iOSLIbCanvas iOSLIbCanvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      AutoLayout      =   iOSLIbCanvas1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLIbCanvas1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLIbCanvas1, 3, Canvas1, 4, False, +1.00, 2, 1, 20, 
      AutoLayout      =   iOSLIbCanvas1, 7, <Parent>, 7, False, +1.00, 1, 1, 0, 
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
      Height          =   222.0
      Hidden          =   False
      Left            =   0
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      Opaque          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   0
      Tag             =   0
      TintAdjustmentMode=   ""
      Top             =   258
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events iOSLIbCanvas1
	#tag Event
		Sub Draw(Rect  as xojo.core.rect)
		  dim g as AppleCGContext = AppleCGContext.CurrentContext
		  g.ConcatenateTransform TransformExtension.CGAffineTransformMake (1,0,0,-1,0,rect.Height)
		  dim pic as iOSImage = iosLibLogo
		  g.DrawImage (rect.tonsrect, pic.toAppleImage.CGImage)
		  
		  G.StrokeEllipse RECT.TONSRECT
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub TouchesBegan(Touches() as appletouch, anEvent as AppleNSEvent)
		  break
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E206120706879736963616C20627574746F6E206973207072657373656420696E20746865206173736F63696174656420766965772E
		Sub PressesBegan(Presses() as Applepress, anEvent as ApplePressesEvent)
		  break
		End Sub
	#tag EndEvent
	#tag Event
		Sub Resized()
		  me.Invalidate
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
