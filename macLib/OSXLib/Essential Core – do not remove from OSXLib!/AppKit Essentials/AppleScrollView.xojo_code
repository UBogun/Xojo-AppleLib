#tag Class
Protected Class AppleScrollView
Inherits AppleView
	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Function AcceptsFirstResponder() As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event
		Function AllowsVibrancy() As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub DidResize()
		  
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

	#tag Event
		Function Opaque() As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event , Description = 576865746865722074686520726573706F6E646572206163636570747320666972737420726573706F6E646572207374617475732E20
		Sub ScrollWheel(anEvent As AppleNSEvent)
		  #pragma unused anevent
		End Sub
	#tag EndEvent

	#tag Event
		Sub WillResize()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0, Description = 41646473206120666C6F6174696E67207375627669657720746F2074686520646F63756D656E7420766965772E
		Sub AddFloatingSubview(SubView as AppleView, GestureAxis As AppleNSEvent.NSEventGestureAxis)
		  addFloatingSubview id, subview.id, GestureAxis
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addFloatingSubview Lib appkitlibname Selector "addFloatingSubview:forAxis:" (id as ptr, subview as ptr, axis as AppleNSEvent . NSEventGestureAxis)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6577205363726F6C6C5669657720666F722074686520676976656E206672616D652E
		Sub Constructor(frame as FoundationFrameWork.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(AppKitFramework.initwithframe(alloc(classptr), frame))
		  MHasOwnership = true
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520636F6E74656E742073697A652063616C63756C617465642066726F6D20746865206672616D652073697A6520616E6420746865207370656369666965642073706563696669636174696F6E732E
		Shared Function ContentSize(FrameSize As FoundationFrameWork.NSSize, HorizontalScrollerClass as AppleObject = nil, VerticalScrollerClass As AppleObject = nil, borderType as NSBorderType, ControlSize As AppleControl.NSControlSize, style As AppleScroller.NSSCrollerStyle) As FoundationFrameWork.NSSize
		  return getcontentSizeForFrameSize (classptr, FrameSize, _
		  if (HorizontalScrollerClass = nil, nil, HorizontalScrollerClass.id), _
		  if (VerticalScrollerclass = nil, nil, VerticalScrollerClass.id), _
		  BorderType, ControlSize, style)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 466C61736820746865206F7665726C6179207363726F6C6C20626172732E
		Sub FlashScrollers()
		  flashScrollers id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub flashScrollers Lib appkitlibname Selector "flashScrollers" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206672616D652073697A65206F6620616E207363726F6C6C2076696577207468617420636F6E7461696E73206120636F6E74656E742076696577207769746820746865207370656369666965642073697A652E0A596F752063616E207573652074686520636C61737341734F626A6563742070726F7065727479206F662061206365727461696E20696E7374616E636520666F7220746865207363726F6C6C65727320706172616D65746572732E
		Shared Function FrameSize(ContentSize As FoundationFrameWork.NSSize, HorizontalScrollerClass as AppleObject = nil, VerticalScrollerClass As AppleObject = nil, borderType as NSBorderType, ControlSize As AppleControl.NSControlSize, style As AppleScroller.NSSCrollerStyle) As FoundationFrameWork.NSSize
		  return getframeSizeForContentSize (classptr, ContentSize, _
		  if (HorizontalScrollerClass = nil, nil, HorizontalScrollerClass.id), _
		  if (VerticalScrollerclass = nil, nil, VerticalScrollerClass.id), _
		  BorderType, ControlSize, style)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsMagnification Lib appkitlibname Selector "allowsMagnification" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getautohidesScrollers Lib appkitlibname Selector "autohidesScrollers" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontentSize Lib appkitlibname Selector "contentSize" (id as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontentSizeForFrameSize Lib appkitlibname Selector "contentSizeForFrameSize:horizontalScrollerClass:verticalScrollerClass:borderType:controlSize:scrollerStyle:" (id as ptr, framesize as FoundationFrameWork . NSSize, horizontalclass as ptr, verticalclass as ptr, bordertype as NSBorderType, controlsize as AppleControl . NSControlSize, style as AppleScroller . NSScrollerStyle) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontentView Lib appkitlibname Selector "contentView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdocumentView Lib appkitlibname Selector "documentView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdocumentVisibleRect Lib appkitlibname Selector "documentVisibleRect" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfindBarPosition Lib appkitlibname Selector "findBarPosition" (id as ptr) As NSScrollViewFindBarPosition
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getframeSizeForContentSize Lib appkitlibname Selector "frameSizeForContentSize:horizontalScrollerClass:verticalScrollerClass:borderType:controlSize:scrollerStyle:" (id as ptr, contentsize as FoundationFrameWork . NSSize, horizontalclass as ptr, verticalclass as ptr, bordertype as NSBorderType, controlsize as AppleControl . NSControlSize, style as AppleScroller . NSScrollerStyle) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethasHorizontalRuler Lib appkitlibname Selector "hasHorizontalRuler" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethasHorizontalScroller Lib appkitlibname Selector "hasHorizontalScroller" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethasVerticalRuler Lib appkitlibname Selector "hasVerticalRuler" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethasVerticalScroller Lib appkitlibname Selector "hasVerticalScroller" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethorizontalLineScroll Lib appkitlibname Selector "horizontalLineScroll" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethorizontalPageScroll Lib appkitlibname Selector "horizontalPageScroll" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethorizontalRulerView Lib appkitlibname Selector "horizontalRulerView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethorizontalScrollElasticity Lib appkitlibname Selector "horizontalScrollElasticity" (id as ptr) As NSScrollElasticity
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethorizontalScroller Lib appkitlibname Selector "horizontalScroller" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlineScroll Lib appkitlibname Selector "lineScroll" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmaxMagnification Lib appkitlibname Selector "maxMagnification" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getminMagnification Lib appkitlibname Selector "minMagnification" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpageScroll Lib appkitlibname Selector "pageScroll" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrulersVisible Lib appkitlibname Selector "rulersVisible" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrulerViewClass Lib appkitlibname Selector "rulerViewClass" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getscrollerInsets Lib appkitlibname Selector "scrollerInsets" (id as ptr) As Appkitframework.NSEdgeInsets
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getscrollerKnobStyle Lib appkitlibname Selector "scrollerKnobStyle" (id as ptr) As AppleScroller.NSScrollerKnobStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getscrollerStyle Lib appkitlibname Selector "scrollerStyle" (id as ptr) As AppleScroller.NSScrollerStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getscrollsDynamically Lib appkitlibname Selector "scrollsDynamically" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getusesPredominantAxisScrolling Lib appkitlibname Selector "usesPredominantAxisScrolling" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getverticalLineScroll Lib appkitlibname Selector "verticalLineScroll" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getverticalPageScroll Lib appkitlibname Selector "verticalPageScroll" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getverticalRulerView Lib appkitlibname Selector "verticalRulerView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getverticalScrollElasticity Lib appkitlibname Selector "verticalScrollElasticity" (id as ptr) As NSScrollElasticity
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getverticalScroller Lib appkitlibname Selector "verticalScroller" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_scrollviewDidEndLiveResize(pid as ptr, sel as ptr)
		  dim view as ApplescrollView = ApplescrollView.MakefromPtr(pid)
		  if view <> nil then 
		    if not view.informOnviewDidEndLiveResize() then appkitframework.tile(pid)
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_scrollviewWillStartLiveResize(pid as ptr, sel as ptr)
		  dim view as ApplescrollView = ApplescrollView.MakefromPtr(pid)
		  if view <> nil then 
		    if not view.informOnviewWillStartLiveResize() then appkitframework.tile(pid)
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function informOnviewDidEndLiveResize() As Boolean
		  if parentcontrol <> nil then 
		    return parentcontrol.informOnviewDidEndLiveResize()
		  else
		    return RaiseEvent DidResize()
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Function informOnviewWillStartLiveResize() As Boolean
		  if parentcontrol <> nil then 
		    return parentcontrol.informOnviewWillStartLiveResize()
		  else
		    return RaiseEvent WillResize()
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D61676E69666965732074686520636F6E74656E7420766965772070726F706F7274696F6E616C6C79207375636820746861742074686520676976656E2072656374616E676C6520666974732063656E746572656420696E20746865207363726F6C6C20766965772E0A54686520726573756C74696E67206D61676E696669636174696F6E2076616C756520697320636C697070656420746F20746865206D696E4D61676E696669636174696F6E20616E64206D61784D61676E696669636174696F6E2076616C7565732E20546F20616E696D61746520746865206D61676E696669636174696F6E2C2075736520746865207363726F6C6C76696577E280997320616E696D61746F722E
		Sub Magnify(toRect As FoundationFrameWork.NSRect)
		  magnifyToFitRect id, torect
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub magnifyToFitRect Lib appkitlibname Selector "magnifyToFitRect:" (id as ptr, rect as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleScrollView
		  return if (aptr = nil, nil, new AppleScrollView(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 496E7465726E616C3A2054686520694F5375736572636F6E74726F6C20737562636C61737320696620636F6E7461696E656420696E20737563682E
		Attributes( hidden ) Protected Function ParentControl() As OSXLibScrollView
		  if XojoControls <> nil then
		    dim  wr as xojo.core.weakref = XojoControls.Lookup (id, nil)  
		    return if (wr = nil, nil,  OSXLibScrollView(wr.Value))
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5363726F6C6C7320746865207265636569766572207570206F7220646F776E2C20696E20726573706F6E736520746F207468652075736572206D6F76696E6720746865206D6F757365E2809973207363726F6C6C20776865656C20737065636966696564206279207468654576656E742E
		Sub ScrollWheel(anEvent As AppleNSEvent)
		  scrollWheel id, anEvent.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub scrollWheel Lib appkitlibname Selector "scrollWheel:" (id as ptr, anevent as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsMagnification Lib appkitlibname Selector "setAllowsMagnification:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setautohidesScrollers Lib appkitlibname Selector "setAutohidesScrollers:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontentView Lib appkitlibname Selector "setContentView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdocumentView Lib appkitlibname Selector "setDocumentView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfindBarPosition Lib appkitlibname Selector "setFindBarPosition:" (id as ptr, value as NSScrollViewFindBarPosition)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sethasHorizontalRuler Lib appkitlibname Selector "setHasHorizontalRuler:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sethasHorizontalScroller Lib appkitlibname Selector "setHasHorizontalScroller:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sethasVerticalRuler Lib appkitlibname Selector "setHasVerticalRuler:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sethasVerticalScroller Lib appkitlibname Selector "setHasVerticalScroller:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sethorizontalLineScroll Lib appkitlibname Selector "setHorizontalLineScroll:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sethorizontalPageScroll Lib appkitlibname Selector "setHorizontalPageScroll:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sethorizontalRulerView Lib appkitlibname Selector "setHorizontalRulerView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sethorizontalScrollElasticity Lib appkitlibname Selector "setHorizontalScrollElasticity:" (id as ptr, value as NSScrollElasticity)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sethorizontalScroller Lib appkitlibname Selector "setHorizontalScroller:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlineScroll Lib appkitlibname Selector "setLineScroll:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4D61676E6966792074686520636F6E74656E742062792074686520676976656E20616D6F756E7420616E642063656E7465722074686520726573756C74206F6E2074686520676976656E20706F696E742E
		Sub SetMagnification(value as double, CenterAtPoint as FoundationFrameWork.NSPoint)
		  setMagnificationCentered id, value, CenterAtPoint
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setMagnificationCentered Lib appkitlibname Selector "setMagnification:centeredAtPoint:" (id as ptr, value as CGFloat, point as FoundationFrameWork . NSPoint)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setmaxMagnification Lib appkitlibname Selector "setMaxMagnification:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setminMagnification Lib appkitlibname Selector "setMinMagnification:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setpageScroll Lib appkitlibname Selector "setPageScroll:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrulersVisible Lib appkitlibname Selector "setRulersVisible:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setRulerViewClass Lib appkitlibname Selector "setRulerViewClass:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setscrollerInsets Lib appkitlibname Selector "setScrollerInsets:" (id as ptr, value as AppkitFramework . NSEdgeInsets)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setscrollerKnobStyle Lib appkitlibname Selector "setScrollerKnobStyle:" (id as ptr, value as AppleScroller . NSScrollerKnobStyle)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setscrollerStyle Lib appkitlibname Selector "setScrollerStyle:" (id as ptr, value as AppleScroller . NSScrollerStyle)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setscrollsDynamically Lib appkitlibname Selector "setScrollsDynamically:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setusesPredominantAxisScrolling Lib appkitlibname Selector "setUsesPredominantAxisScrolling:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setverticalLineScroll Lib appkitlibname Selector "setVerticalLineScroll:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setverticalPageScroll Lib appkitlibname Selector "setVerticalPageScroll:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setverticalRulerView Lib appkitlibname Selector "setVerticalRulerView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setverticalScrollElasticity Lib appkitlibname Selector "setVerticalScrollElasticity:" (id as ptr, value as NSScrollElasticity)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setverticalScroller Lib appkitlibname Selector "setVerticalScroller:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4C617973206F75742074686520636F6D706F6E656E7473206F66207468652072656365697665723A2074686520636F6E74656E7420766965772C20746865207363726F6C6C6572732C20616E64207468652072756C65722076696577732E
		Sub Tile()
		  AppKitFramework.tile id
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DidResize() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event WillResize() As Boolean
	#tag EndHook


	#tag Note, Name = Status incomplete
		
		missing:
		documentCursor
		impl. for SendActionOn (EventMask)
		reflectScrolledClipView (prob. unnecessary)
		title (ditto)
		
		changes:
		contentView & documentView must be NSClipView, not NSView
		rulerviews should be NSRulerview, not NSView
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 416C6C6F777320746865207573657220746F206D61676E69667920746865207363726F6C6C20766965772E
		#tag Getter
			Get
			  return getallowsMagnification(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setallowsMagnification id, value
			End Set
		#tag EndSetter
		AllowsMagnification As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412070726F7879206F626A65637420666F722074686520726563656976657220746861742063616E206265207573656420746F20696E69746961746520696D706C69656420616E696D6174696F6E20666F722070726F7065727479206368616E6765732E
		#tag Getter
			Get
			  return applescrollview.MakeFromPtr(getanimator(id))
			End Get
		#tag EndGetter
		Animator As AppleScrollView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C2076696577206175746F6D61746963616C6C7920686964657320697473207363726F6C6C2062617273207768656E207468657920617265206E6F74206E65656465642E
		#tag Getter
			Get
			  return getautohidesScrollers(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setautohidesScrollers id, value
			End Set
		#tag EndSetter
		AutohidesScrollers As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C2076696577206175746F6D61746963616C6C792061646A757374732069747320636F6E74656E7420696E736574732E
		#tag Getter
			Get
			  return AppKitFramework.getautomaticallyAdjustsContentInsets(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setautomaticallyAdjustsContentInsets id, value
			End Set
		#tag EndSetter
		AutomaticallyAdjustsContentInsets As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F662074686520636F6E74656E742076696577E2809973206261636B67726F756E642E
		#tag Getter
			Get
			  return applecolor.MakefromPtr(AppKitFramework.getbackgroundColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setbackgroundColor id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617070656172616E6365206F6620746865207363726F6C6C2076696577E280997320626F726465722E
		#tag Getter
			Get
			  return getBorderType(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBorderType id, value
			End Set
		#tag EndSetter
		BorderType As NSBorderType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  
			  static mClassPtr as ptr
			  if mClassPtr = Nil then
			    dim methods() as TargetClassMethodHelper
			    
			    //NSResponder "delegate" methods
			    // methods.Append new TargetClassMethodHelper("acceptsFirstResponder", AddressOf impl_acceptsFirstResponder, "c@:")
			    // methods.Append new TargetClassMethodHelper("becomeFirstResponder", AddressOf impl_becomeFirstResponder, "c@:")
			    // methods.Append new TargetClassMethodHelper("resignFirstResponder", AddressOf impl_resignFirstResponder, "c@:")
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
			    // methods.Append new TargetClassMethodHelper("scrollWheel:", AddressOf impl_scrollWheel, "v@:@")
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
			    // methods.Append new TargetClassMethodHelper("opaque", AddressOf impl_opaque, "c@:")
			    // methods.Append new TargetClassMethodHelper("allowsVibrancy", AddressOf impl_allowsVibrancy, "c@:")
			    methods.Append new TargetClassMethodHelper("viewWillStartLiveResize", AddressOf impl_scrollviewWillStartLiveResize, "v@:")
			    methods.Append new TargetClassMethodHelper("viewDidEndLiveResize", AddressOf impl_scrollviewDidEndLiveResize, "v@:")
			    methods.Append new TargetClassMethodHelper("viewDidHide", AddressOf impl_viewDidHide, "v@:")
			    methods.Append new TargetClassMethodHelper("viewDidUnhide", AddressOf impl_viewDidUnhide, "v@:")
			    // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect, "v@:{CGRect}")
			    methods.Append new TargetClassMethodHelper("menuForEvent:", AddressOf impl_menuForEvent, "@@:@")
			    methods.Append new TargetClassMethodHelper("willOpenMenu:withEvent:", AddressOf impl_willOpenMenu, "v@:@@")
			    
			    mClassPtr = BuildTargetClass ("NSScrollView", "OSXLibScrollView",methods)
			  end if
			  Return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E6365207468617420746865207363726F6C6C2076696577E28099732073756276696577732061726520696E7365742066726F6D2074686520656E636C6F73696E67207363726F6C6C207669657720647572696E672074696C696E672E
		#tag Getter
			Get
			  return AppKitFramework.getcontentInsets(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setcontentInsets id, value
			End Set
		#tag EndSetter
		ContentInsets As AppkitFramework.NSEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F6620746865207363726F6C6C2076696577E280997320636F6E74656E7420766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcontentSize(id)
			End Get
		#tag EndGetter
		Contentsize As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320636F6E74656E7420766965772C207468652076696577207468617420636C6970732074686520646F63756D656E7420766965772E
		#tag Getter
			Get
			  return appleclipview.MakefromPtr(getcontentView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcontentView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ContentView As AppleClipView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207669657720746865207363726F6C6C2076696577207363726F6C6C732077697468696E2069747320636F6E74656E7420766965772E
		#tag Getter
			Get
			  return appleview.MakefromPtr(getdocumentView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setdocumentView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		DocumentView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F7274696F6E206F662074686520646F63756D656E7420766965772C20696E20697473206F776E20636F6F7264696E6174652073797374656D2C2076697369626C65207468726F75676820746865207363726F6C6C2076696577E280997320636F6E74656E7420766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getdocumentVisibleRect(id)
			End Get
		#tag EndGetter
		DocumentVisibleRect As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C207669657720647261777320697473206261636B67726F756E642E
		#tag Getter
			Get
			  return AppKitFramework.getdrawsBackground(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setdrawsBackground id, value
			End Set
		#tag EndSetter
		DrawsBackground As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F736974696F6E206F66207468652066696E64206261722E
		#tag Getter
			Get
			  return getfindBarPosition(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfindBarPosition id, value
			End Set
		#tag EndSetter
		FindBarPosition As NSScrollViewFindBarPosition
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C2076696577206B65657073206120686F72697A6F6E74616C2072756C6572206F626A6563742E
		#tag Getter
			Get
			  return gethasHorizontalRuler(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  sethasHorizontalRuler id, value
			End Set
		#tag EndSetter
		HasHorizontalRuler As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C207669657720686173206120686F72697A6F6E74616C207363726F6C6C65722E
		#tag Getter
			Get
			  return gethasHorizontalScroller(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  sethasHorizontalScroller id, value
			End Set
		#tag EndSetter
		HasHorizontalScroller As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C2076696577206B65657073206120766572746963616C2072756C6572206F626A6563742E
		#tag Getter
			Get
			  return gethasVerticalRuler(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  sethasVerticalRuler id, value
			End Set
		#tag EndSetter
		HasVerticalRuler As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C207669657720686173206120766572746963616C207363726F6C6C65722E
		#tag Getter
			Get
			  return gethasVerticalScroller(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  sethasVerticalScroller id, value
			End Set
		#tag EndSetter
		HasVerticalScroller As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320686F72697A6F6E74616C206C696E65206279206C696E65207363726F6C6C20616D6F756E742E
		#tag Getter
			Get
			  return gethorizontalLineScroll(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  sethorizontalLineScroll id, value
			End Set
		#tag EndSetter
		HorizontalLineScroll As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616D6F756E74206F662074686520646F63756D656E742076696577206B6570742076697369626C65207768656E207363726F6C6C696E6720686F72697A6F6E74616C6C79207061676520627920706167652E
		#tag Getter
			Get
			  return gethorizontalPageScroll(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  sethorizontalPageScroll id, value
			End Set
		#tag EndSetter
		HorizontalPageScroll As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320686F72697A6F6E74616C2072756C657220766965772E
		#tag Getter
			Get
			  return appleview.MakefromPtr(gethorizontalRulerView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  sethorizontalRulerView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		HorizontalRulerView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320686F72697A6F6E74616C207363726F6C6C696E6720656C6173746963697479206D6F64652E
		#tag Getter
			Get
			  return gethorizontalScrollElasticity(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  sethorizontalScrollElasticity id, value
			End Set
		#tag EndSetter
		HorizontalScrollElasticity As NSScrollElasticity
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320686F72697A6F6E74616C207363726F6C6C65722E
		#tag Getter
			Get
			  return AppleScroller.MakefromPtr(gethorizontalScroller(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  sethorizontalScroller id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		HorizontalScroller As AppleScroller
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkNSScrollViewDidEndLiveMagnifyNotification as text = "NSScrollViewDidEndLiveMagnifyNotification"
			  return mkNSScrollViewDidEndLiveMagnifyNotification
			End Get
		#tag EndGetter
		Shared kNSScrollViewDidEndLiveMagnifyNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkNSScrollViewDidEndLiveScrollNotification as text = "NSScrollViewDidEndLiveScrollNotification"
			  return mkNSScrollViewDidEndLiveScrollNotification
			End Get
		#tag EndGetter
		Shared kNSScrollViewDidEndLiveScrollNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkNSScrollViewDidLiveScrollNotification as text = "NSScrollViewDidLiveScrollNotification"
			  return mkNSScrollViewDidLiveScrollNotification
			End Get
		#tag EndGetter
		Shared kNSScrollViewDidLiveScrollNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkNSScrollViewWillStartLiveMagnifyNotification as text = "NSScrollViewWillStartLiveMagnifyNotification"
			  return mkNSScrollViewWillStartLiveMagnifyNotification
			End Get
		#tag EndGetter
		Shared kNSScrollViewWillStartLiveMagnifyNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkNSScrollViewWillStartLiveScrollNotification as text = "NSScrollViewWillStartLiveScrollNotification"
			  return mkNSScrollViewWillStartLiveScrollNotification
			End Get
		#tag EndGetter
		Shared kNSScrollViewWillStartLiveScrollNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E2809973206C696E65206279206C696E65207363726F6C6C20616D6F756E742E0A53657474696E6720746869732070726F7065727479207365747320626F746820766572746963616C4C696E655363726F6C6C20616E6420686F72697A6F6E74616C4C696E655363726F6C6C20746F207468652073616D652076616C75652E
		#tag Getter
			Get
			  return getlineScroll(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setlineScroll id, value
			End Set
		#tag EndSetter
		LineScroll As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616D6F756E742062792077686963682074686520636F6E74656E742069732063757272656E746C79207363616C65642E2044656661756C7420697320312E302E0A416E696D61746520746865206368616E6765206279207573696E6720746865207363726F6C6C76696577E280987320616E696D61746F72206F626A6563742E
		#tag Getter
			Get
			  return AppKitFramework.getmagnification(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setmagnification id, value
			End Set
		#tag EndSetter
		Magnification As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D2076616C756520746F2077686963682074686520636F6E74656E742063616E206265206D61676E69666965642E2044656661756C7420342E302E
		#tag Getter
			Get
			  return getmaxMagnification(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmaxMagnification id, value
			End Set
		#tag EndSetter
		MaxMagnification As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D2076616C756520746F2077686963682074686520636F6E74656E742063616E206265206D61676E69666965642E2044656661756C7420302E32352E
		#tag Getter
			Get
			  return getminMagnification(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setminMagnification id, value
			End Set
		#tag EndSetter
		MinMagnification As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616D6F756E74206F662074686520646F63756D656E742076696577206B6570742076697369626C65207768656E207363726F6C6C696E67207061676520627920706167652E0A53657474696E6720746869732070726F7065727479207365747320626F746820766572746963616C506167655363726F6C6C20616E6420686F72697A6F6E74616C506167655363726F6C6C20746F207468652073616D652076616C75652E
		#tag Getter
			Get
			  return getpageScroll(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setpageScroll id, value
			End Set
		#tag EndSetter
		PageScroll As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C207669657720646973706C617973206974732072756C6572732E
		#tag Getter
			Get
			  return getrulersVisible(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setrulersVisible id, value
			End Set
		#tag EndSetter
		RulersVisible As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656661756C7420636C61737320746F206265207573656420666F722072756C6572206F626A6563747320696E204E535363726F6C6C56696577732E
		#tag Getter
			Get
			  return AppleObject.MakefromPtr(getrulerViewClass(classptr))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setrulerViewClass classptr, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Shared RulerViewClass As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E636520746865207363726F6C6C6572732061726520696E7365742066726F6D207468652065646765206F6620746865207363726F6C6C20766965772E
		#tag Getter
			Get
			  return getscrollerInsets(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setscrollerInsets id, value
			End Set
		#tag EndSetter
		ScrollerInsets As AppkitFramework.NSEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206B6E6F62207374796C65206F66207363726F6C6C20766965777320746861742075736520746865206F7665726C6179207363726F6C6C6572207374796C652E
		#tag Getter
			Get
			  return getscrollerKnobStyle(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setscrollerKnobStyle id, value
			End Set
		#tag EndSetter
		ScrollerKnobStyle As AppleScroller.NSScrollerKnobStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C6572207374796C65207573656420627920746865207363726F6C6C20766965772E
		#tag Getter
			Get
			  return getscrollerStyle(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setscrollerStyle id, value
			End Set
		#tag EndSetter
		ScrollerStyle As AppleScroller.NSScrollerStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C207669657720726564726177732069747320646F63756D656E742076696577207768696C65207363726F6C6C696E6720636F6E74696E756F75736C792E2044656661756C7420547275652E
		#tag Getter
			Get
			  return getscrollsDynamically(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setscrollsDynamically id, value
			End Set
		#tag EndSetter
		ScrollsDynamically As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C20766965772075736573206120707265646F6D696E616E74207363726F6C6C696E67206178697320666F7220636F6E74656E742E
		#tag Getter
			Get
			  return getusesPredominantAxisScrolling(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setusesPredominantAxisScrolling id, value
			End Set
		#tag EndSetter
		UsesPredominantAxisScrolling As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320766572746963616C206C696E65206279206C696E65207363726F6C6C20616D6F756E742E
		#tag Getter
			Get
			  return getverticalLineScroll(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setverticalLineScroll id, value
			End Set
		#tag EndSetter
		VerticalLineScroll As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616D6F756E74206F662074686520646F63756D656E742076696577206B6570742076697369626C65207768656E207363726F6C6C696E6720766572746963616C6C79207061676520627920706167652E
		#tag Getter
			Get
			  return getverticalPageScroll(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setverticalPageScroll id, value
			End Set
		#tag EndSetter
		VerticalPageScroll As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320766572746963616C2072756C657220766965772E
		#tag Getter
			Get
			  return appleview.MakefromPtr(getverticalRulerView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setverticalRulerView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		VerticalRulerView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320766572746963616C207363726F6C6C696E6720656C6173746963697479206D6F64652E
		#tag Getter
			Get
			  return getverticalScrollElasticity(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setverticalScrollElasticity id, value
			End Set
		#tag EndSetter
		VerticalScrollElasticity As NSScrollElasticity
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320766572746963616C207363726F6C6C65722E
		#tag Getter
			Get
			  return AppleScroller.MakefromPtr(getverticalScroller(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setverticalScroller id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		VerticalScroller As AppleScroller
	#tag EndComputedProperty


	#tag Enum, Name = NSScrollElasticity, Type = Integer, Flags = &h0
		Automatic = 0
		  None = 1
		Allowed = 2
	#tag EndEnum

	#tag Enum, Name = NSScrollViewFindBarPosition, Type = Integer, Flags = &h0
		AboveHorizontalRuler = 0
		  AboveContent = 1
		BelowContent = 2
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowsMagnification"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutohidesScrollers"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutomaticallyAdjustsContentInsets"
			Group="Behavior"
			Type="Boolean"
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
			Name="BorderType"
			Group="Behavior"
			Type="NSBorderType"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Line"
				"2 - Bezel"
				"3 - Groove"
			#tag EndEnumValues
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
			Name="DrawsBackground"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FindBarPosition"
			Group="Behavior"
			Type="NSScrollViewFindBarPosition"
			EditorType="Enum"
			#tag EnumValues
				"0 - AboveHorizontalRuler"
				"1 - AboveContent"
				"2 - BelowContent"
			#tag EndEnumValues
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
			Name="HasHorizontalRuler"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasHorizontalScroller"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasVerticalRuler"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasVerticalScroller"
			Group="Behavior"
			Type="Boolean"
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
			Name="HorizontalLineScroll"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HorizontalPageScroll"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HorizontalScrollElasticity"
			Group="Behavior"
			Type="NSScrollElasticity"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - None"
				"2 - Allowed"
			#tag EndEnumValues
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
			Name="LineScroll"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Magnification"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxMagnification"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinMagnification"
			Group="Behavior"
			Type="Double"
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
			Name="PageScroll"
			Group="Behavior"
			Type="Double"
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
			Name="RulersVisible"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollerKnobStyle"
			Group="Behavior"
			Type="AppleScroller.NSScrollerKnobStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Dark"
				"2 - Light"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollerStyle"
			Group="Behavior"
			Type="AppleScroller.NSScrollerStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Legacy"
				"1 - Overlay"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollsDynamically"
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
			Name="UsesPredominantAxisScrolling"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalLineScroll"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalPageScroll"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalScrollElasticity"
			Group="Behavior"
			Type="NSScrollElasticity"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - None"
				"2 - Allowed"
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
