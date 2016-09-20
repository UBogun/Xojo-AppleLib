#tag Module
Protected Module iOSGraphicsExtension
	#tag Method, Flags = &h0
		Sub AddArc(extends g as iosgraphics, x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As boolean = true)
		  g.CGContext.addarc x , y , radius, startAngle, EndAngle, ClockWise
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddArcToPoint(extends g as iosgraphics, x1 as double, y1 as double, x2 as double, y2 as double, radius as double)
		  g.CGContext.AddArcToPoint x1, y1, x2, y2, radius
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
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

	#tag Method, Flags = &h0
		Sub AddLines(extends g as iosgraphics, points() as xojo.core.point)
		  g.CGContext.Addlines points.toNSPoint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLineToPoint(extends g as iosgraphics, x as double, y as double)
		  g.CGContext.AddLineToPoint x,y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
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

	#tag Method, Flags = &h0
		Sub BeginPath(extends g as iosgraphics)
		  g.CGContext.BeginPath
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BlendMode(extends g as iosgraphics, assigns value as CoreGraphicsFramework. CGBlendmode)
		  g.CGContext.BlendMode = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CGContext(extends g as iOSGraphics) As AppleCGContext
		  return new AppleCGContext(g)
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

	#tag Method, Flags = &h0
		Sub Clip(extends g as iosgraphics)
		  g.CGContext.Clip
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClipBoundingBox(extends g as iOSGraphics) As Xojo.core.rect
		  return g.CGContext.ClipBoundingBox.toCoreRect
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClipEO(extends g as iosgraphics)
		  g.CGContext.ClipEO
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClipToMask(extends g as iosgraphics, Mask as iOSImage)
		  dim pic as AppleImage = mask.toAppleImage
		  g.CGContext.ClipToMask (FoundationFrameWork.NSMakeRect(0,0,pic.Size.width, pic.Size.height), pic.CGImage)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClipToRect(extends g as iosgraphics, x as double, y as double, width as double, height as double)
		  g.CGContext.ClipToRect FoundationFrameWork.NSMakeRect ( x, y, width, height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClipToRect(extends g as iosgraphics, aRect as Xojo.core.rect)
		  g.CGContext.ClipToRect arect.tonsrect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClipToRects(extends g as iosgraphics, Rects() as xojo.core.rect)
		  g.CGContext.ClipToRects rects.tonsrect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClosePath(extends g as iosgraphics)
		  g.CGContext.ClosePath
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
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

	#tag Method, Flags = &h0
		Sub FillPath(extends g as iosgraphics, evenodd as boolean = false)
		  g.CGContext.FillPath evenodd
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
