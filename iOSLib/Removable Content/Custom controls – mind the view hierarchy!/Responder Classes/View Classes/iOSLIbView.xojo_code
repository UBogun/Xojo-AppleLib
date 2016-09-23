#tag Class
Protected Class iOSLIbView
Inherits iOSLibResponder
	#tag Event
		Sub Close()
		  RaiseEvent close
		  RemoveHandlers
		  me.mid = nil
		End Sub
	#tag EndEvent

	#tag Event
		Function CreateView() As UInteger
		  dim subID as uinteger = raiseEvent CreateView
		  if  subid = 0 then
		    mid =  new appleview (FoundationFrameWork.NSMakeRect(0,0,100,100))
		    // mid.RegisterControl (self)
		    mid.BackgroundColor = AppleColor.WhiteColor
		    AttachHandlers
		    return uinteger(mid.id)
		  else
		    return subid
		  end if
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0, Description = 416464732061207669657720746F2074686520656E64206F662074686520766965772773206C697374206F662073756276696577732E
		Sub AddSubview(aView as AppleView)
		  mid.AddSubview aview
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416E696D617465206368616E67657320746F2074686520616C7068612070726F7065727479206F66207468652076696577207573696E672074686520737065636966696564206475726174696F6E2C2064656C61792C206F7074696F6E732C20616E6420636F6D706C6574696F6E2068616E646C65722E20
		Sub AnimateAlpha(alpha as Double, Seconds as Double = 0.2, options as AppleViewAnimationOption, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, transition as UIKitFramework.UIVIewAnimationTransition = UIKitFramework.UIVIewAnimationTransition.None, delay as double = 0, completion as appleblock = nil)
		  mid.AnimateAlpha alpha, options, seconds, delay, curve, transition , completion
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537461727473206120637573746F6D206D6574686F642066726F6D206120626C6F636B20776869636820796F752063616E2075736520746F206368616E676520646966666572656E742070726F70657274696573206F66207468652076696577207573696E672074686520737065636966696564206475726174696F6E2C2064656C61792C206F7074696F6E732C20616E6420636F6D706C6574696F6E2068616E646C65722E20
		Sub AnimateBlock(ChangeBlock as AppleBlock, Seconds as Double = 0.2, options as AppleViewAnimationOption,  Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, transition as UIKitFramework.UIVIewAnimationTransition = UIKitFramework.UIVIewAnimationTransition.None, delay as double = 0, completion as appleblock = nil)
		  mid.Animateblock changeblock, options, seconds, delay, curve, transition , completion
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416E696D617465206368616E67657320746F2074686520626F756E64732070726F7065727479206F66207468652076696577207573696E672074686520737065636966696564206475726174696F6E2C2064656C61792C206F7074696F6E732C20616E6420636F6D706C6574696F6E2068616E646C65722E20
		Sub AnimateBounds(newBounds as xojo.core.rect , Seconds as Double = 0.2, options as AppleViewAnimationOption, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, transition as UIKitFramework.UIVIewAnimationTransition = UIKitFramework.UIVIewAnimationTransition.None, delay as double = 0, completion as appleblock = nil)
		  if completion = nil then completion = new appleblock (addressof completionBlock)
		  mid.AnimateBounds newBounds.toNSREct, options, seconds, delay, curve, transition , completion
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416E696D617465206368616E67657320746F207468652063656E7465722070726F7065727479206F66207468652076696577207573696E672074686520737065636966696564206475726174696F6E2C2064656C61792C206F7074696F6E732C20616E6420636F6D706C6574696F6E2068616E646C65722E20
		Sub AnimateCenter(aCenter as xojo.core.point, Seconds as Double = 0.2, options as AppleViewAnimationOption,  Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, transition as UIKitFramework.UIVIewAnimationTransition = UIKitFramework.UIVIewAnimationTransition.None, delay as double = 0, completion as appleblock = nil)
		  if completion = nil then completion = new appleblock (addressof completionBlock)
		  mid.AnimateCenter aCenter.tonspoint, options, seconds, delay, curve, transition , completion
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416E696D617465206368616E67657320746F20746865206261636B67726F756E64636F6C6F722070726F7065727479206F66207468652076696577207573696E672074686520737065636966696564206475726174696F6E2C2064656C61792C206F7074696F6E732C20616E6420636F6D706C6574696F6E2068616E646C65722E20
		Sub AnimateColor(newcolor as color, Seconds as Double = 0.2, options as AppleViewAnimationOption, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, transition as UIKitFramework.UIVIewAnimationTransition = UIKitFramework.UIVIewAnimationTransition.None, delay as double = 0, completion as appleblock = nil)
		  if completion = nil then completion = new appleblock (addressof completionBlock)
		  mid.AnimateColor newcolor.toapplecolor, options, seconds, delay, curve, transition , completion
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416E696D617465206368616E67657320746F20746865206672616D652070726F7065727479206F66207468652076696577207573696E672074686520737065636966696564206475726174696F6E2C2064656C61792C206F7074696F6E732C20616E6420636F6D706C6574696F6E2068616E646C65722E20
		Sub AnimateFrame(aFrame as xojo.core.rect, Seconds as Double = 0.2, options as AppleViewAnimationOption, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, transition as UIKitFramework.UIVIewAnimationTransition = UIKitFramework.UIVIewAnimationTransition.None, delay as double = 0, completion as appleblock = nil)
		  if completion = nil then completion = new appleblock (addressof completionBlock)
		  mid.AnimateFrame aFrame.toNSREct, options, seconds, delay, curve, transition , completion
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416E696D617465206368616E67657320746F20746865207472616E73666F726D2070726F7065727479206F66207468652076696577207573696E672074686520737065636966696564206475726174696F6E2C2064656C61792C206F7074696F6E732C20616E6420636F6D706C6574696F6E2068616E646C65722E20
		Sub AnimateTransform(aTransform as CGAffineTransform, Seconds as Double = 0.2, options as AppleViewAnimationOption, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, transition as UIKitFramework.UIVIewAnimationTransition = UIKitFramework.UIVIewAnimationTransition.None, delay as double = 0, completion as appleblock = nil)
		  if completion = nil then completion = new appleblock (addressof completionBlock)
		  mid.AnimateTransform atransform,options, seconds, delay, curve, transition , completion
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub AttachHandlers()
		  AddHandler mid.DidAddSubview, AddressOf informonDidAddSubview
		  AddHandler mid.DidMoveToSuperview, AddressOf informonDidMoveToSuperview
		  AddHandler mid.DidMoveToWindow, AddressOf informOnDidMoveToWindow
		  // AddHandler mid.DrawRect, AddressOf informOnDrawRect
		  AddHandler mid.layoutSubviews, AddressOf informOnlayoutSubviews
		  AddHandler mid.tintColorDidChange, AddressOf informontintColorDidChange
		  AddHandler mid.TraitCollectionDidChange, AddressOf informonTraitCollectionDidChange
		  AddHandler mid.WillMoveToSuperview, AddressOf informonWillMoveToSuperview
		  AddHandler mid.WillMoveToWindow, AddressOf informonWillMoveToWindow
		  AddHandler mid.WillRemoveSubview, AddressOf informonWillRemoveSubview
		  
		  
		  AddHandler AppleObject.TouchesBeganwithEvent, AddressOf informonTouchesBeganwithEvent
		  AddHandler AppleObject.TouchesCancelledwithEvent, AddressOf informonTouchesCancelledwithEvent
		  AddHandler AppleObject.TouchesEndedwithEvent, AddressOf informonTouchesEndedwithEvent
		  AddHandler AppleObject.TouchesMovedwithEvent, AddressOf informonTouchesMovedwithEvent
		  AddHandler AppleObject.EstimatedPropertiesUpdated, AddressOf informonEstimatedPropertiesUpdated
		  
		  
		  AddHandler AppleObject.MotionBeganwithEvent, AddressOf informonMotionBeganwithEvent
		  AddHandler AppleObject.MotionCancelledwithEvent, AddressOf informonMotionCancelledwithEvent
		  AddHandler AppleObject.MotionEndedwithEvent, AddressOf informonMotionEndedwithEvent
		  
		  AddHandler AppleObject.PressesBeganwithEvent, AddressOf informonPressesBeganwithEvent
		  AddHandler AppleObject.PressesCancelledwithEvent, AddressOf informonPressesCancelledwithEvent
		  AddHandler AppleObject.PressesEndedwithEvent, AddressOf informonPressesEndedwithEvent
		  AddHandler AppleObject.PressesChangedwithEvent, AddressOf informonPressesChangedwithEvent
		  
		  AddHandler AppleObject.AnimationDidStart, Addressof informonAnimationDidStart
		  AddHandler AppleObject.animationDidStop, AddressOf informonAnimationDidStop
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 5468652064656661756C7420626C6F636B207573656420666F7220626C6F636B20616E696D6174696F6E202246696E697368656422204576656E7473
		Attributes( hidden ) Private Sub CompletionBlock(animationCompleted as Boolean)
		  if me <> nil then RaiseEvent AnimationFinished (animationCompleted)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D207468652073706563696669656420636F6F7264696E61746520737061636520746F2074686520636F6F7264696E617465207370616365206F66207468652063757272656E7420766965772E
		Function ConvertPointFromView(aPoint as xojo.core.point, aView as AppleView) As xojo.core.point
		  return mid.ConvertPointFromView (apoint.tonspoint, aview).tocorepoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D2074686520636F6F7264696E617465207370616365206F66207468652063757272656E74207669657720746F207468652073706563696669656420636F6F7264696E6174652073706163652E
		Function ConvertPointToView(aPoint as xojo.core.point, aView as AppleView) As xojo.core.point
		  return mid.ConvertPointToView (apoint.tonspoint, aview).tocorepoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D207468652073706563696669656420636F6F7264696E61746520737061636520746F2074686520636F6F7264696E617465207370616365206F66207468652063757272656E7420766965772E
		Function ConvertRectFromView(aRect as xojo.core.Rect, aView as AppleView) As Xojo.Core.Rect
		  return mid.ConvertRectFromView (arect.tonsrect, aview).toCoreRect
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D2074686520636F6F7264696E617465207370616365206F66207468652063757272656E74207669657720746F207468652073706563696669656420636F6F7264696E6174652073706163652E
		Function ConvertRectToView(aRect as xojo.core.rect, aView as AppleView) As xojo.core.rect
		  return mid.ConvertRectToView (arect.tonsrect, aview).toCoreRect
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F7079206F662074686520766965772E
		Function Copy() As AppleView
		  return mid.Copy
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D2074686520636F6F7264696E617465207370616365206F66207468652063757272656E74207669657720746F207468652073706563696669656420636F6F7264696E6174652073706163652E
		Function DrawViewHierarchy(aRect as Xojo.Core.Rect, afterscreenupdates as boolean = False) As boolean
		  return mid.DrawViewHierarchy (arect.toNSRect, afterscreenupdates)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43617573657320746865207669657720286F72206F6E65206F662069747320656D6265646465642074657874206669656C64732920746F2072657369676E2074686520666972737420726573706F6E646572207374617475732E20496620656E666F726365642C207265676172646C657373206F6620776861742074686520766965772063757272656E746C7920697320646F696E672E
		Sub EndEditing(Enforce as Boolean = false)
		  mid.EndEditing
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 45786368616E67657320746865207375627669657773206174207468652073706563696669656420696E64696365732E0A0A
		Sub ExchangeSubviews(index1 as Integer, Index2 As Integer)
		  mid.ExchangeSubviews  (index1, index2)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52616E646F6D6C79206368616E67657320746865206672616D65206F6620612076696577207769746820616E20616D626967756F7573206C61796F7574206265747765656E2074686520646966666572656E742076616C69642076616C7565732E
		Sub ExerciseAmbiguityInLayout()
		  mid.exerciseAmbiguityInLayout 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GestureRecognizers() As AppleGestureRecognizer()
		  dim result() as AppleGestureRecognizer
		  for q as integer = 0 to mid.GestureRecognizers.Count - 1
		    result.Append AppleGestureRecognizer.MakeFromPtr (mid.GestureRecognizers.PtrAtIndex(q))
		  next
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652066617274686573742064657363656E64616E74206F662074686520726563656976657220696E207468652076696577206869657261726368792028696E636C7564696E6720697473656C6629207468617420636F6E7461696E7320612073706563696669656420706F696E742E
		Function HitTest(point as xojo.core.point, anEvent as AppleNSEvent = nil) As AppleView
		  return mid.HitTest (point.toNSPoint, anEvent)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonAnimationDidStart(view as appleview, animation as AppleCAAnimation)
		  RaiseEvent AnimationStarted(animation)
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonAnimationDidStop(view as appleview, animation as AppleCAAnimation, finished as Boolean)
		  RaiseEvent AnimationStopped(animation, finished)
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonAnimationFinished(virew as appleview, animation as AppleCAAnimation)
		  RaiseEvent AnimationStarted(Animation)
		  #pragma unused virew
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hiddden )  Sub informonDidAddSubview(View as appleview, subview as appleview)
		  RaiseEvent AddedSubView (subview)
		  #pragma unused view
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnDidMoveToSuperView(view as AppleView)
		  RaiseEvent BecameSubView
		  #pragma Unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnDidMoveToWindow(view as AppleView)
		  RaiseEvent Shown
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonlayoutSubviews(view as appleview)
		  RaiseEvent Resized
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informontintColorDidChange(view as AppleView)
		  RaiseEvent TintColorChanged
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hiddden )  Sub informontraitCollectionDidChange(view as appleview, PreviousCollection As AppleTraitCollection)
		  RaiseEvent TraitCollectionChanged (PreviousCollection)
		  
		  #pragma unused view
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnWillMoveToSuperView(View as appleview, superview as appleview)
		  RaiseEvent WillBecomeSubview (superview)
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonWillMoveToWindow(view as appleview, window as applewindow)
		  RaiseEvent WillShow (Window)
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonWillRemoveSubview(View as appleview, subview as appleview)
		  RaiseEvent WillRemoveSubview (subview)
		  #pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7365727473206120766965772061626F766520616E6F74686572207669657720696E207468652076696577206869657261726368792E
		Sub InsertSubviewAbove(aView as AppleView, aboveView as AppleView)
		  mid.InsertSubviewAbove aView, aboveView
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E736572747320612073756276696577206174207468652073706563696669656420696E6465782E
		Sub InsertSubviewAtIndex(aView as AppleView, index as integer)
		  mid.InsertSubview aView, index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7365727473206120766965772062656C6F7720616E6F74686572207669657720696E207468652076696577206869657261726368792E
		Sub InsertSubviewBelow(aView as AppleView, BelowView as AppleView)
		  mid.InsertSubviewBelow aview, BelowView
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E76616C696461746573207468652063757272656E74206C61796F7574206F662074686520726563656976657220616E642074726967676572732061206C61796F75742075706461746520647572696E6720746865206E65787420757064617465206379636C652E
		Sub Invalidate()
		  mid.Invalidate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7665727473207468652063757272656E74207472616E736F66726D2070726F70657274792E
		Sub InvertTransform()
		  mid.InvertTransform
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E6720776865746865722074686520726563656976657220697320612073756276696577206F66206120676976656E2076696577206F72206964656E746963616C20746F207468617420766965772E
		Function IsDescendantOfView(aView As AppleView) As Boolean
		  Return mid.IsDescendantOfView (aView)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E67207768657468657220746865207669657720636F6E7461696E73207468652073706563696669656420706F696E742E
		Function PointInside(point as xojo.core.point, anEvent as AppleNSEvent = nil) As Boolean
		  return mid.PointInside (point.tonspoint, anEvent)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D61726B7320746865207265636569766572E2809973207370656369666965642072656374616E676C65206173206E656564696E6720746F206265207265647261776E2E
		Sub Refresh(aRect as xojo.core.rect)
		  mid.SetNeedsDisplay (arect.tonsrect)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5375626D6974732061207265717565737420746F2074686520666F63757320656E67696E6520666F72206120666F6375732075706461746520696E207468697320656E7669726F6E6D656E742E20417661696C61626C652073696E636520694F5320392E312E
		Sub RefreshFocus()
		  mid.SetNeedsFocusUpdate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 556E6C696E6B732074686520766965772066726F6D206974732073757065727669657720616E64206974732077696E646F772C20616E642072656D6F7665732069742066726F6D2074686520726573706F6E64657220636861696E2E
		Sub RemoveFromSuperview()
		  mid.removeFromSuperview 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 446574616368657320612067657374757265207265636F676E697A65722066726F6D2074686520726563656976696E6720766965772E
		Sub RemoveGestureRecognizer(GestureRecognizer as AppleGestureRecognizer)
		  mid.RemoveGestureRecognizer GestureRecognizer
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveHandlers()
		  RemoveHandler mid.DidAddSubview, AddressOf informonDidAddSubview
		  RemoveHandler mid.DidMoveToSuperview, AddressOf informonDidMoveToSuperview
		  RemoveHandler mid.DidMoveToWindow, AddressOf informOnDidMoveToWindow
		  // RemoveHandler mid.DrawRect, AddressOf informOnDrawRect
		  RemoveHandler mid.layoutSubviews, AddressOf informOnlayoutSubviews
		  RemoveHandler mid.tintColorDidChange, AddressOf informontintColorDidChange
		  RemoveHandler mid.TraitCollectionDidChange, AddressOf informonTraitCollectionDidChange
		  RemoveHandler mid.WillMoveToSuperview, AddressOf informonWillMoveToSuperview
		  RemoveHandler mid.WillMoveToWindow, AddressOf informonWillMoveToWindow
		  RemoveHandler mid.WillRemoveSubview, AddressOf informonWillRemoveSubview
		  
		  
		  RemoveHandler AppleObject.TouchesBeganwithEvent, AddressOf informonTouchesBeganwithEvent
		  RemoveHandler AppleObject.TouchesCancelledwithEvent, AddressOf informonTouchesCancelledwithEvent
		  RemoveHandler AppleObject.TouchesEndedwithEvent, AddressOf informonTouchesEndedwithEvent
		  RemoveHandler AppleObject.TouchesMovedwithEvent, AddressOf informonTouchesMovedwithEvent
		  RemoveHandler AppleObject.EstimatedPropertiesUpdated, AddressOf informonEstimatedPropertiesUpdated
		  
		  
		  RemoveHandler AppleObject.MotionBeganwithEvent, AddressOf informonMotionBeganwithEvent
		  RemoveHandler AppleObject.MotionCancelledwithEvent, AddressOf informonMotionCancelledwithEvent
		  RemoveHandler AppleObject.MotionEndedwithEvent, AddressOf informonMotionEndedwithEvent
		  
		  RemoveHandler AppleObject.PressesBeganwithEvent, AddressOf informonPressesBeganwithEvent
		  RemoveHandler AppleObject.PressesCancelledwithEvent, AddressOf informonPressesCancelledwithEvent
		  RemoveHandler AppleObject.PressesEndedwithEvent, AddressOf informonPressesEndedwithEvent
		  RemoveHandler AppleObject.PressesChangedwithEvent, AddressOf informonPressesChangedwithEvent
		  
		  RemoveHandler AppleObject.AnimationDidStart, Addressof informonAnimationDidStart
		  RemoveHandler AppleObject.animationDidStop, AddressOf informonAnimationDidStop
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657365747320746865207472616E73666F726D2070726F706572747920746F204964656E746974792E
		Sub ResetTransform()
		  mid.ResetTransform
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E67657320746865207472616E73666F726D2070726F7065727479206279206120726F746174696F6E20696E20646567726565732E
		Sub Rotate(Degrees as double)
		  mid.Rotate (Degrees.DegreesToRadians)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E67657320746865207472616E73666F726D70726F7065727479206279206E657720666163746F72732E2050617373206F6E6C79206F6E6520746F206B65657020746865206368616E67652070726F706F7274696F6E616C2E
		Sub Scale(Xfactor as Double, YFactor as Double = 0)
		  mid.Scale (Xfactor, YFactor)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D6F7665732074686520737065636966696564207375627669657720736F2074686174206974206170706561727320626568696E6420697473207369626C696E67732E
		Sub SendSubviewToBack(aView as AppleView)
		  mid.sendSubviewToBack aView
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207472616E73666F726D2070726F706572747920746F2074686174206F66206120286465677265652920726F746174696F6E2E
		Sub SetRotation(Degrees as double)
		  mid.SetRotation (Degrees.DegreesToRadians)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207472616E73666F726D2070726F706572747920746F20746865207363616C6520666163746F722873292E
		Sub SetScale(Xfactor as Double, YFactor as Double = 0)
		  mid.SetScale ( Xfactor, YFactor)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207472616E73666F726D2070726F706572747920746F2074686174206F662061207472616E736C6174696F6E2E
		Sub SetTranslation(DeltaX as Double, DeltaY as Double)
		  mid.SetTranslation (DeltaX, deltaY)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526573697A657320616E64206D6F76657320746865207265636569766572207669657720736F206974206A75737420656E636C6F736573206974732073756276696577732E
		Sub SizeToFit()
		  mid.SizeToFit
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120736E617073686F742076696577206261736564206F6E207468652063757272656E74207669657720636F6E74656E74732E
		Function Snapshot(afterUpdates as Boolean = false) As AppleView
		  Return mid.Snapshot (afterUpdates)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537461727473206120737072696E6720616E696D6174696F6E206F6E2074686520616C7068612070726F7065727479206F662074686520766965772E
		Sub SpringAnimateAlpha(alpha as Double, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, delay as double = 0, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  mid.SpringAnimateAlpha ( alpha, options, DampingRatio, velocity, seconds, curve, delay,  completion)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D73206120737072696E6720616E696D6174696F6E206F6E206120637573746F6D20626C6F636B20746861742072756E73206F6E20636C617373206C6576656C2C20736F2069742063616E206368616E67652074686520616E696D617461626C652070726F70657274696573206F66207365766572616C207669657773206174206F6E63652E
		Sub SpringAnimateBlock(Changeblock as Appleblock, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, delay as double = 0, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  mid.SpringAnimateblock ( changeblock, options, DampingRatio, velocity, seconds, curve, delay,  completion)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537461727473206120737072696E6720616E696D6174696F6E206F6E2074686520626F756E64732070726F7065727479206F662074686520766965772E
		Sub SpringAnimateBounds(NewBounds as xojo.core.rect, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, delay as double = 0, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  mid.SpringAnimateBounds ( NewBounds.tonsrect, options, DampingRatio, velocity, seconds, curve, delay,  completion)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537461727473206120737072696E6720616E696D6174696F6E206F6E207468652043656E7465722070726F7065727479206F662074686520766965772E
		Sub SpringAnimateCenter(NewCenter As xojo.core.point, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, delay as double = 0, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  mid.SpringAnimateCenter ( newcenter.tonspoint, options, DampingRatio, velocity, seconds, curve, delay,  completion)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537461727473206120737072696E6720616E696D6174696F6E206F6E20746865206261636B67726F756E64636F6C6F722070726F7065727479206F662074686520766965772E
		Sub SpringAnimateColor(NewColor As Color, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, delay as double = 0, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  mid.SpringAnimatecolor ( newcolor.toAppleColor, options, DampingRatio, velocity, seconds, curve, delay,  completion)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537461727473206120737072696E6720616E696D6174696F6E206F6E20746865206672616D652070726F7065727479206F662074686520766965772E
		Sub SpringAnimateFrame(NewFrame as xojo.core.rect, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, delay as double = 0, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  mid.SpringAnimateFrame ( newframe.tonsrect, options, DampingRatio, velocity, seconds, curve, delay,  completion)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537461727473206120737072696E6720616E696D6174696F6E206F6E20746865207472616E73666F726D2070726F7065727479206F662074686520766965772E
		Sub SpringAnimateTransform(NewTransform As CGAffineTransform, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, delay as double = 0, completion as AppleBlock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  mid.SpringAnimateTransform ( NewTransform, options, DampingRatio, velocity, seconds, curve, delay,  completion)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Subviews() As AppleView()
		  dim result() as AppleView
		  for q as integer = 0 to mid.SubViews.Count - 1
		    result.Append appleview.MakeFromPtr (mid.subviews.PtrAtIndex(q))
		  next
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toImage() As iOSImage
		  return mid.toImage.toiOSImage
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Transition(Transition as UIKitFramework.UIVIewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  mid.Transition (transition, options, seconds, curve, completion)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransitionWithAlpha(alpha as Double, Transition as UIKitFramework.UIVIewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  mid.TransitionWithAlpha (alpha, transition, options, seconds, curve, completion)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207472616E736974696F6E20616E696D6174696F6E20666F72207468652073706563696669656420636F6E7461696E657220766965772E
		Sub TransitionWithBlock(animation as appleblock, Transition as UIKitFramework.UIVIewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  mid.TransitionWithBlock (animation, transition, options, seconds, curve, completion)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransitionWithBounds(newBounds as xojo.core.rect, transition as UIKitFramework.UIVIewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  mid.TransitionWithBounds (newBounds.tonsrect, transition, options, seconds, curve, completion)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransitionWithCenter(aCenter as xojo.core.point, Transition as UIKitFramework.UIVIewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  mid.TransitionWithCenter (aCenter.toNSPoint, transition, options, seconds, curve, completion)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransitionWithColor(newColor as Color, Transition As UIKitFramework.UIVIewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  mid.TransitionWithColor (newcolor.toapplecolor, transition, options, seconds, curve, completion)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransitionWithFrame(aFrame as xojo.core.rect, Transition as UIKitFramework.UIVIewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  mid.TransitionWithFrame (aFrame.tonsrect, transition, options, seconds, curve, completion)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TransitionWithTransform(aTransform as CGAffineTransform, Transition as UIKitFramework.UIVIewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  mid.TransitionWithTransform (aTransform, transition, options, seconds, curve, completion)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Translate(DeltaX as Double, DeltaY as Double)
		  mid.Translate (DeltaX, deltaY)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207472616E736974696F6E20616E696D6174696F6E206265747765656E2074686520737065636966696564207669657773207573696E672074686520676976656E20706172616D65746572732E
		Sub ViewTransition(fromview as appleview, toView as Appleview, Transition as UIKitFramework.UIVIewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  mid.ViewTransition (fromview, toview, Transition, options, seconds, curve, completion)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ViewWithTag(Tag as Integer) As AppleView
		  return mid.ViewWithTag(tag)
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E20612073756276696577207761732061646465642E
		Event AddedSubview(Subview as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E206120626C6F636B20616E696D6174696F6E20636F6D706C657465732077697468206120626F6F6C65616E2076616C756520666F722074686520616E696D6174696F6E277320636F6D706C6574696F6E
		Event AnimationFinished(animationCompleted as boolean)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20616E204170706C654341416E696D6174696F6E20666F7220776869636820796F7520726567697374657265642074686520766965772061732064656C6567617465207374617274732E
		Event AnimationStarted(animation as AppleCAAnimation)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20616E204170706C654341416E696D6174696F6E20666F7220776869636820796F7520726567697374657265642074686520766965772061732064656C65676174652073746F707065642E
		Event AnimationStopped(animation as AppleCAAnimation, finished as Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772077617320616464656420746F20616E6F7468657220766965772E
		Event BecameSubview()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520636F6E74726F6C20636C6F7365732E
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Attributes( hidden ) Event CreateView() As uinteger
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207669657720686173206368616E676564206974732073697A652C206C696B65206166746572206120726F746174696F6E2E
		Event Resized()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520636F6E74726F6C20686173206D6F766520746F206974732077696E646F772E
		Event Shown()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652074696E7420636F6C6F72206368616E6765642E
		Event TintColorChanged()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520694F5320696E7465726661636520656E7669726F6E6D656E74206368616E6765642E
		Event TraitCollectionChanged(PreviousCollection As AppleTraitCollection)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772077696C6C206265636F6D6520612073756276696577206F6620616E6F7468657220766965772E
		Event WillBecomeSubview(Superview as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772069732061626F757420746F2072656D6F766520616E6F7468657220766965772E
		Event WillRemoveSubview(Subview as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772069732061626F757420746F2062652073686F776E20696E20612077696E646F772E
		Event WillShow(window as applewindow)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E280997320616C7068612076616C75652E
		#tag Getter
			Get
			  return mid.Alpha
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.alpha = value
			  
			End Set
		#tag EndSetter
		Alpha As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mID
			End Get
		#tag EndGetter
		AppleObject As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E657320776865746865722074686520636F6E74726F6C206175746F6D61746963616C6C7920726573697A657320697473207375627669657773207768656E2069747320626F756E6473206368616E67652E
		#tag Getter
			Get
			  return mid.AutoresizesSubviews
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.AutoresizesSubviews = value
			End Set
		#tag EndSetter
		AutoresizesSubviews As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20696E746567657220626974206D61736B20746861742064657465726D696E657320686F772074686520726563656976657220726573697A657320697473656C66207768656E2069747320737570657276696577E280997320626F756E6473206368616E67652E
		#tag Getter
			Get
			  return mid.AutoresizingMask
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.AutoresizingMask= value
			End Set
		#tag EndSetter
		AutoresizingMask As AppleAutoresizingMask
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E2809973206261636B67726F756E6420636F6C6F722E
		#tag Getter
			Get
			  return mid.BackgroundColor.tocolor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.BackgroundColor = value.toapplecolor
			End Set
		#tag EndSetter
		BackgroundColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626F756E64732072656374616E676C652C20776869636820646573637269626573207468652076696577E2809973206C6F636174696F6E20616E642073697A6520696E20697473206F776E20636F6F7264696E6174652073797374656D2E
		#tag Getter
			Get
			  return mid.Bounds.tocorerect
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.bounds = value.toNSRect
			End Set
		#tag EndSetter
		Bounds As xojo.core.rect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41736B7320746865207669657720776865746865722069742069732063757272656E746C792063617061626C65206F66206265696E6720666F63757365642E2028726561642D6F6E6C792920417661696C61626C652073696E636520694F5320392E30
		#tag Getter
			Get
			  return mid.CanBecomeFocused
			End Get
		#tag EndGetter
		CanBecomeFocused As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656E746572206F6620746865206672616D652E
		#tag Getter
			Get
			  return mid.center.tocorepoint
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.center = value.toNSPoint
			End Set
		#tag EndSetter
		Center As Xojo.Core.Point
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E65732077686574686572207468652076696577E280997320626F756E64732073686F756C64206265206175746F6D61746963616C6C7920636C6561726564206265666F72652064726177696E672E
		#tag Getter
			Get
			  return mid.ClearsContextBeforeDrawing
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.ClearsContextBeforeDrawing = value
			End Set
		#tag EndSetter
		ClearsContextBeforeDrawing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E657320776865746865722073756276696577732061726520636F6E66696E656420746F2074686520626F756E6473206F662074686520766965772E
		#tag Getter
			Get
			  return mid.ClipsToBounds
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.ClipsToBounds = value
			End Set
		#tag EndSetter
		ClipsToBounds As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120666C6167207573656420746F2064657465726D696E6520686F7720612076696577206C617973206F75742069747320636F6E74656E74207768656E2069747320626F756E6473206368616E67652E
		#tag Getter
			Get
			  return mid.ContentMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.contentmode = value
			End Set
		#tag EndSetter
		ContentMode As UIKitFramework.UIViewContentMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363616C6520666163746F72206170706C69656420746F2074686520766965772E
		#tag Getter
			Get
			  return mid.ContentScaleFactor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.ContentScaleFactor = value
			End Set
		#tag EndSetter
		ContentScaleFactor As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return appleview.EnableAnimations
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  appleview.EnableAnimations = value
			End Set
		#tag EndSetter
		Shared EnableAnimations As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C7565207468617420696E646963617465732077686574686572207468652072656365697665722068616E646C657320746F756368206576656E7473206578636C75736976656C792E
		#tag Getter
			Get
			  return mid.ExclusiveTouch
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.ExclusiveTouch  = value
			End Set
		#tag EndSetter
		ExclusiveTouch As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C7565207468617420696E64696361746573207768657468657220746865206974656D2069732063757272656E746C7920666F63757365642E20417661696C61626C652073696E636520694F5320392E302E205468652073657474657220697320617661696C61626C652062656C6F772028466F637573656420697473656C66206973206120726561642D6F6E6C792070726F706572747929
		#tag Getter
			Get
			  return mid.Focused
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.Focused = value
			End Set
		#tag EndSetter
		Focused As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206672616D652072656374616E676C652C20776869636820646573637269626573207468652076696577E2809973206C6F636174696F6E20616E642073697A6520696E2069747320737570657276696577E280997320636F6F7264696E6174652073797374656D2E
		#tag Getter
			Get
			  Return mid.frame.tocorerect
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.frame = value.tonsrect
			End Set
		#tag EndSetter
		Frame As Xojo.Core.Rect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E657320776865746865722074686520636F6E73747261696E747320696D70616374696E6720746865206C61796F7574206F6620746865207669657720696E636F6D706C6574656C79207370656369667920746865206C6F636174696F6E206F662074686520766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return mid.HasAmbiguousLayout
			End Get
		#tag EndGetter
		HasAmbiguousLayout As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E657320776865746865722074686520766965772069732068696464656E2E
		#tag Getter
			Get
			  return mid.Hidden
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.Hidden = value
			End Set
		#tag EndSetter
		Hidden As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 52657475726E732074686520696E68657269746564206475726174696F6E206F66207468652063757272656E7420616E696D6174696F6E2E204F6E6C7920776F726B732077697468696E2055495669657720616E696D6174696F6E20626C6F636B732E2028726561642D6F6E79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  return AppleView.InheritedAnimationDuration
			End Get
		#tag EndGetter
		Shared InheritedAnimationDuration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mid.LayoutMargins
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.LayoutMargins = value
			End Set
		#tag EndSetter
		LayoutMargins As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F7074696F6E616C20766965772077686F736520616C706861206368616E6E656C206973207573656420746F206D61736B20612076696577E280997320636F6E74656E742E
		#tag Getter
			Get
			  return mid.mask
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.mask= value
			End Set
		#tag EndSetter
		Mask As AppleView
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected mID As AppleView
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C7565207468617420696E646963617465732077686574686572207468652072656365697665722068616E646C6573206D756C74692D746F756368206576656E74732E
		#tag Getter
			Get
			  return mid.MultipleTouchEnabled
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.MultipleTouchEnabled = value
			End Set
		#tag EndSetter
		MultipleTouchEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E65732077686574686572207468652076696577206973206F70617175652E
		#tag Getter
			Get
			  return mid.Opaque
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.Opaque = value
			End Set
		#tag EndSetter
		Opaque As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mid.PreservesSuperviewLayoutMargins
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.PreservesSuperviewLayoutMargins = value
			End Set
		#tag EndSetter
		PreservesSuperviewLayoutMargins As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063616C63756C617465642073697A652074686174206973206E656564656420746F20646973706C6179207468652066756C6C20636F6E74656E74206F662074686520766965772E2020536565205F53697A65546F4669742E5F202028726561642D6F6E6C7929
		#tag Getter
			Get
			  return mid.FittingSize.tocoresize
			End Get
		#tag EndGetter
		SizeThatFits As Xojo.Core.Size
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E2809973207375706572766965772C206F72206E696C20696620697420686173206E6F6E652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return mid.SuperView
			End Get
		#tag EndGetter
		SuperView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mid.tag
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.tag = value
			End Set
		#tag EndSetter
		Tag As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206669727374206E6F6E2D64656661756C742074696E742061646A7573746D656E74206D6F64652076616C756520696E207468652076696577E2809973206869657261726368792C20617363656E64696E672066726F6D20616E64207374617274696E67207769746820746865207669657720697473656C662E
		#tag Getter
			Get
			  return mid.TintAdjustmentMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.TintAdjustmentMode = value
			End Set
		#tag EndSetter
		TintAdjustmentMode As AppleView.UIViewTintAdjustmentMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 53706563696669657320746865207472616E73666F726D206170706C69656420746F207468652072656365697665722C2072656C617469766520746F207468652063656E746572206F662069747320626F756E64732E
		#tag Getter
			Get
			  return mid.Transform
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.transform = value
			End Set
		#tag EndSetter
		Transform As CGAffineTransform
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E65732077686574686572207468652076696577E2809973206175746F726573697A696E67206D61736B206973207472616E736C6174656420696E746F204175746F204C61796F757420636F6E73747261696E74732E
		#tag Getter
			Get
			  return mid.TranslatesAutoresizingMaskIntoConstraints
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.TranslatesAutoresizingMaskIntoConstraints = value
			End Set
		#tag EndSetter
		TranslatesAutoresizingMaskIntoConstraints As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E657320776865746865722075736572206576656E7473206172652069676E6F72656420616E642072656D6F7665642066726F6D20746865206576656E742071756575652E
		#tag Getter
			Get
			  return mid.UserInteractionEnabled
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mid.UserInteractionEnabled = value
			End Set
		#tag EndSetter
		UserInteractionEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E28099732077696E646F77206F626A6563742C206F72206E696C20696620697420686173206E6F6E652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return mid.Window
			End Get
		#tag EndGetter
		Window As AppleWindow
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessibilityHint"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cFFFFFF00"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFocused"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentMode"
			Group="Behavior"
			Type="UIKitFramework.UIViewContentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleToFill"
				"1 - ScaleAspectFit"
				"2 - ScaleAspectFill"
				"3 - Redraw"
				"4 - Center"
				"5 - Top"
				"6 - Bottom"
				"7 - Left"
				"8 - Right"
				"9 - TopLeft"
				"10 - TopRight"
				"11 - BottomLeft"
				"12 - BottomRight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentScaleFactor"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExclusiveTouch"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Focused"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
			Visible=true
			Group="Appearance"
			InitialValue="False"
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultipleTouchEnabled"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opaque"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tag"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintAdjustmentMode"
			Group="Behavior"
			Type="AppleView.UIViewTintAdjustmentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - Normal"
				"2 - Dimmed"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
