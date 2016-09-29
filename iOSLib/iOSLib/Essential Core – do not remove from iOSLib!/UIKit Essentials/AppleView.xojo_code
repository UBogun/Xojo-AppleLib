#tag Class
 Attributes ( incomplete ) Protected Class AppleView
Inherits AppleResponder
	#tag Method, Flags = &h0, Description = 41646473206120636F6E73747261696E74206F6E20746865206C61796F7574206F662074686520726563656976696E672076696577206F72206974732073756276696577732E
		Sub AddConstraint(Constraint As AppleLayoutConstraint)
		  AddConstraint mid, Constraint.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub addConstraint Lib uikitlibname Selector "addConstraint:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 41646473206D756C7469706C6520636F6E73747261696E7473206F6E20746865206C61796F7574206F662074686520726563656976696E672076696577206F72206974732073756276696577732E
		Sub AddConstraints(Constraints As AppleArray)
		  AddConstraints mid, Constraints.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub addConstraints Lib uikitlibname Selector "addConstraints:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 417474616368657320612067657374757265207265636F676E697A657220746F2074686520766965772E
		Sub AddGestureRecognizer(GestureRecognizer as AppleGestureRecognizer)
		  declare sub addGestureRecognizer lib UIKitLibname selector "addGestureRecognizer:" (id as ptr, GestureRecognizer as ptr)
		  addGestureRecognizer id, GestureRecognizer.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41646473207468652070726F7669646564206C61796F757420677569646520746F2074686520766965772E20417661696C61626C652073696E636520694F5320392E302E
		Sub AddLayoutGuide(Guide As AppleLayoutGuide)
		  AddLayoutGuide mid, Guide.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub addLayoutGuide Lib uikitlibname Selector "addLayoutGuide:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 416464732061207669657720746F2074686520656E64206F662074686520766965772773206C697374206F662073756276696577732E
		Sub AddSubview(aView as AppleView)
		  addSubview mid, aView.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addSubview Lib UIKitLibName Selector "addSubview:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Animate(duration as Double,  animationBlock as appleblock, delay as double = 0, options as AppleViewAnimationOption = Nil, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, transition as UIVIewAnimationTransition = UIVIewAnimationTransition.None, completionBlock as AppleBlock = nil)
		  if options = nil then options = AppleViewAnimationOption.OptionNone
		  AnimateWithDuration classptr, duration, delay, AnimationOption (options, curve, transition), animationBlock.Handle, if (completionBlock = nil, nil, completionBlock.handle)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416E696D617465206368616E67657320746F2074686520616C7068612070726F7065727479206F66207468652076696577207573696E672074686520737065636966696564206475726174696F6E2C2064656C61792C206F7074696F6E732C20616E6420636F6D706C6574696F6E2068616E646C65722E20
		Sub AnimateAlpha(alpha as Double, options as AppleViewAnimationOption, Seconds as Double = 0.2, delay as double = 0, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, transition as UIVIewAnimationTransition = UIVIewAnimationTransition.none, completion as appleblock = nil)
		  TransformToAlpha = alpha
		  dim block as new appleblock (AddressOf TransformAlphaBlock)
		  animate seconds, block, delay,  options, curve, transition, completion
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537461727473206120637573746F6D206D6574686F642066726F6D206120626C6F636B20776869636820796F752063616E2075736520746F206368616E676520646966666572656E742070726F70657274696573206F66207468652076696577207573696E672074686520737065636966696564206475726174696F6E2C2064656C61792C206F7074696F6E732C20616E6420636F6D706C6574696F6E2068616E646C65722E20
		Sub AnimateBlock(ChangeBlock as AppleBlock, options as AppleViewAnimationOption, Seconds as Double = 0.2, delay as double = 0, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, transition as UIVIewAnimationTransition = UIVIewAnimationTransition.none, completion as appleblock = nil)
		  animate seconds, changeblock, delay,  options, curve, transition, completion
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416E696D617465206368616E67657320746F2074686520626F756E64732070726F7065727479206F66207468652076696577207573696E672074686520737065636966696564206475726174696F6E2C2064656C61792C206F7074696F6E732C20616E6420636F6D706C6574696F6E2068616E646C65722E20
		Sub AnimateBounds(newBounds as FoundationFramework.NSRect,   options as AppleViewAnimationOption, Seconds as Double = 0.2, delay as double = 0, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, transition as UIVIewAnimationTransition = UIVIewAnimationTransition.none, completion as appleblock = nil)
		  TransformToBounds = NewBounds
		  dim block as new AppleBlock (AddressOf TransformFrameBlock)
		  animate seconds, block, delay,  options, curve, transition, completion
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416E696D617465206368616E67657320746F207468652063656E7465722070726F7065727479206F66207468652076696577207573696E672074686520737065636966696564206475726174696F6E2C2064656C61792C206F7074696F6E732C20616E6420636F6D706C6574696F6E2068616E646C65722E20
		Sub AnimateCenter(aCenter as FoundationFramework.NSPoint, options as AppleViewAnimationOption, Seconds as Double = 0.2, delay as double = 0, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, transition as UIVIewAnimationTransition = UIVIewAnimationTransition.none, completion as appleblock = nil)
		  TransformToCenter = aCenter
		  dim block as new AppleBlock (AddressOf TransformCenterBlock)
		  animate seconds, block, delay,  options, curve, transition, completion
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416E696D617465206368616E67657320746F20746865206261636B67726F756E64636F6C6F722070726F7065727479206F66207468652076696577207573696E672074686520737065636966696564206475726174696F6E2C2064656C61792C206F7074696F6E732C20616E6420636F6D706C6574696F6E2068616E646C65722E20
		Sub AnimateColor(newColor as AppleColor,  options as AppleViewAnimationOption, Seconds as Double = 0.2, delay as double = 0, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, transition as UIVIewAnimationTransition = UIVIewAnimationTransition.none, completion as appleblock = nil)
		  TransformToColor = newColor
		  dim block as new AppleBlock (AddressOf TransformColorBlock)
		  animate seconds, block, delay,  options, curve, transition, completion
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416E696D617465206368616E67657320746F20746865206672616D652070726F7065727479206F66207468652076696577207573696E672074686520737065636966696564206475726174696F6E2C2064656C61792C206F7074696F6E732C20616E6420636F6D706C6574696F6E2068616E646C65722E20
		Sub AnimateFrame(aFrame as FoundationFramework.NSRect,  options as AppleViewAnimationOption, Seconds as Double = 0.2, delay as double = 0, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, transition as UIVIewAnimationTransition = UIVIewAnimationTransition.none, completion as appleblock = nil)
		  TransformToFrame = aFrame
		  dim block as new AppleBlock (AddressOf TransformFrameBlock)
		  animate seconds, block, delay,  options, curve, transition, completion
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416E696D617465206368616E67657320746F20746865207472616E73666F726D2070726F7065727479206F66207468652076696577207573696E672074686520737065636966696564206475726174696F6E2C2064656C61792C206F7074696F6E732C20616E6420636F6D706C6574696F6E2068616E646C65722E20
		Sub AnimateTransform(aTransform as CGAffineTransform, options as AppleViewAnimationOption, Seconds as Double = 0.2, delay as double = 0, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, transition as UIVIewAnimationTransition = UIVIewAnimationTransition.none, completion as appleblock = nil)
		  TransformToTransform = aTransform
		  dim block as new AppleBlock (AddressOf TransformTransformBlock)
		  animate seconds, block, delay,  options, curve, transition, completion
		  
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub animateWithDuration Lib uikitlibname Selector "animateWithDuration:delay:options:animations:completion:" (id as ptr, duration as Double, delay as double, options as uinteger, animations as ptr, completion as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function AnimationOption(Option as AppleViewAnimationOption, curve as UIVIewAnimationCurve, transition as UIVIewAnimationTransition) As UInteger
		  return UInteger(transition).ShiftLeft(20)+UInteger(curve).ShiftLeft(16)+uinteger(Option.Option)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub BeginAnimations(AnimationID as CFStringRef)
		  Declare sub beginAnimations lib UIKitLibname selector "beginAnimations:context:" (id as ptr, name as CFStringref, context as ptr)
		  beginAnimations ClassPtr, animationID, nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D6F7665732074686520737065636966696564207375627669657720736F20746861742069742061707065617273206F6E20746F70206F6620697473207369626C696E67732E
		Sub BringSubviewToFront(aView as AppleView)
		  BringSubviewToFront mid, aView.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub bringSubviewToFront Lib UIKitLibName Selector "bringSubviewToFront:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 412073686F727463757420666F72204347416666696E655472616E73666F726D436F6E636174
		Sub CombineTransformations(Transform1 as CGAffineTransform, transform2 as CGAffineTransform)
		  Transform = TransformExtension.CGAffineTransformConcat (Transform1, transform2)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub CommitAnimations()
		  Declare sub commitAnimations lib UIKitLibname selector "commitAnimations:" (id as ptr)
		  commitAnimations ClassPtr
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 5468652064656661756C7420626C6F636B207573656420666F7220626C6F636B20616E696D6174696F6E202246696E697368656422204576656E7473
		Attributes( hidden ) Private Sub CompletionBlock(animationCompleted as Boolean)
		  #pragma unused animationCompleted
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 5468652064656661756C7420626C6F636B207573656420666F7220626C6F636B20616E696D6174696F6E202246696E697368656422204576656E7473
		Attributes( hidden ) Private Shared Sub CompletionClassBlock(animationCompleted as Boolean)
		  #pragma unused AnimationCompleted
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A65732061206E65772076696577207769746820746865206672616D652064696D656E73696F6E732E
		Sub Constructor(aFrame as FoundationFramework.NSRect)
		  Super.Constructor (UIKitFramework.initWithFrame (alloc(ClassPtr), aFrame), true)
		  me.registerIdentity(self)
		  me.BackgroundColor = AppleColor.ClearColor
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D207468652073706563696669656420636F6F7264696E61746520737061636520746F2074686520636F6F7264696E617465207370616365206F66207468652063757272656E7420766965772E
		Function ConvertPointFromView(aPoint as FoundationFramework.NSPoint, aView as AppleView) As FoundationFramework.NSPoint
		  declare Function convertPointfromView lib UIKitLibname selector "convertPoint:fromView:" (id as ptr, aPoint as FoundationFramework.NSPoint, aview as ptr) as FoundationFramework.NSPoint
		  return convertPointfromView (id, apoint, aview.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D2074686520636F6F7264696E617465207370616365206F66207468652063757272656E74207669657720746F207468652073706563696669656420636F6F7264696E6174652073706163652E
		Function ConvertPointToView(aPoint as FoundationFramework.NSPoint, aView as AppleView) As FoundationFramework.NSPoint
		  declare Function convertPointtoView lib UIKitLibname selector "convertPoint:toView:" (id as ptr, aPoint as FoundationFramework.NSPoint, aview as ptr) as FoundationFramework.NSPoint
		  return convertPointtoView (id, apoint, aview.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D207468652073706563696669656420636F6F7264696E61746520737061636520746F2074686520636F6F7264696E617465207370616365206F66207468652063757272656E7420766965772E
		Function ConvertRectFromView(aRect as FoundationFramework.NSRect, aView as AppleView) As FoundationFramework.NSRect
		  declare Function ConvertRectFromView lib UIKitLibname selector "convertRect:fromView:" (id as ptr, aRect  as FoundationFramework.NSRect, aview as ptr)  as FoundationFramework.NSRect
		  return ConvertRectFromView (id, arect, aview.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D2074686520636F6F7264696E617465207370616365206F66207468652063757272656E74207669657720746F207468652073706563696669656420636F6F7264696E6174652073706163652E
		Function ConvertRectToView(aRect as FoundationFramework.NSRect, aView as AppleView) As FoundationFramework.NSRect
		  declare Function ConvertRectToView lib UIKitLibname selector "convertRect:toView:" (id as ptr, aRect  as FoundationFramework.NSRect, aview as ptr)  as FoundationFramework.NSRect
		  return ConvertRectToView (id, arect, aview.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120636F7079206F662074686520766965772E
		Function Copy() As AppleView
		  return new AppleView (ObjectiveCRuntime.object_copy (id, 0))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  me.removeidentity ()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D2074686520636F6F7264696E617465207370616365206F66207468652063757272656E74207669657720746F207468652073706563696669656420636F6F7264696E6174652073706163652E
		Function DrawViewHierarchy(aRect as FoundationFramework.NSRect, afterscreenupdates as boolean = False) As boolean
		  declare Function drawViewHierarchyInRect lib UIKitLibname selector "drawViewHierarchyInRect:afterScreenUpdates:" (id as ptr, aRect  as FoundationFramework.NSRect, afterscreenupdates as boolean)  as Boolean
		  return DrawViewHierarchyinRect (id, aRect, afterscreenupdates)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Sub EmptyBlock()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43617573657320746865207669657720286F72206F6E65206F662069747320656D6265646465642074657874206669656C64732920746F2072657369676E2074686520666972737420726573706F6E646572207374617475732E20496620656E666F726365642C207265676172646C657373206F6620776861742074686520766965772063757272656E746C7920697320646F696E672E
		Sub EndEditing(Enforce as Boolean = false)
		  Declare sub endEditing lib UIKitLibname selector "endEditing:" (id as ptr, enforce as Boolean)
		  endEditing id, enforce
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 45786368616E67657320746865207375627669657773206174207468652073706563696669656420696E64696365732E0A0A
		Sub ExchangeSubviews(index1 as Integer, Index2 As Integer)
		  exchangeSubviews mid, index1, index2
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub exchangeSubviews Lib UIKitLibName Selector "exchangeSubviewAtIndex:withSubviewAtIndex:" (id as ptr, i1 as integer, i2 as integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52616E646F6D6C79206368616E67657320746865206672616D65206F6620612076696577207769746820616E20616D626967756F7573206C61796F7574206265747765656E2074686520646966666572656E742076616C69642076616C7565732E
		Sub ExerciseAmbiguityInLayout()
		  Declare Sub exerciseAmbiguityInLayout lib UIKitLibname selector "exerciseAmbiguityInLayout" (id as ptr)
		  exerciseAmbiguityInLayout id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520617070656172616E63652070726F787920666F7220746865207265636569766572207468617420686173207468652070617373656420747261697420636F6C6C656374696F6E2E
		Attributes( hidden )  Shared Function getAppearanceforTrait(classptr as ptr, Collection as AppleTraitCollection) As ptr
		  declare function appearanceForTraitCollection lib UIKitLibname selector "appearanceForTraitCollection:" (id as ptr, Collection as ptr) as ptr
		  return appearanceForTraitCollection(classptr, if (collection = nil, nil, collection.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getautoresizesSubviews Lib UIKitLibName Selector "autoresizesSubviews" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getautoResizingMask Lib UIKitLibName Selector "autoresizingMask" (id as ptr) As Uinteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getconstraints Lib UIKitLibName Selector "constraints" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontentMode Lib UIKitLibName Selector "contentMode" (id as ptr) As UIViewContentMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisDescendantOfView Lib UIKitLibName Selector "isDescendantOfView:" (id as ptr, value as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlayer Lib UIKitLibName Selector "layer" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getlayoutGuides Lib uikitlibname Selector "layoutGuides" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getlayoutMarginsGuide Lib uikitlibname Selector "layoutMarginsGuide" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmaskView Lib UIKitLibName Selector "maskView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getreadableContentGuide Lib uikitlibname Selector "readableContentGuide" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsubviews Lib UIKitLibName Selector "subviews" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsuperview Lib UIKitLibName Selector "superview" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettintAdjustmentMode Lib UIKitLibName Selector "tintAdjustmentMode" (id as ptr) As UIViewTintAdjustmentMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettranslatesAutoresizingMaskIntoConstraints Lib UIKitLibName Selector "translatesAutoresizingMaskIntoConstraints" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652066617274686573742064657363656E64616E74206F662074686520726563656976657220696E207468652076696577206869657261726368792028696E636C7564696E6720697473656C6629207468617420636F6E7461696E7320612073706563696669656420706F696E742E
		Function HitTest(point as FoundationFrameWork.nspoint, anEvent as AppleNSEvent) As AppleView
		  Declare function hitTest lib UIKitLibname selector "hitTest:withEvent:" (id as ptr, point as FoundationFrameWork.nspoint, anEvent as ptr) as ptr
		  return AppleView.MakeFromPtr (HitTest(id, point, if (anEvent = nil, nil, anEvent.id)))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function Identity(id as ptr) As AppleView
		  dim wr as xojo.Core.WeakRef = XojoIdentity.Lookup(id, Nil)
		  if wr <> nil then return AppleView(wr.Value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_DidAddSubview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as AppleView = InformInstance(pid)
		  if  ego <> nil then ego.informonDidAddSubview  (view)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_DidMoveToSuperview(pid as ptr, sel as ptr)
		  dim ego as AppleView = InformInstance(pid)
		  if ego <> nil then ego.informonDidMoveToSuperview
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_DidMoveToWindow(pid as ptr, sel as ptr)
		  dim ego as AppleView = InformInstance(pid)
		  if ego <> nil  then  
		    if ego.Window <> nil then
		      ego.informonDidMoveToWindow
		    else
		      ego.informOnClose
		    end if
		  end if
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_layerclass(pid as ptr, sel as ptr) As Ptr
		  return if (customLayerClass = nil, LayerClass, customLayerClass)
		  #Pragma Unused  sel
		  #pragma unused pid
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_LayoutSubviews(pid as ptr, sel as ptr)
		  dim ego as AppleView = InformInstance(pid)
		  if ego <> nil  then ego.informonlayoutSubviews
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_tintColorDidChange(pid as ptr, sel as ptr)
		  dim ego as AppleView = InformInstance(pid)
		  if ego <> nil then ego.informontintColorDidChange
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_traitCollectionDidChange(pid as ptr, sel as ptr, PreviousCollection As Ptr)
		  dim ego as AppleView = InformInstance(pid)
		  if ego <> nil  then ego.informontraitCollectionDidChange (AppleTraitCollection.MakefromPtr(previouscollection))
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_willMoveToSuperview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as AppleView = InformInstance(pid)
		  if ego <> nil  then ego.informonwillMoveToSuperview  (view)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_willMoveToWindow(pid as ptr, sel as ptr, window as Ptr)
		  dim ego as AppleView = InformInstance(pid)
		  if ego <> nil  then ego.informonwillMoveToWindow (window)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_willRemoveSubview(pid as ptr, sel as ptr, view as Ptr)
		  dim ego as AppleView = InformInstance(pid)
		  if ego <> nil then ego.informonwillRemoveSubview  (view)
		  
		  #Pragma Unused  sel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function InformInstance(id as ptr) As AppleView
		  dim ident as AppleView = Identity(id)
		  return if (ident = nil, AppleView.MakeFromPtr (id), ident)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnClose()
		  RaiseEvent Close
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidAddSubview(view as ptr)
		  RaiseEvent DidAddSubview ( AppleView.makefromptr( view))
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidMoveToSuperView()
		  me.hasinited = true
		  RaiseEvent DidMoveToSuperview 
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonDidMoveToWindow()
		  RaiseEvent DidMoveToWindow
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonlayoutSubviews()
		  RaiseEvent layoutSubviews
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informontintColorDidChange()
		  RaiseEvent tintColorDidChange 
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informontraitCollectionDidChange(PreviousCollection As AppleTraitCollection)
		  RaiseEvent TraitCollectionDidChange (PreviousCollection)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonwillMoveToSuperView(view as ptr)
		  RaiseEvent WillMoveToSuperview ( AppleView.makefromptr( view))
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonwillMoveToWindow(window as Ptr)
		  if window <> nil then
		    RaiseEvent WillMoveToWindow ( applewindow.MakefromPtr(window))
		  else
		    RaiseEvent Close
		  end if
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonWillRemoveSubview(view as ptr)
		  RaiseEvent WillRemoveSubview ( AppleView.makefromptr( view))
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E736572747320612073756276696577206174207468652073706563696669656420696E6465782E
		Sub InsertSubview(aView as AppleView, index as integer)
		  insertSubviewatIndex mid, aView.id, index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7365727473206120766965772061626F766520616E6F74686572207669657720696E207468652076696577206869657261726368792E
		Sub InsertSubviewAbove(aView as AppleView, aboveView as AppleView)
		  InsertSubviewAbove id, aView.id, aboveView.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub insertSubviewabove Lib UIKitLibName Selector "insertSubview:aboveSubview:" (id as ptr, value as ptr, aboveview as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub insertSubviewatIndex Lib UIKitLibName Selector "insertSubview:atIndex:" (id as ptr, value as ptr, index as integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 496E7365727473206120766965772062656C6F7720616E6F74686572207669657720696E207468652076696577206869657261726368792E
		Sub InsertSubviewBelow(aView as AppleView, BelowView as AppleView)
		  InsertSubviewBelow mid, aView.id, belowView.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub insertSubviewbelow Lib UIKitLibName Selector "insertSubview:belowSubview:" (id as ptr, value as ptr, aboveview as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 496E76616C696461746573207468652063757272656E74206C61796F7574206F662074686520726563656976657220616E642074726967676572732061206C61796F75742075706461746520647572696E6720746865206E65787420757064617465206379636C652E
		Sub Invalidate()
		  SetNeedsDisplay (mid)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7665727473207468652063757272656E74207472616E736F66726D2070726F70657274792E
		Sub InvertTransform()
		  Transform = TransformExtension.CGAffineTransformInvert (Transform)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E672077686574686572207468652063757272656E74207669726520697320612073756276696577206F66206120676976656E2076696577206F72206964656E746963616C20746F207468617420766965772E
		Function IsDescendantOfView(aView As AppleView) As Boolean
		  Return getIsDescendantOfView (mid, aView.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub layoutIfNeeded Lib UIKitLibName Selector "layoutIfNeeded" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub layoutSubviews Lib UIKitLibName Selector "layoutSubviews" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleView
		  return if (aptr <> NIL, new AppleView (aptr), NIL)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub PerformSystemAnimation(animation as UISystemAnimation, views as applearray, options as uinteger, animations as appleblock = nil, completion as appleblock = nil)
		  Declare sub performSystemAnimation lib UIKitLibname selector "performSystemAnimation:onViews:options:animations:completion:" _
		  (id as ptr, animation as UISystemAnimation, views as ptr, options as uinteger, animations as ptr, completion as ptr)
		  if animations = nil then animations = new AppleBlock(AddressOf EmptyBlock)
		  performSystemAnimation classptr, animation, views.id, options,  animations.Handle, if (completion = nil, nil, completion.handle)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E67207768657468657220746865207669657720636F6E7461696E73207468652073706563696669656420706F696E742E
		Function PointInside(point as FoundationFrameWork.nspoint, anEvent as AppleNSEvent) As Boolean
		  Declare function pointInside lib UIKitLibname selector "pointInside:withEvent:" (id as ptr, point as FoundationFrameWork.nspoint, anEvent as ptr) as Boolean
		  return pointInside (id, point, if (anEvent = nil, nil, anEvent.id))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C617973206F75742074686520737562766965777320696D6D6564696174656C792E
		Sub Refresh()
		  LayoutIfNeeded mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5265676973746572732074686520636F6E74726F6C20697473656C662061732061205765616B52656620696E2061207368617265642044696374696F6E6172792E
		Attributes( hidden )  Sub RegisterIdentity(Identity As object)
		  XojoIdentity.Value (id) = xojo.core.WeakRef.Create(Identity)
		  super.RegisterIdentity (Identity)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveAnimated(options as AppleVIewAnimationoption, curve as UIVIewAnimationCurve = uiviewanimationcurve.easeineaseout, transition as UIVIewAnimationTransition = uiviewanimationtransition.None, parallelAnimations as AppleBlock = nil, Completion as Appleblock = nil)
		  dim myarray as new AppleMutableArray
		  myarray.Addobject me
		  PerformSystemAnimation (UISystemAnimation.Delete, myarray, AnimationOption (options,curve, transition), parallelAnimations, Completion)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573207468652073706563696669656420636F6E73747261696E742066726F6D2074686520766965772E
		Sub RemoveConstraint(Constraint As AppleLayoutConstraint)
		  RemoveConstraint id, Constraint.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeConstraint Lib uikitlibname Selector "removeConstraint:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573207468652073706563696669656420636F6E73747261696E74732066726F6D207468652076696577
		Sub RemoveConstraints(Constraints As AppleArray)
		  RemoveConstraints id, Constraints.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeConstraints Lib uikitlibname Selector "removeConstraints:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 556E6C696E6B732074686520766965772066726F6D206974732073757065727669657720616E64206974732077696E646F772C20616E642072656D6F7665732069742066726F6D2074686520726573706F6E64657220636861696E2E
		Sub RemoveFromSuperview()
		  removeFromSuperview mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeFromSuperview Lib UIKitLibName Selector "removeFromSuperview" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 446574616368657320612067657374757265207265636F676E697A65722066726F6D2074686520726563656976696E6720766965772E
		Sub RemoveGestureRecognizer(GestureRecognizer as AppleGestureRecognizer)
		  declare sub removeGestureRecognizer lib UIKitLibname selector "removeGestureRecognizer:" (id as ptr, GestureRecognizer as ptr)
		  removeGestureRecognizer id, GestureRecognizer.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub RemoveIdentity()
		  #Pragma BreakOnExceptions false
		  try
		    XojoControls.Remove (id)
		  catch 
		    
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573207468652070726F7669646564206C61796F75742067756964652066726F6D2074686520766965772E20417661696C61626C652073696E6365204F5320582031302E31312E
		Sub RemoveLayoutGuide(Guide As AppleLayoutGuide)
		  removeLayoutGuide mid, guide.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeLayoutGuide Lib uikitlibname Selector "removeLayoutGuide:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657365747320746865207472616E73666F726D2070726F706572747920746F204964656E746974792E
		Sub ResetTransform()
		  Transform = TransformExtension.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E67657320746865207472616E73666F726D2070726F7065727479206279206120726F746174696F6E20696E2072616469616E732E
		Sub Rotate(Radians as double)
		  Transform = TransformExtension.CGAffineTransformRotate (Transform, radians)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E67657320746865207472616E73666F726D70726F7065727479206279206E657720666163746F72732E2050617373206F6E6C79206F6E6520746F206B65657020746865206368616E67652070726F706F7274696F6E616C2E
		Sub Scale(Xfactor as Double, YFactor as Double = 0)
		  Transform = TransformExtension.CGAffineTransformScale (Transform, Xfactor, YFactor)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D6F7665732074686520737065636966696564207375627669657720736F2074686174206974206170706561727320626568696E6420697473207369626C696E67732E
		Sub SendSubviewToBack(aView as AppleView)
		  sendSubviewToBack mid, aView.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sendSubviewToBack Lib UIKitLibName Selector "sendSubviewToBack:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setautoresizesSubviews Lib UIKitLibName Selector "setAutoresizesSubviews:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setautoResizingMask Lib UIKitLibName Selector "setAutoresizingMask:" (id as ptr, value as uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontentMode Lib UIKitLibName Selector "setContentMode:" (id as ptr, value as UIViewContentMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setmaskView Lib UIKitLibName Selector "setMaskView:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4D61726B7320746865207265636569766572E280997320656E7469726520626F756E64732072656374616E676C65206173206E656564696E6720746F206265207265647261776E2E
		Sub SetNeedsDisplay()
		  Declare sub setNeedsDisplay lib UIKitLibname selector "setNeedsDisplay" (id as ptr)
		  setNeedsDisplay (id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D61726B7320746865207265636569766572E2809973207370656369666965642072656374616E676C65206173206E656564696E6720746F206265207265647261776E2E
		Sub SetNeedsDisplay(aRect as FoundationFrameWork.nsrect)
		  Declare sub setNeedsDisplayInRect lib UIKitLibname selector "setNeedsDisplayInRect:" (id as ptr, rect as FoundationFrameWork.nsrect)
		  setNeedsDisplayInRect (id, arect)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub SetNeedsDisplay Lib UIKitLibName Selector "setNeedsDisplay" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5375626D6974732061207265717565737420746F2074686520666F63757320656E67696E6520666F72206120666F6375732075706461746520696E207468697320656E7669726F6E6D656E742E20417661696C61626C652073696E636520694F5320392E312E
		Sub SetNeedsFocusUpdate()
		  if RespondsToSelector ("setNeedsFocusUpdate", classptr) then
		    declare sub setNeedsFocusUpdate lib UIKitLibname selector "setNeedsFocusUpdate" (id as ptr)
		    setNeedsFocusUpdate id
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setNeedsLayout Lib UIKitLibName Selector "setNeedsLayout" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207472616E73666F726D2070726F706572747920746F2074686174206F662061202872616469616E732920726F746174696F6E2E
		Sub SetRotation(Radians as double)
		  Transform = TransformExtension.CGAffineTransformMakeRotation (radians)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207472616E73666F726D2070726F706572747920746F20746865207363616C6520666163746F722873292E
		Sub SetScale(Xfactor as Double, YFactor as Double = 0)
		  Transform = TransformExtension.CGAffineTransformMakeScale ( Xfactor, YFactor)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settintAdjustmentMode Lib UIKitLibName Selector "setTintAdjustmentMode:" (id as ptr, value as UIViewTintAdjustmentMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settranslatesAutoresizingMaskIntoConstraints Lib UIKitLibName Selector "setTranslatesAutoresizingMaskIntoConstraints:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207472616E73666F726D2070726F706572747920746F2074686174206F662061207472616E736C6174696F6E2E
		Sub SetTranslation(DeltaX as Double, DeltaY as Double)
		  Transform = TransformExtension.CGAffineTransformMakeTranslation (DeltaX, deltaY)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41736B7320746865207669657720746F2063616C63756C61746520616E642072657475726E207468652073697A6520746861742062657374206669747320746865207370656369666965642073697A652E
		Function SizeThatFits(aSize As FoundationFrameWork.nssize) As FoundationFrameWork.nssize
		  return UIKitFramework.getsizeThatFits (mid, asize)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526573697A657320616E64206D6F76657320746865207669657720736F206974206A75737420656E636C6F736573206974732073756276696577732E
		Sub SizeToFit()
		  UIKitFramework.sizeToFit (mid)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120736E617073686F742076696577206261736564206F6E207468652063757272656E74207669657720636F6E74656E74732E
		Function Snapshot(afterUpdates as Boolean = false) As AppleView
		  Declare function snapshotViewAfterScreenUpdates lib UIKitLibname selector "snapshotViewAfterScreenUpdates:" (id as ptr, afterupdate as boolean) as ptr
		  dim result as new AppleView (snapshotViewAfterScreenUpdates (id, afterUpdates))
		  result.Retain
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537461727473206120737072696E6720616E696D6174696F6E206F6E2074686520616C7068612070726F7065727479206F662074686520766965772E
		Sub SpringAnimateAlpha(alpha as Double, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0, completion as appleblock = nil)
		  TransformToAlpha = alpha
		  dim block as new AppleBlock (AddressOf TransformAlphaBlock)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D73206120737072696E6720616E696D6174696F6E206F6E206120637573746F6D20626C6F636B20746861742072756E73206F6E20636C617373206C6576656C2C20736F2069742063616E206368616E67652074686520616E696D617461626C652070726F70657274696573206F66207365766572616C207669657773206174206F6E63652E
		Sub SpringAnimateBlock(Changeblock as Appleblock, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0, completion as appleblock = nil)
		  if completion = nil then  completion = new AppleBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, changeblock.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537461727473206120737072696E6720616E696D6174696F6E206F6E2074686520626F756E64732070726F7065727479206F662074686520766965772E
		Sub SpringAnimateBounds(NewBounds as FoundationFramework.NSRect, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0, completion as appleblock = nil)
		  TransformToBounds = newBounds
		  dim block as new AppleBlock (AddressOf TransformBoundsBlock)
		  if completion = nil then  completion = new AppleBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537461727473206120737072696E6720616E696D6174696F6E206F6E207468652043656E7465722070726F7065727479206F662074686520766965772E
		Sub SpringAnimateCenter(NewCenter As FoundationFramework.NSPoint, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0, completion as appleblock = nil)
		  TransformToCenter = NewCenter
		  dim block as new AppleBlock (AddressOf TransformCenterBlock)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537461727473206120737072696E6720616E696D6174696F6E206F6E20746865206261636B67726F756E64636F6C6F722070726F7065727479206F662074686520766965772E
		Sub SpringAnimateColor(NewColor As AppleColor, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0, completion as appleblock = nil)
		  TransformToColor = NewColor
		  dim block as new AppleBlock (AddressOf TransformColorBlock)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537461727473206120737072696E6720616E696D6174696F6E206F6E20746865206672616D652070726F7065727479206F662074686520766965772E
		Sub SpringAnimateFrame(NewFrame as FoundationFramework.NSRect, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0, completion as appleblock = nil)
		  TransformToFrame = NewFrame
		  dim block as new AppleBlock (AddressOf TransformFrameBlock)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537461727473206120737072696E6720616E696D6174696F6E206F6E20746865207472616E73666F726D2070726F7065727479206F662074686520766965772E
		Sub SpringAnimateTransform(NewTransform As CGAffineTransform, options as AppleViewAnimationOption, DampingRatio As Double = 1, Velocity As Double = 0.5, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, delay as double = 0, completion as AppleBlock = nil)
		  TransformToTransform = NewTransform
		  dim block as new AppleBlock (AddressOf TransformTransformBlock)
		  if completion = nil then  completion = new AppleBlock (AddressOf CompletionBlock)
		  SpringanimateWithDuration ( seconds, block.handle, completion.Handle, delay, AnimationOption (options, curve, UIVIewAnimationTransition.None), DampingRatio, velocity)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub SpringanimateWithDuration(duration as Double, animations as ptr, completion as ptr, delay as double = 0, options as uinteger = 0, DampingRatio as Double = 1, Velocity as Double = 0.5)
		  #if Target64Bit
		    Declare sub springanimateWithDuration_ lib UIKitLibname selector "animateWithDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:" _
		    (id as ptr, duration as Double, delay as double, DampingRatio as Double, Velocity As Double, options as uinteger, animations as ptr, completion as ptr)
		  #elseif Target32Bit
		    Declare sub springanimateWithDuration_ lib UIKitLibname selector "animateWithDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:" _
		    (id as ptr, duration as Double, delay as double, DampingRatio as Single, Velocity As Single, options as uinteger, animations as ptr, completion as ptr)
		  #endif
		  springanimateWithDuration_ classptr, duration, delay, DampingRatio, Velocity, options, Animations, completion
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toImage() As Appleimage
		  AppleCGContext.BeginImageContext (me.Bounds.Size_, false)
		  dim context as AppleCGContext = AppleCGContext.CurrentContext
		  dim success as boolean = DrawViewHierarchy(me.bounds, true)
		  dim img as   AppleImage 
		  if success then img = Context.toImage
		  AppleCGContext.EndImageContext
		  return img
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub TransformAlphaBlock()
		  alpha = TransformToAlpha
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub TransformBoundsBlock()
		  Bounds = TransformToBounds
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub TransformCenterBlock()
		  Center = TransformToCenter
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub TransformColorBlock()
		  BackgroundColor = TransformToColor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub TransformFrameBlock()
		  Frame = TransformToFrame
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 437265617465732061207472616E736974696F6E20616E696D6174696F6E206265747765656E2074686520737065636966696564207669657773207573696E672074686520676976656E20706172616D65746572732E
		Attributes( hidden ) Private Sub TransformTransformBlock()
		  Transform = TransformToTransform
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Transition(Transition as UIViewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, completion as appleblock = nil)
		  dim block as new AppleBlock (AddressOf EmptyBlock)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, block.handle, completion.Handle,  AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub TransitionFromView(id as ptr, toView as appleview, duration as Double, completion as ptr, options as uinteger)
		  Declare sub transitionFromView lib UIKitLibname selector "transitionFromView:toView:duration:options:completion:" _
		  (id as ptr, fromview as ptr, toView as ptr, duration as Double, options as uinteger, completion as ptr)
		  transitionfromView ClassPtr, id, toView.id, duration, options,  completion
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E205F416C7068615F207472616E736974696F6E20616E696D6174696F6E20666F722074686520766965772E
		Sub TransitionWithAlpha(alpha as Double, Transition as UIViewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, completion as appleblock = nil)
		  TransformToAlpha = alpha
		  dim block as new AppleBlock (AddressOf TransformAlphaBlock)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, block.handle, completion.Handle,  AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207472616E736974696F6E20616E696D6174696F6E20666F72207468652073706563696669656420636F6E7461696E657220766965772E
		Sub TransitionWithBlock(animation as appleblock, Transition as UIViewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, animation.handle, completion.Handle,  AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061205F426F756E64735F207472616E736974696F6E20616E696D6174696F6E20666F722074686520766965772E
		Sub TransitionWithBounds(newBounds as FoundationFramework.NSRect, transition as uiviewanimationtransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, completion as appleblock = nil)
		  TransformToBounds = NewBounds
		  dim block as new AppleBlock (AddressOf TransformFrameBlock)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, block.handle, completion.Handle, AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061205F43656E7465725F207472616E736974696F6E20616E696D6174696F6E20666F722074686520766965772E
		Sub TransitionWithCenter(aCenter as FoundationFramework.NSPoint, Transition as UIViewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, completion as appleblock = nil)
		  TransformToCenter = aCenter
		  dim block as new AppleBlock (AddressOf TransformCenterBlock)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, block.handle, completion.Handle,  AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061205F4261636B67726F756E64436F6C6F725F207472616E736974696F6E20616E696D6174696F6E20666F722074686520766965772E202020
		Sub TransitionWithColor(newColor as AppleColor, Transition As UIViewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, completion as appleblock = nil)
		  TransformToColor = newColor
		  dim block as new AppleBlock (AddressOf TransformColorBlock)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  TransitionWithDuration (id,  seconds, block.handle, completion.Handle, AnimationOption (options, curve, transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub TransitionWithDuration(id as ptr, duration as Double, animations as ptr, completion as ptr, options as uinteger)
		  Declare sub transitionWithView lib UIKitLibname selector "transitionWithView:duration:options:animations:completion:" _
		  (id as ptr, view as ptr, duration as Double, options as uinteger, animations as ptr, completion as ptr)
		  transitionWithView ClassPtr, id, duration, options,  animations, completion
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061205F4672616D655F207472616E736974696F6E20616E696D6174696F6E20666F722074686520766965772E
		Sub TransitionWithFrame(aFrame as FoundationFramework.NSRect, Transition as uiviewanimationtransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, completion as appleblock = nil)
		  TransformToFrame = aFrame
		  dim block as new AppleBlock (AddressOf TransformFrameBlock)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, block.handle, completion.Handle,  AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061205F5472616E73666F726D5F207472616E736974696F6E20616E696D6174696F6E2E20
		Sub TransitionWithTransform(aTransform as CGAffineTransform, Transition as uiviewanimationtransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, completion as appleblock = nil)
		  TransformToTransform = aTransform
		  dim block as new AppleBlock (AddressOf TransformTransformBlock)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  TransitionWithDuration ( id, seconds, block.handle, completion.Handle,  AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Translate(DeltaX as Double, DeltaY as Double)
		  Transform = TransformExtension.CGAffineTransformTranslate (Transform, DeltaX, deltaY)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54656C6C732074686520666F63757320656E67696E6520746F20666F726365206120666F6375732075706461746520696D6D6564696174656C792E20417661696C61626C652073696E636520694F5320392E312E
		Sub UpdateFocusIfNeeded()
		  if RespondsToSelector ("updateFocusIfNeeded", classptr) then
		    declare sub updateFocusIfNeeded lib UIKitLibname selector "updateFocusIfNeeded" (id as ptr)
		    updateFocusIfNeeded id
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207472616E736974696F6E20616E696D6174696F6E206265747765656E2074686520737065636966696564207669657773207573696E672074686520676976656E20706172616D65746572732E
		Sub ViewTransition(fromview as appleview, toView as Appleview, Transition as UIViewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, completion as appleblock = nil)
		  if completion = nil then completion = new AppleBlock (AddressOf CompletionBlock)
		  TransitionFromView (fromview.id, toview, seconds,  completion.Handle,  AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207472616E736974696F6E20616E696D6174696F6E206265747765656E2074686520737065636966696564207669657773207573696E672074686520676976656E20706172616D65746572732E
		Shared Sub ViewTransition(toView as Appleview, Transition as UIViewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIVIewAnimationCurve = uiviewanimationcurve.EaseInEaseOut, completion as appleblock)
		  TransitionFromView ( toview.id, toview, seconds,  completion.Handle,  AnimationOption (options, curve, Transition))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ViewWithTag(Tag as Integer) As AppleView
		  Declare function viewWithTag lib UIKitLibname selector "viewWithTag:" (id as ptr, tag as integer) as ptr
		  return  AppleView.MakeFromPtr (ViewWithTag (id, tag))
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E206120737562766965772077617320616464656420746F2074686520766965772E
		Event DidAddSubview(Subview as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20766965772077617320617474616368656420746F206120737570657276696577206173206120737562766965772E
		Event DidMoveToSuperview()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772061707065617273206F6E2073637265656E2E
		Event DidMoveToWindow()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207669657720686173206368616E6765642073697A65206C696B6520616674657220616E206F7269656E746174696F6E206368616E67652E
		Event LayoutSubviews()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652074696E74636F6C6F72206368616E6765642E
		Event TintColorDidChange()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520747261697420636F6C6C656374696F6E20686173206368616E6765642C206C696B65207768656E2074686520646576696365206F7269656E746174696F6E206368616E6765642E
		Event TraitCollectionDidChange(PreviousCollection As AppleTraitCollection)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772077696C6C2062652061646465642061732061207375627669657720746F2061207375706572766965772E
		Event WillMoveToSuperview(Superview as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772077696C6C2062652073686F776E206F6E2073637265656E2E
		Event WillMoveToWindow(window as applewindow)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772077696C6C206C6F7365206120737562766965772E
		Event WillRemoveSubview(Subview as AppleView)
	#tag EndHook


	#tag Note, Name = Status incomplete
		Constraint, Anchor & Layoutguide features missing
		Viewprintformatter missing
		UIFocus incomplete, classes and events missing
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E280997320616C7068612076616C75652E2044656661756C7420312E302E20416E696D617461626C652E
		#tag Getter
			Get
			  return UIKitFramework.getalpha (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setAlpha mid, value
			  
			End Set
		#tag EndSetter
		Alpha As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E6573207768657468657220746865207265636569766572206175746F6D61746963616C6C7920726573697A657320697473207375627669657773207768656E2069747320626F756E6473206368616E67652E
		#tag Getter
			Get
			  return getautoresizesSubviews (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setautoresizesSubviews mid, value
			End Set
		#tag EndSetter
		AutoresizesSubviews As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20696E746567657220626974206D61736B20746861742064657465726D696E657320686F772074686520726563656976657220726573697A657320697473656C66207768656E2069747320737570657276696577E280997320626F756E6473206368616E67652E
		#tag Getter
			Get
			  return new AppleAutoresizingMask (getautoResizingMask(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setAutoresizingMask mid, value.ID
			End Set
		#tag EndSetter
		AutoresizingMask As AppleAutoresizingMask
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E2809973206261636B67726F756E6420636F6C6F722E
		#tag Getter
			Get
			  return  AppleColor.MakeFromPtr (UIKitFramework.getbackgroundcolor(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setbackgroundcolor mid, value.id
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520626F74746F6D2065646765206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector("bottomAnchor", classptr) then return AppleLayoutYAxisAnchor.MakeFromPtr(UIKitFramework.getbottomanchor(mid))
			End Get
		#tag EndGetter
		BottomAnchor As AppleLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626F756E64732072656374616E676C652C20776869636820646573637269626573207468652076696577E2809973206C6F636174696F6E20616E642073697A6520696E20697473206F776E20636F6F7264696E6174652073797374656D2E
		#tag Getter
			Get
			  return UIKitFramework.getbounds (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setBounds mid, value
			End Set
		#tag EndSetter
		Bounds As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41736B7320746865207669657720776865746865722069742069732063757272656E746C792063617061626C65206F66206265696E6720666F63757365642E2028726561642D6F6E6C792920417661696C61626C652073696E636520694F5320392E30
		#tag Getter
			Get
			  if me.respondstoselector ("canBecomeFocused", classptr) then
			    Declare function canBecomeFocused lib UIKitLibname selector "canBecomeFocused" (id as ptr) as Boolean
			    return canBecomeFocused (id)
			  end if
			End Get
		#tag EndGetter
		CanBecomeFocused As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656E746572206F6620746865206672616D652E
		#tag Getter
			Get
			  return UIKitFramework.getcenter (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setcenter mid, value
			  
			End Set
		#tag EndSetter
		Center As FoundationFramework.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520686F72697A6F6E74616C2063656E746572206F66207468652076696577E2809973206672616D652028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector("centerXAnchor", classptr) then return AppleLayoutXAxisAnchor.MakeFromPtr(UIKitFramework.getcenterXAnchor(mid))
			End Get
		#tag EndGetter
		CenterXAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520766572746963616C2063656E746572206F66207468652076696577E2809973206672616D652028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector("centerYAnchor", classptr) then return AppleLayoutYAxisAnchor.MakeFromPtr(UIKitFramework.getcenterYAnchor(mid))
			End Get
		#tag EndGetter
		CenterYAnchor As AppleLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    dim methods() as TargetClassMethodHelper
			    //override UIView methods
			    methods.Append new TargetClassMethodHelper("willMoveToWindow:", AddressOf impl_willMoveToWindow, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToWindow", AddressOf impl_DidMoveToWindow, "v@:")
			    methods.Append new TargetClassMethodHelper("willMoveToSuperview:", AddressOf impl_willMoveToSuperview, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToSuperview", AddressOf impl_DidMoveToSuperview, "v@:")
			    methods.Append new TargetClassMethodHelper("willRemoveSubview:", AddressOf impl_willRemoveSubview, "v@:@")
			    methods.Append new TargetClassMethodHelper("didAddSubview:", AddressOf impl_DidAddSubview, "v@:@")
			    methods.Append new TargetClassMethodHelper("layoutSubviews", AddressOf impl_layoutSubviews, "v@:")
			    // methods.Append new TargetClassMethodHelper("layerClass", AddressOf impl_layerclass, "@@:", true, true)
			    methods.Append new TargetClassMethodHelper("tintColorDidChange", AddressOf impl_tintColorDidChange, "v@:")
			    // methods.Append new TargetClassMethodHelper("requiresConstraintBasedLayout", AddressOf impl_requiresConstraintBasedLayout, "c@:")
			    
			    // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect, "v@:{CGRect}")
			    
			    //TraitEnvironment Protocol
			    methods.Append new TargetClassMethodHelper("traitCollectionDidChange:", AddressOf impl_traitCollectionDidChange, "v@:@")
			    
			    
			    //Add UIResponder methods too
			    methods.Append new TargetClassMethodHelper("touchesBegan:withEvent:", AddressOf impl_TouchesBeganWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("touchesEnded:withEvent:", AddressOf impl_TouchesEndedWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("touchesMoved:withEvent:", AddressOf impl_TouchesMovedWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("touchesCancelled:withEvent:", AddressOf impl_TouchesCancelledWithEvent, "v@:@@")
			    
			    methods.Append new TargetClassMethodHelper("motionBegan:withEvent:", AddressOf impl_MotionBeganWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("motionEnded:withEvent:", AddressOf impl_MotionEndedWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("motionCancelled:withEvent:", AddressOf impl_MotionCancelledWithEvent, "v@:i@")
			    
			    methods.Append new TargetClassMethodHelper("touchesEstimatedPropertiesUpdated:", AddressOf impl_touchesEstimatedPropertiesUpdated, "v@:@")
			    methods.Append new TargetClassMethodHelper("remoteControlReceivedWithEvent:", AddressOf impl_remoteControlReceivedWithEvent, "v@:@")
			    
			    methods.Append new TargetClassMethodHelper("pressesBegan:withEvent:", AddressOf impl_pressesBeganWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("pressesCancelled:withEvent:", AddressOf impl_pressesCancelledWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("pressesChanged:withEvent:", AddressOf impl_pressesChangedWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("pressesEnded:withEvent:", AddressOf impl_pressesEndedWithEvent, "v@:@@")
			    
			    // CAAnimation "Delegate" methods
			    methods.Append new TargetClassMethodHelper("animationDidStart:", AddressOf impl_animationDidStart, "v@:@")
			    methods.Append new TargetClassMethodHelper("animationDidStop:finished:", AddressOf impl_animationDidStop, "v@:@c")
			    
			    
			    targetID = BuildTargetClass ("UIView", "iOSLibView",methods)
			  end if
			  Return targetID
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577E280997320626F756E64732073686F756C64206265206175746F6D61746963616C6C7920636C6561726564206265666F72652064726177696E672E
		#tag Getter
			Get
			  return UIKitFramework.getclearsContextBeforeDrawing (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setClearsContextBeforeDrawing mid, value
			End Set
		#tag EndSetter
		ClearsContextBeforeDrawing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722073756276696577732061726520636F6E66696E656420746F2074686520626F756E6473206F662074686520766965772E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return UIKitFramework.getclipsToBounds (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setclipsToBounds mid, value
			End Set
		#tag EndSetter
		ClipsToBounds As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706174682D626173656420736861706520746F2075736520666F722074686520636F6C6C6973696F6E20626F756E64732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if ObjectiveCRuntime.class_respondsToSelector (classptr, FoundationFramework.NSSelectorFromString( "collisionBoundingPath")) then
			    Declare function collisionBoundingPath lib UIKitLibname selector "collisionBoundingPath" (id as ptr) as ptr
			    return AppleBezierPath.MakefromPtr (collisionBoundingPath (id))
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector ("setcollisionBoundingPath:",classptr) then
			    Declare sub setcollisionBoundingPath lib UIKitLibname selector "setcollisionBoundingPath:" (id as ptr, value as ptr)
			    setcollisionBoundingPath (id, if (value = nil, nil, value.id))
			  end if
			End Set
		#tag EndSetter
		CollisionBoundingPath As AppleBezierPath
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074797065206F6620636F6C6C6973696F6E20626F756E6473206173736F636961746564207769746820746865206974656D2E2028726561642D6F6E6C792920417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if ObjectiveCRuntime.class_respondsToSelector (classptr, FoundationFramework.NSSelectorFromString( "collisionBoundsType")) then
			    Declare function collisionBoundsType lib UIKitLibname selector "collisionBoundsType" (id as ptr) as UIDynamicItemCollisionBoundsType
			    return collisionBoundsType (id)
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if ObjectiveCRuntime.class_respondsToSelector (classptr, FoundationFramework.NSSelectorFromString( "setCollisionBoundsType:")) then
			    Declare sub setCollisionBoundsType lib UIKitLibname selector "setCollisionBoundsType:" (id as ptr, value as UIDynamicItemCollisionBoundsType)
			    setcollisionBoundsType (id, value)
			  end if
			End Set
		#tag EndSetter
		CollisionBoundsType As UIDynamicItemCollisionBoundsType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E73747261696E74732068656C642062792074686520766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakefromPtr(getconstraints (mid))
			  
			End Get
		#tag EndGetter
		Constraints As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120666C6167207573656420746F2064657465726D696E6520686F7720612076696577206C617973206F75742069747320636F6E74656E74207768656E2069747320626F756E6473206368616E67652E
		#tag Getter
			Get
			  return getContentMode (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setContentMode mid, value
			End Set
		#tag EndSetter
		ContentMode As UIViewContentMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363616C6520666163746F72206170706C69656420746F2074686520766965772E
		#tag Getter
			Get
			  #if Target64Bit
			    declare function contentScaleFactor lib UIKitLibname selector "contentScaleFactor" (id as ptr) as double
			  #elseif Target32Bit
			    declare function contentScaleFactor lib UIKitLibname selector "contentScaleFactor" (id as ptr) as Single
			  #endif
			  return ContentScaleFactor (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    declare sub setContentScaleFactor lib UIKitLibname selector "setContentScaleFactor:" (id as ptr, value as double)
			  #elseif Target32Bit
			    declare sub setContentScaleFactor lib UIKitLibname selector "setContentScaleFactor:" (id as ptr, value as single)
			  #endif
			  setContentScaleFactor (id, value)
			  
			End Set
		#tag EndSetter
		ContentScaleFactor As Double
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Shared CustomLayerClass As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function areAnimationsEnabled lib UIKitLibname selector "areAnimationsEnabled" (id as ptr) as Boolean
			  Return areAnimationsEnabled (classptr)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAnimationsEnabled lib UIKitLibname selector "setAnimationsEnabled:" (id as ptr, value as Boolean)
			  setAnimationsEnabled (classptr, value)
			End Set
		#tag EndSetter
		Shared EnableAnimations As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652072656365697665722068616E646C657320746F756368206576656E7473206578636C75736976656C792E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return getexclusiveTouch (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setExclusiveTouch mid, value
			End Set
		#tag EndSetter
		ExclusiveTouch As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520626173656C696E6520666F722074686520746F706D6F7374206C696E65206F66207465787420696E2074686520766965772028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector("firstBaselineAnchor", classptr) then return AppleLayoutYAxisAnchor.MakeFromPtr(UIKitFramework.getfirstBaselineAnchor(mid))
			End Get
		#tag EndGetter
		FirstBaselineAnchor As AppleLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063616C63756C617465642073697A652074686174206973206E656564656420746F20646973706C6179207468652066756C6C20636F6E74656E74206F662074686520766965772E2020536565205F53697A65546F4669742E5F202028726561642D6F6E6C7929
		#tag Getter
			Get
			  return sizethatfits (frame.size_)
			  
			End Get
		#tag EndGetter
		FittingSize As FoundationFramework.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C7565207468617420696E64696361746573207768657468657220746865206974656D2069732063757272656E746C7920666F63757365642E20417661696C61626C652073696E636520694F5320392E302E205468652073657474657220697320617661696C61626C652062656C6F772028466F637573656420697473656C66206973206120726561642D6F6E6C792070726F706572747929
		#tag Getter
			Get
			  if me.respondstoselector ("isFocused", classptr) then
			    Declare function isFocused lib UIKitLibname selector "isFocused" (id as ptr) as Boolean
			    return isFocused (id)
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value then
			    call BecomeFirstResponder (mid)
			  else
			    EndEditing
			  end if
			End Set
		#tag EndSetter
		Focused As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206672616D652072656374616E676C652C20776869636820646573637269626573207468652076696577E2809973206C6F636174696F6E20616E642073697A6520696E2069747320737570657276696577E280997320636F6F7264696E6174652073797374656D2E
		#tag Getter
			Get
			  return UIKitFramework.getFrame (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setFrame mid, value
			End Set
		#tag EndSetter
		Frame As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520676573747572652D7265636F676E697A6572206F626A656374732063757272656E746C7920617474616368656420746F2074686520766965772E
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (UIKitFramework.getgestureRecognizers(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setGestureRecognizers id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		GestureRecognizers As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E657320776865746865722074686520636F6E73747261696E747320696D70616374696E6720746865206C61796F7574206F6620746865207669657720696E636F6D706C6574656C79207370656369667920746865206C6F636174696F6E206F662074686520766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare Function hasAmbiguousLayout lib UIKitLibname selector "hasAmbiguousLayout" (id as ptr) as Boolean
			  return hasAmbiguousLayout (id)
			End Get
		#tag EndGetter
		HasAmbiguousLayout As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return me.bounds.Size_.height
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.bounds = FoundationFrameWork.NSMakerect (0,0, me.Width, value)
			End Set
		#tag EndSetter
		Height As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520686569676874206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector("heightAnchor", classptr) then return AppleLayoutDimension.MakeFromPtr(UIKitFramework.getheightAnchor(mid))
			End Get
		#tag EndGetter
		HeightAnchor As AppleLayoutDimension
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520766965772069732068696464656E2E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return UIKitFramework.gethidden (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setHidden mid, value
			End Set
		#tag EndSetter
		Hidden As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 52657475726E732074686520696E68657269746564206475726174696F6E206F66207468652063757272656E7420616E696D6174696F6E2E204F6E6C7920776F726B732077697468696E2055495669657720616E696D6174696F6E20626C6F636B732E2028726561642D6F6E79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector("inheritedAnimationDuration", classptr) then
			    Declare Function inheritedAnimationDuration lib UIKitLibname selector "inheritedAnimationDuration" (id as ptr) as double
			    Return inheritedAnimationDuration (classptr)
			  end if
			End Get
		#tag EndGetter
		Shared InheritedAnimationDuration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520626173656C696E6520666F722074686520626F74746F6D6D6F7374206C696E65206F66207465787420696E2074686520766965772028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector("lastBaselineAnchor", classptr) then return AppleLayoutYAxisAnchor.MakeFromPtr(UIKitFramework.getlastBaselineAnchor(mid))
			End Get
		#tag EndGetter
		LastBaselineAnchor As AppleLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E280997320436F726520416E696D6174696F6E206C61796572207573656420666F722072656E646572696E672E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Return AppleCALayer.MakefromPtr (getlayer (mid))
			End Get
		#tag EndGetter
		Layer As AppleCALayer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412070747220746F2074686520636C617373207573656420746F2063726561746520746865206C6179657220666F7220696E7374616E636573206F66207468697320636C6173732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function layerclass lib UIKitLibname selector "layerClass" (id as ptr) as ptr
			  return layerclass (classptr)
			End Get
		#tag EndGetter
		Shared LayerClass As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 52657475726E732074686520636C6173736E616D65207573656420746F2063726561746520746865206C6179657220666F7220696E7374616E636573206F66207468697320636C6173732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return ObjectiveCRuntime.class_getName (LayerClass)
			End Get
		#tag EndGetter
		Shared LayerClassName As CString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206172726179206F66206C61796F7574206775696465206F626A65637473206F776E6564206279207468697320766965772E2028726561642D6F6E6C792920417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector("layoutGuides", classptr) then return AppleArray.MakefromPtr(getlayoutGuides (mid))
			  
			End Get
		#tag EndGetter
		LayoutGuides As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function layoutMargins lib UIKitLibname selector "layoutMargins" (id as ptr) as UIEdgeInsets
			  return layoutMargins (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setLayoutMargins lib UIKitLibname selector "setLayoutMargins:" (id as ptr, value as UIEdgeInsets)
			  setLayoutMargins (id, value)
			  
			End Set
		#tag EndSetter
		LayoutMargins As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420677569646520726570726573656E74696E67207468652076696577E2809973206D617267696E732E2028726561642D6F6E6C792920417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector("layoutMarginsGuide", classptr) then return AppleLayoutGuide.MakefromPtr(getlayoutMarginsGuide (mid))
			  
			End Get
		#tag EndGetter
		LayoutMarginsGuides As AppleLayoutGuide
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E6720746865206C656164696E672065646765206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector("leadingAnchor", classptr) then return AppleLayoutXAxisAnchor.MakeFromPtr(UIKitFramework.getleadingAnchor(mid))
			End Get
		#tag EndGetter
		LeadingAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return me.Frame.Origin.x
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.frame = FoundationFrameWork.NSMakeRect (value, me.top, me.Width, me.Height)
			End Set
		#tag EndSetter
		Left As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E6720746865206C6566742065646765206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector("leftAnchor", classptr) then return AppleLayoutXAxisAnchor.MakeFromPtr(UIKitFramework.getleftAnchor(mid))
			End Get
		#tag EndGetter
		LeftAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F7074696F6E616C20766965772077686F736520616C706861206368616E6E656C206973207573656420746F206D61736B20612076696577E280997320636F6E74656E742E
		#tag Getter
			Get
			  return appleview.MakeFromPtr (getmaskView(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmaskView mid, NilPtr(value)
			End Set
		#tag EndSetter
		Mask As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652072656365697665722068616E646C6573206D756C74692D746F756368206576656E74732E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return getmultipleTouchEnabled (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setMultipleTouchEnabled mid, value
			End Set
		#tag EndSetter
		MultipleTouchEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577206973206F70617175652E2044656661756C7420547275652E
		#tag Getter
			Get
			  return UIKitFramework.getOpaque (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setOpaque (mid, value)
			End Set
		#tag EndSetter
		Opaque As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 53706563696669657320746865207669657720746861742073686F756C6420626520666F6375736564206966207468697320656E7669726F6E6D656E7420697320666F63757365642E2028726561642D6F6E6C792920417661696C61626C652073696E636520694F7320392E312E
		#tag Getter
			Get
			  if ObjectiveCRuntime.class_respondsToSelector (classptr, FoundationFramework.NSSelectorFromString( "preferredFocusedView")) then
			    Declare function preferredFocusedView lib UIKitLibname selector "preferredFocusedView" (id as ptr) as ptr
			    return appleview.MakefromPtr (preferredFocusedView (id))
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if ObjectiveCRuntime.class_respondsToSelector (classptr, FoundationFramework.NSSelectorFromString( "setcollisionBoundingPath:")) then
			    Declare sub setcollisionBoundingPath lib UIKitLibname selector "setcollisionBoundingPath:" (id as ptr, value as ptr)
			    setcollisionBoundingPath (id, if (value = nil, nil, value.id))
			  end if
			End Set
		#tag EndSetter
		PreferredFocusedView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function preservesSuperviewLayoutMargins lib UIKitLibname selector "preservesSuperviewLayoutMargins" (id as ptr) as Boolean
			  return preservesSuperviewLayoutMargins (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setPreservesSuperviewLayoutMargins lib UIKitLibname selector "setPreservesSuperviewLayoutMargins:" (id as ptr, value as Boolean)
			  setPreservesSuperviewLayoutMargins id, value
			End Set
		#tag EndSetter
		PreservesSuperviewLayoutMargins As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420677569646520726570726573656E74696E6720616E206172656120776974682061207265616461626C652077696474682077697468696E2074686520766965772E2028726561642D6F6E6C792920417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector("readableContentGuide", classptr) then return AppleLayoutGuide.MakefromPtr(getreadableContentGuide (mid))
			  
			End Get
		#tag EndGetter
		ReadableContentGuide As AppleLayoutGuide
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C7565207468617420696E6469636174657320776865746865722074686520726563656976657220646570656E6473206F6E2074686520636F6E73747261696E742D6261736564206C61796F75742073797374656D2E
		#tag Getter
			Get
			  Declare Function requiresConstraintBasedLayout lib UIKitLibname selector "requiresConstraintBasedLayout" (id as ptr) as Boolean
			  Return requiresConstraintBasedLayout (classptr)
			End Get
		#tag EndGetter
		Shared RequiresConstraintBasedLayout As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206964656E74696669657220746861742064657465726D696E6573207768657468657220746865207669657720737570706F72747320737461746520726573746F726174696F6E2E
		#tag Getter
			Get
			  Declare function restorationIdentifier lib UIKitLibname selector "restorationIdentifier" (id as ptr) as CFStringRef
			  Return restorationIdentifier (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setRestorationIdentifier lib UIKitLibname selector "setRestorationIdentifier:" (id as ptr, value as CFStringRef)
			  setRestorationIdentifier id, value
			End Set
		#tag EndSetter
		RestorationIdentifier As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E67207468652072696768742065646765206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector("rightAnchor", classptr) then return AppleLayoutXAxisAnchor.MakeFromPtr(UIKitFramework.getrightAnchor(mid))
			End Get
		#tag EndGetter
		RightAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E280997320696D6D6564696174652073756276696577732E2028726561642D6F6E6C79292E20557365204164647375627669657720616E642052656D6F76655375627669657720746F206D6F646966792E
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (getsubviews(mid))
			End Get
		#tag EndGetter
		SubViews As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E2809973207375706572766965772C206F72206E696C20696620697420686173206E6F6E652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleview.MakeFromPtr(getsuperview(mid))
			End Get
		#tag EndGetter
		SuperView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function tag lib UIKitLibname selector "tag" (id as ptr) as integer
			  Return tag (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTag lib UIKitLibname selector "setTag:" (id as ptr, value as integer)
			  setTag id, value
			End Set
		#tag EndSetter
		Tag As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206669727374206E6F6E2D64656661756C742074696E742061646A7573746D656E74206D6F64652076616C756520696E207468652076696577E2809973206869657261726368792C20617363656E64696E672066726F6D20616E64207374617274696E67207769746820746865207669657720697473656C662E
		#tag Getter
			Get
			  return gettintAdjustmentMode (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setTintAdjustmentMode mid, value
			End Set
		#tag EndSetter
		TintAdjustmentMode As UIViewTintAdjustmentMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206669727374206E6F6E64656661756C742074696E7420636F6C6F722076616C756520696E207468652076696577E2809973206869657261726368792C20617363656E64696E672066726F6D20616E64207374617274696E67207769746820746865207669657720697473656C662E
		#tag Getter
			Get
			  return AppleColor.MakeFromPtr(UIKitFramework.gettintColor(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setTintColor mid, value.id
			End Set
		#tag EndSetter
		TintColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return me.Frame.Origin.y
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.frame = FoundationFrameWork.NSMakeRect (me.left, value, me.Width, me.Height)
			End Set
		#tag EndSetter
		Top As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520746F702065646765206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector("topAnchor", classptr) then return AppleLayoutYAxisAnchor.MakeFromPtr(UIKitFramework.gettopanchor(mid))
			End Get
		#tag EndGetter
		TopAnchor As AppleLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520746F702065646765206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector("trailingAnchor", classptr) then return AppleLayoutXAxisAnchor.MakeFromPtr(UIKitFramework.gettrailingAnchor(mid))
			End Get
		#tag EndGetter
		TrailingAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206669727374206E6F6E64656661756C742074696E7420636F6C6F722076616C756520696E207468652076696577E2809973206869657261726368792C20617363656E64696E672066726F6D20616E64207374617274696E67207769746820746865207669657720697473656C662E
		#tag Getter
			Get
			  Declare function traitCollection lib UIKitLibname selector "traitCollection" (id as ptr) as ptr
			  return AppleTraitCollection.MakefromPtr(traitCollection(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setTintColor lib UIKitLibname selector "setTintColor:" (id as ptr, value as ptr)
			  setTintColor id, value.id
			End Set
		#tag EndSetter
		TraitCollection As AppleTraitCollection
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54746865207472616E73666F726D206170706C69656420746F2074686520766965772C2072656C617469766520746F207468652063656E746572206F662069747320626F756E64732E
		#tag Getter
			Get
			  return UIKitFramework.getTransform(mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setTransform mid, value
			  
			End Set
		#tag EndSetter
		Transform As CGAffineTransform
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private TransformToAlpha As Double = 1.0
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private TransformToBounds As FoundationFramework.NSRect
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private TransformToCenter As FoundationFramework.NSPoint
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private TransformToColor As AppleColor
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private TransformToFrame As FoundationFramework.NSRect
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private TransformToTransform As CGAffineTransform
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577E2809973206175746F726573697A696E67206D61736B206973207472616E736C6174656420696E746F204175746F204C61796F757420636F6E73747261696E74732E
		#tag Getter
			Get
			  return gettranslatesAutoresizingMaskIntoConstraints (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setTranslatesAutoresizingMaskIntoConstraints mid, value
			End Set
		#tag EndSetter
		TranslatesAutoresizingMaskIntoConstraints As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722075736572206576656E747320617265206E6F742069676E6F72656420616E642072656D6F7665642066726F6D20746865206576656E742071756575652E2044656661756C7420547275652E
		#tag Getter
			Get
			  return getUserInteractionEnabled (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setuserinteractionenabled mid,value
			End Set
		#tag EndSetter
		UserInteractionEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return me.Frame.size_.width
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  me.frame = FoundationFrameWork.NSMakeRect (me.left, me.top, value, me.Height)
			End Set
		#tag EndSetter
		Width As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E6720746865207769647468206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector("widthAnchor", classptr) then return AppleLayoutDimension.MakeFromPtr(UIKitFramework.getwidthAnchor(mid))
			End Get
		#tag EndGetter
		WidthAnchor As AppleLayoutDimension
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E28099732077696E646F77206F626A6563742C206F72206E696C20696620697420686173206E6F6E652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleWindow.MakefromPtr (UIKitFramework.getWindow(mid))
			End Get
		#tag EndGetter
		Window As AppleWindow
	#tag EndComputedProperty


	#tag Enum, Name = UIDynamicItemCollisionBoundsType, Flags = &h0
		Rectangle
		  Ellipse
		Path
	#tag EndEnum

	#tag Enum, Name = UISystemAnimation, Type = Integer, Flags = &h0
		Delete
	#tag EndEnum

	#tag Enum, Name = UIViewModalPresentationStyle, Flags = &h0
		FullScreen = 0
		  PageSheet
		  FormSheet
		  CurrentContext
		  Custom
		  OverFullScreen
		  OverCurrentContext
		  PopOver
		None = -1
	#tag EndEnum

	#tag Enum, Name = UIViewTintAdjustmentMode, Flags = &h0
		Automatic
		  Normal
		Dimmed
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFocused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanResignFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CollisionBoundsType"
			Group="Behavior"
			Type="UIDynamicItemCollisionBoundsType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Rectangle"
				"1 - Ellipse"
				"2 - Path"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentMode"
			Group="Behavior"
			Type="UIViewContentMode"
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
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExclusiveTouch"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Focused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hasInited"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
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
			Name="IsFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultipleTouchEnabled"
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
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RestorationIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tag"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintAdjustmentMode"
			Group="Behavior"
			Type="UIViewTintAdjustmentMode"
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
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
