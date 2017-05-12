#tag Module
Protected Module iOSGraphicsExtension
	#tag Method, Flags = &h0, Description = 4164647320616E20617263206F66206120636972636C6520746F207468652063757272656E7420706174682C20706F737369626C792070726563656465642062792061207374726169676874206C696E65207365676D656E74
		Sub AddArc(extends g as iosgraphics, x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As boolean = true)
		  g.CGContext.addarc x , y , radius, startAngle, EndAngle, ClockWise
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4164647320616E20617263206F66206120636972636C6520746F207468652063757272656E7420706174682C207573696E6720612072616469757320616E642074616E67656E7420706F696E74732E
		Sub AddArcToPoint(extends g as iosgraphics, x1 as double, y1 as double, x2 as double, y2 as double, radius as double)
		  g.CGContext.AddArcToPoint x1, y1, x2, y2, radius
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 417070656E647320612063756269632042C3A97A6965722063757276652066726F6D207468652063757272656E7420706F696E742C207573696E67207468652070726F766964656420636F6E74726F6C20706F696E747320616E6420656E6420706F696E74202E
		Sub AddCurveToPoint(extends g as iosgraphics, cp1x as double, cp1y as double, cp2x as double, cp2y as double, x as double, y as double)
		  g.CGContext.AddCurveToPoint cp1x, cp1y, cp2x, cp2y, x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddEllipse(extends g as iosgraphics, x as double, y as double, width as double, height as double)
		  g.CGContext.AddEllipse FoundationFrameWork.NSMakeRect (x,y,width, height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLines(extends g as iosgraphics, paramarray points() as double)
		  dim resultarray() as FoundationFramework.NSPoint
		  for q as uinteger = 0 to points.Ubound-1 step 2
		    resultarray.Append FoundationFrameWork.NSMakePoint (points(q), points(q+1))
		  next
		  
		  g.CGContext.Addlines resultarray
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4164647320612073657175656E6365206F6620636F6E6E65637465642073747261696768742D6C696E65207365676D656E747320746F207468652063757272656E7420706174682E
		Sub AddLines(extends g as iosgraphics, points() as xojo.core.point)
		  g.CGContext.Addlines points.toNSPoint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLineToPoint(extends g as iosgraphics, x as double, y as double)
		  g.CGContext.AddLineToPoint x,y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4164647320612070726576696F75736C7920637265617465642070617468206F626A65637420746F207468652063757272656E74207061746820696E206120677261706869637320636F6E746578742E
		Sub AddPath(extends g as iosgraphics, path as AppleCGPath)
		  g.CGContext.AddPath path
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddQuadCurveToPoint(extends g as iosgraphics, cpx as double, cpy as double, x as double, y as double)
		  g.CGContext.AddQuadCurveToPoint cpx, cpy, x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRect(extends g as iosgraphics, x as double, y as double, width as double, height as double)
		  g.CGContext.Addrect FoundationFrameWork.NSMakeRect ( x, y, width, height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRect(extends g as iosgraphics, aRect as Xojo.core.rect)
		  g.CGContext.Addrect arect.tonsrect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRects(extends g as iosgraphics, Rects() as xojo.core.rect)
		  g.CGContext.AddRects rects.tonsrect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5374617274732061206E6577207061676520696E206120706167652D626173656420677261706869637320636F6E746578742E4120677261706869637320636F6E746578742063616E2068617665206F6E6C7920612073696E676C65207061746820696E2075736520617420616E792074696D652E204966207468652073706563696669656420636F6E7465787420616C726561647920636F6E7461696E7320612063757272656E742070617468207768656E20796F752063616C6C20746869732066756E6374696F6E2C20746865206F6C64207061746820616E6420616E792064617461206173736F6369617465642077697468206974206973206469736361726465642E
		Sub BeginPage(extends g as iOSGraphics)
		  g.CGContext.BeginPage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BeginPath(extends g as iosgraphics)
		  g.CGContext.BeginPath
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 426567696E732061207472616E73706172656E6379206C617965722E0A556E74696C206120636F72726573706F6E64696E672063616C6C20746F204347436F6E74657874456E645472616E73706172656E63794C617965722C20616C6C2073756273657175656E742064726177696E67206F7065726174696F6E7320696E207468652073706563696669656420636F6E746578742061726520636F6D706F736974656420696E746F20612066756C6C79207472616E73706172656E74206261636B64726F7020287768696368206973207472656174656420617320612073657061726174652064657374696E6174696F6E206275666665722066726F6D2074686520636F6E74657874292E0A0A416674657220612063616C6C20746F204347436F6E74657874456E645472616E73706172656E63794C617965722C2074686520726573756C7420697320636F6D706F736974656420696E746F2074686520636F6E74657874207573696E672074686520676C6F62616C20616C70686120616E6420736861646F77207374617465206F662074686520636F6E746578742E2054686973206F7065726174696F6E2072657370656374732074686520636C697070696E6720726567696F6E206F662074686520636F6E746578742E0A0A416674657220612063616C6C20746F20746869732066756E6374696F6E2C20616C6C206F662074686520706172616D657465727320696E207468652067726170686963732073746174652072656D61696E20756E6368616E67656420776974682074686520657863657074696F6E206F662074686520666F6C6C6F77696E673A0A0A54686520676C6F62616C20616C7068612069732073657420746F20312E0A0A54686520736861646F77206973207475726E6564206F66662E0A0A456E64696E6720746865207472616E73706172656E6379206C6179657220726573746F72657320746865736520706172616D657465727320746F2074686569722070726576696F75732076616C7565732E20436F7265204772617068696373206D61696E7461696E732061207472616E73706172656E6379206C6179657220737461636B20666F72206561636820636F6E746578742C20616E64207472616E73706172656E6379206C6179657273206D6179206265206E65737465642E
		Sub BeginTransparencyLayer(extends g as iOSGraphics)
		  g.CGContext.BeginTransparencyLayer(nil)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 426567696E732061207472616E73706172656E6379206C617965722E0A556E74696C206120636F72726573706F6E64696E672063616C6C20746F204347436F6E74657874456E645472616E73706172656E63794C617965722C20616C6C2073756273657175656E742064726177696E67206F7065726174696F6E7320696E207468652073706563696669656420636F6E746578742061726520636F6D706F736974656420696E746F20612066756C6C79207472616E73706172656E74206261636B64726F7020287768696368206973207472656174656420617320612073657061726174652064657374696E6174696F6E206275666665722066726F6D2074686520636F6E74657874292E0A0A416674657220612063616C6C20746F204347436F6E74657874456E645472616E73706172656E63794C617965722C2074686520726573756C7420697320636F6D706F736974656420696E746F2074686520636F6E74657874207573696E672074686520676C6F62616C20616C70686120616E6420736861646F77207374617465206F662074686520636F6E746578742E2054686973206F7065726174696F6E2072657370656374732074686520636C697070696E6720726567696F6E206F662074686520636F6E746578742E0A0A416674657220612063616C6C20746F20746869732066756E6374696F6E2C20616C6C206F662074686520706172616D657465727320696E207468652067726170686963732073746174652072656D61696E20756E6368616E67656420776974682074686520657863657074696F6E206F662074686520666F6C6C6F77696E673A0A0A54686520676C6F62616C20616C7068612069732073657420746F20312E0A0A54686520736861646F77206973207475726E6564206F66662E0A0A456E64696E6720746865207472616E73706172656E6379206C6179657220726573746F72657320746865736520706172616D657465727320746F2074686569722070726576696F75732076616C7565732E20436F7265204772617068696373206D61696E7461696E732061207472616E73706172656E6379206C6179657220737461636B20666F72206561636820636F6E746578742C20616E64207472616E73706172656E6379206C6179657273206D6179206265206E65737465642E
		Sub BeginTransparencyLayer(extends g as iOSGraphics, Rect as xojo.core.rect)
		  g.CGContext.BeginTransparencyLayer(rect.toNSRect, nil)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 486F772073616D706C652076616C7565732061726520636F6D706F7369746564206279206120677261706869637320636F6E746578742E202877726974652D6F6E6C7929
		Sub BlendMode(extends g as iosgraphics, assigns value as CoreGraphicsFramework. CGBlendmode)
		  g.CGContext.BlendMode = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGContext(extends g as iOSGraphics) As AppleCGContext
		  return g.AppleObject
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearRect(extends g as iosgraphics, x as double, y as double, width as double, height as double)
		  g.CGContext.ClearRect  FoundationFrameWork.NSMakeRect ( x, y, width, height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearRect(extends g as iosgraphics, rect as xojo.core.rect)
		  g.CGContext.ClearRect rect.ToNSRect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D6F646966696573207468652063757272656E7420636C697070696E6720706174682C207573696E6720746865206E6F6E7A65726F2077696E64696E67206E756D6265722072756C652E0A5468652066756E6374696F6E207573657320746865206E6F6E7A65726F2077696E64696E67206E756D6265722072756C6520746F2063616C63756C6174652074686520696E74657273656374696F6E206F66207468652063757272656E7420706174682077697468207468652063757272656E7420636C697070696E6720706174682E20546865207061746820726573756C74696E672066726F6D2074686520696E74657273656374696F6E206973207573656420617320746865206E65772063757272656E7420636C697070696E67207061746820666F722073756273657175656E74207061696E74696E67206F7065726174696F6E732E
		Sub Clip(extends g as iosgraphics)
		  g.CGContext.Clip
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520626F756E64696E6720626F78206F662074686520636C697070696E6720706174682E2028726561642D6F6E6C7929
		Function ClipBoundingBox(extends g as iOSGraphics) As Xojo.core.rect
		  return g.CGContext.ClipBoundingBox.toCoreRect
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D6F646966696573207468652063757272656E7420636C697070696E6720706174682C207573696E6720746865206576656E2D6F64642072756C652E
		Sub ClipEO(extends g as iosgraphics)
		  g.CGContext.ClipEO
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D6170732061206D61736B20696E746F20746865207370656369666965642072656374616E676C6520616E6420696E74657273656374732069742077697468207468652063757272656E7420636C697070696E672061726561206F662074686520677261706869637320636F6E746578742E
		Sub ClipToMask(extends g as iosgraphics, Mask as iOSImage)
		  dim pic as AppleImage = mask.toAppleImage
		  g.CGContext.ClipToMask (FoundationFrameWork.NSMakeRect(0,0,pic.Size.width, pic.Size.height), pic.CGImage)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D6170732061206D61736B20696E746F20746865207370656369666965642072656374616E676C6520616E6420696E74657273656374732069742077697468207468652063757272656E7420636C697070696E672061726561206F662074686520677261706869637320636F6E746578742E
		Sub ClipToMask(extends g as iosgraphics, Mask as iOSImage, Rect As xojo.core.rect)
		  dim pic as AppleImage = mask.toAppleImage
		  g.CGContext.ClipToMask (rect.tonsrect, pic.CGImage)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636C697070696E67207061746820746F2074686520696E74657273656374696F6E206F66207468652063757272656E7420636C697070696E672070617468207769746820746865206172656120646566696E656420627920746865207370656369666965642072656374616E676C652E
		Sub ClipToRect(extends g as iosgraphics, x as double, y as double, width as double, height as double)
		  g.CGContext.ClipToRect FoundationFrameWork.NSMakeRect ( x, y, width, height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636C697070696E67207061746820746F2074686520696E74657273656374696F6E206F66207468652063757272656E7420636C697070696E672070617468207769746820746865206172656120646566696E656420627920746865207370656369666965642072656374616E676C652E
		Sub ClipToRect(extends g as iosgraphics, aRect as Xojo.core.rect)
		  g.CGContext.ClipToRect arect.tonsrect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636C697070696E67207061746820746F2074686520696E74657273656374696F6E206F66207468652063757272656E7420636C697070696E67207061746820776974682074686520726567696F6E20646566696E656420627920616E206172726179206F662072656374616E676C65732E
		Sub ClipToRects(extends g as iosgraphics, Rects() as xojo.core.rect)
		  g.CGContext.ClipToRects rects.tonsrect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436C6F73657320616E64207465726D696E61746573207468652063757272656E742070617468E280997320737562706174682E
		Sub ClosePath(extends g as iosgraphics)
		  g.CGContext.ClosePath
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5472616E73666F726D7320746865207573657220636F6F7264696E6174652073797374656D20696E206120636F6E74657874207573696E67206120737065636966696564206D61747269782E4120677261706869637320636F6E746578742063616E2068617665206F6E6C7920612073696E676C65207061746820696E2075736520617420616E792074696D652E204966207468652073706563696669656420636F6E7465787420616C726561647920636F6E7461696E7320612063757272656E742070617468207768656E20796F752063616C6C20746869732066756E6374696F6E2C20746865206F6C64207061746820616E6420616E792064617461206173736F6369617465642077697468206974206973206469736361726465642E
		Sub ConcatenateTransform(extends g as iosgraphics, TRansform as CGAffineTransform)
		  g.CGContext.ConcatenateTransform TRansform
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120706F696E742074686174206973207472616E73666F726D65642066726F6D207573657220737061636520636F6F7264696E6174657320746F2064657669636520737061636520636F6F7264696E617465732E
		Function ConvertPointToDeviceSpace(extends g as iosgraphics, Point AS Xojo.Core.Point) As Xojo.Core.Point
		  return g.CGContext.ConvertPointToDeviceSpace(point.toNSPoint).toCorePoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120706F696E742074686174206973207472616E73666F726D65642066726F6D2064657669636520737061636520636F6F7264696E6174657320746F207573657220737061636520636F6F7264696E617465732E
		Function ConvertPointToUserSpace(extends g as iosgraphics, Point AS Xojo.Core.Point) As Xojo.Core.Point
		  return g.CGContext.ConvertPointToUserSpace(point.toNSPoint).toCorePoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120726563742074686174206973207472616E73666F726D65642066726F6D207573657220737061636520636F6F7264696E6174657320746F2064657669636520737061636520636F6F7264696E617465732E
		Function ConvertRectToDeviceSpace(extends g as iosgraphics, Rect AS xojo.core.rect) As xojo.core.rect
		  return g.CGContext.ConvertRectToDeviceSpace(Rect.toNSRect).toCoreRect
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120726563742074686174206973207472616E73666F726D65642066726F6D2064657669636520737061636520636F6F7264696E6174657320746F207573657220737061636520636F6F7264696E617465732E
		Function ConvertRectToUserSpace(extends g as iosgraphics, Rect AS xojo.core.rect) As xojo.core.rect
		  return g.CGContext.ConvertRectToUserSpace(Rect.toNSRect).toCoreRect
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320612073697A652074686174206973207472616E73666F726D65642066726F6D207573657220737061636520636F6F7264696E6174657320746F2064657669636520737061636520636F6F7264696E617465732E
		Function ConvertSizeToDeviceSpace(extends g as iosgraphics, Size AS xojo.Core.Size) As xojo.Core.Size
		  return g.CGContext.ConvertSizeToDeviceSpace(size.toNSSize).toCoreSize
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320612073697A652074686174206973207472616E73666F726D65642066726F6D2064657669636520737061636520636F6F7264696E6174657320746F207573657220737061636520636F6F7264696E61746573
		Function ConvertSizeToUserSpace(extends g as iosgraphics, Size AS xojo.Core.Size) As xojo.Core.Size
		  return g.CGContext.ConvertSizeToUserSpace(size.toNSSize).toCoreSize
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320612070617468206F626A656374206275696C742066726F6D207468652063757272656E74207061746820696E666F726D6174696F6E20696E206120677261706869637320636F6E746578742E
		Function CopyPath(extends g as iosgraphics) As AppleCGPath
		  return g.CGContext.CopyPath
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentPoint(extends g as iOSGraphics) As xojo.core.point
		  return g.CGContext.CurrentPoint.tocorepoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CurrentPoint(extends g as iOSGraphics, assigns value as xojo.core.point)
		  g.CGContext.CurrentPoint = value.toNSPoint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 447261777320616E20696D61676520696E746F206120677261706869637320636F6E746578742E
		Sub DrawImage(extends g as iosgraphics, image as iOSImage, rect as xojo.core.rect)
		  g.CGContext.DrawImage (image.toAppleImage.CGImage,  rect.toNSrect)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawLinearGradient(extends g as iosgraphics, Colors() As Color, locations() as double, Startx As double, StartY as Double, EndX As Double, EndY as Double, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  g.CGContext.DrawLinearGradient colors, locations, FoundationFrameWork.NSMakePoint (startx, starty), FoundationFrameWork.NSMakePoint (endx, endy), DrawBeforeStart, DrawAfterEnd
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawLinearGradient(extends g as iosgraphics, Colors() As Color, Locations() as double, StartPoint as Xojo.core.point, EndPoint as Xojo.core.point, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  g.CGContext.DrawLinearGradient colors, locations, StartPoint.toNSPoint, endpoint.toNSPoint, DrawBeforeStart, DrawAfterEnd
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawLinearGradient(extends g as iosgraphics, Colors() As Color, Startx As double, StartY as Double, EndX As Double, EndY as Double, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  g.CGContext.DrawLinearGradient colors, FoundationFrameWork.NSMakePoint (startx, starty), FoundationFrameWork.NSMakePoint (endx, endy), DrawBeforeStart, DrawAfterEnd
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawLinearGradient(extends g as iosgraphics, Colors() As Color, StartPoint as Xojo.core.point, EndPoint as Xojo.core.point, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  g.CGContext.DrawLinearGradient colors, StartPoint.toNSPoint, endpoint.toNSPoint, DrawBeforeStart, DrawAfterEnd
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawPath(extends g as iosgraphics, drawingmode as CoreGraphicsFramework.CGPathDrawingMode)
		  g.CGContext.DrawPath drawingmode
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawRadialGradient(extends g as iosgraphics, Colors() As color, Locations() As Double, StartX As Double, StartY as Double, StartRadius As Double, EndX as Double, EndY as Double, EndRadius As Double, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  g.CGContext.DrawRadialGradient colors, locations, FoundationFrameWork.NSMakePoint (startx, starty), StartRadius, FoundationFrameWork.NSMakePoint (endx, endy), endradius, DrawBeforeStart, DrawAfterEnd
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawRadialGradient(extends g as iosgraphics, Colors() As color, Locations() As Double, StartCenter As xojo.core.point, StartRadius As Double, EndCenter As xojo.core.point, EndRadius As Double, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  g.CGContext.DrawRadialGradient colors, locations, Startcenter.toNSPoint, StartRadius, endcenter.toNSPoint, endradius, DrawBeforeStart, DrawAfterEnd
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawRadialGradient(extends g as iosgraphics, Colors() As color, StartX As Double, StartY as Double, StartRadius As Double, EndX as Double, EndY as Double, EndRadius As Double, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  g.CGContext.DrawRadialGradient colors, FoundationFrameWork.NSMakePoint (startx, starty), StartRadius, FoundationFrameWork.NSMakePoint (endx, endy), endradius, DrawBeforeStart, DrawAfterEnd
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawRadialGradient(extends g as iosgraphics, Colors() As color, StartCenter As xojo.core.point, StartRadius As Double, EndCenter As xojo.core.point, EndRadius As Double, DrawBeforeStart As Boolean = false, DrawAfterEnd As Boolean = false)
		  g.CGContext.DrawRadialGradient colors, Startcenter.toNSPoint, StartRadius, endcenter.toNSPoint, endradius, DrawBeforeStart, DrawAfterEnd
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawTiledImage(extends g as iOSGraphics, image as iOSImage, x as double, y as double, width as double, height as double)
		  g.SaveState // saving the current state because the context needs to be flipped for the tiledimage call
		  g.Translate (0, g.Height) // flip it
		  g.Scale (1, -1)
		  g.CGContext.DrawTiledImage FoundationFrameWork.NSMakeRect (x,y,width, height), image.toAppleImage.CGImage
		  g.RestoreState
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawTiledImage(extends g as iOSGraphics, image as iOSImage, TileSize as xojo.core.rect)
		  g.SaveState // saving the current state because the context needs to be flipped for the tiledimage call
		  g.Translate (0, g.Height) // flip it
		  g.Scale (1, -1)
		  g.CGContext.DrawTiledImage TileSize.tonsrect, image.toAppleImage.CGImage
		  g.RestoreState
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E6473207468652063757272656E74207061676520696E206120706167652D626173656420677261706869637320636F6E746578742E
		Sub EndPage(extends g as iOSGraphics)
		  g.CGContext.EndPage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E64732061207472616E73706172656E6379206C617965722E
		Sub EndTransparencyLayer(extends g as iOSGraphics)
		  g.CGContext.EndTransparencyLayer
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5061696E7473207468652061726561206F662074686520656C6C697073652074686174206669747320696E73696465207468652070726F76696465642072656374616E676C652C207573696E67207468652066696C6C20636F6C6F7220696E207468652063757272656E742067726170686963732073746174652E
		Sub FillEllipse(extends g as iosgraphics, Rect as xojo.Core.Rect)
		  g.CGContext.FillEllipse rect.tonsrect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillPath(extends g as iosgraphics, evenodd as boolean = false)
		  g.CGContext.FillPath evenodd
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5061696E747320746865206172656120636F6E7461696E65642077697468696E207468652070726F76696465642072656374616E676C652C207573696E67207468652066696C6C20636F6C6F7220696E207468652063757272656E742067726170686963732073746174652E
		Sub FillRect(extends g as iosgraphics, Rect as xojo.core.rect)
		  g.CGContext.FillRect rect.tonsrect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillRects(extends g as iosgraphics, Rects() as xojo.core.rect)
		  g.CGContext.fillrects rects.tonsrect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Flatness(extends g as iOSGraphics, assigns value as Double)
		  g.CGContext.Flatness = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Flush(extends g as iosgraphics)
		  g.CGContext.Flush
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FontSmoothing(extends g as iOSGraphics, assigns value as boolean)
		  g.CGContext.FontSmoothing = value
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FontSubpixelPositioning(extends g as iOSGraphics, assigns value as boolean)
		  g.CGContext.FontSubpixelPositioning = value
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FontSubpixelQuantization(extends g as iOSGraphics, assigns value as boolean)
		  g.CGContext.FontSubpixelQuantization = value
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InterpolationQuality(extends g as iOSGraphics) As CoreGraphicsFramework.CGInterpolationQuality
		  return g.CGContext.InterpolationQuality
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InterpolationQuality(extends g as iOSGraphics, assigns value as CoreGraphicsFramework.CGInterpolationQuality)
		  g.CGContext.InterpolationQuality = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Invalidate(extends g as iosgraphics)
		  g.CGContext.Synchronize
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LineCap(extends g as iosgraphics) As CoreGraphicsFramework.CGLineCap
		  return g.LineCap
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LineCap(extends g as iosgraphics, assigns value as CoreGraphicsFramework.CGLineCap)
		  g.LineCap = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207061747465726E20666F7220646173686564206C696E657320696E206120677261706869637320636F6E746578742E
		Sub LineDash(extends g as iosgraphics, Phase As Double, count as UInteger = 0, assigns Lengths() As double)
		  g.CGContext.LineDash (Phase, count) = Lengths.toAppleArray
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LineJoin(extends g as iOSGraphics, assigns value as CoreGraphicsFramework.CGLineJoin)
		  g.CGContext.LineJoin = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MiterLimit(extends g as iOSGraphics, assigns value as double)
		  g.CGContext.MiterLimit = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveToPoint(extends g as iosgraphics, x as double, y as double)
		  g.CGContext.MoveToPoint x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PathBoundingBox(extends g as iOSGraphics) As Xojo.core.rect
		  return g.CGContext.PathBoundingBox.toCoreRect
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PathContainsPoint(extends g as iosgraphics, x as double, y as double, mode as CoreGraphicsFramework.CGPathDrawingMode = CoreGraphicsFramework.CGPathDrawingMode.Fill) As Boolean
		  return g.CGContext.PathContainsPoint (FoundationFrameWork.NSMakePoint(x,y), mode)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PathContainsPoint(extends g as iosgraphics, point as xojo.core.point, mode as CoreGraphicsFramework.CGPathDrawingMode = CoreGraphicsFramework.CGPathDrawingMode.Fill) As Boolean
		  return g.CGContext.PathContainsPoint (point.toNSPoint, mode)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveShadow(extends g as iosgraphics)
		  g.CGContext.RemoveShadow
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReplacePathWithStrokedPath(extends g as iosgraphics)
		  g.CGContext.ReplacePathWithStrokedPath
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526F746174657320746865207573657220636F6F7264696E6174652073797374656D20696E206120636F6E746578742E
		Sub Rotate(extends g as iosgraphics, Radians As Double)
		  g.CGContext.Rotate Radians
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E67657320746865207363616C65206F6620746865207573657220636F6F7264696E6174652073797374656D20696E206120636F6E746578742E
		Sub Scale(extends g as iosgraphics, XScale As Double, YSCale As Double = 0)
		  g.CGContext.Scale XScale, YSCale
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652063757272656E742066696C6C20636F6C6F7220746F20612076616C756520696E2074686520446576696365434D594B20636F6C6F722073706163652E
		Sub SetFillColorCMYK(extends g as iosgraphics, Cyan As Double, Magenta As Double, Yellow As Double, Black As Double, Alpha As Double)
		  g.CGContext.SetFillColor Cyan, Magenta, Yellow, black, Alpha
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652063757272656E742066696C6C20636F6C6F7220746F20612076616C756520696E20746865206772617920636F6C6F722073706163652E
		Sub SetFillColorGray(extends g as iosgraphics, Gray As Double, Alpha As Double)
		  g.CGContext.SetFillColor Gray, Alpha
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetShadow(extends g as iosgraphics, XOffset as Double, YOffset as double, Blur as double)
		  g.CGContext.SetShadow XOffset, YOffset, Blur
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetShadow(extends g as iosgraphics, XOffset as Double, YOffset as double, Blur as double, ShadowColor as Color)
		  g.CGContext.SetShadow XOffset, YOffset, Blur, ShadowColor.toapplecgcolor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StrokeLines(extends g as iosgraphics, paramarray points() as double)
		  dim resultarray() as FoundationFramework.NSPoint
		  for q as uinteger = 0 to points.Ubound-1 step 2
		    resultarray.Append FoundationFrameWork.NSMakePoint (points(q), points(q+1))
		  next
		  
		  g.CGContext.StrokeLines resultarray
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StrokeLines(extends g as iosgraphics, points() as xojo.core.point)
		  g.CGContext.StrokeLines points.toNSPoint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StrokePath(extends g as iosgraphics)
		  g.CGContext.StrokePath
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StrokeRect(extends g as iosgraphics, x as double, y as double, width as double, height as double, LineWidth As Double)
		  g.CGContext.StrokeRect FoundationFrameWork.NSMakeRect ( x, y, width, height), LineWidth
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StrokeRect(extends g as iosgraphics, aRect as xojo.core.rect, LineWidth As Double)
		  g.CGContext.StrokeRect aRect.tonsrect, LineWidth
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TextDrawingMode(extends g as iOSGraphics, assigns value as CoreGraphicsFramework.CGTextDrawingMode)
		  g.CGContext.TextDrawingMode = value
		End Sub
	#tag EndMethod


	#tag ViewBehavior
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
End Module
#tag EndModule
