#tag Class
Protected Class AppleBezierPath
Inherits AppleObject
	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 417070656E647320616E2061726320746F2074686520706174682E
		Sub AddArc(Center as FoundationFrameWork.NSPoint, radius as Double, startAngle as Double, endAngle As Double, optional clockwise as Boolean)
		  #if Target64Bit
		    Declare Sub addArcWithCenter lib UIKitLibName selector "addArcWithCenter:radius:startAngle:endAngle:clockwise:" _
		    (id as ptr, Center as FoundationFrameWork.nspoint, radius as Double, startAngle as Double, endAngle As Double, clockwise as Boolean)
		    addArcWithCenter (id, Center, Radius, startAngle, EndAngle, Clockwise)
		  #elseif Target32Bit
		    Declare Sub addArcWithCenter lib UIKitLibName selector "addArcWithCenter:radius:startAngle:endAngle:clockwise:" _
		    (id as ptr, Center as FoundationFrameWork.nspoint32Bit, radius as Single, startAngle as Single, endAngle As Single, clockwise as Boolean)
		    addArcWithCenter (id, Center.tonsPoint32, Radius, startAngle, EndAngle, Clockwise)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 496E746572736563747320746865206172656120656E636C6F73656420627920746865207061746820776974682074686520636C697070696E672070617468206F66207468652063757272656E7420677261706869637320636F6E7465787420616E64206D616B65732074686520726573756C74696E67207368617065207468652063757272656E7420636C697070696E6720706174682E
		Sub AddClip()
		  Declare Sub addClip lib UIKitLibName selector "addClip" (id as ptr)
		  addClip(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 417070656E647320612063756269632042C3A97A69657220637572766520746F2074686520706174682E
		Sub AddCurve(EndPoint as FoundationFrameWork.NSPoint, ControlPoint1 as FoundationFrameWork.NSPoint, ControlPoint2 as FoundationFrameWork.NSPoint)
		  #if Target64Bit
		    Declare Sub addCurveToPoint lib UIKitLibName selector "addCurveToPoint:controlPoint1:controlPoint2:" _
		    (id as ptr, Endpoint as FoundationFrameWork.nspoint, ControlPoint1 as FoundationFrameWork.nspoint, ControlPoint2 as FoundationFrameWork.nspoint)
		    addCurveToPoint (id, EndPoint, ControlPoint1, ControlPoint2)
		  #elseif Target32Bit
		    Declare Sub addCurveToPoint lib UIKitLibName selector "addCurveToPoint:controlPoint1:controlPoint2:" _
		    (id as ptr, Endpoint as FoundationFrameWork.nspoint32Bit, ControlPoint1 as FoundationFrameWork.nspoint32Bit, ControlPoint2 as FoundationFrameWork.nspoint32Bit)
		    addCurveToPoint (id, EndPoint.tonspoint32, ControlPoint1.tonspoint32, ControlPoint2.tonspoint32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 417070656E64732061207374726169676874206C696E6520746F2074686520706174682C20626567696E6E696E672066726F6D2063757272656E74706F696E742E
		Sub AddLine(Point as FoundationFrameWork.NSPoint)
		  #if Target64Bit
		    Declare Sub addLineToPoint lib UIKitLibName selector "addLineToPoint:" (id as ptr, Point as FoundationFrameWork.nspoint)
		    addLineToPoint (id, point)
		  #elseif Target32Bit
		    Declare Sub addLineToPoint lib UIKitLibName selector "addLineToPoint:" (id as ptr, Point as FoundationFrameWork.nspoint32Bit)
		    addLineToPoint (id, point.toNSPoint32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 417070656E64732061207175616472617469632042C3A97A69657220637572766520746F2074686520706174682E
		Sub AddQuadCurve(EndPoint as FoundationFrameWork.NSPoint, ControlPoint as FoundationFrameWork.NSPoint)
		  #if Target64Bit
		    Declare Sub addQuadCurveToPoint lib UIKitLibName selector "addQuadCurveToPoint:controlPoint:" _
		    (id as ptr, Endpoint as FoundationFrameWork.nspoint, ControlPoint as FoundationFrameWork.nspoint)
		    addQuadCurveToPoint (id, EndPoint, ControlPoint)
		  #elseif Target32Bit
		    Declare Sub addQuadCurveToPoint lib UIKitLibName selector "addQuadCurveToPoint:controlPoint:" _
		    (id as ptr, Endpoint as FoundationFrameWork.nspoint32Bit, ControlPoint as FoundationFrameWork.nspoint32Bit)
		    addQuadCurveToPoint (id, EndPoint.tonspoint32, ControlPoint.tonspoint32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 417070656E64732074686520636F6E74656E7473206F6620616E6F746865722070617468206F626A65637420746F2074686520706174682E
		Sub AppendPath(Path as AppleBezierPath)
		  Declare Sub appendPath lib UIKitLibName selector "appendPath:" (id as ptr, Path as Ptr)
		  appendPath (id, path.id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 5472616E73666F726D7320616C6C20706F696E747320696E207468652070617468207573696E67207468652073706563696669656420616666696E65207472616E73666F726D206D61747269782E
		Sub ApplyTransform(Transform as CGAffineTransform)
		  #if Target64Bit
		    Declare sub applyTransform lib UIKitLibName selector "applyTransform:" (id as ptr, Transform as CGAffineTransform)
		    applyTransform (id, Transform)
		  #elseif Target32Bit
		    Declare sub applyTransform lib UIKitLibName selector "applyTransform:" (id as ptr, Transform as CGAffineTransform32Bit)
		    applyTransform (id, Transform.TOCGAffineTransform32Bit)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 436C6F73657320746865206D6F737420726563656E746C7920616464656420737562706174682E
		Sub Close()
		  Declare Sub closePath lib UIKitLibName selector "closePath" (id as ptr)
		  closePath(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 4372656174657320616E642072657475726E732061206E65772042657A69657250617468206F626A6563742E
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  declare function bezierPath lib UIKitLibName selector "bezierPath" (id as ptr) as ptr
		  Super.Constructor (bezierPath(classptr))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 4372656174657320616E642072657475726E732061206E65772042657A69657250617468206F626A65637420696E697469616C697A6564207769746820612072656374616E67756C617220706174682E
		Sub Constructor(x as double, y as double, w as double, h as double)
		  Constructor (FoundationFrameWork.NSMakeRect (x,y,w,h))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetWeb and (Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit)), Description = 4372656174657320616E642072657475726E732061206E65772042657A69657250617468206F626A65637420696E697469616C697A6564207769746820612072656374616E67756C617220706174682E
		Sub Constructor(aRect as FoundationFrameWork.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #if Target64Bit
		    declare function bezierPathWithRect lib UIKitLibName selector "bezierPathWithRect:" (id as ptr, aRect as FoundationFrameWork.NSRect) as ptr
		    Super.Constructor (bezierPathWithRect(classptr, aRect))
		  #elseif Target32Bit
		    declare function bezierPathWithRect lib UIKitLibName selector "bezierPathWithRect:" (id as ptr, aRect as FoundationFrameWork.NSRect32Bit) as ptr
		    Super.Constructor (bezierPathWithRect(classptr, aRect.toNSRect32))
		  #endif
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 5768657468657220746865206172656120656E636C6F73656420627920746865207061746820636F6E7461696E73207468652073706563696669656420706F696E742E
		Function ContainsPoint(Point as FoundationFrameWork.NSPoint) As Boolean
		  #if Target64Bit
		    Declare Function containsPoint lib UIKitLibName selector "containsPoint:" (id as ptr, Ppoint as FoundationFrameWork.nspoint) as Boolean
		    return containsPoint (id, Point)
		  #elseif Target32Bit
		    Declare Function containsPoint lib UIKitLibName selector "containsPoint:" (id as ptr, Ppoint as FoundationFrameWork.nspoint32Bit) as Boolean
		    return containsPoint (id, Point.toNSPoint32)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 5061696E74732074686520726567696F6E20656E636C6F736564206279207468652070617468207573696E67207468652063757272656E742064726177696E672070726F706572746965732E2055736566756C20666F72204347436F6E746578742064726177696E672E0A54686973206D6574686F64206175746F6D61746963616C6C79207361766573207468652063757272656E74206772617068696373207374617465207072696F7220746F2064726177696E6720616E6420726573746F7265732074686174207374617465207768656E20697420697320646F6E652C20736F20796F7520646F206E6F74206861766520746F20736176652074686520677261706869637320737461746520796F757273656C662E
		Sub Fill()
		  Declare Sub fill lib UIKitLibName selector "fill" (id as ptr)
		  fill(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 5061696E74732074686520726567696F6E20656E636C6F736564206279207468652070617468207573696E67207468652073706563696669656420626C656E64206D6F646520616E64207472616E73706172656E63792076616C7565732E2055736566756C20666F72204347436F6E746578742064726177696E672E0A54686973206D6574686F64206175746F6D61746963616C6C79207361766573207468652063757272656E74206772617068696373207374617465207072696F7220746F2064726177696E6720616E6420726573746F7265732074686174207374617465207768656E20697420697320646F6E652C20736F20796F7520646F206E6F74206861766520746F20736176652074686520677261706869637320737461746520796F757273656C662E
		Sub FillWithBlendMode(blendmode as CoreGraphicsFramework.CGBlendMode, alpha as double = 1.0)
		  #if Target64Bit
		    Declare Sub fillWithBlendMode lib UIKitLibName selector "fillWithBlendMode:alpha:" (id as ptr, blendmode as CoreGraphicsFramework.CGBlendMode, Alpha as double)
		  #elseif Target32Bit
		    Declare Sub fillWithBlendMode lib UIKitLibName selector "fillWithBlendMode:alpha:" (id as ptr, blendmode as CoreGraphicsFramework.CGBlendMode, Alpha as single)
		  #endif
		  
		  fillWithBlendMode id, blendmode, alpha
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 4372656174657320616E642072657475726E732061206E657720554942657A69657250617468206F626A65637420696E697469616C697A656420776974682074686520636F6E74656E7473206F66206120436F726520477261706869637320706174682E
		Shared Function fromCGPath(Path as AppleCGPath) As AppleBezierPath
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  declare function bezierPathWithCGPath lib UIKitLibName selector "bezierPathWithCGPath:" (id as ptr, Path as Ptr) as ptr
		  dim result as new AppleBezierPath (bezierPathWithCGPath(classptr, Path.CFTypeRef))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 52657472696576657320746865206C696E652D7374726F6B696E67207061747465726E20666F722074686520706174682E0A5468652072657475726E6564204172726179206F6620446F75626C657320697320746865206C656E67746873206F66206C696E657320616E64206761707320696E20796F7572207061747465726E2E205F436F756E745F2074656C6C7320796F75206F6E2072657475726E20746865206E756D626572206F6620446F75626C652076616C7565732E205F50686173655F2049732074686520626567696E6E696E6720706F696E74206F6620746865207061747465726E2E20466F7220612076616C7565206F66203520696E2061207061747465726E206F662032202D2033202D2033202D203420697420776F756C6420626520746865206D6964646C65206F6620746865206669727374206761702E
		Function GetLineDash(byref count as integer, byref phase as double) As double()
		  dim intptr as new MutableMemoryBlock(IntegerSize)
		  dim phaseptr as new MemoryBlock (IntegerSize)
		  dim mb as new MutableMemoryBlock (100 * IntegerSize)
		  dim myPattern() as double 
		  #if Target64Bit
		    Declare sub getLineDash lib UIKitLibName selector "getLineDash:count:phase:" (id as ptr,  pattern as ptr,  count as ptr,  phase as ptr)
		    getLineDash id, mb.data,  intptr.data, phaseptr.Data
		    count = intptr.Int64Value(0)
		    myPattern= mb.fromdoubleCArray (count)
		    phase = phaseptr.doubleValue(0)
		    return myPattern
		  #elseif Target32Bit
		    Declare sub getLineDash lib UIKitLibName selector "getLineDash:count:phase:" (id as ptr,  pattern as ptr,  count as ptr,  phase as ptr)
		    getLineDash id, mb.data,  intptr.data, phaseptr.Data
		    count = intptr.Int32Value(0)
		    myPattern = mb.fromSingleCArray (count)
		    phase = phaseptr.SingleValue(0)
		    return myPattern
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleBezierPath
		  Return if (aptr = nil, nil, new AppleBezierPath(aPtr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 4D6F766573207468652070617468E28099732063757272656E7420706F696E7420746F2074686520737065636966696564206C6F636174696F6E2E20456E6473207468652063757272656E74207375627061746820286966207468657265206973206F6E652920776974686F757420636C6F73696E6720697420616E6420736574732074686520706F74656E7469616C20626567696E6E696E6720706F696E7420666F722061206E6577206F6E652E
		Sub MoveToPoint(Point as FoundationFrameWork.NSPoint)
		  #if Target64Bit
		    Declare Sub moveToPoint lib UIKitLibName selector "moveToPoint:" (id as ptr, Point as FoundationFrameWork.nspoint)
		    moveToPoint (id, point)
		  #elseif Target32Bit
		    Declare Sub moveToPoint lib UIKitLibName selector "moveToPoint:" (id as ptr, Point as FoundationFrameWork.nspoint32Bit)
		    moveToPoint (id, point.toNSPoint32)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 4372656174657320616E642072657475726E732061206E657720554942657A69657250617468206F626A65637420696E697469616C697A6564207769746820616E20617263206F66206120636972636C652E
		Shared Function PathWithArc(ArcCenter as FoundationFrameWork.NSPoint, radius as Double, startAngle as Double, endAngle as Double, optional clockwise as boolean) As AppleBezierPath
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #if Target64Bit
		    declare function bezierPathWithArcCenter lib UIKitLibName selector "bezierPathWithArcCenter:radius:startAngle:endAngle:clockwise:" _
		    (id as ptr, arcCenter as FoundationFrameWork.NSPoint, radius as Double, startAngle as Double, endAngle as Double, clockwise as boolean ) as ptr
		    dim result as new AppleBezierPath (bezierPathWithArcCenter(classptr, ArcCenter, radius, startAngle, endAngle, clockwise))
		  #elseif Target32Bit
		    declare function bezierPathWithArcCenter lib UIKitLibName selector "bezierPathWithArcCenter:radius:startAngle:endAngle:clockwise:" _
		    (id as ptr, arcCenter as FoundationFrameWork.NSPoint32Bit, radius as Single, startAngle as Single, endAngle as Single, clockwise as boolean ) as ptr
		    dim result as new AppleBezierPath (bezierPathWithArcCenter(classptr, arccenter.toNSPoint32, radius, startAngle, endAngle, clockwise))
		  #endif
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 4372656174657320616E642072657475726E732061206E65772042657A69657250617468206F626A65637420696E697469616C697A6564207769746820616E206F76616C207061746820696E7363726962656420696E20746865207370656369666965642072656374616E676C652E
		Shared Function PathWithOval(aRect as FoundationFrameWork.NSRect) As AppleBezierPath
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #if Target64Bit
		    declare function bezierPathWithOvalInRect lib UIKitLibName selector "bezierPathWithOvalInRect:" (id as ptr, aRect as FoundationFrameWork.NSRect) as ptr
		    dim result as new AppleBezierPath (bezierPathWithOvalInRect(classptr, aRect))
		  #elseif Target32Bit
		    declare function bezierPathWithOvalInRect lib UIKitLibName selector "bezierPathWithOvalInRect:" (id as ptr, aRect as FoundationFrameWork.NSRect32Bit) as ptr
		    dim result as new AppleBezierPath (bezierPathWithOvalInRect(classptr, aRect.toNSRect32))
		  #endif
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 4372656174657320616E642072657475726E732061206E65772042657A69657250617468206F626A65637420696E697469616C697A6564207769746820612072656374616E67756C617220706174682E
		Shared Function PathWithRect(aRect as FoundationFrameWork.NSRect) As AppleBezierPath
		  return new AppleBezierPath(aRect)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 4372656174657320616E642072657475726E732061206E65772042657A69657250617468206F626A65637420696E697469616C697A65642077697468206120726F756E6465642072656374616E67756C617220706174682E
		Shared Function PathWithRoundedRect(aRect as FoundationFrameWork.NSRect, CornerRadius As Double) As AppleBezierPath
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #if Target64Bit
		    declare function bezierPathWithRoundedRect lib UIKitLibName selector "bezierPathWithRoundedRect:cornerRadius:" (id as ptr, aRect as FoundationFrameWork.NSRect, radius as double) as ptr
		    dim result as new AppleBezierPath (bezierPathWithRoundedRect(classptr, aRect, CornerRadius))
		  #elseif Target32Bit
		    declare function bezierPathWithRoundedRect lib UIKitLibName selector "bezierPathWithRoundedRect:cornerRadius:" (id as ptr, aRect as FoundationFrameWork.NSRect32Bit, radius as Single) as ptr
		    dim result as new AppleBezierPath (bezierPathWithRoundedRect(classptr, aRect.toNSRect32, CornerRadius))
		  #endif
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 4372656174657320616E642072657475726E732061206E657720554942657A69657250617468206F626A65637420696E697469616C697A6564207769746820612072656374616E67756C61722070617468207768657265207468652073706563696669656420636F726E6572732061726520726F756E6465642E
		Shared Function PathWithRoundedRect(aRect as FoundationFrameWork.NSRect, CornerRadii As FoundationFramework.NSSize, topLeft as boolean, topRight as Boolean, bottomLeft as Boolean, BottomRight as Boolean) As AppleBezierPath
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  
		  dim RectCorner as UInteger = if (topleft, 1, 0)
		  RectCorner = RectCorner and if (topRight, 2, 0)
		  RectCorner = RectCorner and if (bottomLeft, 4, 0)
		  RectCorner = RectCorner and if (BottomRight, 8, 0)
		  
		  #if Target64Bit
		    declare function bezierPathWithRoundedRectbyRoundingCorners lib UIKitLibName selector "bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:" _
		    (id as ptr, aRect as FoundationFrameWork.NSRect, RectCorner as UInteger, radii as FoundationFrameWork.NSSize) as ptr
		    dim result as new AppleBezierPath (bezierPathWithRoundedRectbyRoundingCorners (classptr, aRect, rectcorner, CornerRadii))
		  #elseif Target32Bit
		    declare function bezierPathWithRoundedRectbyRoundingCorners lib UIKitLibName selector "bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:" _
		    (id as ptr, aRect as FoundationFrameWork.NSRect32Bit, RectCorner as UInteger, radii as FoundationFrameWork.NSSize32Bit) as ptr
		    dim result as new AppleBezierPath (bezierPathWithRoundedRectbyRoundingCorners (classptr, aRect.toNSRect32, RectCorner, CornerRadii.toNSSize32))
		  #endif
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 52656D6F76657320616C6C20706F696E74732066726F6D2074686520706174682C206566666563746976656C792064656C6574696E6720616C6C2073756270617468732E
		Sub RemoveAllPoints()
		  Declare Sub removeAllPoints lib UIKitLibName selector "removeAllPoints" (id as ptr)
		  removeAllPoints(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 4372656174657320616E642072657475726E732061206E65772062657A6965722070617468206F626A65637420776974682074686520726576657273656420636F6E74656E7473206F66207468652063757272656E7420706174682E
		Function ReversePath() As AppleBezierPath
		  Declare function bezierPathByReversingPath lib UIKitLibName selector "bezierPathByReversingPath" (id as ptr) as ptr
		  return new AppleBezierPath (bezierPathByReversingPath(id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 5365747320746865206C696E652D7374726F6B696E67207061747465726E20666F722074686520706174682E
		Sub SetLineDash(Pattern() As Double, count as integer = 0, phase as double = 0)
		  #if Target64Bit
		    dim mb as MutableMemoryBlock = MemoryBlockExtension.toDoubleCArray (Pattern)
		    Declare sub setLineDash lib UIKitLibName selector "setLineDash:count:phase:" (id as ptr, pattern as ptr, count as integer, phase as double)
		  #elseif Target32Bit
		    dim mb as MutableMemoryBlock = MemoryBlockExtension.toSingleCArray (Pattern)
		    Declare sub setLineDash lib UIKitLibName selector "setLineDash:count:phase:" (id as ptr, pattern as ptr, count as integer, phase as single)
		  #endif
		  if count = 0 then count = pattern.Ubound+1
		  setLineDash id, mb.Data, count, phase
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 44726177732061206C696E6520616C6F6E67207468652070617468207573696E67207468652063757272656E742064726177696E672070726F706572746965732E2055736566756C20696E73696465204347436F6E746578742E
		Sub Stroke()
		  Declare Sub stroke lib UIKitLibName selector "stroke" (id as ptr)
		  stroke(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 44726177732061206C696E6520616C6F6E67207468652070617468207573696E67207468652073706563696669656420626C656E64206D6F646520616E64207472616E73706172656E63792076616C7565732E2055736566756C20696E73696465204347436F6E746578742E
		Sub StrokeWithBlendMode(blendmode as CoreGraphicsFramework.CGBlendMode, alpha as double = 1)
		  #if Target64Bit
		    Declare Sub strokeWithBlendMode lib UIKitLibName selector "strokeWithBlendMode:alpha:" (id as ptr, blendmode as CoreGraphicsFramework.CGBlendMode, Alpha as double)
		  #elseif Target32Bit
		    Declare Sub strokeWithBlendMode lib UIKitLibName selector "strokeWithBlendMode:alpha:" (id as ptr, blendmode as CoreGraphicsFramework.CGBlendMode, Alpha as single)
		  #endif
		  
		  strokeWithBlendMode id, blendmode, alpha
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Status complete & documented
		iOs 9.2
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 54686520626F756E64696E672072656374616E676C65206F662074686520706174682E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function bounds lib UIKitLibName selector "bounds" (id as ptr) as FoundationFrameWork.NSrect
			    return bounds (id)
			  #elseif Target32Bit
			    Declare function bounds lib UIKitLibName selector "bounds" (id as ptr) as FoundationFrameWork.NSrect32Bit
			    return bounds (id).toNSRect
			  #endif
			End Get
		#tag EndGetter
		Bounds As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 54686520436F726520477261706869637320726570726573656E746174696F6E206F662074686520706174682E0A5365747461626C6520746F6F21
		#tag Getter
			Get
			  Declare function CGPath lib UIKitLibName selector "CGPath" (id as ptr) as ptr
			  return AppleCGPath.MakeFromCFTypeRef (CGpath(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setCGPath lib UIKitLibName selector "setCGPath:" (id as ptr, value as ptr)
			  setCGPath id, value.CFTypeRef
			End Set
		#tag EndSetter
		CGPath As AppleCGPath
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr 
			  if mclassptr = nil then mClassPtr= FoundationFramework.NSClassFromString ("UIBezierPath")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 5468652063757272656E7420706F696E7420696E2074686520677261706869637320706174682E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function currentPoint lib UIKitLibName selector "currentPoint" (id as ptr) as FoundationFrameWork.NSPoint
			    return currentPoint (id)
			  #elseif Target32Bit
			    Declare function currentPoint lib UIKitLibName selector "currentPoint" (id as ptr) as FoundationFrameWork.NSPoint32Bit
			    return currentPoint (id).toNSPoint
			  #endif
			End Get
		#tag EndGetter
		CurrentPoint As FoundationFrameWork.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 576865746865722074686520706174682068617320616E792076616C696420656C656D656E74732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function empty lib UIKitLibName selector "isEmpty" (id as ptr) as Boolean
			  return empty (id)
			End Get
		#tag EndGetter
		Empty As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 54686520666163746F7220746861742064657465726D696E6573207468652072656E646572696E6720616363757261637920666F72206375727665642070617468207365676D656E74732E20546865206C6F776572207468652076616C75652C2074686520686967686572207468652061636375726163792E2044656661756C7420697320302E36
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function flatness lib UIKitLibName selector "flatness" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function flatness lib UIKitLibName selector "flatness" (id as ptr) as Single
			  #endif
			  return flatness (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setFlatness lib UIKitLibName selector "setFlatness:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    Declare Sub setFlatness lib UIKitLibName selector "setFlatness:" (id as ptr, value as Single)
			  #endif
			  setFlatness (id, value)
			End Set
		#tag EndSetter
		Flatness As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 546865207368617065206F66207468652070617468E280997320656E6420706F696E7473207768656E207374726F6B65642E
		#tag Getter
			Get
			  Declare function LineCapStyle lib UIKitLibName selector "lineCapStyle" (id as ptr) as CoreGraphicsFramework.CGLineCap
			  return LineCapStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setLineCapStyle lib UIKitLibName selector "setLineCapStyle:" (id as ptr, value as CoreGraphicsFramework.CGLineCap)
			  setlineCapStyle (id, value)
			End Set
		#tag EndSetter
		LineCapStyle As CoreGraphicsFramework.CGLineCap
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 546865207368617065206F6620746865206A6F696E7473206265747765656E20636F6E6E6563746564207365676D656E7473206F662061207374726F6B656420706174682E
		#tag Getter
			Get
			  Declare function LineJoinStyle lib UIKitLibName selector "lineJoinStyle" (id as ptr) as CoreGraphicsFramework.CGLineJoin
			  return LineJoinStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setLineJoinStyle lib UIKitLibName selector "setLineJoinStyle:" (id as ptr, value as CoreGraphicsFramework.CGLineJoin)
			  setLineJoinStyle (id, value)
			End Set
		#tag EndSetter
		LineJoinStyle As CoreGraphicsFramework.CGLineJoin
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 546865206C696E65207769647468206F662074686520706174682E
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function lineWidth lib UIKitLibName selector "lineWidth" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function lineWidth lib UIKitLibName selector "lineWidth" (id as ptr) as Single
			  #endif
			  return lineWidth (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setLineWidth lib UIKitLibName selector "setLineWidth:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    Declare Sub setLineWidth lib UIKitLibName selector "setLineWidth:" (id as ptr, value as Single)
			  #endif
			  setlinewidth (id, value)
			End Set
		#tag EndSetter
		LineWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 546865206C696D6974696E672076616C756520746861742068656C70732061766F6964207370696B6573206174206A756E6374696F6E73206265747765656E20636F6E6E6563746564206C696E65207365676D656E74732E0A49662074686520726174696F206F6620746865206D69746572206C656E677468E28094746861742069732C2074686520646961676F6E616C206C656E677468206F6620746865206D69746572206A6F696EE28094746F20746865206C696E6520746869636B6E657373206578636565647320746865206D69746572206C696D69742C20746865206A6F696E7420697320636F6E76657274656420746F206120626576656C206A6F696E2E205468652064656661756C74206D69746572206C696D69742069732031302C20776869636820726573756C747320696E2074686520636F6E76657273696F6E206F66206D69746572732077686F736520616E676C6520617420746865206A6F696E74206973206C657373207468616E20313120646567726565732E
		#tag Getter
			Get
			  #if Target64Bit
			    Declare function miterLimit lib UIKitLibName selector "miterLimit" (id as ptr) as Double
			  #elseif Target32Bit
			    Declare function miterLimit lib UIKitLibName selector "miterLimit" (id as ptr) as Single
			  #endif
			  return miterLimit (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #if Target64Bit
			    Declare Sub setMiterLimit lib UIKitLibName selector "setMiterLimit:" (id as ptr, value as Double)
			  #elseif Target32Bit
			    Declare Sub setMiterLimit lib UIKitLibName selector "setMiterLimit:" (id as ptr, value as Single)
			  #endif
			  setMiterLimit (id, value)
			End Set
		#tag EndSetter
		MiterLimit As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 4120426F6F6C65616E20696E6469636174696E67207768657468657220746865206576656E2D6F64642077696E64696E672072756C6520697320696E2075736520666F722064726177696E672070617468732E
		#tag Getter
			Get
			  Declare function usesEvenOddFillRule lib UIKitLibName selector "usesEvenOddFillRule" (id as ptr) as Boolean
			  return usesEvenOddFillRule (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setUsesEvenOddFillRule lib UIKitLibName selector "setUsesEvenOddFillRule:" (id as ptr, value as Boolean)
			  setUsesEvenOddFillRule (id, value)
			End Set
		#tag EndSetter
		UsesEvenOddFill As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = UIRectCorner, Type = UInteger, Flags = &h0
		TopLeft = 1
		  TopRight = 2
		  BottomLeft = 4
		  BottomRight = 8
		AllCorners = 15
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Empty"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Flatness"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineCapStyle"
			Group="Behavior"
			Type="CoreGraphicsFramework.CGLineCap"
			EditorType="Enum"
			#tag EnumValues
				"0 - Butt"
				"1 - Round"
				"2 - Square"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineJoinStyle"
			Group="Behavior"
			Type="CoreGraphicsFramework.CGLineJoin"
			EditorType="Enum"
			#tag EnumValues
				"0 - Miter"
				"1 - Round"
				"2 - Bevel"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineWidth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MiterLimit"
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
			Name="UsesEvenOddFill"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
