#tag Class
Protected Class AppleColorPanel
Inherits ApplePanel
	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Function AcceptsFirstResponder() As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub AnimationDidStart(Animation As AppleCAAnimation)
		  #pragma unused Animation
		End Sub
	#tag EndEvent

	#tag Event
		Sub AnimationDidStop(Animation As AppleCAAnimation, Finished As Boolean)
		  #pragma unused Animation
		  #pragma unused Finished
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2061204E53416E696D6174696F6E436F6E7465787420616E696D6174696F6E2066696E697368657320616E64206E6F20637573746F6D20636F6D706C6574696F6E48616E646C657220776173207370656369666965642E
		Sub AnimationFinished()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub BeginGesture(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520726573706F6E6465722069732061626F757420746F206265636F6D6520666972737420726573706F6E64657220696E206974732057696E646F772E2052657475726E207472756520746F2070726576656E742069742066726F6D2067657474696E672074686520666F6375732E
		Function DontBecomeFirstResponder() As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520726573706F6E6465722069732061626F757420746F206C6F7365206265696E672074686520666972737420726573706F6E64657220696E206974732057696E646F772E2052657475726E207472756520746F2070726576656E742069742066726F6D206C6F73696E672074686520666F6375732E
		Function DontResignFirstResponder() As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub EndGesture(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub FlagsChanged(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 52657475726E207768657468657220746F20666F727761726420656C6173746963207363726F6C6C696E672067657374757265206576656E74732075702074686520726573706F6E6465722E
		Function ForwardElasticScroll(axis as AppleNSEvent.NSEventGestureAxis) As Boolean
		  #pragma unused axis
		End Function
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub KeyDown(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub KeyUp(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub Magnify(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub MouseDown(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub MouseDragged(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub MouseEntered(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub MouseExited(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub MouseMoved(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub MouseUp(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub OtherMouseDown(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub OtherMouseDragged(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub OtherMouseUp(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub PressureChange(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub RightMouseDown(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub RightMouseDragged(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub RightMouseUp(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub Rotate(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub ScrollWheel(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub SmartMagnify(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub Swipe(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub TabletPoint(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub TabletProximity(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub TouchesBegan(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 547261636B696E67206F6620746F756368657320686173206265656E2063616E63656C6C656420666F7220616E7920726561736F6E2E
		Sub TouchesCancelled(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4120736574206F6620746F756368657320686173206265656E2072656D6F7665642E
		Sub TouchesEnded(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 4F6E65206F72206D6F726520746F75636865732068617665206D6F7665642E
		Sub TouchesMoved(anEvent As AppleNSEvent)
		  #pragma unused anEvent
		End Sub
	#tag EndEvent

	#tag Event , Description = 52657475726E207472756520746F20747261636B2067657374757265207363726F6C6C206576656E7473207375636820617320612073776970652E
		Function TrackSwipes(axis as AppleNSEvent.NSEventGestureAxis) As Boolean
		  #pragma unused axis
		End Function
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Function WillPresentError(error As AppleError) As AppleError
		  #pragma unused error
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From ApplePanel
		  // Constructor(rect as FoundationFrameWork.NSRect,  Style as AppleWindowStyleMask, type as NSBackingStoreType, DeferCreation as Boolean = false) -- From ApplePanel
		  // Constructor(ViewController As AppleViewController) -- From AppleWindow
		  // Constructor(rect as FoundationFrameWork.NSRect,  Style as AppleWindowStyleMask, type as NSBackingStoreType, DeferCreation as Boolean = false) -- From AppleWindow
		  // Constructor(aWindow as Window) -- From AppleWindow
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(SharedColorPanel.id, true, true)
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (kNSColorPanelColorDidChangeNotification, me, AppleOperationQueue.MainQueue, new appleblock (Addressof informonColorChange)))
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (AppleWindow.kNSWindowWillCloseNotification, self, AppleOperationQueue.MainQueue, new appleblock (AddressOf informonPanelClose)))
		  // Here things are becoming a bit complicated: The Blocks created above create a circular reference that would keep the object alive.
		  // If a Popover is placed on the layout, it would never cease to exist because it has no close event like a RectControl.
		  // We need to install another notification block that enables us to remove the notifications so that the destructor can run.
		  // We do this here by addressing the private Window method inherited from RectControl
		  dim AppleOwnerwindow as  AppleWindow = me.OwnerAppleWindow
		  if AppleOwnerwindow <> nil then
		    NotificationObjects.Append AppleNotificationCenter.AddObserver (AppleWindow.kNSWindowWillCloseNotification, AppleOwnerwindow, _
		    AppleOperationQueue.MainQueue, new appleblock (Addressof informonWindowWillClose))
		  end if
		  xojo.core.timer.CallLater 1, addressof RaiseOpen
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmode Lib AppKitLibname Selector "mode" (id as ptr) As NSColorPanelMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsharedColorPanel Lib AppKitLibname Selector "sharedColorPanel" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsharedColorPanelExists Lib AppKitLibname Selector "sharedColorPanelExists" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshowsAlpha Lib AppKitLibname Selector "showsAlpha" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonColorChange()
		  RaiseEvent ColorChanged (me.currentColor)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonPanelClose()
		  RaiseEvent PanelClose
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonWindowWillClose()
		  self.Close
		  RaiseEvent Close
		  RemoveNotifications
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RaiseOpen()
		  RaiseEvent Open
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveNotifications()
		  for each o as AppleNotificationObject in NotificationObjects
		    AppleNotificationCenter.RemoveObserver o
		  next
		  redim NotificationObjects(-1)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setmode Lib AppKitLibname Selector "setMode:" (id as ptr, value as NSColorPanelMode)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 44657465726D696E657320776869636820636F6C6F722073656C656374696F6E206D6F6465732061726520617661696C61626C6520696E20616E206170706C69636174696F6EE2809973204E53436F6C6F7250616E656C2E2054686973206D6574686F642068617320616E20656666656374206F6E6C79206265666F726520616E204E53436F6C6F7250616E656C206F626A65637420697320696E7374616E7469617465642E
		Shared Sub SetPickerMask(value as ColorPickerModeMask)
		  setPickerMask classptr, value.ID
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setPickerMask Lib AppKitLibname Selector "setPickerMask:" (id as ptr, value as uinteger)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5370656369666965732074686520636F6C6F722070616E656CE280997320696E697469616C207069636B65722E54686973206D6574686F64206D61792062652063616C6C656420617420616E792074696D652C2077686574686572206F72206E6F7420616E206170706C69636174696F6EE2809973204E53436F6C6F7250616E656C20686173206265656E20696E7374616E7469617465642E
		Shared Sub SetPickerMode(value as NSColorPanelMode)
		  SetPickerMode classptr, value
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setPickerMode Lib AppKitLibname Selector "setPickerMask:" (id as ptr, value as NSColorPanelMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshowsAlpha Lib AppKitLibname Selector "setShowsAlpha:" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ColorChanged(NewColor As AppleColor)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520636F6C6F725069636B65722070616E656C20636C6F7365732E
		Event PanelClose()
	#tag EndHook


	#tag Note, Name = Status incomplete
		
		missing:
		attachColorList (needs NSColorList)
		detachColorList
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 546865206163636573736F727920766965772E
		#tag Getter
			Get
			  return appleview.MakefromPtr(AppKitFramework.getaccessoryView(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setaccessoryView mid, nilptr(value)
			End Set
		#tag EndSetter
		AccessoryView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070616E656CE280997320616374696F6E2D6D6574686F642073656C6563746F722E
		#tag Getter
			Get
			  return appkitframework.getaction (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setAction mid,  value
			End Set
		#tag EndSetter
		Action As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr
			  if mClassPtr = nil then mClassPtr = FoundationFrameWork.NSClassFromString ("NSColorPanel")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652070616E656C20636F6E74696E756F75736C792073656E64732074686520616374696F6E206D65737361676520746F20746865207461726765742E
		#tag Getter
			Get
			  return AppKitFramework.getContinuous (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setContinuous mid, value
			End Set
		#tag EndSetter
		Continuous As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F66207468652070616E656C2E
		#tag Getter
			Get
			  return applecolor.MakefromPtr(AppKitFramework.getcolor(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setcolor mid, nilptr(value)
			End Set
		#tag EndSetter
		CurrentColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6F6465206F66207468652070616E656C20746865206D6F6465206973206F6E65206F6620746865206D6F64657320616C6C6F7765642062792074686520636F6C6F72206D61736B2E
		#tag Getter
			Get
			  return getmode(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmode mid, value
			End Set
		#tag EndSetter
		Mode As NSColorPanelMode
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private NotificationObjects() As AppleNotificationObject
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 52657475726E732074686520736861726564204E53436F6C6F7250616E656C20696E7374616E63652C206372656174696E67206974206966206E65636573736172792E
		#tag Getter
			Get
			  return new AppleColorPanel(getsharedColorPanel(classptr), true, true)
			End Get
		#tag EndGetter
		Shared SharedColorPanel As AppleColorPanel
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865204E53436F6C6F7250616E656C20686173206265656E206372656174656420616C72656164792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getsharedColorPanelExists(classptr)
			End Get
		#tag EndGetter
		Shared SharedColorPanelExists As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572206F72206E6F74207468652070616E656C2073686F777320616C7068612076616C75657320616E6420616E206F70616369747920736C696465722E
		#tag Getter
			Get
			  return getshowsAlpha(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setshowsAlpha mid, value
			End Set
		#tag EndSetter
		ShowsAlpha As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 536574732074686520746172676574206F66207468652072656365697665722E
		#tag Getter
			Get
			  return appleobject.MakeFromPtr(appkitframework.getTarget (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setTarget mid, nilptr(value)
			End Set
		#tag EndSetter
		Target As AppleObject
	#tag EndComputedProperty


	#tag Constant, Name = kNSColorPanelColorDidChangeNotification, Type = Text, Dynamic = False, Default = \"NSColorPanelColorDidChangeNotification", Scope = Public
	#tag EndConstant


	#tag Enum, Name = NSColorPanelMode, Type = Integer, Flags = &h0
		None = -1
		  Gray = 0
		  RGB = 1
		  CMYK = 2
		  HSB = 3
		  CustomPalette = 4
		  ColorList = 5
		  Wheel = 6
		Crayon = 7
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Visible=true
			Group="Behavior"
			InitialValue="1"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BecomeKeyOnlyIfNeeded"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanHide"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Continuous"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FloatingPanel"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasShadow"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HidesOnDeactivate"
			Group="Behavior"
			Type="Boolean"
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
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mode"
			Visible=true
			Group="Behavior"
			InitialValue="RGB"
			Type="NSColorPanelMode"
			EditorType="Enum"
			#tag EnumValues
				"-1 - None"
				"0 - Gray"
				"1 - RGB"
				"2 - CMYK"
				"3 - HSB"
				"4 - CustomPalette"
				"5 - ColorList"
				"6 - Wheel"
				"7 - Crayon"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OnActiveSpace"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OneShot"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opaque"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreventsApplicationTerminationWhenModal"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReleasedWhenClosed"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsAlpha"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WindowNumber"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WorksWhenModal"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
