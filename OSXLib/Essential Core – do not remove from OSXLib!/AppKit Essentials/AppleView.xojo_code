#tag Class
Protected Class AppleView
Inherits AppleResponder
	#tag Method, Flags = &h0, Description = 41646473206120636F6E73747261696E74206F6E20746865206C61796F7574206F662074686520726563656976696E672076696577206F72206974732073756276696577732E
		Sub AddConstraint(Constraint As AppleLayoutConstraint)
		  AddConstraint id, Constraint.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub addConstraint Lib appkitlibname Selector "addConstraint:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 41646473206D756C7469706C6520636F6E73747261696E7473206F6E20746865206C61796F7574206F662074686520726563656976696E672076696577206F72206974732073756276696577732E
		Sub AddConstraints(Constraints As AppleArray)
		  AddConstraints id, Constraints.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub addConstraints Lib appkitlibname Selector "addConstraints:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 41646473207468652070726F7669646564206C61796F757420677569646520746F2074686520766965772E20417661696C61626C652073696E6365204F5320582031302E3131
		Sub AddLayoutGuide(Guide As AppleLayoutGuide)
		  AddLayoutGuide id, Guide.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub addLayoutGuide Lib appkitlibname Selector "addLayoutGuide:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 416464732061207669657720746F207468652076696577E280997320737562766965777320736F206974E280997320646973706C617965642061626F766520697473207369626C696E67732E
		Sub AddSubview(Subview as appleView)
		  #If TargetMacOS then
		    addSubview id, subview.id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E73657274732061207669657720616D6F6E67207468652076696577E280997320737562766965777320736F206974E280997320646973706C6179656420696D6D6564696174656C792061626F7665206F722062656C6F7720616E6F7468657220766965772E
		Sub AddSubview(Subview as appleView, positioned as AppleWindow.NSWindowOrderingMode, otherView as AppleWindow)
		  #If TargetMacOS then
		    addSubviewpositioned id, subview.id, positioned, otherview.id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub addSubview Lib appkitlibname Selector "addSubview:" (id as ptr, subview as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub addSubviewPositioned Lib appkitlibname Selector "addSubview:positioned:relativeTo:" (id as ptr, subview as ptr, positioned as AppleWindow . NSWindowOrderingMode, OtherWindow as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120746F6F6C74697020666F72206120646566696E6564206172656120746865207669657720616E642072657475726E732061207461672074686174206964656E7469666965732074686520746F6F6C7469702072656374616E676C652E0A4F776E65724F626A65637420697320616E206F626A6563742066726F6D20776869636820746F206F627461696E2074686520746F6F6C74697020737472696E672E20546865206F626A6563742073686F756C642065697468657220696D706C656D656E7420766965773A737472696E67466F72546F6F6C5469703A706F696E743A75736572446174613A2C206F722072657475726E2061207375697461626C6520737472696E672066726F6D20697473206465736372697074696F6E206D6574686F642E20757365724461746120697320616E206F7074696F6E616C206F626A656374206966204F776E65724F626A65637420737570706F727473206120706172616D65746572206F662074686174206B696E642E
		Function AddToolTip(Rect as FoundationFrameWork.NSRect, ownerObject as AppleObject, Userdata as appleobject = nil) As integer
		  #If TargetMacOS then
		    return addToolTipRect( id, rect, ownerObject.id, if (userdata = nil, nil,userdata.id))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120746F6F6C74697020666F72206120646566696E6564206172656120746865207669657720616E642072657475726E732061207461672074686174206964656E7469666965732074686520746F6F6C7469702072656374616E676C652E
		Function AddToolTip(Rect as FoundationFrameWork.NSRect, TipText As CFStringRef) As integer
		  #If TargetMacOS then
		    return addToolTipRectText( id, rect, TipText, Nil)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function addToolTipRect Lib appkitlibname Selector "addToolTipRect:owner:userData:" (id as ptr, rect as FoundationFrameWork . NSRect, owner as ptr, userData as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function addToolTipRectText Lib appkitlibname Selector "addToolTipRect:owner:userData:" (id as ptr, rect as FoundationFrameWork . NSRect, owner as cfstringref, userData as Ptr) As Integer
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 45737461626C697368657320616E206172656120666F7220747261636B696E67206D6F7573652D656E746572656420616E64206D6F7573652D657869746564206576656E74732077697468696E20746865207669657720616E642072657475726E732061207461672074686174206964656E7469666965732074686520747261636B696E672072656374616E676C652E
		Function AddTrackingRect(Rect As FoundationFrameWork.NSRect, owner as AppleObject, UserData As AppleObject = nil, AssumeInside as Boolean = true) As integer
		  #If TargetMacOS then
		    return addTrackingRect (id,rect, owner.id, if (userdata = nil, nil, userdata.id), Assumeinside)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function addTrackingRect Lib appkitlibname Selector "addTrackingRect:owner:userData:assumeInside:" (id as ptr, rect as FoundationFrameWork . NSRect, owner as ptr, userdata as ptr, assumeinside as Boolean) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub adjustPageWidthNew Lib appkitlibname Selector "adjustPageWidthNew:left:right:limit:" (id as ptr, byref newRight as CGFloat, oldLeft as CGFloat, oldRight As CGFloat, rightLimit as CGFloat)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652076696577E280997320616C69676E6D656E742072656374616E676C6520666F72206120676976656E206672616D652E
		Function AlignmentRect(Frame as FoundationFrameWork . NSREct) As FoundationFrameWork.NSREct
		  return getalignmentrectforFrame ( id, Frame)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AncestorSharedWithView(aView as AppleView) As AppleView
		  #If TargetMacOS then
		    return appleview.MakefromPtr (getancestorSharedWithView(id, aview.id))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520616E696D6174696F6E20746861742073686F756C6420626520706572666F726D656420666F722074686520737065636966696564206B65792E
		Function Animation(Key as CFStringRef) As AppleCAAnimation
		  
		  #If TargetMacOS then
		    return AppleCAAnimation.MakeFromPtr(getanimationForKey (id, key))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackingAlignedRect(rect as FoundationFrameWork.NSRect, options as AppleAlignmentOptions) As FoundationFrameWork.NSRect
		  #If TargetMacOS then
		    return backingAlignedRect(id, rect, options.id)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function backingAlignedRect Lib appkitlibname Selector "backingAlignedRect:options:" (id as ptr, rect as FoundationFrameWork . NSRect, options as uint64) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub beginDocument Lib appkitlibname Selector "beginDocument" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub CallExerciseAmbiguityinLayout()
		  me.ExerciseAmbiguityInLayout
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E76657274732074686520636F726E657273206F662061207370656369666965642072656374616E676C6520746F206C6965206F6E207468652063656E746572206F662064657669636520706978656C732C2077686963682069732075736566756C20696E20636F6D70656E736174696E6720666F722072656E646572696E67206F7665727363616E6E696E67207768656E2074686520636F6F7264696E6174652073797374656D20686173206265656E207363616C65642E0A54686973206D6574686F6420636F6E76657274732074686520676976656E2072656374616E676C6520746F2064657669636520636F6F7264696E617465732C2061646A75737473207468652072656374616E676C6520746F206C696520696E207468652063656E746572206F662074686520706978656C732C20616E6420636F6E76657274732074686520726573756C74696E672072656374616E676C65206261636B20746F207468652076696577E280997320636F6F7264696E6174652073797374656D2E204E6F746520746861742074686973206D6574686F6420646F6573206E6F742074616B6520696E746F206163636F756E7420616E79207472616E73666F726D6174696F6E7320706572666F726D6564207573696E6720746865204E53416666696E655472616E73666F726D20636C617373206F722051756172747A20324420726F7574696E65732E
		Function CenterScanRect(Rect As FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  #If TargetMacOS then
		    return centerScanRect(id,rect)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function centerScanRect Lib appkitlibname Selector "centerScanRect:" (id as ptr, rect as FoundationFrameWork . NSrect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub CheckLayout()
		  if me.HasAmbiguousLayout then
		    for q as integer = 0 to 50
		      xojo.core.timer.CallLater 1, AddressOf callexerciseAmbiguityInLayout
		      app.DoEvents 20
		    next
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aControl as control)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(ptr(aControl.Handle))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6577207669657720696E2074686520737065636966696564206672616D652E
		Sub Constructor(Frame as FoundationFrameWork.nsrect)
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor(initWithFrame(alloc(classptr), frame))
		    MHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207072696F726974792077697468207768696368206120766965772072657369737473206265696E67206D61646520736D616C6C6572207468616E2069747320696E7472696E7369632073697A652E
		Function ContentCompressionResistancePriority(orientation as AppleLayoutConstraint.NSLayoutConstraintOrientation) As AppleLayoutConstraint.NSLayoutPriority
		  return getcontentCompressionResistancePriorityForOrientation(id, orientation)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207072696F726974792077697468207768696368206120766965772072657369737473206265696E67206D61646520736D616C6C6572207468616E2069747320696E7472696E7369632073697A652E
		Sub ContentCompressionResistancePriority(orientation as AppleLayoutConstraint.NSLayoutConstraintOrientation, assigns value as AppleLayoutConstraint.NSLayoutPriority)
		  setContentCompressionResistancePriority(id, orientation, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207072696F726974792077697468207768696368206120766965772072657369737473206265696E67206D616465206C6172676572207468616E2069747320696E7472696E7369632073697A652E
		Function ContentHuggingPriority(orientation as AppleLayoutConstraint.NSLayoutConstraintOrientation) As AppleLayoutConstraint.NSLayoutPriority
		  return getcontentHuggingPriorityForOrientation(id, orientation)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207072696F726974792077697468207768696368206120766965772072657369737473206265696E67206D616465206C6172676572207468616E2069747320696E7472696E7369632073697A652E
		Sub ContentHuggingPriority(orientation as AppleLayoutConstraint.NSLayoutConstraintOrientation ,assigns value as AppleLayoutConstraint.NSLayoutPriority)
		  setContentHuggingPriority (id, orientation, value)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertPoint Lib appkitlibname Selector "convertPoint:toView:" (id as ptr, point as FoundationFrameWork . NSPoint, view as ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D2069747320706978656C20616C69676E6564206261636B696E672073746F726520636F6F7264696E6174652073797374656D20746F207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertPointFromBacking(Point As FoundationFrameWork.NSPoint) As FoundationFrameWork.NSPoint
		  #If TargetMacOS then
		    return convertPointFromBacking(id,point)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertPointFromBacking Lib appkitlibname Selector "convertPointFromBacking:" (id as ptr, point as FoundationFrameWork . NSPoint) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572742074686520706F696E742066726F6D20746865206C61796572277320696E746572696F7220636F6F7264696E6174652073797374656D20746F207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertPointFromLayer(Point As FoundationFrameWork.NSPoint) As FoundationFrameWork.NSPoint
		  #If TargetMacOS then
		    return convertPointFromLayer(id,point)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertPointFromLayer Lib appkitlibname Selector "convertPointFromLayer:" (id as ptr, point as FoundationFrameWork . NSPoint) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D2074686520636F6F7264696E6174652073797374656D206F66206120676976656E207669657720746F2074686174206F662074686520766965772E
		Function ConvertPointFromView(Point As FoundationFrameWork.NSPoint, fromView As AppleView) As FoundationFrameWork.NSPoint
		  #If TargetMacOS then
		    return convertPointfromView(id,point, fromview.id)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertPointfromView Lib appkitlibname Selector "convertPoint:fromView:" (id as ptr, point as FoundationFrameWork . NSPoint, view as ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D20746F2069747320706978656C20616C69676E6564206261636B696E672073746F726520636F6F7264696E6174652073797374656D2E
		Function ConvertPointToBacking(Point As FoundationFrameWork.NSPoint) As FoundationFrameWork.NSPoint
		  #If TargetMacOS then
		    return convertPointToBacking(id,point)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertPointToBacking Lib appkitlibname Selector "convertPointToBacking:" (id as ptr, point as FoundationFrameWork . NSPoint) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E76657274207468652073697A652066726F6D207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D20746F20746865206C61796572277320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertPointToLayer(Point As FoundationFrameWork.NSPoint) As FoundationFrameWork.NSPoint
		  #If TargetMacOS then
		    return convertPointToLayer(id,point)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertPointToLayer Lib appkitlibname Selector "convertPointToLayer:" (id as ptr, point as FoundationFrameWork . NSPoint) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D207468652076696577E280997320636F6F7264696E6174652073797374656D20746F2074686174206F66206120676976656E20766965772E
		Function ConvertPointToView(Point As FoundationFrameWork.NSPoint, toView As AppleView) As FoundationFrameWork.NSPoint
		  #If TargetMacOS then
		    return convertPointtoView(id,point, toview.id)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertPointToView Lib appkitlibname Selector "convertPoint.toView:" (id as ptr, point as FoundationFrameWork . NSPoint, view as ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D2069747320706978656C20616C69676E6564206261636B696E672073746F726520636F6F7264696E6174652073797374656D20746F207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertRectFromBacking(Rect As FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  #If TargetMacOS then
		    return convertRectFromBacking(id,rect)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertRectFromBacking Lib appkitlibname Selector "convertRectFromBacking:" (id as ptr, rect as FoundationFrameWork . NSrect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E76657274207468652072656374616E676C652066726F6D20746865206C61796572277320696E746572696F7220636F6F7264696E6174652073797374656D20746F207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertRectFromLayer(Rect As FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  #If TargetMacOS then
		    return convertRectFromLayer(id,rect)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertRectFromLayer Lib appkitlibname Selector "convertRectFromLayer:" (id as ptr, rect as FoundationFrameWork . NSrect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D2074686520636F6F7264696E6174652073797374656D206F6620616E6F74686572207669657720746F2074686174206F662074686520766965772E
		Function ConvertRectFromView(Rect As FoundationFrameWork.NSRect, fromView As AppleView) As FoundationFrameWork.NSRect
		  #If TargetMacOS then
		    return convertRectFromView(id,rect, fromView.id)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertRectFromView Lib appkitlibname Selector "convertRect:fromView:" (id as ptr, rect as FoundationFrameWork . NSrect, view as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D20746F2069747320706978656C20616C69676E6564206261636B696E672073746F726520636F6F7264696E6174652073797374656D2E
		Function ConvertRectToBacking(Rect As FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  #If TargetMacOS then
		    return convertRectToBacking(id,rect)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertRectToBacking Lib appkitlibname Selector "convertRectToBacking:" (id as ptr, rect as FoundationFrameWork . NSrect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E76657274207468652073697A652066726F6D207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D20746F20746865206C61796572277320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertRectToLayer(Rect As FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  #If TargetMacOS then
		    return convertRectToLayer(id,rect)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertRectToLayer Lib appkitlibname Selector "convertRectToLayer:" (id as ptr, rect as FoundationFrameWork . NSrect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D207468652076696577E280997320636F6F7264696E6174652073797374656D20746F2074686174206F6620616E6F7468657220766965772E
		Function ConvertRectToView(Rect As FoundationFrameWork.NSRect, toView As AppleView) As FoundationFrameWork.NSRect
		  #If TargetMacOS then
		    return convertRecttoView(id,rect, toView.id)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertRectToView Lib appkitlibname Selector "convertRect:toView:" (id as ptr, rect as FoundationFrameWork . NSrect, view as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612073697A652066726F6D2069747320706978656C20616C69676E6564206261636B696E672073746F726520636F6F7264696E6174652073797374656D20746F207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertSizeFromBacking(Size As FoundationFrameWork.NSSize) As FoundationFrameWork.NSSize
		  #If TargetMacOS then
		    return convertSizeFromBacking(id,size)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertSizeFromBacking Lib appkitlibname Selector "convertSizeFromBacking:" (id as ptr, size as FoundationFrameWork . NSSize) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E76657274207468652073697A652066726F6D20746865206C61796572277320696E746572696F7220636F6F7264696E6174652073797374656D20746F207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertSizeFromLayer(Size As FoundationFrameWork.NSSize) As FoundationFrameWork.NSSize
		  #If TargetMacOS then
		    return convertSizeFromLayer(id,size)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertSizeFromLayer Lib appkitlibname Selector "convertSizeFromLayer:" (id as ptr, size as FoundationFrameWork . NSSize) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612073697A652066726F6D20616E6F746865722076696577E280997320636F6F7264696E6174652073797374656D20746F2074686174206F662074686520766965772E
		Function ConvertSizeFromView(Size As FoundationFrameWork.NSSize, fromView As AppleView) As FoundationFrameWork.NSSize
		  #If TargetMacOS then
		    return convertSizeFromview(id, size, fromview.id)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertSizefromView Lib appkitlibname Selector "convertSize:fromView:" (id as ptr, size as FoundationFrameWork . NSSize, view as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612073697A652066726F6D207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D20746F2069747320706978656C20616C69676E6564206261636B696E672073746F726520636F6F7264696E6174652073797374656D2E
		Function ConvertSizeToBacking(Size As FoundationFrameWork.NSSize) As FoundationFrameWork.NSSize
		  #If TargetMacOS then
		    return convertSizeToBacking(id,size)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertSizeToBacking Lib appkitlibname Selector "convertSizeToBacking:" (id as ptr, size as FoundationFrameWork . NSSize) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E76657274207468652073697A652066726F6D207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D20746F20746865206C61796572277320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertSizeToLayer(Size As FoundationFrameWork.NSSize) As FoundationFrameWork.NSSize
		  #If TargetMacOS then
		    return convertSizeToLayer(id,size)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertSizeToLayer Lib appkitlibname Selector "convertSizeToLayer:" (id as ptr, size as FoundationFrameWork . NSSize) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612073697A652066726F6D207468652076696577E280997320636F6F7264696E6174652073797374656D20746F2074686174206F6620616E6F7468657220766965772E
		Function ConvertSizeToView(Size As FoundationFrameWork.NSSize, toView As AppleView) As FoundationFrameWork.NSSize
		  #If TargetMacOS then
		    return convertSizeToview(id, size, toView.id)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function convertSizeToView Lib appkitlibname Selector "convertSize:toView:" (id as ptr, size as FoundationFrameWork . NSSize, view as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320455053206461746120746861742064726177732074686520726567696F6E206F662074686520766965772077697468696E2061207370656369666965642072656374616E676C652E0A5468697320646174612063616E20626520706C61636564206F6E20616E204E535061737465626F617264206F626A6563742C207772697474656E20746F20612066696C652C206F72207573656420746F2063726561746520616E204E53496D616765206F626A6563742E
		Function DataWithEPSInsideRect(aRect as FoundationFrameWork.NSRect) As AppleData
		  #If TargetMacOS then
		    return appledata.MakefromPtr (getdataWithEPSInsideRect(id, arect))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320504446206461746120746861742064726177732074686520726567696F6E206F662074686520766965772077697468696E2061207370656369666965642072656374616E676C652E0A5468697320646174612063616E20626520706C61636564206F6E20616E204E535061737465626F617264206F626A6563742C207772697474656E20746F20612066696C652C206F72207573656420746F2063726561746520616E204E53496D616765206F626A6563742E
		Function DataWithPDFInsideRect(aRect as FoundationFrameWork.NSRect) As AppleData
		  #If TargetMacOS then
		    return appledata.MakefromPtr (getdataWithPDFInsideRect(id, arect))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652064656661756C7420616E696D6174696F6E20746861742073686F756C6420626520706572666F726D656420666F722074686520737065636966696564206B65792E
<<<<<<< HEAD
		Shared Function DefaultAnimationForKey(Key as CFStringRef) As AppleCAAnimation
		  return AppleCAAnimation.MakeFromPtr(getdefaultanimationForKey (ClassPtr, key))
=======
		 Shared Function DefaultAnimationForKey(Key as CFStringRef) As AppleCAAnimation
		  #If TargetMacOS then
		    return AppleCAAnimation.MakeFromPtr(getdefaultanimationForKey (ClassPtr, key))
		  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function defaultAnimationForKey Lib appkitlibname Selector "defaultAnimationForKey:" (id as ptr, key as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 446973706C61797320746865207669657720616E6420616C6C2069747320737562766965777320696620706F737369626C652C20696E766F6B696E672065616368206F6620746865204E5356696577206D6574686F6473206C6F636B466F6375732C2064726177526563743A2C20616E6420756E6C6F636B466F637573206173206E65636573736172792E200A496E2073686F72742C207468697320697320746865206571756976616C656E74206F66206120586F6A6F20726566726573682063616C6C2E
		Sub Display()
		  #If TargetMacOS then
		    display id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4163747320617320646973706C61792C2062757420636F6E66696E696E672064726177696E6720746F20612072656374616E67756C617220726567696F6E206F662074686520766965772E
		Sub Display(aRect As FoundationFrameWork.NSRect, IgnoreOpacity As Boolean = False)
		  
		  #If TargetMacOS then
		    if IgnoreOpacity then
		      displayRectIgnoringOpacity id, aRect
		    else
		      displayRect id, aRect
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub display Lib appkitlibname Selector "display" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 446973706C61797320746865207669657720616E6420616C6C2069747320737562766965777320696620616E792070617274206F6620746865207669657720686173206265656E206D61726B6564206173206E656564696E6720646973706C61792E
		Sub DisplayIfNeeded(IgnoreOpacity as boolean = false)
		  #If TargetMacOS then
		    if IgnoreOpacity then
		      displayIfNeededIgnoringOpacity id 
		    else
		      displayIfNeeded id
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4163747320617320646973706C617949664E65656465642C20636F6E66696E696E672064726177696E6720746F20612073706563696669656420726567696F6E206F662074686520766965772E
		Sub DisplayIfNeeded(aRect As FoundationFrameWork.NSRect, IgnoreOpacity As Boolean = False)
		  #If TargetMacOS then
		    if IgnoreOpacity then
		      displayIfNeededInRectIgnoringOpacity id, aRect
		    else
		      displayIfNeededInRect id, aRect
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub displayIfNeeded Lib appkitlibname Selector "displayIfNeeded" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub displayIfNeededIgnoringOpacity Lib appkitlibname Selector "displayIfNeededIgnoringOpacity" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub displayIfNeededInRect Lib appkitlibname Selector "displayIfNeededInRect:" (id as ptr, rect as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub displayIfNeededInRectIgnoringOpacity Lib appkitlibname Selector "displayIfNeededInRectIgnoringOpacity:" (id as ptr, rect as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub displayRect Lib appkitlibname Selector "displayRect:" (id as ptr, rect as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub displayRectIgnoringOpacity Lib appkitlibname Selector "displayRectIgnoringOpacity:" (id as ptr, rect as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function enterFullScreenMode Lib appkitlibname Selector "enterFullScreenMode:withOptions:" (id as ptr, screen as ptr, options as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52616E646F6D6C79206368616E67657320746865206672616D65206F6620612076696577207769746820616E20616D626967756F7573206C61796F7574206265747765656E2074686520646966666572656E742076616C69642076616C7565732E204F6E6C79206D65616E7420666F7220636F6E73747261696E7420646562696767756E672E
		Sub ExerciseAmbiguityInLayout()
		  exerciseAmbiguityInLayout id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub exerciseAmbiguityInLayout Lib appkitlibname Selector "exerciseAmbiguityInLayout" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E76657274732074686520636F726E657273206F662061207370656369666965642072656374616E676C6520746F206C6965206F6E207468652063656E746572206F662064657669636520706978656C732C2077686963682069732075736566756C20696E20636F6D70656E736174696E6720666F722072656E646572696E67206F7665727363616E6E696E67207768656E2074686520636F6F7264696E6174652073797374656D20686173206265656E207363616C65642E0A54686973206D6574686F6420636F6E76657274732074686520676976656E2072656374616E676C6520746F2064657669636520636F6F7264696E617465732C2061646A75737473207468652072656374616E676C6520746F206C696520696E207468652063656E746572206F662074686520706978656C732C20616E6420636F6E76657274732074686520726573756C74696E672072656374616E676C65206261636B20746F207468652076696577E280997320636F6F7264696E6174652073797374656D2E204E6F746520746861742074686973206D6574686F6420646F6573206E6F742074616B6520696E746F206163636F756E7420616E79207472616E73666F726D6174696F6E7320706572666F726D6564207573696E6720746865204E53416666696E655472616E73666F726D20636C617373206F722051756172747A20324420726F7574696E65732E
		Sub ExitFullScreenMode(Options As AppleDictionary)
		  #If TargetMacOS then
		    exitFullScreenModeWithOptions(id,options.id)
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub exitFullScreenModeWithOptions Lib appkitlibname Selector "exitFullScreenModeWithOptions:" (id as ptr, options as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652076696577E2809973206672616D6520666F72206120676976656E20616C69676E6D656E742072656374616E676C652E
		Function FrameForAlignmentRect(Rect as FoundationFrameWork . NSREct) As FoundationFrameWork.NSREct
		  return getframeForAlignmentRect ( id, rect)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
<<<<<<< HEAD
		Shared Function fromControl(c as Control) As AppleView
		  #if targetmacos
=======
		 Shared Function fromControl(c as Control) As AppleView
		  #If TargetMacOS then
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		    Return new appleview (ptr(c.Handle))
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getalignmentRectForFrame Lib appkitlibname Selector "alignmentRectForFrame:" (id as ptr, frame as FoundationFrameWork . NSREct) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getalignmentRectInsets Lib appkitlibname Selector "alignmentRectInsets" (id as ptr) As appkitframework.NSEdgeInsets
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getalphaValue Lib appkitlibname Selector "alphaValue" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getancestorSharedWithView Lib appkitlibname Selector "ancestorSharedWithView:" (id as ptr, aview as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getanimationForKey Lib appkitlibname Selector "animationForKey:" (id as ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getautoresizesSubviews Lib appkitlibname Selector "autoresizesSubviews" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getautoresizingMask Lib appkitlibname Selector "autoresizingMask" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getbackgroundFilters Lib appkitlibname Selector "backgroundFilters" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getbaselineOffsetFromBottom Lib appkitlibname Selector "baselineOffsetFromBottom" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getborderType Lib appkitlibname Selector "borderType" (id as ptr) As NSBorderType
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getbounds Lib appkitlibname Selector "bounds" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getboundsRotation Lib appkitlibname Selector "boundsRotation" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcanDraw Lib appkitlibname Selector "canDraw" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcanDrawSubviewsIntoLayer Lib appkitlibname Selector "canDrawSubviewsIntoLayer" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getconstraints Lib appkitlibname Selector "constraints" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcontentCompressionResistancePriorityForOrientation Lib appkitlibname Selector "getcontentCompressionResistancePriorityForOrientation:" (id as ptr, orientation as AppleLayoutConstraint . NSLayoutConstraintOrientation) As AppleLayoutConstraint.NSLayoutPriority
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcontentFilters Lib appkitlibname Selector "contentFilters" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcontentHuggingPriorityForOrientation Lib appkitlibname Selector "contentHuggingPriorityForOrientation:" (id as ptr, orientation as AppleLayoutConstraint . NSLayoutConstraintOrientation) As AppleLayoutConstraint.NSLayoutPriority
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getdataWithEPSInsideRect Lib appkitlibname Selector "dataWithEPSInsideRect:" (id as ptr, rect as FoundationFrameWork . NSRect) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getdataWithPDFInsideRect Lib appkitlibname Selector "dataWithPDFInsideRect:" (id as ptr, rect as FoundationFrameWork . NSRect) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getdefaultAnimationForKey Lib appkitlibname Selector "defaultAnimationForKey:" (id as ptr, key as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getenclosingMenuItem Lib appkitlibname Selector "enclosingMenuItem" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getenclosingScrollView Lib appkitlibname Selector "enclosingScrollView" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getfirstBaselineAnchor Lib appkitlibname Selector "firstBaselineAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getfirstBaselineOffsetFromTop Lib appkitlibname Selector "firstBaselineOffsetFromTop" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getfittingSize Lib appkitlibname Selector "fittingSize" (id as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getfocusView Lib appkitlibname Selector "focusView" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getframeCenterRotation Lib appkitlibname Selector "frameCenterRotation" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getframeForAlignmentRect Lib appkitlibname Selector "frameForAlignmentRect:" (id as ptr, rect as FoundationFrameWork . NSREct) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getframeRotation Lib appkitlibname Selector "frameRotation" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function gethasAmbiguousLayout Lib appkitlibname Selector "hasAmbiguousLayout" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getheightAdjustLimit Lib appkitlibname Selector "heightAdjustLimit" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getinLiveResize Lib appkitlibname Selector "inLiveResize" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getintrinsicContentSize Lib appkitlibname Selector "intrinsicContentSize" (id as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getisDescendantOf Lib appkitlibname Selector "isDescendantOf:" (id as ptr, view as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getisDrawingFindIndicator Lib appkitlibname Selector "isDrawingFindIndicator" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getisInFullScreenMode Lib appkitlibname Selector "isInFullScreenMode" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getisRotatedFromBase Lib appkitlibname Selector "isRotatedFromBase" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getisRotatedOrScaledFromBase Lib appkitlibname Selector "isRotatedOrScaledFromBase" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getlastBaselineAnchor Lib appkitlibname Selector "lastBaselineAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getlastBaselineOffsetFromBottom Lib appkitlibname Selector "lastBaselineOffsetFromBottom" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getLayer Lib appkitlibname Selector "layer" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getlayerContentsPlacement Lib appkitlibname Selector "layerContentsPlacement" (id as ptr) As NSViewLayerContentsPlacement
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getlayerContentsRedrawPolicy Lib appkitlibname Selector "layerContentsRedrawPolicy" (id as ptr) As NSViewLayerContentsRedrawPolicy
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getlayerUsesCoreImageFilters Lib appkitlibname Selector "layerUsesCoreImageFilters" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getlayoutGuides Lib appkitlibname Selector "layoutGuides" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getneedsDisplay Lib appkitlibname Selector "needsDisplay" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getneedsLayout Lib appkitlibname Selector "needsLayout" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getneedsUpdateConstraints Lib appkitlibname Selector "needsUpdateConstraints" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getopaqueAncestor Lib appkitlibname Selector "opaqueAncestor" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpostsBoundsChangedNotifications Lib appkitlibname Selector "postsBoundsChangedNotifications" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getpostsFrameChangedNotifications Lib appkitlibname Selector "postsFrameChangedNotifications" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getregisteredDraggedTypes Lib appkitlibname Selector "registeredDraggedTypes" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getrequiresConstraintBasedLayout Lib appkitlibname Selector "requiresConstraintBasedLayout" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getshadow Lib appkitlibname Selector "shadow" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getsubviews Lib appkitlibname Selector "subviews" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getsuperview Lib appkitlibname Selector "superview" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function gettranslatesAutoresizingMaskIntoConstraints Lib appkitlibname Selector "translatesAutoresizingMaskIntoConstraints" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getviewWithTag Lib appkitlibname Selector "viewWithTag:" (id as ptr, tag as Integer) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getvisibleRect Lib appkitlibname Selector "visibleRect" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getWantsLayer Lib appkitlibname Selector "wantsLayer" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getwidthAdjustLimit Lib appkitlibname Selector "widthAdjustLimit" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_acceptsTouchEvents(pid as ptr, sel as ptr) As Boolean
		  dim view as AppleView = appleview.MakefromPtr(pid)
		  if view <> nil then 
		    return view.informOnacceptsTouchEvents
		  end if
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_allowsVibrancy(pid as ptr, sel as ptr) As Boolean
		  dim view as AppleView = appleview.MakefromPtr(pid)
		  if view <> nil then 
		    return view.informOnAllowsVibrancy()
		  end if
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_didAddSubview(pid as ptr, sel as ptr, subview as ptr) As Boolean
		  dim view as AppleView = appleview.MakefromPtr(pid)
		  if view <> nil then 
		    view.informOndidAddSubview(AppleView.MakefromPtr(subview))
		  end if
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_menuForEvent(pid as ptr, sel as ptr, anevent as ptr) As Ptr
		  dim view as AppleView = appleview.MakefromPtr(pid)
		  if view <> nil then 
		    dim result as applemenu = view.informOnmenuForEvent(AppleNSEvent.MakeFromPtr(anevent))
		    return if (result = nil,nil, result.id)
		  end if
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Function impl_opaque(pid as ptr, sel as ptr) As Boolean
		  dim view as AppleView = appleview.MakefromPtr(pid)
		  if view <> nil then 
		    return view.informOnopaque()
		  end if
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_ViewDidEndLiveResize(pid as ptr, sel as ptr)
		  dim view as AppleView = appleview.MakefromPtr(pid)
		  if view <> nil then 
		    view.informOnViewDidEndLiveResize()
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_viewDidHide(pid as ptr, sel as ptr)
		  dim view as AppleView = appleview.MakefromPtr(pid)
		  if view <> nil then 
		    view.informOnViewDidhide()
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_viewDidMoveToSuperview(pid as ptr, sel as ptr)
		  dim view as AppleView = appleview.MakefromPtr(pid)
		  if view <> nil then 
		    view.informOnviewidMoveToSuperview
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_viewDidMoveToWindow(pid as ptr, sel as ptr)
		  dim view as AppleView = appleview.MakefromPtr(pid)
		  if view <> nil then 
		    view.informOnviewDidMoveToWindow
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_viewDidUnhide(pid as ptr, sel as ptr)
		  dim view as AppleView = appleview.MakefromPtr(pid)
		  if view <> nil then 
		    view.informOnViewDidUnhide()
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_viewWillMoveToSuperview(pid as ptr, sel as ptr, superview as ptr)
		  dim view as AppleView = appleview.MakefromPtr(pid)
		  if view <> nil then 
		    view.informOnviewWillMoveToSuperview(appleview.MakefromPtr(superview))
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_viewWillMoveToWindow(pid as ptr, sel as ptr, superview as ptr)
		  dim view as AppleView = appleview.MakefromPtr(pid)
		  if view <> nil then 
		    view.informOnviewWillMoveToWindow(applewindow.MakefromPtr(superview))
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_viewWillStartLiveResize(pid as ptr, sel as ptr)
		  dim view as AppleView = appleview.MakefromPtr(pid)
		  if view <> nil then 
		    view.informOnviewWillStartLiveResize()
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_willOpenMenu(pid as ptr, sel as ptr, menu as ptr, anevent as ptr)
		  dim view as AppleView = appleview.MakefromPtr(pid)
		  if view <> nil then 
		    view.informOnwillOpenMenu(AppleMenu.MakefromPtr(menu), AppleNSEvent.MakeFromPtr(anevent))
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_willRemoveSubview(pid as ptr, sel as ptr, subview as ptr)
		  dim view as AppleView = appleview.MakefromPtr(pid)
		  if view <> nil then 
		    view.informOnwillRemoveSubview(appleview.MakefromPtr(subview))
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function informOnacceptsTouchEvents() As Boolean
		  if parentcontrol <> nil then 
		    return parentcontrol.informOnacceptsTouchEvents
		  else
		    return RaiseEvent AcceptsTouchEvents
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function informOnAllowsVibrancy() As Boolean
		  if parentcontrol <> nil then 
		    return parentcontrol.informOnAllowsVibrancy()
		  else
		    return RaiseEvent AllowsVibrancy()
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOndidAddSubview(subview as appleview)
		  if parentcontrol <> nil then 
		    parentcontrol.informOndidAddSubview (subview)
		  else
		    RaiseEvent DidAddSubview (subview)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function informOnmenuForEvent(anEvent As AppleNSEvent) As AppleMenu
		  dim result as applemenu
		  if parentcontrol <> nil then 
		    result = parentcontrol.informOnmenuForEvent(anEvent)
		  else
		    result = RaiseEvent MenuForEvent (anevent)
		  end if
		  return if (result = nil, me.Menu, result)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function informOnopaque() As Boolean
		  if parentcontrol <> nil then 
		    return parentcontrol.informOnopaque()
		  else
		    return RaiseEvent Opaque()
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnViewDidEndLiveResize()
		  if parentcontrol <> nil then 
		    parentcontrol.informOnViewDidEndLiveResize()
		  else
		    RaiseEvent DidResize()
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnViewDidhide()
		  if parentcontrol <> nil then 
		    parentcontrol.informOnViewDidhide()
		  else
		    RaiseEvent ViewDidHide()
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnviewDidMoveToWindow()
		  if parentcontrol <> nil then 
		    parentcontrol.informOnviewDidMoveToWindow
		  else
		    RaiseEvent ViewDidMoveToWindow
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnViewDidUnhide()
		  if parentcontrol <> nil then 
		    parentcontrol.informOnViewDidUnhide()
		  else
		    RaiseEvent ViewDidUnHide()
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnviewidMoveToSuperview()
		  if parentcontrol <> nil then 
		    parentcontrol.informOnviewidMoveToSuperview
		  else
		    RaiseEvent ViewDidMoveToSuperView
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnviewWillMoveToSuperview(superview as appleview)
		  if parentcontrol <> nil then 
		    parentcontrol.informOnviewWillMoveToSuperview(superview)
		  else
		    RaiseEvent viewWillMoveToSuperview(superview)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnviewWillMoveToWindow(Window as applewindow)
		  if parentcontrol <> nil then 
		    parentcontrol.informOnviewWillMoveToWindow(window)
		  else
		    RaiseEvent viewWillMoveToWindow(window)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnviewWillStartLiveResize()
		  if parentcontrol <> nil then 
		    parentcontrol.informOnviewWillStartLiveResize()
		  else
		    RaiseEvent WillResize()
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnwillOpenMenu(Menu as applemenu, anEvent As AppleNSEvent)
		  
		  if parentcontrol <> nil then 
		    parentcontrol.informOnwillOpenMenu(menu, anEvent)
		  else
		    RaiseEvent WillOpenMenuForEvent (menu, anevent)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Sub informOnwillRemoveSubview(subview as appleview)
		  if parentcontrol <> nil then 
		    parentcontrol.informOnwillRemoveSubview(subview)
		  else
		    RaiseEvent willRemoveSubview(subview)
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function initWithFrame Lib appkitlibname Selector "initWithFrame:" (id as ptr, frame as foundationframework . nsrect) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 496E76616C696461746573207468652076696577E280997320696E7472696E73696320636F6E74656E742073697A652E0A43616C6C2074686973207768656E20736F6D657468696E67206368616E67657320696E20796F757220637573746F6D2076696577207468617420696E76616C6964617465732069747320696E7472696E73696320636F6E74656E742073697A652E205468697320616C6C6F77732074686520636F6E73747261696E742D6261736564206C61796F75742073797374656D20746F2074616B6520746865206E657720696E7472696E73696320636F6E74656E742073697A6520696E746F206163636F756E7420696E20697473206E657874206C61796F757420706173732E
		Sub InvalidateIntrinsicContentSize()
		  #If TargetMacOS then
		    invalidateIntrinsicContentSize (id)
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub invalidateIntrinsicContentSize Lib appkitlibname Selector "invalidateIntrinsicContentSize" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73205472756520696620746865207669657720697320612073756276696577206F66206120676976656E2076696577206F72206966206974E2809973206964656E746963616C20746F207468617420766965773B206F74686572776973652C2069742072657475726E732046616C73652E
		Function IsDescendantOf(aView as AppleView) As Boolean
		  #If TargetMacOS then
		    return getIsDescendantOf (id,aview.id)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5570646174657320746865206C61796F7574206F662074686520726563656976696E67207669657720616E6420697473207375627669657773206261736564206F6E207468652063757272656E7420766965777320616E6420636F6E73747261696E74732E
		Sub LayoutSubtree()
		  layoutSubtreeIfNeeded id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub layoutSubtreeIfNeeded Lib appkitlibname Selector "layoutSubtreeIfNeeded" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4C6F636B732074686520666F637573206F6E2074686520766965772C20736F2073756273657175656E7420636F6D6D616E64732074616B652065666665637420696E207468652076696577E28099732077696E646F7720616E6420636F6F7264696E6174652073797374656D2E
		Sub LockFocus()
		  #If TargetMacOS then
		    lockFocus id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub lockFocus Lib appkitlibname Selector "lockFocus" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4C6F636B732074686520666F63757320746F2074686520766965772061746F6D6963616C6C79206966207468652063616E44726177206D6574686F642072657475726E732059455320616E642072657475726E73207468652076616C7565206F662063616E447261772E
		Function LockFocusIfCanDraw() As Boolean
		  #If TargetMacOS then
		    return lockFocusIfCanDraw (id)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function lockFocusIfCanDraw Lib appkitlibname Selector "lockFocusIfCanDraw" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43726561746573207468652076696577E2809973206261636B696E67206C617965722E
		Function MakeBackingLayer() As AppleCALayer
		  #If TargetMacOS then
		    return AppleCALayer.MakefromPtr(makeBackingLayer(id))
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function makeBackingLayer Lib appkitlibname Selector "makeBackingLayer" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleView
		  return if (aptr= nil, nil, new appleview(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E67207768657468657220746865207370656369666965642072656374616E676C6520696E746572736563747320616E792070617274206F662074686520617265612074686174207468652076696577206973206265696E672061736B656420746F20647261772E
		Function NeedsToDrawRect(aRect as FoundationFrameWork.NSRect) As Boolean
		  #If TargetMacOS then
		    return needsToDrawRect (id, aRect)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function needsToDrawRect Lib appkitlibname Selector "needsToDrawRect:" (id as ptr, aRect as foundationframework . nsrect) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h1, Description = 496E7465726E616C3A2054686520694F5375736572636F6E74726F6C20737562636C61737320696620636F6E7461696E656420696E20737563682E
		Attributes( hidden ) Protected Function ParentControl() As OSXLibView
		  if XojoControls <> nil then
		    dim  wr as xojo.core.weakref = XojoControls.Lookup (id, nil)  
		    return if (wr = nil, nil,  OSXLibView(wr.Value))
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526573746F72657320746865207669657720746F20616E20696E697469616C20737461746520736F20746861742069742063616E206265207265757365642E
		Sub PrepareForReuse()
		  #If TargetMacOS then
		    prepareForReuse id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub prepareForReuse Lib appkitlibname Selector "prepareForReuse" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4F70656E7320746865205072696E742070616E656C2C20616E642069662074686520757365722063686F6F73657320616E206F7074696F6E206F74686572207468616E2063616E63656C696E672C207072696E747320746865207669657720616E6420616C6C2069747320737562766965777320746F20746865206465766963652073706563696669656420696E20746865205072696E742070616E656C2E
		Sub Print(Sender As Appleobject = nil)
		  #If TargetMacOS then
		    print id, if (sender = nil, nil,sender.id)
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub print Lib appkitlibname Selector "print:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4E6F746966696573206120636C69702076696577E2809973207375706572766965772074686174206569746865722074686520636C69702076696577E280997320626F756E64732072656374616E676C65206F722074686520646F63756D656E742076696577E2809973206672616D652072656374616E676C6520686173206368616E6765642C20616E64207468617420616E7920696E64696361746F7273206F6620746865207363726F6C6C20706F736974696F6E206E65656420746F2062652061646A75737465642E
		Sub ReflectScrolledClipView(ClipView As AppleView)
		  #If TargetMacOS then
		    reflectScrolledClipView  id, ClipView.id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub reflectScrolledClipView Lib appkitlibname Selector "reflectScrolledClipView:" (id as ptr, clipview as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572742074686520706F696E742066726F6D20746865206C61796572277320696E746572696F7220636F6F7264696E6174652073797374656D20746F207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Sub RegisterForDraggedTypes(Types As AppleArray)
		  #If TargetMacOS then
		    registerForDraggedTypes(id,types.id)
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub registerForDraggedTypes Lib appkitlibname Selector "registerForDraggedTypes:" (id as ptr, types as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616C6C20746F6F6C746970732061737369676E656420746F2074686520766965772E
		Sub RemoveAllToolTips()
		  #If TargetMacOS then
		    removeAllToolTips id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeAllToolTips Lib appkitlibname Selector "removeAllToolTips" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573207468652073706563696669656420636F6E73747261696E742066726F6D2074686520766965772E
		Sub RemoveConstraint(Constraint As AppleLayoutConstraint)
		  RemoveConstraint id, Constraint.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeConstraint Lib appkitlibname Selector "removeConstraint:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573207468652073706563696669656420636F6E73747261696E74732066726F6D207468652076696577
		Sub RemoveConstraints(Constraints As AppleArray)
		  RemoveConstraints id, Constraints.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeConstraints Lib appkitlibname Selector "removeConstraints:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 556E6C696E6B732074686520766965772066726F6D206974732073757065727669657720616E64206974732077696E646F772C2072656D6F7665732069742066726F6D2074686520726573706F6E64657220636861696E2C20616E6420696E76616C6964617465732069747320637572736F722072656374616E676C652E0A52656D6F76657320636F6E73747261696E747320746F6F20616E642072656C656173657320746865207669657720696620796F7520646F6EE2809974206275666665722069742E
		Sub RemoveFromSuperview(dontInvalidate as boolean = false)
		  #If TargetMacOS then
		    if dontInvalidate then
		      removeFromSuperviewWithoutNeedingDisplay id
		    else
		      removeFromSuperview id
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeFromSuperview Lib appkitlibname Selector "removeFromSuperview" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeFromSuperviewWithoutNeedingDisplay Lib appkitlibname Selector "removeFromSuperviewWithoutNeedingDisplay" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573207468652070726F7669646564206C61796F75742067756964652066726F6D2074686520766965772E20417661696C61626C652073696E6365204F5320582031302E31312E
		Sub RemoveLayoutGuide(Guide As AppleLayoutGuide)
		  removeLayoutGuide id, guide.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeLayoutGuide Lib appkitlibname Selector "removeLayoutGuide:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732074686520746F6F6C746970206964656E74696669656420627920737065636966696564207461672E
		Sub RemoveToolTip(ToolTipTag as Integer)
		  #If TargetMacOS then
		    removeToolTip id, ToolTipTag
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeToolTip Lib appkitlibname Selector "removeToolTip:" (id as ptr, value as integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732074686520747261636B696E672072656374616E676C65206964656E7469666965642062792061207461672E
		Sub RemoveTrackingRect(TrackingRectTag as Integer)
		  #If TargetMacOS then
		    removeTrackingRect id, TrackingRectTag
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub removeTrackingRect Lib appkitlibname Selector "removeTrackingRect:" (id as ptr, value as integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5265706C61636573206F6E65206F66207468652076696577E2809973207375627669657773207769746820616E6F7468657220766965772E
		Sub ReplaceSubview(OldSubview as AppleView, NewSubview as AppleView)
		  #If TargetMacOS then
		    replaceSubview id, OldSubview.id, NewSubview.id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub replaceSubview Lib appkitlibname Selector "replaceSubview:with:" (id as ptr, subview as ptr, newview as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 526F7461746573207468652076696577E280997320626F756E64732072656374616E676C65206279206120737065636966696564206465677265652076616C75652061726F756E6420746865206F726967696E206F662074686520636F6F7264696E6174652073797374656D2C2028302E302C20302E30292E0A5365652074686520626F756E6473526F746174696F6E206D6574686F64206465736372697074696F6E20666F72206D6F726520696E666F726D6174696F6E2E2054686973206D6574686F64206E656974686572207265646973706C617973207468652076696577206E6F72206D61726B73206974206173206E656564696E6720646973706C61792E20596F75206D75737420646F207468697320796F757273656C662062792063616C6C696E672074686520646973706C6179206D6574686F64206F722073657474696E6720746865206E65656473446973706C61792070726F70657274792E
		Sub Rotate(Angle As Double)
		  #If TargetMacOS then
		    rotateByAngle id, angle
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub rotateByAngle Lib appkitlibname Selector "rotateByAngle:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5363616C6573207468652076696577E280997320636F6F7264696E6174652073797374656D20736F20746861742074686520756E697420737175617265207363616C657320746F20746865207370656369666965642064696D656E73696F6E732E0A466F72206578616D706C652C2061206E6577556E697453697A65206F662028302E352C20312E302920636175736573207468652076696577E280997320686F72697A6F6E74616C20636F6F7264696E6174657320746F2062652068616C7665642C20696E207475726E20646F75626C696E6720746865207769647468206F662069747320626F756E64732072656374616E676C652E204E6F74652074686174207363616C696E6720697320706572666F726D65642066726F6D20746865206F726967696E206F662074686520636F6F7264696E6174652073797374656D2C2028302E302C20302E30292C206E6F7420746865206F726967696E206F662074686520626F756E64732072656374616E676C653B206173206120726573756C742C20626F746820746865206F726967696E20616E642073697A65206F662074686520626F756E64732072656374616E676C6520617265206368616E6765642E20546865206672616D652072656374616E676C652072656D61696E7320756E6368616E6765642E0A0A54686973206D6574686F6420646F6573206E6F74207265646973706C6179207468652076696577206F72206D61726B206974206173206E656564696E6720646973706C61792E20596F75206D75737420646F207468697320796F757273656C662062792063616C6C696E672074686520646973706C6179206D6574686F64206F722073657474696E6720746865206E65656473446973706C61792070726F70657274792E
		Function ScaleUnitSquareToSize(NewUnitSize As FoundationFrameWork.NSSize) As FoundationFrameWork.NSSize
		  #If TargetMacOS then
		    return ScaleUnitSquareToSize(id,NewUnitSize)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function scaleUnitSquareToSize Lib appkitlibname Selector "scaleUnitSquareToSize:" (id as ptr, size as FoundationFrameWork . NSSize) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4E6F7469666965732074686520737570657276696577206F66206120636C6970207669657720746861742074686520636C69702076696577206E6565647320746F20726573657420746865206F726967696E206F662069747320626F756E64732072656374616E676C652E
<<<<<<< HEAD
		Sub ScrollClipView(ClipView As AppleClipView, Point As FoundationFrameWork.NSPoint)
		  ScrollClipViewtoPoint  id, ClipView.id, Point
=======
		Sub ScrollClipView(ClipView As AppleView, Point As FoundationFrameWork.NSPoint)
		  #If TargetMacOS then
		    ScrollClipViewtoPoint  id, ClipView.id, Point
		  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub scrollClipViewtoPoint Lib appkitlibname Selector "scrollClipView:toPoint:" (id as ptr, clipview as ptr, point as FoundationFrameWork . NSPoint)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5363726F6C6C73207468652076696577E280997320636C6F7365737420616E636573746F72204E53436C697056696577206F626A65637420736F206120706F696E7420696E207468652076696577206C69657320617420746865206F726967696E206F662074686520636C69702076696577277320626F756E64732072656374616E676C652E
		Sub ScrollPoint(Point As FoundationFrameWork.NSPoint)
		  #If TargetMacOS then
		    scrollPoint (id,point)
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub scrollPoint Lib appkitlibname Selector "scrollPoint:" (id as ptr, point as FoundationFrameWork . NSPoint)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F70696573207468652076697369626C6520706F7274696F6E206F66207468652076696577E28099732072656E646572656420696D6167652077697468696E206120726567696F6E20616E64206C617973207468617420706F7274696F6E20646F776E20616761696E206174206120737065636966696564206F6666736574202E
		Sub ScrollRectBy(Rect As FoundationFrameWork.NSRect, Delta As FoundationFrameWork.NSSize)
		  #If TargetMacOS then
		    scrollRectbyDelta (id,rect, delta)
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub scrollRectbyDelta Lib appkitlibname Selector "scrollRect:by:" (id as ptr, rect as FoundationFrameWork . NSRect, delta as FoundationFramework . NSSize)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5363726F6C6C73207468652076696577E280997320636C6F7365737420616E636573746F72204E53436C697056696577206F626A65637420746865206D696E696D756D2064697374616E6365206E656564656420736F20612073706563696669656420726567696F6E206F66207468652076696577206265636F6D65732076697369626C6520696E2074686520636C697020766965772E
		Sub ScrollRectToVisible(Rect As FoundationFrameWork.NSRect)
		  #If TargetMacOS then
		    scrollRectToVisible(id,rect)
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub scrollRectToVisible Lib appkitlibname Selector "scrollRectToVisible:" (id as ptr, rect as FoundationFrameWork . NSrect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setalphaValue Lib appkitlibname Selector "setAlphaValue:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setautoresizesSubviews Lib appkitlibname Selector "setAutoresizesSubviews:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setautoresizingMask Lib appkitlibname Selector "setAutoresizingMask:" (id as ptr, value as UInteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setbackgroundFilters Lib appkitlibname Selector "setBackgroundFilters:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setborderType Lib appkitlibname Selector "setBorderType:" (id as ptr, value as NSBorderType)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setbounds Lib appkitlibname Selector "setBounds:" (id as ptr, value as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setBoundsOrigin Lib appkitlibname Selector "setBoundsOrigin:" (id as ptr, value as FoundationFrameWork . NSpoint)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setboundsRotation Lib appkitlibname Selector "setBoundsRotation:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setBoundsSize Lib appkitlibname Selector "setBoundsSize:" (id as ptr, value as FoundationFrameWork . NSSize)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setcanDrawSubviewsIntoLayer Lib appkitlibname Selector "setCanDrawSubviewsIntoLayer:" (id as ptr, value as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setContentCompressionResistancePriority Lib appkitlibname Selector "setContentCompressionResistancePriority:forOrientation:" (id as ptr, orientation as AppleLayoutConstraint . NSLayoutConstraintOrientation, value as AppleLayoutConstraint . NSLayoutPriority)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setcontentFilters Lib appkitlibname Selector "setContentFilters:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setContentHuggingPriority Lib appkitlibname Selector "setContentHuggingPriority:forOrientation:" (id as ptr, orientation as AppleLayoutConstraint . NSLayoutConstraintOrientation, value as AppleLayoutConstraint . NSLayoutPriority)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setenclosingScrollView Lib appkitlibname Selector "setEnclosingScrollView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setframeCenterRotation Lib appkitlibname Selector "setFrameCenterRotation:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setFrameOrigin Lib appkitlibname Selector "setFrameOrigin:" (id as ptr, value as FoundationFrameWork . NSpoint)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setframeRotation Lib appkitlibname Selector "setFrameRotation:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setFrameSize Lib appkitlibname Selector "setFrameSize:" (id as ptr, value as FoundationFrameWork . NSSize)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 496E76616C6964617465732074686520617265612061726F756E642074686520666F6375732072696E672E
		Sub SetKeyboardFocusRingNeedsDisplayInRect(Rect As FoundationFrameWork.NSRect)
		  #If TargetMacOS then
		    setKeyboardFocusRingNeedsDisplayInRect(id,rect)
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setKeyboardFocusRingNeedsDisplayInRect Lib appkitlibname Selector "setKeyboardFocusRingNeedsDisplayInRect:" (id as ptr, rect as FoundationFrameWork . NSrect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setLayer Lib appkitlibname Selector "setLayer:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setlayerContentsPlacement Lib appkitlibname Selector "setLayerContentsPlacement:" (id as ptr, value as NSViewLayerContentsPlacement)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setlayerContentsRedrawPolicy Lib appkitlibname Selector "setLayerContentsRedrawPolicy:" (id as ptr, value as NSViewLayerContentsRedrawPolicy)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setlayerUsesCoreImageFilters Lib appkitlibname Selector "setLayerUsesCoreImageFilters:" (id as ptr, value as boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4D61726B732074686520726567696F6E206F662074686520766965772077697468696E20746865207370656369666965642072656374616E676C65206173206E656564696E6720646973706C61792C20696E6372656173696E67207468652076696577E2809973206578697374696E6720696E76616C696420726567696F6E20746F20696E636C7564652069742E
		Sub SetNeedsDisplay(aRect As FoundationFrameWork.NSRect)
		  #If TargetMacOS then
		    setNeedsDisplayInRect id, aRect
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setneedsDisplay Lib appkitlibname Selector "setNeedsDisplay:" (id as ptr, value as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setNeedsDisplayInRect Lib appkitlibname Selector "setNeedsDisplayInRect:" (id as ptr, aRect as foundationframework . nsrect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setneedsLayout Lib appkitlibname Selector "setNeedsLayout:" (id as ptr, value as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setneedsUpdateConstraints Lib appkitlibname Selector "setNeedsUpdateConstraints:" (id as ptr, value as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setpostsBoundsChangedNotifications Lib appkitlibname Selector "setPostsBoundsChangedNotifications:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setpostsFrameChangedNotifications Lib appkitlibname Selector "setPostsFrameChangedNotifications:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setshadow Lib appkitlibname Selector "setShadow:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub settranslatesAutoresizingMaskIntoConstraints Lib appkitlibname Selector "setTranslatesAutoresizingMaskIntoConstraints:" (id as ptr, value as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setWantsLayer Lib appkitlibname Selector "setWantsLayer:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5472616E736C61746573207468652076696577E280997320636F6F7264696E6174652073797374656D20736F207468617420697473206F726967696E206D6F76657320746F2061206E6577206C6F636174696F6E2E0A54686973206D6574686F64206E656974686572207265646973706C617973207468652076696577206E6F72206D61726B73206974206173206E656564696E6720646973706C61792E20596F75206D75737420646F207468697320796F757273656C662062792063616C6C696E672074686520646973706C6179206D6574686F64206F722073657474696E6720746865206E65656473446973706C61792070726F70657274792E
		Function TranslateOriginToPoint(Point As FoundationFrameWork.NSPoint) As FoundationFrameWork.NSPoint
		  #If TargetMacOS then
		    return translateOriginToPoint(id,point)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function translateOriginToPoint Lib appkitlibname Selector "translateOriginToPoint:" (id as ptr, point as FoundationFrameWork . NSPoint) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5472616E736C617465732074686520646973706C61792072656374616E676C657320627920746865207370656369666965642064656C74612E0A54686973206D6574686F6420706572666F726D7320746865207368696674696E67206F662064697274792072656374616E676C6573207468617420616E206571756976616C656E74207363726F6C6C526563743A62793A206F7065726174696F6E20776F756C642063617573652C20776974686F757420706572666F726D696E67207468652061637475616C207363726F6C6C206F7065726174696F6E2E204974206973206F6E6C792075736566756C20696E207665727920726172652063617365732077686572652061207669657720696D706C656D656E747320697473206F776E206C6F772D6C6576656C207363726F6C6C696E67206D656368616E6963732E
		Sub TranslateRectsNeedingDisplay(ClipRect as FoundationFrameWork.NSRect , delta as FoundationFrameWork.NSSize)
		  #If TargetMacOS then
		    translateRectsNeedingDisplayInRect (id, Cliprect, Delta)
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub translateRectsNeedingDisplayInRect Lib appkitlibname Selector "translateRectsNeedingDisplayInRect:by:" (id as ptr, rect as FoundationFrameWork . NSRect, delta as FoundationFrameWork . NSSize)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 556E6C6F636B7320666F6375732066726F6D207468652063757272656E7420766965772E
		Sub UnlockFocus()
		  #If TargetMacOS then
		    unlockFocus id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub unlockFocus Lib appkitlibname Selector "unlockFocus" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 556E726567697374657273207468652076696577206173206120706F737369626C652064657374696E6174696F6E20696E2061206472616767696E672073657373696F6E2E
		Sub UnregisterDraggedTypes()
		  #If TargetMacOS then
		    unregisterDraggedTypes id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub unregisterDraggedTypes Lib appkitlibname Selector "unregisterDraggedTypes" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 557064617465732074686520636F6E73747261696E747320666F722074686520726563656976696E67207669657720616E64206974732073756276696577732E
		Sub UpdateConstraintsForSubtree()
		  updateConstraintsForSubtreeIfNeeded id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub updateConstraintsForSubtreeIfNeeded Lib appkitlibname Selector "updateConstraintsForSubtreeIfNeeded" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652076696577E2809973206E6561726573742064657363656E64616E742028696E636C7564696E6720697473656C662920776974682061207370656369666963207461672C206F72206E696C206966206E6F2073756276696577206861732074686174207461672E
		Function ViewWithTag(Tag as Integer) As AppleView
		  #If TargetMacOS then
		    return appleview.makefromptr(getViewWithTag(id,tag))
		  #endif
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AcceptsTouchEvents() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event AllowsVibrancy() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidAddSubview(Subviev as appleview)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DidResize()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MenuForEvent(anEvent As AppleNSEvent) As AppleMenu
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Opaque() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ViewDidHide()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207669657720686173206265656E20616464656420746F2061206E65772076696577206869657261726368792E
		Event ViewDidMoveToSuperview()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207669657720686173206265656E20616464656420746F2061206E65772076696577206869657261726368792E
		Event ViewDidMoveToWindow()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ViewDidUnhide()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207669657720686173206265656E20616464656420746F2061206E65772076696577206869657261726368792E
		Event ViewWillMoveToSuperview(Superview as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207669657720686173206265656E20616464656420746F2061206E65772076696577206869657261726368792E
		Event ViewWillMoveToWindow(Window as AppleWindow)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillOpenMenuForEvent(Menu as AppleMenu, anEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207669657720686173206265656E20616464656420746F2061206E65772076696577206869657261726368792E
		Event willRemoveSubview(Subview as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillResize()
	#tag EndHook


	#tag Note, Name = Status incomplete
		
		missin:g
		
		sortsubviews
		wantsupdatelayer
		compositingfilter
		shadow
		updateLayer
		canDrawConcurrently
		getRectsBeingDrawn
		wantsDefaultClipping
		bitmapImageRepForCachingDisplayInRect
		cacheDisplayInRect
		beginPageInRect
		printJobTitle
		pageHeader
		pageFooter
		writeEPSInsideRect
		writePDFInsideRect
		drawPageBorderWithSize
		drawSheetBorderWithSize
		adjustPageWidth and the rest of the pagination section
		displayRect…Context
		resizeSubviewsWithOldSize
		resizeWithOldSuperviewSize
		section layoutguide up to debugging auto layout sections
		lockFocusIfCanDrawInContext
		focusRingMaskBounds
		drawFocusRingMask
		noteFocusRingMaskChanged
		FullScrenmode methods & dictionary
		preservesContentDuringLiveResize
		getRectsExposedDuringLiveResize
		rectPreservedDuringLiveResize
		gesturerecognizers & event handling sections
		isCompatibleWithResponsiveScrolling
		prepareContentInRect
		preparedContentRect
		autoscroll
		adjustscroll
		reflectScrolledClipView
		beginDraggingSessionWithItems
		dragFile
		dragPromisedFilesOfTypes
		shouldDelayWindowOrderingForEvent
		rectForSmartMagnificationAtPoint
		viewDidChangeBackingProperties
		trackingArea section
		Cursor section
		Menu section
		WritingconformingRendering section
		DefinitionWindows Section
		wantsBestResolutionOpenGLSurface
		pressureConfiguration
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520696E736574732028696E20706F696E7473292066726F6D207468652076696577E2809973206672616D65207468617420646566696E652069747320636F6E74656E742072656374616E676C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getalignmentRectInsets (id)
			End Get
		#tag EndGetter
		AlignmentRectInsets As Appkitframework.NSEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F706163697479206F662074686520766965772E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getalphaValue(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setalphaValue id, value
			  #endif
			End Set
		#tag EndSetter
		Alpha As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7074696F6E616C2064696374696F6E6172792074686174206D617073206576656E742074726967676572206B65797320746F20616E696D6174696F6E206F626A656374732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleDictionary.MakeFromPtr(getanimations(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setanimations id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		Animations As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412070726F7879206F626A65637420666F722074686520726563656976657220746861742063616E206265207573656420746F20696E69746961746520696D706C69656420616E696D6174696F6E20666F722070726F7065727479206368616E6765732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appleview.MakeFromPtr(getanimator(id))
			  #endif
			End Get
		#tag EndGetter
		Animator As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577206170706C69657320746865206175746F726573697A696E67206265686176696F7220746F20697473207375627669657773207768656E20697473206672616D652073697A65206368616E6765732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getautoresizesSubviews (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setautoresizesSubviews id,value
			  #endif
			End Set
		#tag EndSetter
		AutoresizesSubviews As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7074696F6E7320746861742064657465726D696E6520686F7720746865207669657720697320726573697A65642072656C617469766520746F20697473207375706572766965772E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return new AppleAutoresizingMask (getautoresizingMask (id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setautoresizingMask id,value.id
			  #endif
			End Set
		#tag EndSetter
		AutoResizingMask As AppleAutoresizingMask
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F6620436F726520496D6167652066696C7465727320746F206170706C7920746F207468652076696577E2809973206261636B67726F756E642E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleArray.MakefromPtr(getbackgroundFilters (id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setbackgroundFilters id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		BackgroundFilters As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E63652028696E20706F696E747329206265747765656E2074686520626F74746F6D206F66207468652076696577E280997320616C69676E6D656E742072656374616E676C6520616E642069747320626173656C696E652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getbaselineOffsetFromBottom(id)
			End Get
		#tag EndGetter
		BaselineOffsetFromBottom As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520626F74746F6D2065646765206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector("bottomAnchor", classptr) then return AppleLayoutXAxisAnchor.MakeFromPtr(AppKitFramework.getbottomanchor(id))
			End Get
		#tag EndGetter
		BottomAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E280997320626F756E64732072656374616E676C652C2077686963682065787072657373657320697473206C6F636174696F6E20616E642073697A6520696E20697473206F776E20636F6F7264696E6174652073797374656D2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getbounds(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setbounds id, value
			  #endif
			End Set
		#tag EndSetter
		Bounds As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F726967696E206F66207468652076696577E280997320626F756E64732072656374616E676C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getbounds(id).Origin
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setBoundsOrigin id, value
			  #endif
			End Set
		#tag EndSetter
		BoundsOrigin As FoundationFrameWork.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616E676C65206F6620726F746174696F6E2C206D6561737572656420696E20646567726565732C206170706C69656420746F207468652076696577E280997320626F756E64732072656374616E676C652072656C617469766520746F20697473206672616D652072656374616E676C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getboundsRotation(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setboundsRotation id, value
			  #endif
			End Set
		#tag EndSetter
		BoundsRotation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F66207468652076696577E280997320626F756E64732072656374616E676C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getbounds(id).Size_
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setBoundsSize id, value
			  #endif
			End Set
		#tag EndSetter
		BoundsSize As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722064726177696E6720636F6D6D616E64732077696C6C2070726F6475636520616E7920726573756C74732E2028726561642D6F6E6C79290A412076696577206F626A6563742063616E2064726177206F6E73637265656E206966206974206973206E6F742068696464656E2C20697420697320617474616368656420746F206120766965772068696572617263687920696E20612077696E646F7720284E5357696E646F77292C20616E64207468652077696E646F7720686173206120636F72726573706F6E64696E672077696E646F77206465766963652E20412076696577206F626A6563742063616E20616C736F206472617720647572696E67207072696E74696E6720696620697420697320612064657363656E64616E74206F66207468652076696577206265696E67207072696E7465642E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getcanDraw (id)
			  #endif
			End Get
		#tag EndGetter
		CanDraw As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720696E636F72706F726174657320636F6E74656E742066726F6D2069747320737562766965777320696E746F20697473206F776E206C617965722E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getcanDrawSubviewsIntoLayer (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setcanDrawSubviewsIntoLayer (id, value)
			  #endif
			End Set
		#tag EndSetter
		CanDrawSubviewsIntoLayer As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520686F72697A6F6E74616C2063656E746572206F66207468652076696577E2809973206672616D652028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector("centerXAnchor", classptr) then return AppleLayoutXAxisAnchor.MakeFromPtr(AppKitFramework.getcenterXAnchor(id))
			End Get
		#tag EndGetter
		CenterXAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520766572746963616C2063656E746572206F66207468652076696577E2809973206672616D652028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector("centerYAnchor", classptr) then return AppleLayoutYAxisAnchor.MakeFromPtr(AppKitFramework.getcenterYAnchor(id))
			End Get
		#tag EndGetter
		CenterYAnchor As AppleLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSView")
			  // return mClassPtr
			  
			  static mClassPtr as ptr
			  if mClassPtr = Nil then
			    dim methods() as TargetClassMethodHelper
			    
			    //NSResponder "delegate" methods
			    methods.Append new TargetClassMethodHelper("acceptsFirstResponder", AddressOf impl_acceptsFirstResponder, "c@:")
			    methods.Append new TargetClassMethodHelper("becomeFirstResponder", AddressOf impl_becomeFirstResponder, "c@:")
			    methods.Append new TargetClassMethodHelper("resignFirstResponder", AddressOf impl_resignFirstResponder, "c@:")
			    methods.Append new TargetClassMethodHelper("smartMagnifyWithEvent:", AddressOf impl_smartMagnifyWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseDown:", AddressOf impl_mouseDown, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseDragged:", AddressOf impl_mouseDragged, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseUp:", AddressOf impl_mouseUp, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseMoved:", AddressOf impl_mouseMoved, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseEntered:", AddressOf impl_mouseEntered, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseExited:", AddressOf impl_mouseExited, "v@:@")
			    methods.Append new TargetClassMethodHelper("rightMouseDown:", AddressOf impl_rightMouseDown, "v@:@")
			    methods.Append new TargetClassMethodHelper("rightMouseDragged:", AddressOf impl_rightMouseDragged, "v@:@")
			    methods.Append new TargetClassMethodHelper("rightMouseUp:", AddressOf impl_rightMouseUp, "v@:@")
			    methods.Append new TargetClassMethodHelper("otherMouseDown:", AddressOf impl_otherMouseDown, "v@:@")
			    methods.Append new TargetClassMethodHelper("otherMouseDragged:", AddressOf impl_otherMouseDragged, "v@:@")
			    methods.Append new TargetClassMethodHelper("otherMouseUp:", AddressOf impl_otherMouseUp, "v@:@")
			    methods.Append new TargetClassMethodHelper("keyDown:", AddressOf impl_keyDown, "v@:@")
			    methods.Append new TargetClassMethodHelper("keyUp:", AddressOf impl_keyUp, "v@:@")
			    methods.Append new TargetClassMethodHelper("pressureChangeWithEvent:", AddressOf impl_pressureChangeWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("flagsChanged:", AddressOf impl_flagsChanged, "v@:@")
			    methods.Append new TargetClassMethodHelper("tabletPoint:", AddressOf impl_tabletPoint, "v@:@")
			    methods.Append new TargetClassMethodHelper("scrollWheel:", AddressOf impl_scrollWheel, "v@:@")
			    methods.Append new TargetClassMethodHelper("willPresentError:", AddressOf impl_willPresentError, "@@:@")
			    methods.Append new TargetClassMethodHelper("beginGestureWithEvent:", AddressOf impl_beginGestureWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("endGestureWithEvent:", AddressOf impl_endGestureWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("magnifyWithEvent:", AddressOf impl_magnifyWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("rotateWithEvent:", AddressOf impl_rotateWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("swipeWithEvent:", AddressOf impl_swipeWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("touchesBeganWithEvent:", AddressOf impl_touchesBeganWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("animationDidStart:", AddressOf impl_animationDidStart, "v@:@")
			    methods.Append new TargetClassMethodHelper("animationDidStop:finished:", AddressOf impl_animationDidStop, "v@:@c")
			    
			    // NSView "delegate" methods
			    methods.Append new TargetClassMethodHelper("viewDidMoveToWindow", AddressOf impl_viewDidMoveToWindow, "v@:")
			    methods.Append new TargetClassMethodHelper("acceptsTouchEvents", AddressOf impl_acceptsTouchEvents, "c@:")
			    methods.Append new TargetClassMethodHelper("didAddSubview:", AddressOf impl_didAddSubview, "v@:@")
			    methods.Append new TargetClassMethodHelper("viewDidMoveToSuperview", AddressOf impl_viewDidMoveToSuperview, "v@:")
			    methods.Append new TargetClassMethodHelper("viewWillMoveToSuperview:", AddressOf impl_viewWillMoveToSuperview, "v@:@")
			    methods.Append new TargetClassMethodHelper("viewWillMoveToWindow:", AddressOf impl_viewWillMoveToWindow, "v@:@")
			    methods.Append new TargetClassMethodHelper("willRemoveSubview:", AddressOf impl_willRemoveSubview, "v@:@")
			    methods.Append new TargetClassMethodHelper("opaque", AddressOf impl_opaque, "c@:")
			    methods.Append new TargetClassMethodHelper("allowsVibrancy", AddressOf impl_allowsVibrancy, "c@:")
			    methods.Append new TargetClassMethodHelper("viewWillStartLiveResize", AddressOf impl_viewWillStartLiveResize, "v@:")
			    methods.Append new TargetClassMethodHelper("viewDidEndLiveResize", AddressOf impl_viewDidEndLiveResize, "v@:")
			    methods.Append new TargetClassMethodHelper("viewDidHide", AddressOf impl_viewDidHide, "v@:")
			    methods.Append new TargetClassMethodHelper("viewDidUnhide", AddressOf impl_viewDidUnhide, "v@:")
			    // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect, "v@:{CGRect}")
			    methods.Append new TargetClassMethodHelper("menuForEvent:", AddressOf impl_menuForEvent, "@@:@")
			    methods.Append new TargetClassMethodHelper("willOpenMenu:withEvent:", AddressOf impl_willOpenMenu, "v@:@@")
			    
			    mClassPtr = BuildTargetClass ("NSView", "OSXLibView",methods)
			  end if
			  Return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E73747261696E74732068656C642062792074686520766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  dim result as AppleArray = AppleArray.MakefromPtr(getconstraints (id))
			  result.retainclassobject
			  return result
			End Get
		#tag EndGetter
		Constraints As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F6620436F726520496D6167652066696C7465727320746F206170706C7920746F2074686520636F6E74656E7473206F6620746865207669657720616E6420697473207375626C61796572732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleArray.MakefromPtr(getcontentFilters (id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setcontentFilters id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		ContentFilters As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656661756C7420666F6375732072696E6720747970652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getdefaultFocusRingType (classptr)
			  #endif
			End Get
		#tag EndGetter
		Shared DefaultFocusRingType As Appkitframework.NSFocusRingType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D656E75206974656D20636F6E7461696E696E67207468652076696577206F7220616E79206F6620697473207375706572766965777320696E207468652076696577206869657261726368792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleNSMenuItem.MakeFromPtr(getenclosingMenuItem(id))
			  #endif
			End Get
		#tag EndGetter
		EnclosingMenuItem As AppleNSMenuItem
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E65617265737420616E636573746F72207363726F6C6C2076696577207468617420636F6E7461696E73207468652063757272656E7420766965772E2028726561642D6F6E6C79290A546869732070726F706572747920646F6573206E6F7420636F6E7461696E207468652063757272656E742076696577206966207468652063757272656E74207669657720697320697473656C662061207363726F6C6C20766965772E20497420616C7761797320636F6E7461696E7320616E20616E636573746F72207363726F6C6C20766965772E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleScrollView.MakeFromPtr(getenclosingScrollView(id))
			  #endif
			End Get
		#tag EndGetter
		EnclosingScrollView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520626173656C696E6520666F722074686520746F706D6F7374206C696E65206F66207465787420696E2074686520766965772028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector("firstBaselineAnchor", classptr) then return AppleLayoutYAxisAnchor.MakeFromPtr(getfirstBaselineAnchor(id))
			End Get
		#tag EndGetter
		FirstBaselineAnchor As AppleLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E63652028696E20706F696E747329206265747765656E2074686520746F70206F66207468652076696577E280997320616C69676E6D656E742072656374616E676C6520616E642069747320746F706D6F737420626173656C696E652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getfirstBaselineOffsetFromTop(id)
			End Get
		#tag EndGetter
		FirstBaselineOffsetFromTop As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D2073697A65206F662074686520766965772074686174207361746973666965732074686520636F6E73747261696E747320697420686F6C64732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getfittingSize(id)
			  #endif
			End Get
		#tag EndGetter
		FittingSize As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074797065206F6620666F6375732072696E6720647261776E2061726F756E642074686520766965772E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getfocusRingType(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setfocusRingType id, value
			  #endif
			End Set
		#tag EndSetter
		FocusRingType As Appkitframework.NSFocusRingType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 52657475726E73207468652063757272656E746C7920666F63757365642056696577206F626A6563742C206F72206E696C206966207468657265206973206E6F6E652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appleview.MakeFromPtr(getfocusView(classptr))
			  #endif
			End Get
		#tag EndGetter
		Shared FocusView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E2809973206672616D652072656374616E676C652C20776869636820646566696E65732069747320706F736974696F6E20616E642073697A6520696E2069747320737570657276696577E280997320636F6F7264696E6174652073797374656D2E
		#tag Getter
			Get
<<<<<<< HEAD
			  return AppKitFramework.getframe(id)
=======
			  #If TargetMacOS then
			    return getframe(id)
			  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
			End Get
		#tag EndGetter
		#tag Setter
			Set
<<<<<<< HEAD
			  AppKitFramework.setframe id, value
=======
			  #If TargetMacOS then
			    setframe id, value
			  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
			End Set
		#tag EndSetter
		Frame As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726F746174696F6E20616E676C65206F662074686520766965772061726F756E64207468652063656E746572206F6620697473206C617965722E0A496620796F75206368616E6765642074686520756E6465726C79696E67206C61796572E280997320616E63686F72506F696E742070726F70657274792C2074686520726573756C74206F662073657474696E6720746869732070726F706572747920697320756E646566696E65642E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getframeCenterRotation(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setframeCenterRotation id, value
			  #endif
			End Set
		#tag EndSetter
		FrameCenterRotation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F726967696E206F66207468652076696577E2809973206672616D652072656374616E676C6520696E20697473207375706572766965772E
		#tag Getter
			Get
<<<<<<< HEAD
			  return Frame.Origin
=======
			  #If TargetMacOS then
			    return getframe(id).Origin
			  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setFrameOrigin id, value
			  #endif
			End Set
		#tag EndSetter
		FrameOrigin As FoundationFrameWork.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616E676C65206F6620726F746174696F6E2C206D6561737572656420696E20646567726565732C206170706C69656420746F207468652076696577E2809973206672616D652072656374616E676C652072656C617469766520746F2069747320737570657276696577E280997320636F6F7264696E6174652073797374656D2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getframeRotation(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setframeRotation id, value
			  #endif
			End Set
		#tag EndSetter
		FrameRotation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F726967696E206F66207468652076696577E2809973206672616D652072656374616E676C6520696E20697473207375706572766965772E
		#tag Getter
			Get
<<<<<<< HEAD
			  return frame.Size_
=======
			  #If TargetMacOS then
			    return getframe(id).Size_
			  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setFrameSize id, value
			  #endif
			End Set
		#tag EndSetter
		FrameSize As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E73747261696E747320696D70616374696E6720746865206C61796F7574206F6620746865207669657720696E636F6D706C6574656C79207370656369667920746865206C6F636174696F6E206F662074686520766965772E2028726561642D6F6E6C79
		#tag Getter
			Get
			  return gethasAmbiguousLayout (id)
			End Get
		#tag EndGetter
		HasAmbiguousLayout As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206865696768742076616C7565206F66204672616D652E53697A655F
		#tag Getter
			Get
			  return Frame.Size_.height
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Frame = FoundationFrameWork.NSMakerect(FrameOrigin.x, FrameOrigin.y, frame.size_.width, value )
			End Set
		#tag EndSetter
		Height As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206672616374696F6E206F6620746865207061676520746861742063616E20626520707573686564206F6E746F20746865206E657874207061676520647572696E67206175746F6D6174696320706167696E6174696F6E20746F2070726576656E74206974656D732073756368206173206C696E6573206F6620746578742066726F6D206265696E672064697669646564206163726F73732070616765732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getheightAdjustLimit(id)
			  #endif
			End Get
		#tag EndGetter
		HeightAdjustLimit As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520686569676874206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector("heightAnchor", classptr) then return AppleLayoutDimension.MakeFromPtr(AppKitFramework.getheightAnchor(id))
			End Get
		#tag EndGetter
		HeightAnchor As AppleLayoutDimension
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520766965772069732068696464656E2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appkitframework.getHidden (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setHidden id,value
			  #endif
			End Set
		#tag EndSetter
		Hidden As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E61747572616C2073697A6520666F722074686520726563656976696E6720766965772C20636F6E7369646572696E67206F6E6C792070726F70657274696573206F6620746865207669657720697473656C662E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getintrinsicContentSize(id)
			  #endif
			End Get
		#tag EndGetter
		IntrinsicContentSize As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577206F72206F6E65206F662069747320616E636573746F7273206973206265696E6720647261776E20666F7220612066696E6420696E64696361746F722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getisDrawingFindIndicator (id)
			  #endif
			End Get
		#tag EndGetter
		IsDrawingFindIndicator As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520766965772075736573206120666C697070656420636F6F7264696E6174652073797374656D2E2028726561642D6F6E6C7929
		#tag Getter
			Get
<<<<<<< HEAD
			  return AppKitFramework.getflipped (mid)
=======
			  #If TargetMacOS then
			    return getisFlipped (id)
			  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
			End Get
		#tag EndGetter
		IsFlipped As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520766965772069732068696464656E2066726F6D20736967687420626563617573652069742C206F72206F6E65206F662069747320616E636573746F72732C206973206D61726B65642061732068696464656E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getisHiddenOrHasHiddenAncestor (id)
			  #endif
			End Get
		#tag EndGetter
		IsHiddenOrHasHiddenAncestor As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520696E6469636174696E67207768657468657220746865207669657720697320696E2066756C6C2073637265656E206D6F64652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getisInFullScreenMode (id)
			  #endif
			End Get
		#tag EndGetter
		IsInFullScreenMode As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577206973206265696E672072656E64657265642061732070617274206F662061206C69766520726573697A696E67206F7065726174696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getinLiveResize (id)
			  #endif
			End Get
		#tag EndGetter
		IsInLiveResize As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577206F7220616E79206F662069747320616E636573746F727320686173206576657220686164206120726F746174696F6E20666163746F72206170706C69656420746F20697473206672616D65206F7220626F756E64732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getisRotatedFromBase (id)
			  #endif
			End Get
		#tag EndGetter
		IsRotatedFromBase As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577206F7220616E79206F662069747320616E636573746F727320686173206576657220686164206120726F746174696F6E20666163746F72206170706C69656420746F20697473206672616D65206F7220626F756E64732C206F7220686173206265656E207363616C65642066726F6D207468652077696E646F77E2809973206261736520636F6F7264696E6174652073797374656D2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getisRotatedOrScaledFromBase (id)
			  #endif
			End Get
		#tag EndGetter
		IsRotatedOrScaledFromBase As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520626173656C696E6520666F722074686520626F74746F6D6D6F7374206C696E65206F66207465787420696E2074686520766965772028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector("lastBaselineAnchor", classptr) then return AppleLayoutYAxisAnchor.MakeFromPtr(getlastBaselineAnchor(id))
			End Get
		#tag EndGetter
		LastBaselineAnchor As AppleLayoutYAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E63652028696E20706F696E747329206265747765656E2074686520626F74746F6D206F66207468652076696577E280997320616C69676E6D656E742072656374616E676C6520616E642069747320626F74746F6D6D6F737420626173656C696E652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getlastBaselineOffsetFromBottom(id)
			End Get
		#tag EndGetter
		LastBaselineOffsetFromBottom As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720757365732061206C6179657220617320697473206261636B696E672073746F72652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleCALayer.MakefromPtr(getLayer (id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setLayer id, value.id
			  #endif
			End Set
		#tag EndSetter
		Layer As AppleCALAyer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E74206C6179657220636F6E74656E747320706C6163656D656E7420706F6C6963792E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getlayerContentsPlacement (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setlayerContentsPlacement id,value
			  #endif
			End Set
		#tag EndSetter
		LayerContentsPlacement As NSViewLayerContentsPlacement
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E74206C6179657220636F6E74656E747320706C6163656D656E7420706F6C6963792E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getlayerContentsRedrawPolicy (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setlayerContentsRedrawPolicy id,value
			  #endif
			End Set
		#tag EndSetter
		LayerContentsRedrawPolicy As NSViewLayerContentsRedrawPolicy
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577E2809973206C61796572207573657320436F726520496D6167652066696C7465727320616E64206E6565647320696E2D70726F636573732072656E646572696E672E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getlayerUsesCoreImageFilters (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setlayerUsesCoreImageFilters (id, value)
			  #endif
			End Set
		#tag EndSetter
		LayerUsesCoreImageFilters As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E73747261696E74732068656C642062792074686520766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if RespondsToSelector("layoutGuides", classptr) then
			    dim result as applearray = AppleArray.MakefromPtr(getlayoutGuides (id))
			    result.RetainClassObject
			    return result
			  end if
			End Get
		#tag EndGetter
		LayoutGuides As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E6720746865206C656164696E672065646765206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F53582031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector("leadingAnchor", classptr) then return AppleLayoutXAxisAnchor.MakeFromPtr(AppKitFramework.getleadingAnchor(id))
			End Get
		#tag EndGetter
		LeadingAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520782076616C7565206F66204672616D654F726967696E
		#tag Getter
			Get
			  return FrameOrigin.x
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FrameOrigin = FoundationFrameWork.NSMakePoint(value, FrameOrigin.y)
			End Set
		#tag EndSetter
		Left As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E6720746865206C6566742065646765206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F53582031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector("leftAnchor", classptr) then return AppleLayoutXAxisAnchor.MakeFromPtr(AppKitFramework.getleftAnchor(id))
			End Get
		#tag EndGetter
		LeftAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577206E6565647320746F206265207265647261776E206265666F7265206265696E6720646973706C617965642E200A53657474696E67207468652076616C756520746F207472756520697320746865206571756976616C656E746F66206120586F6A6F20696E76616C69646174652063616C6C2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getneedsDisplay (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setneedsDisplay id,value
			  #endif
			End Set
		#tag EndSetter
		NeedsDisplay As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577206E656564732061206C61796F75742070617373206265666F72652069742063616E20626520647261776E2E
		#tag Getter
			Get
			  return getneedsLayout (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setneedsLayout id,value
			End Set
		#tag EndSetter
		NeedsLayout As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577E280997320636F6E73747261696E7473206E65656420746F20626520757064617465642E
		#tag Getter
			Get
			  return getneedsUpdateConstraints (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setneedsUpdateConstraints id, value
			End Set
		#tag EndSetter
		NeedsUpdateConstraints As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E280997320636C6F73657374206F706171756520616E636573746F722C207768696368206D6967687420626520746865207669657720697473656C662E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appleview.MakeFromPtr(getopaqueAncestor(id))
			  #endif
			End Get
		#tag EndGetter
		OpaqueAncestor As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768656E207468652076616C7565206F6620746869732070726F70657274792069732059455320616E64207468652076696577E280997320626F756E64732072656374616E676C65206368616E67657320746F2061206E65772076616C75652C20746865207669657720706F7374732061204E5356696577426F756E64734469644368616E67654E6F74696669636174696F6E20746F207468652064656661756C74206E6F74696669636174696F6E2063656E7465722E0A43616E2062652063617573656420627920626F756E64732C20736574426F756E64734F726967696E3A2C20736574426F756E647353697A653A2C20626F756E6473526F746174696F6E2C207472616E736C6174654F726967696E546F506F696E743A2C207363616C65556E6974537175617265546F53697A653A2C20726F746174654279416E676C653A
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getpostsBoundsChangedNotifications (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setpostsBoundsChangedNotifications id,value
			  #endif
			End Set
		#tag EndSetter
		PostsBoundsChangedNotifications As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720706F737473206E6F74696669636174696F6E73207768656E20697473206672616D652072656374616E676C65206368616E6765732E0A5768656E207468652076616C7565206F6620746869732070726F70657274792069732059455320616E64207468652076696577E2809973206672616D652072656374616E676C65206368616E67657320746F2061206E65772076616C75652C20746865207669657720706F7374732061204E53566965774672616D654469644368616E67654E6F74696669636174696F6E20746F207468652064656661756C74206E6F74696669636174696F6E2063656E7465722E200A43616E20626520636175736564206279206672616D652C207365744672616D654F726967696E3A2C207365744672616D6553697A653A2C206672616D65526F746174696F6E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getpostsFrameChangedNotifications (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setpostsFrameChangedNotifications id,value
			  #endif
			End Set
		#tag EndSetter
		PostsFrameChangedNotifications As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206172726179206F66207061737465626F617264206472616720747970657320746861742074686520766965772063616E206163636570742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleArray.MakefromPtr(getregisteredDraggedTypes (id))
			  #endif
			End Get
		#tag EndGetter
		RegisteredDraggedTypes As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720646570656E6473206F6E2074686520636F6E73747261696E742D6261736564206C61796F75742073797374656D2E
		#tag Getter
			Get
			  return getrequiresConstraintBasedLayout (classptr)
			End Get
		#tag EndGetter
		Shared RequiresConstraintBasedLayout As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E67207468652072696768742065646765206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F53582031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector("rightAnchor", classptr) then return AppleLayoutXAxisAnchor.MakeFromPtr(AppKitFramework.getrightAnchor(id))
			End Get
		#tag EndGetter
		RightAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720757365732061206C6179657220617320697473206261636B696E672073746F72652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleShadow.MakefromPtr(getshadow (id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setshadow id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		Shadow As AppleShadow
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206172726179206F6620766965777320656D62656464656420696E207468652063757272656E7420766965772E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return applearray.MakeFromPtr(getsubviews(id))
			  #endif
			End Get
		#tag EndGetter
		Subviews As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207669657720746861742069732074686520706172656E74206F66207468652063757272656E7420766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appleview.MakeFromPtr(getsuperview(id))
			  #endif
			End Get
		#tag EndGetter
		SuperView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E2809973207461672C20776869636820697320616E20696E7465676572207468617420796F752075736520746F206964656E746966792074686520766965772077697468696E20796F7572206170702E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.gettag(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.settag id, value
			  #endif
			End Set
		#tag EndSetter
		Tag As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207465787420666F72207468652076696577E280997320746F6F6C7469702E0A5468652076616C7565206F6620746869732070726F7065727479206973206E696C20696620746865207669657720646F6573206E6F742063757272656E746C7920646973706C617920746F6F6C74697020746578742E2041737369676E696E6720612076616C756520746F20746869732070726F7065727479206361757365732074686520746F6F6C74697020746F20626520646973706C6179656420666F722074686520766965772E20
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.gettoolTip(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.settoolTip id, value
			  #endif
			End Set
		#tag EndSetter
		ToolTip As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520792076616C7565206F66204672616D654F726967696E
		#tag Getter
			Get
			  return FrameOrigin.y
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FrameOrigin = FoundationFrameWork.NSMakePoint(FrameOrigin.x, value)
			End Set
		#tag EndSetter
		Top As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520746F702065646765206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector("topAnchor", classptr) then return AppleLayoutXAxisAnchor.MakeFromPtr(AppKitFramework.gettopanchor(id))
			End Get
		#tag EndGetter
		TopAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E672074686520746F702065646765206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector("trailingAnchor", classptr) then return AppleLayoutXAxisAnchor.MakeFromPtr(AppKitFramework.gettrailingAnchor(id))
			End Get
		#tag EndGetter
		TrailingAnchor As AppleLayoutXAxisAnchor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577E2809973206175746F726573697A696E67206D61736B206973207472616E736C6174656420696E746F20636F6E73747261696E747320666F722074686520636F6E73747261696E742D6261736564206C61796F75742073797374656D2E53657474696E67207468652076616C756520746F207472756520697320746865206571756976616C656E746F66206120586F6A6F20696E76616C69646174652063616C6C2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return gettranslatesAutoresizingMaskIntoConstraints (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    settranslatesAutoresizingMaskIntoConstraints id,value
			  #endif
			End Set
		#tag EndSetter
		TranslatesAutoresizingMaskIntoConstraints As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C61796F757420646972656374696F6E20666F7220636F6E74656E7420696E2074686520766965772E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getuserInterfaceLayoutDirection(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setuserInterfaceLayoutDirection id, value
			  #endif
			End Set
		#tag EndSetter
		UserInterfaceLayoutdirection As Appkitframework.NSUserInterfaceLayoutdirection
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F7274696F6E206F662074686520766965772074686174206973206E6F7420636C69707065642062792069747320737570657276696577732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getvisibleRect(id)
			  #endif
			End Get
		#tag EndGetter
		VisibleRect As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720757365732061206C6179657220617320697473206261636B696E672073746F72652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getWantsLayer (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setWantsLayer (id, value)
			  #endif
			End Set
		#tag EndSetter
		WantsLayer As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652077696474682076616C7565206F66204672616D652E53697A655F
		#tag Getter
			Get
			  return Frame.Size_.width
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Frame = FoundationFrameWork.NSMakerect(FrameOrigin.x, FrameOrigin.y, value, frame.size_.height)
			End Set
		#tag EndSetter
		Width As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206672616374696F6E206F6620746865207061676520746861742063616E20626520707573686564206F6E746F20746865206E657874207061676520647572696E67206175746F6D6174696320706167696E6174696F6E20746F2070726576656E74206974656D73207375636820617320736D616C6C20696D61676573206F72207465787420636F6C756D6E732066726F6D206265696E672064697669646564206163726F73732070616765732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getwidthAdjustLimit(id)
			  #endif
			End Get
		#tag EndGetter
		WidthAdjustLimit As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206C61796F757420616E63686F7220726570726573656E74696E6720746865207769647468206F66207468652076696577E2809973206672616D652E2028726561642D6F6E6C79292E20417661696C61626C652073696E6365204F5320582031302E31312E
		#tag Getter
			Get
			  if RespondsToSelector("widthAnchor", classptr) then return AppleLayoutDimension.MakeFromPtr(AppKitFramework.getwidthAnchor(id))
			End Get
		#tag EndGetter
		WidthAnchor As AppleLayoutDimension
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E28099732077696E646F77206F626A6563742C20696620697420697320696E7374616C6C656420696E20612077696E646F772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return applewindow.MakeFromPtr(AppKitFramework.GetWindow(id))
			  #endif
			End Get
		#tag EndGetter
		Window As AppleWindow
	#tag EndComputedProperty


	#tag Constant, Name = kNSAnimationTriggerOrderIn, Type = Text, Dynamic = False, Default = \"NSAnimationTriggerOrderIn", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kNSAnimationTriggerOrderOut, Type = Text, Dynamic = False, Default = \"NSAnimationTriggerOrderOut", Scope = Public
	#tag EndConstant


	#tag Enum, Name = NSBorderType, Type = UInteger, Flags = &h0
		None
		  Line
		  Bezel
		Groove
	#tag EndEnum

	#tag Enum, Name = NSViewLayerContentsPlacement, Type = Integer, Flags = &h0
		ScaleAxesIndependently
		  ScaleProprtionallyToFit
		  ScaleProprtionallyToFill
		  Center
		  Top
		  TopRight
		  Right
		  BottomRight
		  Bottom
		  BottomLeft
		  Left
		TopLeft
	#tag EndEnum

	#tag Enum, Name = NSViewLayerContentsRedrawPolicy, Type = Integer, Flags = &h0
		Never
		  OnSetNeedsDisplay
		  DuringResize
		  BeforeResize
		Crossfade
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
			Name="BaselineOffsetFromBottom"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BoundsRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDraw"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDrawSubviewsIntoLayer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FirstBaselineOffsetFromTop"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FocusRingType"
			Group="Behavior"
			Type="Appkitframework.NSFocusRingType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - Exterior"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameCenterRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeightAdjustLimit"
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
			Name="IsDrawingFindIndicator"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsFlipped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsHiddenOrHasHiddenAncestor"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsInFullScreenMode"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsInLiveResize"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRotatedFromBase"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRotatedOrScaledFromBase"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastBaselineOffsetFromBottom"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerContentsPlacement"
			Group="Behavior"
			Type="NSViewLayerContentsPlacement"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleAxesIndependently"
				"1 - ScaleProprtionallyToFit"
				"2 - ScaleProprtionallyToFill"
				"3 - Center"
				"4 - Top"
				"5 - TopRight"
				"6 - Right"
				"7 - BottomRight"
				"8 - Bottom"
				"9 - BottomLeft"
				"10 - Left"
				"11 - TopLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerContentsRedrawPolicy"
			Group="Behavior"
			Type="NSViewLayerContentsRedrawPolicy"
			EditorType="Enum"
			#tag EnumValues
				"0 - Never"
				"1 - OnSetNeedsDisplay"
				"2 - DuringResize"
				"3 - BeforeResize"
				"4 - Crossfade"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerUsesCoreImageFilters"
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
			Name="NeedsDisplay"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsUpdateConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PostsBoundsChangedNotifications"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PostsFrameChangedNotifications"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
			Name="ToolTip"
			Group="Behavior"
			Type="Text"
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
			Name="UserInterfaceLayoutdirection"
			Group="Behavior"
			Type="Appkitframework.NSUserInterfaceLayoutdirection"
			EditorType="Enum"
			#tag EnumValues
				"0 - LeftToRight"
				"1 - RightToLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="WantsLayer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WidthAdjustLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
