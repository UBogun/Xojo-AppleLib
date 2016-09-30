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
   Begin OSXLibView ac2
      AcceptFocus     =   True
      AcceptTabs      =   False
      AcceptTouchEvents=   True
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   250077183
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   368
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   37
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   320
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   943
   End
   Begin Label StaticLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   100
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
      TabStop         =   True
      Text            =   "This is a layer-backed view. It features no paint event, but its CALayer’s content can be used for placing an image like here, while the rest of the content properties – I used backgroundcolor, BorderWidth And CornerSize – are accessible too. Click on the view or try some gestures. SmartMagnify – a double tap – works on 64Bit only. Or type on the keyboard.\nThe animation is achieved by addressing the animator object of the view. I put it inside an AnimationContext so I can change the animation time to 1 second."
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   700
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   943
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
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
      Width           =   789
   End
   Begin OSXLibView ac3
      AcceptFocus     =   False
      AcceptTabs      =   False
      AcceptTouchEvents=   False
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   156
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   307
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   45
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   199
   End
   Begin Slider Slider1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   620
      LineStep        =   1
      LiveScroll      =   False
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Maximum         =   720
      Minimum         =   0
      PageStep        =   20
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   73
      Value           =   360
      Visible         =   True
      Width           =   174
   End
   Begin Label Label2
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
      Left            =   620
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "FrameCenterRotation"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   45
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   174
   End
   Begin Label FCRotationValueLabel
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
      Left            =   620
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   90
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   174
   End
   Begin Label FRotationValueLabel
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
      Left            =   114
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   90
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   174
   End
   Begin Label Label3
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
      Left            =   114
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "BoundsRotation"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   45
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   174
   End
   Begin Slider Slider2
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   114
      LineStep        =   1
      LiveScroll      =   False
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Maximum         =   720
      Minimum         =   0
      PageStep        =   20
      Scope           =   2
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   73
      Value           =   360
      Visible         =   True
      Width           =   174
   End
   Begin CheckBox CheckBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "MasksToBounds"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   114
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      State           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   122
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   174
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
      Left            =   114
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
      Top             =   154
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
      Height          =   100
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   37
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "To the right is a OSXLibPaintCanvas. Currently the paint event delivers no graphics object. This will follow soon.\nThe Paint event fires anyway, as do the Resize and Resized events (not so on the OSXLibCanvas superclass). You can still access a layer but not the layer’s content. Rightklick on it for a simple Menuitem extension!"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   213
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   617
   End
   Begin OSXLibCanvas OSXLibPaintCanvas1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AcceptTouchEvents=   True
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   250077183
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   162
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   682
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   154
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   202
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub addconstraints()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Animate()
		  Using xojo.Math
		  dim cont as new AppleAnimationContext(ac2.AppleObject)
		  cont.Duration = 1
		  ac2.appleobject.Animator.Frame = FoundationFrameWork.NSMakeRect(RandomInt(-0,ac2.Width-10), RandomInt(-0, ac2.Height-100), RandomInt (10, ac2.Width), randomint (10, ac2.Height))
		  
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
		  me.AppleObject.Layer.Contents = new AppleImage(OSXLibLogo)
		  me.AppleObject.TranslatesAutoresizingMaskIntoConstraints = false
		  
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2061204E53416E696D6174696F6E436F6E7465787420616E696D6174696F6E2066696E69736865642E
		Sub AnimationFinished()
		  Label1.text ="Animation finished"
		  ShowLabel
		  HideLabel
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520757365722068617320626567756E206120737769706520676573747572652E
		Sub SwipeGesture(anEvent As AppleNSEvent)
		  Label1.text ="That was a swipe gesture of type "+Integer(anEvent.Type).ToText
		  ShowLabel
		  HideLabel
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520757365722068617320626567756E206120746F75636820676573747572652E
		Sub BeginGesture(anEvent As AppleNSEvent)
		  Label1.text ="You started a gesture of type "+Integer(anEvent.Type).ToText
		  ShowLabel
		  HideLabel
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
		  Label1.text ="Right Mouse Down"
		  ShowLabel
		  HideLabel
		  
		  #pragma Unused anEvent
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
		End Sub
	#tag EndEvent
	#tag Event , Description = 52657475726E207472756520746F20747261636B2067657374757265207363726F6C6C206576656E7473207375636820617320612073776970652E
		Function TrackSwipes(Axis As AppleNSEvent.NSEventGestureAxis) As Boolean
		  return true
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  call me.AppleObject.presentError(new appleerror( "Each responder subclass can display a custom error and modify it in the willShowError event", -999999))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ac3
	#tag Event
		Sub Shown()
		  me.AppleObject.WantsLayer = true
		  me.AppleObject.layer.BorderWidth = 2
		  me.AppleObject.Layer.CornerRadius = 40
		  me.AppleObject.layer.bordercolor = AppleColor.FromColor (&cBFFFC100)
		  me.AppleObject.Layer.BackgroundColor = AppleColor.FromColor (&cB1D9FE00)
		  me.AppleObject.Layer.Contents = new AppleImage(OSXLibLogo)
		  me.AppleObject.LayerContentsPlacement = AppleView.NSViewLayerContentsPlacement.TopLeft
		  me.AppleObject.Layer.MasksToBounds =false
		  'me.AppleObject.TranslatesAutoresizingMaskIntoConstraints = false
		  
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520766965772069732068696464656E2C20656974686572206469726563746C792C206F7220696E20726573706F6E736520746F20616E20616E636573746F72206265696E672068696464656E2E
		Sub Hidden()
		  msgbox "You hid me!"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider1
	#tag Event
		Sub ValueChanged()
		  dim val as double = ( me.value-360)/10
		  ac3.AppleObject.FrameCenterRotation  = val
		  FCRotationValueLabel.text = val.ToText
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider2
	#tag Event
		Sub ValueChanged()
		  dim val as double = ( me.value-360)/10
		  ac3.AppleObject.BoundsRotation  = val
		  FRotationValueLabel.text = val.ToText
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox1
	#tag Event
		Sub Action()
		  ac3.AppleObject.layer.MasksToBounds = me.value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CheckBox2
	#tag Event
		Sub Action()
		  ac3.AppleObject.layer.Hidden = me.value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OSXLibPaintCanvas1
	#tag Event
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
	#tag Event
		Sub Paint(g as applecgcontext, Rect as FoundationFrameWork.NSRect)
		  #pragma unused rect
		End Sub
	#tag EndEvent
	#tag Event
		Sub Shown()
		  me.AppleObject.WantsLayer = true
		  dim ar as  AppleAutoresizingMask = AppleAutoresizingMask.FullResize
		  'ar.RightMargin = true
		  'ar.TopMargin = True
		  ar.LeftMargin = True
		  ar.BottomMargin = true
		  me.AppleObject.AutoResizingMask = ar
		  me.AppleObject.TranslatesAutoresizingMaskIntoConstraints = True
		  'me.AppleObject.RemoveConstraints(OSXLibPaintCanvas1.AppleObject.Constraints)
		  me.AppleObject.WidthAnchor.ConstraintLessThanOrEqualToConstant(200).Active = true
		  me.AppleObject.WidthAnchor.ConstraintLessThanOrEqualToConstant(200).Priority = AppleLayoutConstraint.NSLayoutPriority.WindowSizeStayPut
		  // me.AppleObject.TrailingAnchor.ConstraintGreaterThanOrEqualToAnchor(me.AppleObject.SuperView.RightAnchor).Active = true
		  me.AppleObject.HeightAnchor.ConstraintLessThanOrEqualToConstant(300).Active = true
		  me.AppleObject.HeightAnchor.ConstraintLessThanOrEqualToConstant(300).Priority = AppleLayoutConstraint.NSLayoutPriority.WindowSizeStayPut
		  
		  // me.AppleObject.LeadingAnchor.ConstraintEqualToAnchor (ac3.AppleObject.rightAnchor,176).active = true
		  // me.AppleObject.leadinganchor.ConstraintEqualToAnchor(ac3.AppleObject.rightAnchor,176).Priority = AppleLayoutConstraint.NSLayoutPriority.Required
		  me.AppleObject.TopAnchor.ConstraintLessThanOrEqualToAnchor (ac3.AppleObject.BottomAnchor, -80).active = true
		  me.AppleObject.TopAnchor.ConstraintLessThanOrEqualToAnchor (ac3.AppleObject.BottomAnchor, -80).Priority = AppleLayoutConstraint.NSLayoutPriority.Required
		  me.AppleObject.CheckLayout
		  OSXLibPaintCanvas1.AppleObject.Layer.BackgroundColor = AppleColor.FromColor(&c9D7D3D00)
		  OSXLibPaintCanvas1.AppleObject.Layer.BorderWidth = 2
		  
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Sub WillBecomeSubview(SuperView as AppleView)
		  #pragma Unused SuperView
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
