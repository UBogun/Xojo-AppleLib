#tag Class
Protected Class AppleView
Inherits AppleResponder
	#tag Method, Flags = &h0, Description = 416464732061207669657720746F207468652076696577E280997320737562766965777320736F206974E280997320646973706C617965642061626F766520697473207369626C696E67732E
		Sub AddSubview(Subview as appleView)
		  addSubview id, subview.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addSubview Lib appkitlibname Selector "addSubview:" (id as ptr, subview as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub adjustPageWidthNew Lib appkitlibname Selector "adjustPageWidthNew:left:right:limit:" (id as ptr, byref newRight as CGFloat, oldLeft as CGFloat, oldRight As CGFloat, rightLimit as CGFloat)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function AncestorSharedWithView(aView as AppleView) As AppleView
		  return appleview.MakefromPtr (getancestorSharedWithView(id, aview.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BackingAlignedRect(rect as FoundationFrameWork.NSRect, options as AppleAlignmentOptions) As FoundationFrameWork.NSRect
		  return backingAlignedRect(id, rect, options.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function backingAlignedRect Lib appkitlibname Selector "backingAlignedRect:options:" (id as ptr, rect as FoundationFrameWork . NSRect, options as uint64) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E76657274732074686520636F726E657273206F662061207370656369666965642072656374616E676C6520746F206C6965206F6E207468652063656E746572206F662064657669636520706978656C732C2077686963682069732075736566756C20696E20636F6D70656E736174696E6720666F722072656E646572696E67206F7665727363616E6E696E67207768656E2074686520636F6F7264696E6174652073797374656D20686173206265656E207363616C65642E0A54686973206D6574686F6420636F6E76657274732074686520676976656E2072656374616E676C6520746F2064657669636520636F6F7264696E617465732C2061646A75737473207468652072656374616E676C6520746F206C696520696E207468652063656E746572206F662074686520706978656C732C20616E6420636F6E76657274732074686520726573756C74696E672072656374616E676C65206261636B20746F207468652076696577E280997320636F6F7264696E6174652073797374656D2E204E6F746520746861742074686973206D6574686F6420646F6573206E6F742074616B6520696E746F206163636F756E7420616E79207472616E73666F726D6174696F6E7320706572666F726D6564207573696E6720746865204E53416666696E655472616E73666F726D20636C617373206F722051756172747A20324420726F7574696E65732E
		Function CenterScanRect(Rect As FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  return centerScanRect(id,rect)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function centerScanRect Lib appkitlibname Selector "centerScanRect:" (id as ptr, rect as FoundationFrameWork . NSrect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

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
		  Super.Constructor(initWithFrame(alloc(classptr), frame))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertPoint Lib appkitlibname Selector "convertPoint:toView:" (id as ptr, point as FoundationFrameWork . NSPoint, view as ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D2069747320706978656C20616C69676E6564206261636B696E672073746F726520636F6F7264696E6174652073797374656D20746F207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertPointFromBacking(Point As FoundationFrameWork.NSPoint) As FoundationFrameWork.NSPoint
		  return convertPointFromBacking(id,point)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertPointFromBacking Lib appkitlibname Selector "convertPointFromBacking:" (id as ptr, point as FoundationFrameWork . NSPoint) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572742074686520706F696E742066726F6D20746865206C61796572277320696E746572696F7220636F6F7264696E6174652073797374656D20746F207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertPointFromLayer(Point As FoundationFrameWork.NSPoint) As FoundationFrameWork.NSPoint
		  return convertPointFromLayer(id,point)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertPointFromLayer Lib appkitlibname Selector "convertPointFromLayer:" (id as ptr, point as FoundationFrameWork . NSPoint) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D2074686520636F6F7264696E6174652073797374656D206F66206120676976656E207669657720746F2074686174206F662074686520766965772E
		Function ConvertPointFromView(Point As FoundationFrameWork.NSPoint, fromView As AppleView) As FoundationFrameWork.NSPoint
		  return convertPointfromView(id,point, fromview.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertPointfromView Lib appkitlibname Selector "convertPoint:fromView:" (id as ptr, point as FoundationFrameWork . NSPoint, view as ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D20746F2069747320706978656C20616C69676E6564206261636B696E672073746F726520636F6F7264696E6174652073797374656D2E
		Function ConvertPointToBacking(Point As FoundationFrameWork.NSPoint) As FoundationFrameWork.NSPoint
		  return convertPointToBacking(id,point)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertPointToBacking Lib appkitlibname Selector "convertPointToBacking:" (id as ptr, point as FoundationFrameWork . NSPoint) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E76657274207468652073697A652066726F6D207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D20746F20746865206C61796572277320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertPointToLayer(Point As FoundationFrameWork.NSPoint) As FoundationFrameWork.NSPoint
		  return convertPointToLayer(id,point)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertPointToLayer Lib appkitlibname Selector "convertPointToLayer:" (id as ptr, point as FoundationFrameWork . NSPoint) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D207468652076696577E280997320636F6F7264696E6174652073797374656D20746F2074686174206F66206120676976656E20766965772E
		Function ConvertPointToView(Point As FoundationFrameWork.NSPoint, toView As AppleView) As FoundationFrameWork.NSPoint
		  return convertPointtoView(id,point, toview.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D2069747320706978656C20616C69676E6564206261636B696E672073746F726520636F6F7264696E6174652073797374656D20746F207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertRectFromBacking(Rect As FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  return convertRectFromBacking(id,rect)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertRectFromBacking Lib appkitlibname Selector "convertRectFromBacking:" (id as ptr, rect as FoundationFrameWork . NSrect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E76657274207468652072656374616E676C652066726F6D20746865206C61796572277320696E746572696F7220636F6F7264696E6174652073797374656D20746F207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertRectFromLayer(Rect As FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  return convertRectFromLayer(id,rect)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertRectFromLayer Lib appkitlibname Selector "convertRectFromLayer:" (id as ptr, rect as FoundationFrameWork . NSrect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D2074686520636F6F7264696E6174652073797374656D206F6620616E6F74686572207669657720746F2074686174206F662074686520766965772E
		Function ConvertRectFromView(Rect As FoundationFrameWork.NSRect, fromView As AppleView) As FoundationFrameWork.NSRect
		  return convertRectFromView(id,rect, fromView.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertRectFromView Lib appkitlibname Selector "convertRect:fromView:" (id as ptr, rect as FoundationFrameWork . NSrect, view as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D20746F2069747320706978656C20616C69676E6564206261636B696E672073746F726520636F6F7264696E6174652073797374656D2E
		Function ConvertRectToBacking(Rect As FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  return convertRectToBacking(id,rect)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertRectToBacking Lib appkitlibname Selector "convertRectToBacking:" (id as ptr, rect as FoundationFrameWork . NSrect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E76657274207468652073697A652066726F6D207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D20746F20746865206C61796572277320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertRectToLayer(Rect As FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  return convertRectToLayer(id,rect)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertRectToLayer Lib appkitlibname Selector "convertRectToLayer:" (id as ptr, rect as FoundationFrameWork . NSrect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D207468652076696577E280997320636F6F7264696E6174652073797374656D20746F2074686174206F6620616E6F7468657220766965772E
		Function ConvertRectToView(Rect As FoundationFrameWork.NSRect, toView As AppleView) As FoundationFrameWork.NSRect
		  return convertRecttoView(id,rect, toView.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertRectToView Lib appkitlibname Selector "convertRect:toView:" (id as ptr, rect as FoundationFrameWork . NSrect, view as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612073697A652066726F6D2069747320706978656C20616C69676E6564206261636B696E672073746F726520636F6F7264696E6174652073797374656D20746F207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertSizeFromBacking(Size As FoundationFrameWork.NSSize) As FoundationFrameWork.NSSize
		  return convertSizeFromBacking(id,size)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertSizeFromBacking Lib appkitlibname Selector "convertSizeFromBacking:" (id as ptr, size as FoundationFrameWork . NSSize) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E76657274207468652073697A652066726F6D20746865206C61796572277320696E746572696F7220636F6F7264696E6174652073797374656D20746F207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertSizeFromLayer(Size As FoundationFrameWork.NSSize) As FoundationFrameWork.NSSize
		  return convertSizeFromLayer(id,size)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertSizeFromLayer Lib appkitlibname Selector "convertSizeFromLayer:" (id as ptr, size as FoundationFrameWork . NSSize) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612073697A652066726F6D20616E6F746865722076696577E280997320636F6F7264696E6174652073797374656D20746F2074686174206F662074686520766965772E
		Function ConvertSizeFromView(Size As FoundationFrameWork.NSSize, fromView As AppleView) As FoundationFrameWork.NSSize
		  return convertSizeFromview(id, size, fromview.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertSizefromView Lib appkitlibname Selector "convertSize:fromView:" (id as ptr, size as FoundationFrameWork . NSSize, view as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612073697A652066726F6D207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D20746F2069747320706978656C20616C69676E6564206261636B696E672073746F726520636F6F7264696E6174652073797374656D2E
		Function ConvertSizeToBacking(Size As FoundationFrameWork.NSSize) As FoundationFrameWork.NSSize
		  return convertSizeToBacking(id,size)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertSizeToBacking Lib appkitlibname Selector "convertSizeToBacking:" (id as ptr, size as FoundationFrameWork . NSSize) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E76657274207468652073697A652066726F6D207468652076696577E280997320696E746572696F7220636F6F7264696E6174652073797374656D20746F20746865206C61796572277320696E746572696F7220636F6F7264696E6174652073797374656D2E
		Function ConvertSizeToLayer(Size As FoundationFrameWork.NSSize) As FoundationFrameWork.NSSize
		  return convertSizeToLayer(id,size)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertSizeToLayer Lib appkitlibname Selector "convertSizeToLayer:" (id as ptr, size as FoundationFrameWork . NSSize) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612073697A652066726F6D207468652076696577E280997320636F6F7264696E6174652073797374656D20746F2074686174206F6620616E6F7468657220766965772E
		Function ConvertSizeToView(Size As FoundationFrameWork.NSSize, toView As AppleView) As FoundationFrameWork.NSSize
		  return convertSizeToview(id, size, toView.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertSizeToView Lib appkitlibname Selector "convertSize:toView:" (id as ptr, size as FoundationFrameWork . NSSize, view as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320455053206461746120746861742064726177732074686520726567696F6E206F662074686520766965772077697468696E2061207370656369666965642072656374616E676C652E0A5468697320646174612063616E20626520706C61636564206F6E20616E204E535061737465626F617264206F626A6563742C207772697474656E20746F20612066696C652C206F72207573656420746F2063726561746520616E204E53496D616765206F626A6563742E
		Function DataWithEPSInsideRect(aRect as FoundationFrameWork.NSRect) As AppleData
		  return appledata.MakefromPtr (getdataWithEPSInsideRect(id, arect))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320504446206461746120746861742064726177732074686520726567696F6E206F662074686520766965772077697468696E2061207370656369666965642072656374616E676C652E0A5468697320646174612063616E20626520706C61636564206F6E20616E204E535061737465626F617264206F626A6563742C207772697474656E20746F20612066696C652C206F72207573656420746F2063726561746520616E204E53496D616765206F626A6563742E
		Function DataWithPDFInsideRect(aRect as FoundationFrameWork.NSRect) As AppleData
		  return appledata.MakefromPtr (getdataWithPDFInsideRect(id, arect))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 446973706C61797320746865207669657720616E6420616C6C2069747320737562766965777320696620706F737369626C652C20696E766F6B696E672065616368206F6620746865204E5356696577206D6574686F6473206C6F636B466F6375732C2064726177526563743A2C20616E6420756E6C6F636B466F637573206173206E65636573736172792E200A496E2073686F72742C207468697320697320746865206571756976616C656E74206F66206120586F6A6F20726566726573682063616C6C2E
		Sub Display()
		  display id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4163747320617320646973706C61792C2062757420636F6E66696E696E672064726177696E6720746F20612072656374616E67756C617220726567696F6E206F662074686520766965772E
		Sub Display(aRect As FoundationFrameWork.NSRect, IgnoreOpacity As Boolean = False)
		  if IgnoreOpacity then
		    displayRectIgnoringOpacity id, aRect
		  else
		    displayRect id, aRect
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub display Lib appkitlibname Selector "display" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 446973706C61797320746865207669657720616E6420616C6C2069747320737562766965777320696620616E792070617274206F6620746865207669657720686173206265656E206D61726B6564206173206E656564696E6720646973706C61792E
		Sub DisplayIfNeeded(IgnoreOpacity as boolean = false)
		  if IgnoreOpacity then
		    displayIfNeededIgnoringOpacity id 
		  else
		    displayIfNeeded id
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4163747320617320646973706C617949664E65656465642C20636F6E66696E696E672064726177696E6720746F20612073706563696669656420726567696F6E206F662074686520766965772E
		Sub DisplayIfNeeded(aRect As FoundationFrameWork.NSRect, IgnoreOpacity As Boolean = False)
		  if IgnoreOpacity then
		    displayIfNeededInRectIgnoringOpacity id, aRect
		  else
		    displayIfNeededInRect id, aRect
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub displayIfNeeded Lib appkitlibname Selector "displayIfNeeded" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub displayIfNeededIgnoringOpacity Lib appkitlibname Selector "displayIfNeededIgnoringOpacity" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub displayIfNeededInRect Lib appkitlibname Selector "displayIfNeededInRect:" (id as ptr, rect as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub displayIfNeededInRectIgnoringOpacity Lib appkitlibname Selector "displayIfNeededInRectIgnoringOpacity:" (id as ptr, rect as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub displayRect Lib appkitlibname Selector "displayRect:" (id as ptr, rect as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub displayRectIgnoringOpacity Lib appkitlibname Selector "displayRectIgnoringOpacity:" (id as ptr, rect as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function fromControl(c as Control) As AppleView
		  #if targetmacos
		    Return new appleview (ptr(c.Handle))
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getalphaValue Lib appkitlibname Selector "alphaValue" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getancestorSharedWithView Lib appkitlibname Selector "ancestorSharedWithView:" (id as ptr, aview as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getautoresizesSubviews Lib appkitlibname Selector "autoresizesSubviews" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getautoresizingMask Lib appkitlibname Selector "autoresizingMask" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbackgroundFilters Lib appkitlibname Selector "backgroundFilters" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbounds Lib appkitlibname Selector "bounds" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getboundsRotation Lib appkitlibname Selector "boundsRotation" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcanDraw Lib appkitlibname Selector "canDraw" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcanDrawSubviewsIntoLayer Lib appkitlibname Selector "canDrawSubviewsIntoLayer" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontentFilters Lib appkitlibname Selector "contentFilters" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdataWithEPSInsideRect Lib appkitlibname Selector "dataWithEPSInsideRect:" (id as ptr, rect as FoundationFrameWork . NSRect) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdataWithPDFInsideRect Lib appkitlibname Selector "dataWithPDFInsideRect:" (id as ptr, rect as FoundationFrameWork . NSRect) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getframe Lib appkitlibname Selector "frame" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getframeCenterRotation Lib appkitlibname Selector "frameCenterRotation" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getframeRotation Lib appkitlibname Selector "frameRotation" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getheightAdjustLimit Lib appkitlibname Selector "heightAdjustLimit" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisDescendantOf Lib appkitlibname Selector "isDescendantOf:" (id as ptr, view as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getLayer Lib appkitlibname Selector "layer" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlayerContentsPlacement Lib appkitlibname Selector "layerContentsPlacement" (id as ptr) As NSViewLayerContentsPlacement
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlayerContentsRedrawPolicy Lib appkitlibname Selector "layerContentsRedrawPolicy" (id as ptr) As NSViewLayerContentsRedrawPolicy
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlayerUsesCoreImageFilters Lib appkitlibname Selector "layerUsesCoreImageFilters" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getneedsDisplay Lib appkitlibname Selector "needsDisplay" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getopaque Lib appkitlibname Selector "isOpaque" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getopaqueAncestor Lib appkitlibname Selector "opaqueAncestor" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsubviews Lib appkitlibname Selector "subviews" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsuperview Lib appkitlibname Selector "superview" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getvisibleRect Lib appkitlibname Selector "visibleRect" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getWantsLayer Lib appkitlibname Selector "wantsLayer" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getwidthAdjustLimit Lib appkitlibname Selector "widthAdjustLimit" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithFrame Lib appkitlibname Selector "initWithFrame:" (id as ptr, frame as foundationframework . nsrect) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73205472756520696620746865207669657720697320612073756276696577206F66206120676976656E2076696577206F72206966206974E2809973206964656E746963616C20746F207468617420766965773B206F74686572776973652C2069742072657475726E732046616C73652E
		Function IsDescendantOf(aView as AppleView) As Boolean
		  return getIsDescendantOf (id,aview.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573207468652076696577E2809973206261636B696E67206C617965722E
		Function MakeBackingLayer() As AppleCALayer
		  return AppleCALayer.MakefromPtr(makeBackingLayer(id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function makeBackingLayer Lib appkitlibname Selector "makeBackingLayer" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleView
		  return if (aptr= nil, nil, new appleview(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E67207768657468657220746865207370656369666965642072656374616E676C6520696E746572736563747320616E792070617274206F662074686520617265612074686174207468652076696577206973206265696E672061736B656420746F20647261772E
		Function NeedsToDrawRect(aRect as FoundationFrameWork.NSRect) As Boolean
		  return needsToDrawRect (id, aRect)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function needsToDrawRect Lib appkitlibname Selector "needsToDrawRect:" (id as ptr, aRect as foundationframework . nsrect) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 526573746F72657320746865207669657720746F20616E20696E697469616C20737461746520736F20746861742069742063616E206265207265757365642E
		Sub PrepareForReuse()
		  prepareForReuse id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub prepareForReuse Lib appkitlibname Selector "prepareForReuse" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4F70656E7320746865205072696E742070616E656C2C20616E642069662074686520757365722063686F6F73657320616E206F7074696F6E206F74686572207468616E2063616E63656C696E672C207072696E747320746865207669657720616E6420616C6C2069747320737562766965777320746F20746865206465766963652073706563696669656420696E20746865205072696E742070616E656C2E
		Sub Print(Sender As Appleobject = nil)
		  print id, if (sender = nil, nil,sender.id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub print Lib appkitlibname Selector "print:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 556E6C696E6B732074686520766965772066726F6D206974732073757065727669657720616E64206974732077696E646F772C2072656D6F7665732069742066726F6D2074686520726573706F6E64657220636861696E2C20616E6420696E76616C6964617465732069747320637572736F722072656374616E676C652E0A52656D6F76657320636F6E73747261696E747320746F6F20616E642072656C656173657320746865207669657720696620796F7520646F6EE2809974206275666665722069742E
		Sub RemoveFromSuperview(dontInvalidate as boolean = false)
		  if dontInvalidate then
		    removeFromSuperviewWithoutNeedingDisplay id
		  else
		    removeFromSuperview id
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeFromSuperview Lib appkitlibname Selector "removeFromSuperview" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeFromSuperviewWithoutNeedingDisplay Lib appkitlibname Selector "removeFromSuperviewWithoutNeedingDisplay" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5265706C61636573206F6E65206F66207468652076696577E2809973207375627669657773207769746820616E6F7468657220766965772E
		Sub ReplaceSubview(OldSubview as AppleView, NewSubview as AppleView)
		  replaceSubview id, OldSubview.id, NewSubview.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub replaceSubview Lib appkitlibname Selector "replaceSubview:with:" (id as ptr, subview as ptr, newview as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setalphaValue Lib appkitlibname Selector "setAlphaValue:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setautoresizesSubviews Lib appkitlibname Selector "setAutoresizesSubviews:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setautoresizingMask Lib appkitlibname Selector "setAutoresizingMask:" (id as ptr, value as UInteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbackgroundFilters Lib appkitlibname Selector "setBackgroundFilters:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbounds Lib appkitlibname Selector "setBounds:" (id as ptr, value as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setBoundsOrigin Lib appkitlibname Selector "setBoundsOrigin:" (id as ptr, value as FoundationFrameWork . NSpoint)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setboundsRotation Lib appkitlibname Selector "setBoundsRotation:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setBoundsSize Lib appkitlibname Selector "setBoundsSize:" (id as ptr, value as FoundationFrameWork . NSSize)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcanDrawSubviewsIntoLayer Lib appkitlibname Selector "setCanDrawSubviewsIntoLayer:" (id as ptr, value as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontentFilters Lib appkitlibname Selector "setContentFilters:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setframe Lib appkitlibname Selector "setFrame:" (id as ptr, value as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setframeCenterRotation Lib appkitlibname Selector "setFrameCenterRotation:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setFrameOrigin Lib appkitlibname Selector "setFrameOrigin:" (id as ptr, value as FoundationFrameWork . NSpoint)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setframeRotation Lib appkitlibname Selector "setFrameRotation:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setFrameSize Lib appkitlibname Selector "setFrameSize:" (id as ptr, value as FoundationFrameWork . NSSize)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setLayer Lib appkitlibname Selector "setLayer:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlayerContentsPlacement Lib appkitlibname Selector "setLayerContentsPlacement:" (id as ptr, value as NSViewLayerContentsPlacement)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlayerContentsRedrawPolicy Lib appkitlibname Selector "setLayerContentsRedrawPolicy:" (id as ptr, value as NSViewLayerContentsRedrawPolicy)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlayerUsesCoreImageFilters Lib appkitlibname Selector "setLayerUsesCoreImageFilters:" (id as ptr, value as boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4D61726B732074686520726567696F6E206F662074686520766965772077697468696E20746865207370656369666965642072656374616E676C65206173206E656564696E6720646973706C61792C20696E6372656173696E67207468652076696577E2809973206578697374696E6720696E76616C696420726567696F6E20746F20696E636C7564652069742E
		Sub SetNeedsDisplay(aRect As FoundationFrameWork.NSRect)
		  setNeedsDisplayInRect id, aRect
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setneedsDisplay Lib appkitlibname Selector "setNeedsDisplay:" (id as ptr, value as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setNeedsDisplayInRect Lib appkitlibname Selector "setNeedsDisplayInRect:" (id as ptr, aRect as foundationframework . nsrect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setWantsLayer Lib appkitlibname Selector "setWantsLayer:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5472616E736C61746573207468652076696577E280997320636F6F7264696E6174652073797374656D20736F207468617420697473206F726967696E206D6F76657320746F2061206E6577206C6F636174696F6E2E0A54686973206D6574686F64206E656974686572207265646973706C617973207468652076696577206E6F72206D61726B73206974206173206E656564696E6720646973706C61792E20596F75206D75737420646F207468697320796F757273656C662062792063616C6C696E672074686520646973706C6179206D6574686F64206F722073657474696E6720746865206E65656473446973706C61792070726F70657274792E
		Function TranslateOriginToPoint(Point As FoundationFrameWork.NSPoint) As FoundationFrameWork.NSPoint
		  return translateOriginToPoint(id,point)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function translateOriginToPoint Lib appkitlibname Selector "translateOriginToPoint:" (id as ptr, point as FoundationFrameWork . NSPoint) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5472616E736C617465732074686520646973706C61792072656374616E676C657320627920746865207370656369666965642064656C74612E0A54686973206D6574686F6420706572666F726D7320746865207368696674696E67206F662064697274792072656374616E676C6573207468617420616E206571756976616C656E74207363726F6C6C526563743A62793A206F7065726174696F6E20776F756C642063617573652C20776974686F757420706572666F726D696E67207468652061637475616C207363726F6C6C206F7065726174696F6E2E204974206973206F6E6C792075736566756C20696E207665727920726172652063617365732077686572652061207669657720696D706C656D656E747320697473206F776E206C6F772D6C6576656C207363726F6C6C696E67206D656368616E6963732E
		Sub TranslateRectsNeedingDisplay(ClipRect as FoundationFrameWork.NSRect , delta as FoundationFrameWork.NSSize)
		  translateRectsNeedingDisplayInRect (id, Cliprect, Delta)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub translateRectsNeedingDisplayInRect Lib appkitlibname Selector "translateRectsNeedingDisplayInRect:by:" (id as ptr, rect as FoundationFrameWork . NSRect, delta as FoundationFrameWork . NSSize)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		missin:g
		
		window
		addsubviewpositioned
		sortsubviews
		enclosingmenuitem
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
		Opaque
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 546865206F706163697479206F662074686520766965772E
		#tag Getter
			Get
			  return getalphaValue(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setalphaValue id, value
			End Set
		#tag EndSetter
		Alpha As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577206170706C69657320746865206175746F726573697A696E67206265686176696F7220746F20697473207375627669657773207768656E20697473206672616D652073697A65206368616E6765732E
		#tag Getter
			Get
			  return getautoresizesSubviews (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setautoresizesSubviews id,value
			End Set
		#tag EndSetter
		AutoresizesSubviews As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577206170706C69657320746865206175746F726573697A696E67206265686176696F7220746F20697473207375627669657773207768656E20697473206672616D652073697A65206368616E6765732E
		#tag Getter
			Get
			  return new AppleAutoresizingMask (getautoresizingMask (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setautoresizingMask id,value.id
			End Set
		#tag EndSetter
		AutoResizingMask As AppleAutoresizingMask
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F6620436F726520496D6167652066696C7465727320746F206170706C7920746F207468652076696577E2809973206261636B67726F756E642E
		#tag Getter
			Get
			  return AppleArray.MakefromPtr(getbackgroundFilters (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbackgroundFilters id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		BackgroundFilters As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E280997320626F756E64732072656374616E676C652C2077686963682065787072657373657320697473206C6F636174696F6E20616E642073697A6520696E20697473206F776E20636F6F7264696E6174652073797374656D2E
		#tag Getter
			Get
			  return getbounds(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbounds id, value
			End Set
		#tag EndSetter
		Bounds As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F726967696E206F66207468652076696577E280997320626F756E64732072656374616E676C652E
		#tag Getter
			Get
			  return getbounds(id).Origin
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBoundsOrigin id, value
			End Set
		#tag EndSetter
		BoundsOrigin As FoundationFrameWork.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616E676C65206F6620726F746174696F6E2C206D6561737572656420696E20646567726565732C206170706C69656420746F207468652076696577E280997320626F756E64732072656374616E676C652072656C617469766520746F20697473206672616D652072656374616E676C652E
		#tag Getter
			Get
			  return getboundsRotation(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setboundsRotation id, value
			End Set
		#tag EndSetter
		BoundsRotation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F66207468652076696577E280997320626F756E64732072656374616E676C652E
		#tag Getter
			Get
			  return getbounds(id).Size_
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBoundsSize id, value
			End Set
		#tag EndSetter
		BoundsSize As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722064726177696E6720636F6D6D616E64732077696C6C2070726F6475636520616E7920726573756C74732E2028726561642D6F6E6C79290A412076696577206F626A6563742063616E2064726177206F6E73637265656E206966206974206973206E6F742068696464656E2C20697420697320617474616368656420746F206120766965772068696572617263687920696E20612077696E646F7720284E5357696E646F77292C20616E64207468652077696E646F7720686173206120636F72726573706F6E64696E672077696E646F77206465766963652E20412076696577206F626A6563742063616E20616C736F206472617720647572696E67207072696E74696E6720696620697420697320612064657363656E64616E74206F66207468652076696577206265696E67207072696E7465642E
		#tag Getter
			Get
			  return getcanDraw (id)
			End Get
		#tag EndGetter
		CanDraw As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720696E636F72706F726174657320636F6E74656E742066726F6D2069747320737562766965777320696E746F20697473206F776E206C617965722E
		#tag Getter
			Get
			  return getcanDrawSubviewsIntoLayer (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcanDrawSubviewsIntoLayer (id, value)
			End Set
		#tag EndSetter
		CanDrawSubviewsIntoLayer As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F6620436F726520496D6167652066696C7465727320746F206170706C7920746F2074686520636F6E74656E7473206F6620746865207669657720616E6420697473207375626C61796572732E
		#tag Getter
			Get
			  return AppleArray.MakefromPtr(getcontentFilters (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcontentFilters id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ContentFilters As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E2809973206672616D652072656374616E676C652C20776869636820646566696E65732069747320706F736974696F6E20616E642073697A6520696E2069747320737570657276696577E280997320636F6F7264696E6174652073797374656D2E
		#tag Getter
			Get
			  return getframe(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setframe id, value
			End Set
		#tag EndSetter
		Frame As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726F746174696F6E20616E676C65206F662074686520766965772061726F756E64207468652063656E746572206F6620697473206C617965722E0A496620796F75206368616E6765642074686520756E6465726C79696E67206C61796572E280997320616E63686F72506F696E742070726F70657274792C2074686520726573756C74206F662073657474696E6720746869732070726F706572747920697320756E646566696E65642E
		#tag Getter
			Get
			  return getframeCenterRotation(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setframeCenterRotation id, value
			End Set
		#tag EndSetter
		FrameCenterRotation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F726967696E206F66207468652076696577E2809973206672616D652072656374616E676C6520696E20697473207375706572766965772E
		#tag Getter
			Get
			  return getframe(id).Origin
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFrameOrigin id, value
			End Set
		#tag EndSetter
		FrameOrigin As FoundationFrameWork.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616E676C65206F6620726F746174696F6E2C206D6561737572656420696E20646567726565732C206170706C69656420746F207468652076696577E2809973206672616D652072656374616E676C652072656C617469766520746F2069747320737570657276696577E280997320636F6F7264696E6174652073797374656D2E
		#tag Getter
			Get
			  return getframeRotation(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setframeRotation id, value
			End Set
		#tag EndSetter
		FrameRotation As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F726967696E206F66207468652076696577E2809973206672616D652072656374616E676C6520696E20697473207375706572766965772E
		#tag Getter
			Get
			  return getframe(id).Size_
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setFrameSize id, value
			End Set
		#tag EndSetter
		FrameSize As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206672616374696F6E206F6620746865207061676520746861742063616E20626520707573686564206F6E746F20746865206E657874207061676520647572696E67206175746F6D6174696320706167696E6174696F6E20746F2070726576656E74206974656D732073756368206173206C696E6573206F6620746578742066726F6D206265696E672064697669646564206163726F73732070616765732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getheightAdjustLimit(id)
			End Get
		#tag EndGetter
		HeightAdjustLimit As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720757365732061206C6179657220617320697473206261636B696E672073746F72652E
		#tag Getter
			Get
			  return AppleCALayer.MakefromPtr(getLayer (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setLayer id, value.id
			End Set
		#tag EndSetter
		Layer As AppleCALAyer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E74206C6179657220636F6E74656E747320706C6163656D656E7420706F6C6963792E
		#tag Getter
			Get
			  return getlayerContentsPlacement (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setlayerContentsPlacement id,value
			End Set
		#tag EndSetter
		LayerContentsPlacement As NSViewLayerContentsPlacement
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E74206C6179657220636F6E74656E747320706C6163656D656E7420706F6C6963792E
		#tag Getter
			Get
			  return getlayerContentsRedrawPolicy (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setlayerContentsRedrawPolicy id,value
			End Set
		#tag EndSetter
		LayerContentsRedrawPolicy As NSViewLayerContentsRedrawPolicy
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577E2809973206C61796572207573657320436F726520496D6167652066696C7465727320616E64206E6565647320696E2D70726F636573732072656E646572696E672E
		#tag Getter
			Get
			  return getlayerUsesCoreImageFilters (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setlayerUsesCoreImageFilters (id, value)
			End Set
		#tag EndSetter
		LayerUsesCoreImageFilters As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652076696577206E6565647320746F206265207265647261776E206265666F7265206265696E6720646973706C617965642E200A53657474696E67207468652076616C756520746F207472756520697320746865206571756976616C656E746F66206120586F6A6F20696E76616C69646174652063616C6C2E
		#tag Getter
			Get
			  return getneedsDisplay (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setneedsDisplay id,value
			End Set
		#tag EndSetter
		NeedsDisplay As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E280997320636C6F73657374206F706171756520616E636573746F722C207768696368206D6967687420626520746865207669657720697473656C662E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleview.MakeFromPtr(getopaqueAncestor(id))
			End Get
		#tag EndGetter
		OpaqueAncestor As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206172726179206F6620766965777320656D62656464656420696E207468652063757272656E7420766965772E
		#tag Getter
			Get
			  return applearray.MakeFromPtr(getsubviews(id))
			End Get
		#tag EndGetter
		Subviews As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207669657720746861742069732074686520706172656E74206F66207468652063757272656E7420766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleview.MakeFromPtr(getsuperview(id))
			End Get
		#tag EndGetter
		SuperView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F7274696F6E206F662074686520766965772074686174206973206E6F7420636C69707065642062792069747320737570657276696577732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getvisibleRect(id)
			End Get
		#tag EndGetter
		VisibleRect As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207669657720757365732061206C6179657220617320697473206261636B696E672073746F72652E
		#tag Getter
			Get
			  return getWantsLayer (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setWantsLayer (id, value)
			End Set
		#tag EndSetter
		WantsLayer As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206672616374696F6E206F6620746865207061676520746861742063616E20626520707573686564206F6E746F20746865206E657874207061676520647572696E67206175746F6D6174696320706167696E6174696F6E20746F2070726576656E74206974656D73207375636820617320736D616C6C20696D61676573206F72207465787420636F6C756D6E732066726F6D206265696E672064697669646564206163726F73732070616765732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getwidthAdjustLimit(id)
			End Get
		#tag EndGetter
		WidthAdjustLimit As Double
	#tag EndComputedProperty


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
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BoundsRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameRotation"
			Group="Behavior"
			Type="Double"
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
			Name="LayerContentsPlacement"
			Group="Behavior"
			Type="NSViewLayerContentsPlacement"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerContentsRedrawPolicy"
			Group="Behavior"
			Type="LayerContentsRedrawPolicy"
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
			Name="WantsLayer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
