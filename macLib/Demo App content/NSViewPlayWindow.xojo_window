#tag Window
Begin Window NSViewPlayWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   800
   ImplicitInstance=   False
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "NSView Demo"
   Visible         =   True
   Width           =   1000
   Begin OSXLibCanvas OSXLibCanvas1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AcceptTouchEvents=   False
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   0
      BackgroundColor =   &c000000FF
      BoundsRotation  =   0.0
      DoubleBuffer    =   True
      Enabled         =   True
      EraseBackground =   False
      FlippedCoordinates=   True
      FocusRingType   =   "Default"
      Height          =   423
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   526
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      TrackSwipes     =   False
      TranslatesAutoresizingMaskIntoConstraints=   False
      Transparent     =   True
      UseCustomColor  =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   474
   End
   Begin OSXLibView ac2
      AcceptFocus     =   True
      AcceptTabs      =   False
      AcceptTouchEvents=   True
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   250077183
      BackgroundColor =   &c000000FF
      BoundsRotation  =   0.0
      DoubleBuffer    =   True
      Enabled         =   True
      EraseBackground =   True
      FlippedCoordinates=   False
      FocusRingType   =   "2"
      Height          =   274
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   37
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   270
      TrackSwipes     =   False
      TranslatesAutoresizingMaskIntoConstraints=   False
      Transparent     =   True
      UseCustomColor  =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   310
   End
   Begin Label StaticLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   224
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   37
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      Text            =   "To the left is a layer-backed view. It features no paint event, but its CALayer’s content can be used for placing an image like here, while the rest of the content properties – I used backgroundcolor, BorderWidth And CornerSize – are accessible too. Additionally I put a BlurFilter into its contentFilters array and added a pink shadow.\n\nClick on the view or try some gestures. SmartMagnify – a double tap – works on 64Bit only. Or type on the keyboard and try a context click.\nThe animation is achieved by addressing the animator object of the view. I put it inside an AnimationContext so I can change the animation time to 1 second.\n\nResize the window and note that the Xojo control locks still do work!\nThe colored circle is another OSXLibCanvas, painting another gradient but clipped into a cgpath circle. Its distance to the animated view is held by using a LayoutAnchor (if you are on OSX 10.11 or higher)."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   556
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   692
   End
   Begin PushButton PushButton1
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Click for error"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   37
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   113
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   191
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      Text            =   ""
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   303
   End
   Begin CheckBox CheckBox2
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Hidden"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   37
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      State           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   71
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   174
   End
   Begin Label StaticLabel1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   82
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   37
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   14
      TabPanelIndex   =   0
      Text            =   "To the right is a OSXLibPaintCanvas. Its paint event gives access to the CGContext object directly, so you can paint without conversions to and from Xojo classes. It draws a radial gradient from randomized colors using a multiply blend mode."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   103
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   465
   End
   Begin OSXLibCanvas OSXLibCanvas2
      AcceptFocus     =   False
      AcceptTabs      =   False
      AcceptTouchEvents=   False
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   0
      BackgroundColor =   &c000000FF
      BoundsRotation  =   0.0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      FlippedCoordinates=   False
      FocusRingType   =   "Default"
      Height          =   100
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   414
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   444
      TrackSwipes     =   False
      TranslatesAutoresizingMaskIntoConstraints=   False
      Transparent     =   True
      UseCustomColor  =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   100
   End
   Begin OSXLibView OSXLibView1
      AcceptFocus     =   False
      AcceptTabs      =   True
      AcceptTouchEvents=   True
      AllowVibrancy   =   True
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   250077183
      BackgroundColor =   &c5777C200
      BoundsRotation  =   0.0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   False
      FlippedCoordinates=   False
      FocusRingType   =   "2"
      Height          =   100
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   371
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   158
      TrackSwipes     =   True
      TranslatesAutoresizingMaskIntoConstraints=   True
      Transparent     =   True
      UseCustomColor  =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   100
      Begin PushButton PushButton3
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Button"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "OSXLibView1"
         Italic          =   False
         Left            =   381
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   203
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
   End
   Begin Label StaticLabel2
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   93
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   37
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   19
      TabPanelIndex   =   0
      Text            =   "The small blue square is another OSXLibView, together with backgroundcolor and contents set via Inspector properties and with an automatically embedded Button from the layout."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   190
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   296
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub Animate()
		  Using xojo.Math
		  dim cont as new AppleAnimationContext(ac2.AppleObject)
		  cont.Duration = 1
		  ac2.appleobject.Animator.Frame = FoundationFrameWork.NSMakeRect(RandomInt(-0,self.Width-10), RandomInt(-0, self.Height-100), RandomInt (10, ac2.Width), randomint (10, ac2.Height))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DoHideLabel()
		  label1.AppleObject.Animator.Alpha = 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HideLabel()
		  xojo.core.timer.CallLater 500, Addressof DoHideLabel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowLabel()
		  xojo.core.timer.CancelCall(Addressof DoHideLabel)
		  label1.AppleObject.Animator.Alpha = 1
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events OSXLibCanvas1
	#tag Event
		Sub Paint(g as applecgcontext, Rect as FoundationFrameWork.NSRect)
		  dim colorarray() as Color
		  for q as integer = 0 to 9
		    colorarray.Append randomcolor (5, 200)
		  next
		  g.BlendMode = CoreGraphicsFramework.CGBlendMode.Multiply
		  g.DrawRadialGradient (new AppleCGGradient(colorarray), _
		  FoundationFrameWork.NSMakePoint(10,10), 5, FoundationFrameWork.NSMakePoint(rect.Size_.width, rect.size_.height),rect.size_.height/3, true, true)
		  
		End Sub
	#tag EndEvent
	#tag Event , Description = 5573652074686973206576656E7420746F2063726561746520637573746F6D204D656E757320666F7220646966666572656E74206B696E64206F66206576656E74732E
		Function ConstructContextMenu(AnEvent As AppleNSEvent) As AppleMenu
		  break
		End Function
	#tag EndEvent
	#tag Event , Description = 4669726573206265666F7265206120636F6E7465787475616C206D656E7520697320646973706C617965642E205573652074686973206576656E7420746F206D6F6466792069742E
		Sub OpenContextMenu(Menu As AppleMenu, AnEvent As AppleNSEvent)
		  break
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E206120737562766965772077617320616464656420746F2074686520766965772E
		Sub AddedSubview(Subview as AppleView)
		  break
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Sub WillRemoveSubview(SubView as AppleView)
		  break
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ac2
	#tag Event
		Sub MouseDown(anEvent As AppleNSEvent)
		  Label1.text ="Left Mouse Down"
		  ShowLabel
		  HideLabel
		  Animate
		  
		  #pragma Unused anEvent
		End Sub
	#tag EndEvent
	#tag Event
		Sub Shown()
		  me.AppleObject.WantsLayer = true
		  me.AppleObject.layer.BorderWidth = 5
		  me.AppleObject.Layer.CornerRadius = 10
		  me.AppleObject.Layer.BackgroundColor = AppleColor.FromColor (&cEFFFC900)
		  dim filter as new AppleCIBlurFilter()
		  filter.InputRadius = 4
		  me.AppleObject.AddContentFilter filter
		  dim shadow as new AppleShadow
		  shadow.ShadowColor = new AppleColor (&cF31CA100)
		  shadow.ShadowOffset = FoundationFrameWork.NSMakeSize (10, -14)
		  shadow.ShadowBlurRadius = 3
		  me.AppleObject.Shadow =shadow
		  me.AppleObject.TranslatesAutoresizingMaskIntoConstraints = true
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520757365722068617320626567756E206120737769706520676573747572652E
		Sub SwipeGesture(anEvent As AppleNSEvent)
		  Label1.text ="That was a swipe gesture of type "+Integer(anEvent.Type).ToText
		  ShowLabel
		  HideLabel
		  #pragma Unused anEvent
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520757365722068617320626567756E206120746F75636820676573747572652E
		Sub BeginGesture(anEvent As AppleNSEvent)
		  Label1.text ="You started a gesture of type "+Integer(anEvent.Type).ToText
		  ShowLabel
		  HideLabel
		  #pragma Unused anEvent
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E207468652074686520757365722068617320626567756E20612070696E636820676573747572652E
		Sub MagnifyGesture(anEvent As AppleNSEvent)
		  Label1.text ="Magnify Gesture"
		  ShowLabel
		  HideLabel
		  
		  #pragma Unused anEvent
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E207468652075736572206861732070726573736564206F722072656C65617365642061206D6F646966696572206B6579202853686966742C20436F6E74726F6C2C20616E6420736F206F6E292E
		Sub ModifierKeysChange(anEvent As AppleNSEvent)
		  Label1.text ="Modifiers Key Change"
		  ShowLabel
		  HideLabel
		  Animate
		  
		  #pragma Unused anEvent
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E207468652075736572206861732066696E6973686564206120746F75636820676573747572652E
		Sub EndGesture(anEvent As AppleNSEvent)
		  Label1.text ="Ended gesture of type "+Integer(anEvent.Type).ToText
		  ShowLabel
		  HideLabel
		  #pragma Unused anEvent
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F757365207769746820746865206C65667420627574746F6E20707265737365642E
		Sub MouseDrag(anEvent As AppleNSEvent)
		  Label1.text ="Mouse Drag"
		  ShowLabel
		  HideLabel
		  
		  #pragma Unused anEvent
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E20746865207573657220686173207072657373656420746865207269676874206D6F75736520627574746F6E2E
		Sub RightMouseDown(anEvent As AppleNSEvent)
		  dim mi as new MenuItem("Testmenu")
		  dim mii as new MenuItem ("A normal menuitem with an AppleImage")
		  mii.AppleObject.Image = AppleImage.fromPicture(OSXLibLogo)
		  mii.AppleObject.ToolTip = "There’s more features for menus too!"
		  mi.Append mii
		  
		  dim miii as new MenuItem ("It was attached using the AppleObject property via module.")
		  miii.AppleObject.IndentationLevel = 5
		  mi.append miii
		  miii = new MenuItem ("You can also address several subimages for different states.")
		  mi.append miii
		  miii = new MenuItem ("Please note the tooltip on the cell with the big image!")
		  miii.AppleObject.IndentationLevel = 10
		  mi.append miii
		  call mi.PopUp
		  #pragma unused anevent
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2061206E657720736574206F6620746F756368657320686173206265656E207265636F676E697A65642E0A546F206765742074686520736574206F6620746F7563686573207468617420626567616E20666F722074686973207669657720286F722064657363656E64616E7473206F6620746869732076696577292073656E64205B6576656E7420746F75636865734D61746368696E6750686173653A4E53546F7563685068617365426567616E20696E566965773A73656C665D2E
		Sub TouchesBegan(anEvent As AppleNSEvent)
		  Label1.text ="Touches began!"
		  ShowLabel
		  HideLabel
		  #pragma Unused anEvent
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520757365722068617320626567756E206120726F746174696F6E20676573747572652E
		Sub RotationGesture(anEvent As AppleNSEvent)
		  Label1.text ="Rotation gesture!"
		  ShowLabel
		  HideLabel
		  
		  #pragma Unused anEvent
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520757365722068617320707265737365642061206B65792E
		Sub KeyDown(anEvent As AppleNSEvent)
		  Label1.text ="Key Down for "+anEvent.Characters
		  ShowLabel
		  HideLabel
		  Animate
		  #pragma Unused anEvent
		End Sub
	#tag EndEvent
	#tag Event , Description = 52657475726E207472756520746F20747261636B2067657374757265207363726F6C6C206576656E7473207375636820617320612073776970652E
		Function TrackSwipes(Axis As AppleNSEvent.NSEventGestureAxis) As Boolean
		  return true
		  #pragma Unused axis
		End Function
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E20746865207573657220706572666F726D6564206120736D617274207A6F6F6D20676573747572652028646F75626C652D746170292E203634626974206F6E6C7921
		Sub SmartMagnifyGesture(anEvent As AppleNSEvent)
		  Label1.text ="SmartMagnify"
		  ShowLabel
		  HideLabel
		  
		  #pragma Unused anEvent
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520766965772069732068696464656E2C20656974686572206469726563746C792C206F7220696E20726573706F6E736520746F20616E20616E636573746F72206265696E672068696464656E2E
		Sub Hidden()
		  Label1.text ="Hidden"
		  ShowLabel
		  HideLabel
		  
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E20746865207669657720697320756E68696464656E2C20656974686572206469726563746C792C206F7220696E20726573706F6E736520746F20616E20616E636573746F72206265696E6720756E68696464656E2E
		Sub Unhidden()
		  Label1.text ="Unhidden"
		  ShowLabel
		  HideLabel
		  
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2061207072657373757265206368616E6765206F63637572732061732074686520726573756C74206F662061207573657220696E707574206576656E74206F6E20612073797374656D207468617420737570706F7274732070726573737572652073656E73697469766974792E
		Sub PressureChange(anEvent As AppleNSEvent)
		  Label1.text ="Pressure change"
		  ShowLabel
		  HideLabel
		  #pragma Unused anEvent
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E20746865207573657220686173206D6F76656420746865206D6F757365E2809973207363726F6C6C20776865656C2E
		Sub MouseWheel(anEvent As AppleNSEvent)
		  Label1.text ="Mouse wheel"
		  ShowLabel
		  HideLabel
		  #pragma Unused anEvent
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E206F6E65206F72206D6F726520746F75636865732068617665206D6F7665642E
		Sub TouchesMoved(anEvent As AppleNSEvent)
		  Label1.text ="Touches moved"
		  ShowLabel
		  HideLabel
		  
		  #pragma Unused anEvent
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  call me.AppleObject.presentError(new appleerror( "Each responder subclass can display a custom error and modify it in the willShowError event", -999999))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox2
	#tag Event
		Sub Action()
		  ac2.AppleObject.Hidden = me.value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OSXLibCanvas2
	#tag Event
		Sub Paint(g as applecgcontext, Rect as FoundationFrameWork.NSRect)
		  g.AddEllipse (rect)
		  g.clip
		  dim colorarray() as Color
		  for q as integer = 0 to 3
		    colorarray.Append randomcolor (50, 250)
		  next
		  g.BlendMode = CoreGraphicsFramework.CGBlendMode.Multiply
		  g.DrawLinearGradient (new AppleCGGradient(colorarray), _
		  FoundationFrameWork.NSMakePoint(0,0), FoundationFrameWork.NSMakePoint(rect.Size_.width, rect.size_.height),true, true)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Shown()
		  me.AppleObject.AutoResizingMask = AppleAutoresizingMask.NoLock
		  me.AppleObject.TranslatesAutoresizingMaskIntoConstraints = false
		  if me.CenterXAnchor <> nil then // system ≥ OSX 10.11?
		    me.AppleObject.LeftAnchor.ConstraintLessThanOrEqualToAnchor(ac2.AppleObject.RightAnchor, 100).Active = true
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OSXLibView1
	#tag Event , Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Sub WillRemoveSubview(SubView as AppleView)
		  break
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton3
	#tag Event
		Sub Action()
		  MsgBox "Yes, the button is available while it’s embedded into an OSXLibView."
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
