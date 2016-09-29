#tag Class
Protected Class AppleButton
Inherits AppleControl
	#tag Method, Flags = &h0, Description = 52657475726E7320746865207374796C6564207469746C65206173736F636961746564207769746820746865207370656369666965642073746174652E
		Function AttributedTitle(state as AppleControlState) As AppleAttributedString
		  return AppleAttributedString.MakeFromPtr (getattributedTitleForState (mid, state.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207374796C6564207469746C6520746F2075736520666F7220746865207370656369666965642073746174652E
		Sub AttributedTitle(state as AppleControlState, assigns value as AppleAttributedString)
		  setAttributedTitleforState (mid, NilPtr(value), state.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206261636B67726F756E6420696D616765207573656420666F72206120627574746F6E2073746174652E
		Function BackgroundImage(state as AppleControlState) As AppleImage
		  Declare Function backgroundImageForState lib UIKitLibname selector "backgroundImageForState:" (id as ptr, state as uinteger) as Ptr
		  return AppleImage.MakeFromPtr ( backgroundImageForState (id, state.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206261636B67726F756E6420696D61676520746F2075736520666F72207468652073706563696669656420627574746F6E2073746174652E
		Sub BackgroundImage(state as AppleControlState, assigns Image as Appleimage)
		  Declare Sub SetBackgroundImageForState lib UIKitLibname selector "setBackgroundImage:forState:" (id as ptr, image as ptr, state as uinteger)
		  SetBackgroundImageForState (id, if (image = nil, nil, image.id), state.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652072656374616E676C6520696E2077686963682074686520726563656976657220647261777320697473206261636B67726F756E642E
		Function BackgroundRect(bounds as FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  return getbackgroundRectForBounds (mid, bounds)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 4372656174657320616E642072657475726E732061206E657720627574746F6E206F66207468652073706563696669656420747970652E
		Protected Declare Function buttonWithType Lib UIKitlibname Selector "buttonWithType:" (id as ptr, type as UIButtonType) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Type as UIButtonType)
		  super.Constructor (buttonWithType(ClassPtr, type), true, true)
		  me.registeridentity (self)
		  me.AddTarget self, FoundationFrameWork.NSSelectorFromString("touched"), AppleControlEvent.TouchDown
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652072656374616E676C6520696E207768696368207468652072656365697665722064726177732069747320656E7469726520636F6E74656E742E
		Function ContentRect(bounds as FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  return getcontentRectForBounds (mid, bounds)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 4372656174657320616E642072657475726E732061206E657720627574746F6E206F66207468652073706563696669656420747970652E
		Protected Declare Function getattributedTitleForState Lib UIKitlibname Selector "attributedTitleForState:" (id as ptr, state as uinteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbackgroundRectForBounds Lib UIKitlibname Selector "backgroundRectForBounds:" (id as ptr, bounds as FoundationFrameWork . NSRect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontentRectForBounds Lib UIKitlibname Selector "contentRectForBounds:" (id as ptr, bounds as FoundationFrameWork . NSRect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getimageEdgeInsets Lib UIKitlibname Selector "imageEdgeInsets" (id as ptr) As UIEdgeInsets
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getimageRectForContentRect Lib UIKitlibname Selector "imageRectForContentRect:" (id as ptr, bounds as FoundationFrameWork . NSRect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 4372656174657320616E642072657475726E732061206E657720627574746F6E206F66207468652073706563696669656420747970652E
		Protected Declare Function gettitleColorForState Lib UIKitlibname Selector "titleColorForState:" (id as ptr, state as uinteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 4372656174657320616E642072657475726E732061206E657720627574746F6E206F66207468652073706563696669656420747970652E
		Protected Declare Function gettitleForState Lib UIKitlibname Selector "titleForState:" (id as ptr, state as uinteger) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettitleRectForContentRect Lib UIKitlibname Selector "titleRectForContentRect:" (id as ptr, bounds as FoundationFrameWork . NSRect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 4372656174657320616E642072657475726E732061206E657720627574746F6E206F66207468652073706563696669656420747970652E
		Protected Declare Function gettitleShadowColorForState Lib UIKitlibname Selector "titleShadowColorForState:" (id as ptr, state as uinteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 4372656174657320616E642072657475726E732061206E657720627574746F6E206F66207468652073706563696669656420747970652E
		Protected Declare Function gettitleShadowOffset Lib UIKitlibname Selector "titleShadowOffset" (id as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696D616765207573656420666F72206120627574746F6E2073746174652E
		Function Image(state as AppleControlState) As AppleImage
		  Declare Function imageForState lib UIKitLibname selector "imageForState:" (id as ptr, state as uinteger) as Ptr
		  return AppleImage.MakeFromPtr ( imageForState (id, state.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520696D61676520746F2075736520666F7220746865207370656369666965642073746174652E
		Sub Image(state as AppleControlState, assigns Image as Appleimage)
		  Declare Sub setImageForState lib UIKitLibname selector "setImage:forState:" (id as ptr, image as ptr, state as uinteger)
		  setImageForState (id, if (image = nil, nil,  image.id), state.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652072656374616E676C6520696E207768696368207468652072656365697665722064726177732069747320696D6167652E
		Function ImageRect(ContentRect as FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  return getimageRectForContentRect (mid, ContentRect)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Shared Sub impl_touched(pid as ptr, sel as ptr)
		  dim ego as AppleButton = AppleButton(InformInstance(pid))
		  ego.informonTouched
		  #Pragma Unused  sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Attributes( hidden ) Private Sub informonTouched()
		  RaiseEvent Action
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 4372656174657320616E642072657475726E732061206E657720627574746F6E206F66207468652073706563696669656420747970652E
		Protected Declare Sub setAttributedTitleforState Lib UIKitlibname Selector "setAttributedTitle:forState:" (id as ptr, value as ptr, state as uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setImageEdgeInsets Lib UIKitlibname Selector "setImageEdgeInsets:" (id as ptr, value as UIEdgeInsets)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 4372656174657320616E642072657475726E732061206E657720627574746F6E206F66207468652073706563696669656420747970652E
		Protected Declare Sub settitleColorForState Lib UIKitlibname Selector "setTitleColor:forState:" (id as ptr, value as ptr, state as uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 4372656174657320616E642072657475726E732061206E657720627574746F6E206F66207468652073706563696669656420747970652E
		Protected Declare Sub settitleForState Lib UIKitlibname Selector "setTitle:forState:" (id as ptr, value as cfstringref, state as uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 4372656174657320616E642072657475726E732061206E657720627574746F6E206F66207468652073706563696669656420747970652E
		Protected Declare Sub settitleShadowColorForState Lib UIKitlibname Selector "setTitleShadowColor:forState:" (id as ptr, value as ptr, state as uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 4372656174657320616E642072657475726E732061206E657720627574746F6E206F66207468652073706563696669656420747970652E
		Protected Declare Sub settitleShadowOffset Lib UIKitlibname Selector "setTitleShadowOffset:" (id as ptr, value as FoundationFrameWork . NSSize)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207469746C65206173736F636961746564207769746820746865207370656369666965642073746174652E
		Function Title(state as AppleControlState) As text
		  return gettitleForState (mid, state.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207469746C6520746F2075736520666F7220746865207370656369666965642073746174652E
		Sub Title(state as AppleControlState, assigns Value as cfstringref)
		  setTitleForState (mid, value, state.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207469746C6520636F6C6F72207573656420666F7220612073746174652E
		Function TitleColor(state as AppleControlState) As AppleColor
		  return  applecolor.MakeFromPtr (gettitleColorForState (mid, state.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F6620746865207469746C6520746F2075736520666F7220746865207370656369666965642073746174652E
		Sub TitleColor(state as AppleControlState, assigns TitleColor as applecolor)
		  setTitleColorForState (mid, NilPtr(TitleColor), state.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652072656374616E676C6520696E2077686963682074686520726563656976657220647261777320697473207469746C652E
		Function TitleRect(ContentRect as FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  return gettitleRectForContentRect (mid, ContentRect)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520736861646F7720636F6C6F72206F6620746865207469746C65207573656420666F7220612073746174652E
		Function TitleShadowColor(state as AppleControlState) As AppleColor
		  return  applecolor.MakeFromPtr (gettitleShadowColorForState (mid, state.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F6620746865207469746C6520736861646F7720746F2075736520666F7220746865207370656369666965642073746174652E
		Sub TitleShadowColor(state as AppleControlState, assigns ShadowColor as AppleColor)
		  setTitleShadowColorForState (mid, nilptr(ShadowColor), state.id)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Action()
	#tag EndHook


	#tag Note, Name = Status complete\x2C not modernized
		iOS 10
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520696D616765206368616E676573207768656E2074686520627574746F6E2069732064697361626C65642E
		#tag Getter
			Get
			  Declare function adjustsImageWhenDisabled lib UIKitLibname selector "adjustsImageWhenDisabled" (id as ptr) as Boolean
			  return adjustsImageWhenDisabled (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setAdjustsImageWhenDisabled lib UIKitLibname selector "setAdjustsImageWhenDisabled:" (id as ptr, value as Boolean)
			  setAdjustsImageWhenDisabled (id, value)
			End Set
		#tag EndSetter
		AdjustsImageWhenDisabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520696D616765206368616E676573207768656E2074686520627574746F6E20697320686967686C6967687465642E
		#tag Getter
			Get
			  Declare function adjustsImageWhenHighlighted lib UIKitLibname selector "adjustsImageWhenHighlighted" (id as ptr) as Boolean
			  return adjustsImageWhenHighlighted (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setAdjustsImageWhenHighlighted lib UIKitLibname selector "setAdjustsImageWhenHighlighted:" (id as ptr, value as Boolean)
			  setAdjustsImageWhenHighlighted (id, value)
			End Set
		#tag EndSetter
		AdjustsImageWhenHighlighted As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520627574746F6E20747970652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function buttonType lib UIKitLibname selector "buttonType" (id as ptr) as UIButtonType
			  return buttonType (id)
			  
			End Get
		#tag EndGetter
		ButtonType As UIButtonType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static targetID as ptr
			  if targetID = Nil then
			    dim methods() as TargetClassMethodHelper
			    //override UIView methods
			    // methods.Append new TargetClassMethodHelper("willMoveToWindow:", AddressOf impl_willMoveToWindow, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToWindow", AddressOf impl_DidMoveToWindow, "v@:")
			    methods.Append new TargetClassMethodHelper("willMoveToSuperview:", AddressOf impl_willMoveToSuperview, "v@:@")
			    methods.Append new TargetClassMethodHelper("didMoveToSuperview", AddressOf impl_DidMoveToSuperview, "v@:")
			    // methods.Append new TargetClassMethodHelper("willRemoveSubview:", AddressOf impl_willRemoveSubview, "v@:@")
			    // methods.Append new TargetClassMethodHelper("didAddSubview:", AddressOf impl_DidAddSubview, "v@:@")
			    // methods.Append new TargetClassMethodHelper("layoutSubviews", AddressOf impl_layoutSubviews, "v@:")
			    // methods.Append new TargetClassMethodHelper("layerClass", AddressOf impl_layerclass, "@@:", true, true)
			    methods.Append new TargetClassMethodHelper("tintColorDidChange", AddressOf impl_tintColorDidChange, "v@:")
			    
			    // #if Target64Bit
			    // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect64, "v@:{CGRect}")
			    // #elseif Target32Bit
			    // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect32, "v@:{CGRect}")
			    // #endif
			    
			    //TraitEnvironment Protocol
			    methods.Append new TargetClassMethodHelper("traitCollectionDidChange:", AddressOf impl_traitCollectionDidChange, "v@:@")
			    
			    
			    //Add UIResponder methods too
			    // methods.Append new TargetClassMethodHelper("touchesBegan:withEvent:", AddressOf impl_TouchesBeganWithEvent, "v@:@@")
			    // methods.Append new TargetClassMethodHelper("touchesEnded:withEvent:", AddressOf impl_TouchesEndedWithEvent, "v@:@@")
			    // methods.Append new TargetClassMethodHelper("touchesMoved:withEvent:", AddressOf impl_TouchesMovedWithEvent, "v@:@@")
			    // methods.Append new TargetClassMethodHelper("touchesCancelled:withEvent:", AddressOf impl_TouchesCancelledWithEvent, "v@:@@")
			    
			    methods.Append new TargetClassMethodHelper("motionBegan:withEvent:", AddressOf impl_MotionBeganWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("motionEnded:withEvent:", AddressOf impl_MotionEndedWithEvent, "v@:i@")
			    methods.Append new TargetClassMethodHelper("motionCancelled:withEvent:", AddressOf impl_MotionCancelledWithEvent, "v@:i@")
			    
			    methods.Append new TargetClassMethodHelper("touchesEstimatedPropertiesUpdated:", AddressOf impl_touchesEstimatedPropertiesUpdated, "v@:@")
			    methods.Append new TargetClassMethodHelper("remoteControlReceivedWithEvent:", AddressOf impl_remoteControlReceivedWithEvent, "v@:@")
			    
			    methods.Append new TargetClassMethodHelper("pressesBegan:withEvent:", AddressOf impl_pressesBeganWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("pressesCancelled:withEvent:", AddressOf impl_pressesCancelledWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("pressesChanged:withEvent:", AddressOf impl_pressesChangedWithEvent, "v@:@@")
			    methods.Append new TargetClassMethodHelper("pressesEnded:withEvent:", AddressOf impl_pressesEndedWithEvent, "v@:@@")
			    
			    methods.append new TargetClassMethodHelper("touched", AddressOf impl_touched, "v@:")
			    
			    targetID = BuildTargetClass ("UIButton", "iOSLibButton",methods)
			  end if
			  Return targetID
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E736574206F72206F7574736574206D617267696E7320666F72207468652072656374616E676C6520737572726F756E64696E6720616C6C206F662074686520627574746F6EE280997320636F6E74656E742E
		#tag Getter
			Get
			  Declare function contentEdgeInsets lib UIKitLibname selector "contentEdgeInsets" (id as ptr) as UIEdgeInsets
			  return contentEdgeInsets (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setContentEdgeInsets lib UIKitLibname selector "setContentEdgeInsets:" (id as ptr, value as UIEdgeInsets)
			  setContentEdgeInsets (id, value)
			  
			End Set
		#tag EndSetter
		ContentEdgeInsets As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E74207374796C6564207469746C65207468617420697320646973706C61796564206F6E2074686520627574746F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function currentAttributedTitle lib UIKitLibname selector "currentAttributedTitle" (id as ptr) as Ptr
			  return AppleAttributedString.MakeFromPtr ( currentAttributedTitle (id))
			  
			End Get
		#tag EndGetter
		CurrentAttributedTitle As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E74206261636B67726F756E6420696D61676520646973706C61796564206F6E2074686520627574746F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function currentBackgroundImage lib UIKitLibname selector "currentBackgroundImage" (id as ptr) as Ptr
			  return new AppleImage (currentBackgroundImage (id))
			End Get
		#tag EndGetter
		CurrentBackgroundImage As Appleimage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E7420696D61676520646973706C61796564206F6E2074686520627574746F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function currentImage lib UIKitLibname selector "currentImage" (id as ptr) as Ptr
			  return new AppleImage (currentImage (id))
			End Get
		#tag EndGetter
		CurrentImage As Appleimage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E74207469746C65207468617420697320646973706C61796564206F6E2074686520627574746F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function currentTitle lib UIKitLibname selector "currentTitle" (id as ptr) as CFStringRef
			  return currentTitle (id)
			  
			End Get
		#tag EndGetter
		CurrentTitle As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72207573656420746F20646973706C617920746865207469746C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function currentTitleColor lib UIKitLibname selector "currentTitleColor" (id as ptr) as Ptr
			  return  AppleColor.MakeFromPtr (currentTitleColor (id))
			End Get
		#tag EndGetter
		CurrentTitleColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F6620746865207469746C65E280997320736861646F772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function currentTitleShadowColor lib UIKitLibname selector "currentTitleShadowColor" (id as ptr) as Ptr
			  return  AppleColor.MakeFromPtr (currentTitleShadowColor (id))
			End Get
		#tag EndGetter
		CurrentTitleShadowColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E736574206F72206F7574736574206D617267696E7320666F72207468652072656374616E676C652061726F756E642074686520627574746F6EE280997320696D6167652E
		#tag Getter
			Get
			  return getimageEdgeInsets (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setImageEdgeInsets (mid, value)
			  
			End Set
		#tag EndSetter
		ImageEdgeInsets As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520627574746F6EE280997320696D61676520766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  declare Function imageView lib UIKitLibname selector "imageView" (id as ptr) as ptr
			  return new AppleView (imageView (id))
			End Get
		#tag EndGetter
		ImageView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207469746C6520736861646F77206368616E676573207768656E2074686520627574746F6E20697320686967686C6967687465642E
		#tag Getter
			Get
			  Declare function reversesTitleShadowWhenHighlighted lib UIKitLibname selector "reversesTitleShadowWhenHighlighted" (id as ptr) as Boolean
			  return reversesTitleShadowWhenHighlighted (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setReversesTitleShadowWhenHighlighted lib UIKitLibname selector "setReversesTitleShadowWhenHighlighted:" (id as ptr, value as Boolean)
			  setReversesTitleShadowWhenHighlighted (id, value)
			End Set
		#tag EndSetter
		ReversesTitleShadowWhenHighlighted As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074617070696E672074686520627574746F6E2063617573657320697420746F20676C6F772E
		#tag Getter
			Get
			  Declare function showsTouchWhenHighlighted lib UIKitLibname selector "showsTouchWhenHighlighted" (id as ptr) as Boolean
			  return showsTouchWhenHighlighted (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setShowsTouchWhenHighlighted lib UIKitLibname selector "setShowsTouchWhenHighlighted:" (id as ptr, value as Boolean)
			  setShowsTouchWhenHighlighted (id, value)
			End Set
		#tag EndSetter
		ShowsTouchWhenHighlighted As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696E7420636F6C6F7220746F206170706C7920746F2074686520627574746F6E207469746C6520616E6420696D6167652E
		#tag Getter
			Get
			  Declare function tintColor lib UIKitLibname selector "tintColor" (id as ptr) as Ptr
			  return  applecolor.MakeFromPtr (tintColor (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setTintColor lib UIKitLibname selector "setTintColor:" (id as ptr, value as Ptr)
			  setTintColor (id, NilPtr(value))
			End Set
		#tag EndSetter
		TintColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E736574206F72206F7574736574206D617267696E7320666F72207468652072656374616E676C652061726F756E642074686520627574746F6EE2809973207469746C6520746578742E
		#tag Getter
			Get
			  Declare function titleEdgeInsets lib UIKitLibname selector "titleEdgeInsets" (id as ptr) as UIEdgeInsets
			  return titleEdgeInsets (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTitleEdgeInsets lib UIKitLibname selector "setTitleEdgeInsets:" (id as ptr, value as UIEdgeInsets)
			  setTitleEdgeInsets (id, value)
			  
			End Set
		#tag EndSetter
		TitleEdgeInsets As UIEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412076696577207468617420646973706C617973207468652076616C7565206F66207468652063757272656E745469746C652070726F706572747920666F72206120627574746F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  declare Function titleLabel lib UIKitLibname selector "titleLabel" (id as ptr) as ptr
			  return new AppleLabel (titleLabel (id))
			End Get
		#tag EndGetter
		TitleLabel As AppleLabel
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F6666736574206F662074686520736861646F77207573656420746F20646973706C617920746865207265636569766572E2809973207469746C652E20446570656372617465642073696E636520694F5320332E3020627574206E6F207375627374697475746520696E207369676874207965742E
		#tag Getter
			Get
			  return gettitleShadowOffset(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  settitleShadowOffset mid, value
			End Set
		#tag EndSetter
		TitleShadowOffset As FoundationFrameWork.NSSize
	#tag EndComputedProperty


	#tag Enum, Name = UIButtonType, Type = Integer, Flags = &h0
		Custom = 0
		  System = 1
		  Disclosure = 2
		  InfoLight = 3
		  InfoDark = 4
		  ContactAdd = 5
		RoundedRect = System
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AdjustsImageWhenDisabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AdjustsImageWhenHighlighted"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
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
			Name="ButtonType"
			Group="Behavior"
			Type="UIButtonType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Custom"
				"1 - System"
				"2 - Disclosure"
				"3 - InfoLight"
				"4 - InfoDark"
				"5 - ContactAdd"
				"0 - RoundedRect"
			#tag EndEnumValues
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
			Name="ContentHorizontalAlignment"
			Group="Behavior"
			Type="UIControlContentHorizontalAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Left"
				"2 - Right"
				"3 - Fill"
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
			Name="ContentVerticalAlignment"
			Group="Behavior"
			Type="UIControlContentVerticalAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Top"
				"2 - Bottom"
				"3 - Fill"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentTitle"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
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
			Name="Highlighted"
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
			Name="ReversesTitleShadowWhenHighlighted"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selected"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsTouchWhenHighlighted"
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
			Name="TouchInside"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tracking"
			Group="Behavior"
			Type="Boolean"
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
