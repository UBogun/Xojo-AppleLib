#tag Class
Protected Class ApplePopover
Inherits AppleResponder
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


	#tag Method, Flags = &h0, Description = 466F726365732074686520706F706F76657220746F20636C6F736520776974686F757420636F6E73756C74696E67206974732064656C65676174652E
		Sub Close()
		  AppKitFramework.close mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720506F706F7665722E
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(init(alloc(classptr)), true)
		  me.ContentViewController = new AppleViewController
		  me.DelegateObject = me
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (NSPopoverWillShowNotification, me, AppleOperationQueue.MainQueue, new appleblock (Addressof informonpopoverWillShow)))
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (NSPopoverDidShowNotification, me, AppleOperationQueue.MainQueue, new appleblock (Addressof informonpopoverDidShow)))
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (NSPopoverWillCloseNotification, me, AppleOperationQueue.MainQueue, new appleblock (Addressof informonpopoverwillclose)))
		  NotificationObjects.Append (AppleNotificationCenter.AddObserver (NSPopoverDidCloseNotification, me, AppleOperationQueue.MainQueue, new appleblock (Addressof informonpopoverdidclose)))
		  
		  // Here things are becoming a bit complicated: The Blocks created above create a circular reference that would keep the object alive.
		  // If a Popover is placed on the layout, it would never cease to exist because it has no close event like a RectControl.
		  // We need to install another notification block that enables us to remove the notifications so that the destructor can run.
		  // We do this here by addressing the private ownerWindow property, but this is of course a dirty hack 
		  
		  dim AppleOwnerwindow as  AppleWindow = me.OwnerAppleWindow
		  if AppleOwnerwindow <> nil then
		    NotificationObjects.Append AppleNotificationCenter.AddObserver ("NSWindowWillCloseNotification", AppleOwnerwindow, _
		    AppleOperationQueue.MainQueue, new appleblock (Addressof informonWindowWillClose))
		  end if
		  registeridentity (me)
		  xojo.core.timer.CallLater 0, AddressOf raiseOpen
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  if me.Detached then me.ContentViewController.view.Window.Close
		  RemoveNotifications
		  me.DelegateObject = nil
		  me.ContentViewController = nil
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbehavior Lib appkitlibname Selector "behavior" (id as ptr) As NSPopoverBehavior
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdetachableWindowForPopover Lib appkitlibname Selector "detachableWindowForPopover:" (id as ptr, popover as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getDetached Lib appkitlibname Selector "isDetached" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpositioningRect Lib appkitlibname Selector "positioningRect" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshown Lib appkitlibname Selector "isShown" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Shared Function Identity(id as ptr) As ApplePopover
		  dim wr as xojo.Core.WeakRef = XojoIdentity.Lookup(id, Nil)
		  if wr <> nil then return ApplePopover(wr.Value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_popoverDidDetach(pid as ptr, sel as ptr, popover as ptr) As ptr
		  dim mypopover as ApplePopover = InformInstance(pid)
		  if mypopover <> nil then  mypopover.informonpopoverDidDetach
		  #pragma unused sel
		  #Pragma Unused popover
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_popoverShouldClose(pid as ptr, sel as ptr, popover as ptr) As Boolean
		  dim mypopover as ApplePopover = InformInstance(pid)
		  if mypopover <> nil then  return mypopover.informonpopoverShouldClose
		  #pragma unused sel
		  #Pragma Unused popover
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_popoverShouldDetach(pid as ptr, sel as ptr, popover as ptr) As Boolean
		  dim mypopover as ApplePopover = InformInstance(pid)
		  if mypopover <> nil then  return mypopover.Detachable
		  #pragma unused sel
		  #Pragma Unused popover
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function InformInstance(id as ptr) As ApplePopover
		  dim ident as Applepopover = Identity(id)
		  return if (ident = nil, ApplePopover.MakefromPtr(id), ident)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonpopoverDidClose(notification as ptr)
		  RaiseEvent PopoverClosed
		  #pragma unused Notification
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonpopoverDidDetach()
		  if not SentDetached then RaiseEvent PopoverDetached
		  SentDetached = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonpopoverDidShow(notification as ptr)
		  RaiseEvent PopoverIsShown
		  SentDetached = false
		  #Pragma Unused Notification
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informonpopoverShouldClose() As Boolean
		  Return not RaiseEvent PopoverCancelclose
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonpopoverWillClose(notification as ptr)
		  RaiseEvent PopoverClosing
		  #pragma unused Notification
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonpopoverWillShow(notification as ptr)
		  if me <> nil then raiseevent PopoverWillShow
		  #pragma unused notification
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonWindowWillClose()
		  RaiseEvent Close
		  RemoveNotifications
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As ApplePopover
		  return if (aptr = nil, nil, new ApplePopover(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub performClose Lib appkitlibname Selector "performClose:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

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
		Protected Declare Sub setbehavior Lib appkitlibname Selector "setBehavior:" (id as ptr, value as NSPopoverBehavior)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setpositioningRect Lib appkitlibname Selector "setPositioningRect:" (id as ptr, value as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53686F77732074686520706F706F76657220616E63686F72656420746F207468652073706563696669656420766965772E
		Sub Show(PositioningRect As FoundationFrameWork.NSRect, RelativeToView as AppleView, PreferredEdge As FoundationFrameWork.NSRectEdge)
		  showRelativeToRect mid, PositioningRect, RelativeToView.id, PreferredEdge
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub showRelativeToRect Lib appkitlibname Selector "showRelativeToRect:ofView:preferredEdge:" (id as ptr, rect as FoundationFrameWork . NSRect, view as ptr, edge as FoundationFrameWork . NSRectEdge)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 417474656D70747320746F20636C6F73652074686520706F706F7665722E
		Sub TryClose(sender as appleobject = nil)
		  if sender = nil then sender = me
		  performClose mid, sender.id
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520636F6E74726F6C20697320636C6F73696E672E205573652074686973206576656E7420666F72206164646974696F6E616C20636C65616E2D75702073746570732E
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520636F6E74726F6C206F70656E732E
		Event Open()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520506F706F7665722073686F756C6420636C6F73652E2052657475726E207472756520746F2070726576656E7420746869732E
		Event PopoverCancelClose() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520506F706F7665722069732061626F757420746F20636C6F73652E
		Event PopoverClosed()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520506F706F7665722069732061626F757420746F20636C6F73652E
		Event PopoverClosing()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520706F706F76657220776173207472616E73666572656420746F20612064657461636865642077696E646F772E20496E766F6B6564206F6E6C79206966204170704B69742070726F7669646573207468652077696E646F7720666F72207468697320706F706F7665722E
		Event PopoverDetached()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520506F706F7665722061707065617265642E
		Event PopoverIsShown()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573206265666F72652074686520506F706F76657220617070656172732E205573652074686973206576656E7420746F20696E697469616C697A652074686520636F6E74726F6C2E
		Event PopOverWillShow()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0, Description = 5370656369666965732069662074686520706F706F76657220697320746F20626520616E696D617465642E
		#tag Getter
			Get
			  return AppKitFramework.getanimates (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setanimates mid, value
			End Set
		#tag EndSetter
		Animates As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617070656172616E6365206F662074686520506F704F7665722C20696E20616E204E53417070656172616E6365206F626A6563742E
		#tag Getter
			Get
			  return AppleAppearance.MakeFromPtr(AppKitFramework.getappearance (mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setappearance mid, Nilptr(value)
			End Set
		#tag EndSetter
		Appearance As AppleAppearance
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 53706563696669657320746865206265686176696F72206F662074686520706F706F7665722E
		#tag Getter
			Get
			  return getbehavior (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbehavior mid, value
			End Set
		#tag EndSetter
		Behavior As NSPopoverBehavior
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr
			  if mClassPtr = nil then
			    // mClassPtr = FoundationFrameWork.NSClassFromString("NSPopover")
			    dim Methods() as TargetClassMethodHelper
			    
			    // methods.Append new TargetClassMethodHelper ("detachableWindowForPopover:", addressof impl_detachableWindowForPopover, "@@:@")
			    Methods.Append new TargetClassMethodHelper("popoverShouldDetach:", Addressof impl_popoverShouldDetach, "c@:@")
			    // Methods.Append new TargetClassMethodHelper("popoverDidShow:", Addressof impl_popoverDidShow, "v@:@")
			    Methods.Append new TargetClassMethodHelper("popoverDidDetach:", Addressof impl_popoverDidDetach, "v@:@")
			    Methods.Append new TargetClassMethodHelper("popoverShouldClose:", Addressof impl_popoverShouldClose, "c@:@")
			    // Methods.Append new TargetClassMethodHelper("popoverWillShow:", Addressof impl_popoverWillShow, "v@:@")
			    // Methods.Append new TargetClassMethodHelper("popoverWillClose:", Addressof impl_popoverWillClose, "v@:@")
			    // Methods.Append new TargetClassMethodHelper("popoverDidClose:", Addressof impl_popoverDidClose, "v@:@")
			    
			    
			    mClassPtr = BuildTargetClass("NSPopover", "OSXLibPopover", methods)
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E74656E742073697A65206F662074686520706F706F7665722E
		#tag Getter
			Get
			  return AppKitFramework.getcontentSize(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setcontentsize mid, value
			End Set
		#tag EndSetter
		Contentsize As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if ContentViewController <> nil then return ContentViewController.view
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  'me.ContentViewController =  new AppleViewController
			  me.ContentViewController.View = value
			  
			  
			  
			End Set
		#tag EndSetter
		ContentView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207669657720636F6E74726F6C6C65722074686174206D616E616765732074686520636F6E74656E74206F662074686520706F706F7665722E0A596F75206D757374207365742074686520636F6E74656E74207669657720636F6E74726F6C6C6572206F662074686520706F706F766572206265666F72652074686520706F706F7665722069732073686F776E2E204368616E67657320746F2074686520706F706F766572277320636F6E74656E74207669657720636F6E74726F6C6C6572207768696C652074686520706F706F7665722069732073686F776E2077696C6C2063617573652074686520706F706F76657220746F20616E696D6174652069662074686520616E696D617465732070726F706572747920697320547275652E0A44656661756C74206E696C2E
		#tag Getter
			Get
			  return AppleViewController.MakefromPtr(AppKitFramework.getcontentViewController(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setcontentviewcontroller mid, nilptr(value)
			End Set
		#tag EndSetter
		ContentViewController As AppleViewController
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656C6567617465206F662074686520706F706F7665722E
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr(FoundationFramework.GetDelegate(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFramework.setDelegate(mid, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		DelegateObject As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mDetachable
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mDetachable = value
			End Set
		#tag EndSetter
		Detachable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleWindow.MakeFromPtr(getdetachableWindowForPopover(mid, mid))
			End Get
		#tag EndGetter
		DetachableWindow As AppleWindow
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520706F706F7665722069732064657461636865642E2028726561642D6F6E6C79293A20417661696C61626C652073696E6365204F53582031302E31302E
		#tag Getter
			Get
			  return getDetached (mid)
			End Get
		#tag EndGetter
		Detached As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520656666656374697665206170706572616E6365206F662074686520706F706F7665722028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F53582031302E31302E
		#tag Getter
			Get
			  return AppleAppearance.MakeFromPtr(AppKitFramework.geteffectiveappearance (id))
			  
			End Get
		#tag EndGetter
		EffectiveAppearance As AppleAppearance
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected mDetachable As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private NotificationObjects() As AppleNotificationObject
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E74656E742073697A65206F662074686520706F706F7665722E
		#tag Getter
			Get
			  return getpositioningRect(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setpositioningRect mid, value
			End Set
		#tag EndSetter
		PositioningRect As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag Property, Flags = &h21, Description = 496E7465726E616C2070726F706572747920746F20666978206465746163686564206576656E74206265696E67207261697365642074776963652E
		Private SentDetached As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520646973706C6179207374617465206F662074686520706F706F7665722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getshown (mid)
			End Get
		#tag EndGetter
		Shown As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = NSPopoverDidCloseNotification, Type = Text, Dynamic = False, Default = \"NSPopoverDidCloseNotification", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSPopoverDidShowNotification, Type = Text, Dynamic = False, Default = \"NSPopoverDidShowNotification", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSPopoverWillCloseNotification, Type = Text, Dynamic = False, Default = \"NSPopoverWillCloseNotification", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NSPopoverWillShowNotification, Type = Text, Dynamic = False, Default = \"NSPopoverWillShowNotification", Scope = Public
	#tag EndConstant


	#tag Enum, Name = NSPopoverBehavior, Type = Integer, Flags = &h0
		ApplicationDefined = 0
		  Transient = 1
		Semitransient = 2
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Animates"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Behavior"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="NSPopoverBehavior"
			EditorType="Enum"
			#tag EnumValues
				"0 - ApplicationDefined"
				"1 - Transient"
				"2 - Semitransient"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Detachable"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Detached"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Shown"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
