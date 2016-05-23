#tag Class
Protected Class AppleCGMutablePath
Inherits AppleCGPath
	#tag Method, Flags = &h0, Description = 417070656E647320616E2061726320746F2061206D757461626C6520677261706869637320706174682C20706F737369626C792070726563656465642062792061207374726169676874206C696E65207365676D656E742E
		Sub AddArc(x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As Boolean)
		  'AddArc  x, y, radius, startAngle, EndAngle, ClockWise, CGAffineTransformIdentity
		  CGPathAddArc mCFTypeRef, CoreGraphicsFramework.CGAffineTransformIdentity, x, y, radius, startAngle, EndAngle, ClockWise
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 417070656E647320616E2061726320746F2061206D757461626C6520677261706869637320706174682C20706F737369626C792070726563656465642062792061207374726169676874206C696E65207365676D656E742C2061706C6C79696E672061207472616E73666F726D6174696F6E206265666F726520616464696E672074686520706174682E
		Sub AddArc(x as double, y as double, radius as double, startAngle as Double, EndAngle As Double, ClockWise As Boolean, aTransform as CGAffineTransform)
		  CGPathAddArc mCFTypeRef, aTransform, x, y, radius, startAngle, EndAngle, ClockWise
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddArcToPoint(x1 as double, y1 as double, x2 as double, y2 as double, radius as double)
		  AddArcToPoint x1, y1, x2, y2, radius, CoreGraphicsFramework.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddArcToPoint(x1 as double, y1 as double, x2 as double, y2 as double, radius as double, aTransform as CGAffineTransform)
		  CGPathAddArcToPoint mCFTypeRef, aTransform, x1, y1, x2, y2, radius
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddCurvetoPoint(cp1x as double, cp1y as double, cp2x as double, cp2y as double, x as double, y as double)
		  AddCurvetoPoint cp1x, cp1y, cp2x, cp2y, x, y, CoreGraphicsFramework.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddCurvetoPoint(cp1x as double, cp1y as double, cp2x as double, cp2y as double, x as double, y as double, aTransform as CGAffineTransform)
		  CGPathAddCurveToPoint mCFTypeRef, aTransform, cp1x, cp1y, cp2x, cp2y, x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddEllipse(aRect as FoundationFramework.NSRect)
		  AddEllipse arect, CoreGraphicsFramework.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddEllipse(aRect as FoundationFramework.NSRect, aTransform as CGAffineTransform)
		  CGPathAddEllipseInRect mCFTypeRef, aTransform, arect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLines(Points As AppleArray, Count As UInteger = 0)
		  AddLines  Points, count, CoreGraphicsFramework.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLines(Points As AppleArray, Count As UInteger = 0, Transform As CGAffineTransform)
		  if count = 0 then count = points.Count/2
		  CGPathAddLines mcftyperef,  Transform, Points.id, count
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLineToPoint(x as double, y as double)
		  AddLineToPoint  x, y, CoreGraphicsFramework.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLineToPoint(x as double, y as double, atransform as CGAffineTransform)
		  CGPathAddLineToPoint mCFTypeRef, atransform, x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddPath(aPath as AppleCGPath)
		  AddPath apath, CoreGraphicsFramework.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddPath(aPath as AppleCGPath, atransform as CGAffineTransform)
		  CGPathAddPath mcftYpeRef, atransform, aPath.mCFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddQuadCurvetoPoint(cpx as double, cpy as double, x as double, y as double)
		  AddQuadCurveToPoint  cpx, cpy,  x, y, CoreGraphicsFramework.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddQuadCurvetoPoint(cpx as double, cpy as double, x as double, y as double, aTransform as CGAffineTransform)
		  CGPathAddQuadCurveToPoint mCFTypeRef, aTransform, cpx, cpy,  x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRect(aRect as FoundationFramework.NSRect)
		  addrect arect, CoreGraphicsFramework.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRect(aRect as FoundationFramework.NSRect, aTransform as CGAffineTransform)
		  CGPathAddRect mCFTypeRef, aTransform, arect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRects(Rects As AppleArray, Count As UInteger = 0)
		  AddRects  Rects, count, CoreGraphicsFramework.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRects(Rects As AppleArray, Count As UInteger = 0, Transform As CGAffineTransform)
		  if count = 0 then count = rects.Count/2
		  CGPathAddRects mcftyperef,  Transform, Rects.id, count
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRelativeArc(x as double, y as double, radius as double, startAngle as Double, Delta as Double)
		  AddRelativeArc  x, y, radius, startAngle, delta,  CoreGraphicsFramework.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRelativeArc(x as double, y as double, radius as double, startAngle as Double, Delta as Double, atransform as CGAffineTransform)
		  CGPathAddRelativeArc mCFTypeRef, atransform, x, y, radius, startAngle, Delta
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRoundedRect(aRect as FoundationFramework.NSRect, CornerWidth as Double, CornerHeight as Double)
		  AddRoundedRect arect, CornerWidth, CornerHeight, CoreGraphicsFramework.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRoundedRect(aRect as FoundationFramework.NSRect, CornerWidth as Double, CornerHeight as Double, aTransform as CGAffineTransform)
		  CGPathAddRoundedRect mCFTypeRef, aTransform, arect, CornerWidth, CornerHeight
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathAddArc Lib CoreGraphicsLibName (APathRef as Ptr, aTransform as CGAffineTransform, x as cgfloat, y as cgfloat, radius as cgfloat, startAngle as cgfloat, EndAngle As cgfloat, ClockWise As Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathAddArcToPoint Lib CoreGraphicsLibName (APathRef as Ptr, aTransform as CGAffineTransform, x1 as CGFloat, y1 as CGFloat, x2 as CGFloat, y2 as CGFloat, radius as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathAddCurveToPoint Lib CoreGraphicsLibName (APathRef as Ptr, aTransform as CGAffineTransform, cp1x as CGFloat, cp1y as CGFloat, cp2x as CGFloat, cp2y as CGFloat, x as CGFloat, y as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathAddEllipseInRect Lib CoreGraphicsLibName (APathRef as Ptr, aTransform as CGAffineTransform, aRect as FoundationFramework . NSRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathAddLines Lib CoreGraphicsLibName (APathRef as Ptr, aTransform as CGAffineTransform, PointArray as Ptr, Count As UInteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathAddLineToPoint Lib CoreGraphicsLibName (APathRef as Ptr, aTransform as CGAffineTransform, x as CGFloat, y as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathAddPath Lib CoreGraphicsLibName (APathRef as Ptr, aTransform as CGAffineTransform, anotherPathRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathAddQuadCurveToPoint Lib CoreGraphicsLibName (APathRef as Ptr, aTransform as CGAffineTransform, cpx as CGFloat, cpy as CGFloat, x as CGFloat, y as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathAddRect Lib CoreGraphicsLibName (APathRef as Ptr, aTransform as CGAffineTransform, aRect as FoundationFramework . NSRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathAddRects Lib CoreGraphicsLibName (APathRef as Ptr, aTransform as CGAffineTransform, RectArray as Ptr, Count As UInteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathAddRelativeArc Lib CoreGraphicsLibName (APathRef as Ptr, aTransform as CGAffineTransform, x as CGFloat, y as CGFloat, radius as CGFloat, startAngle as CGFloat, delta as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathAddRoundedRect Lib CoreGraphicsLibName (APathRef as Ptr, aTransform as CGAffineTransform, aRect as FoundationFramework . NSRect, cornerWidth as CGFloat, CornerHeight as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathCloseSubpath Lib CoreGraphicsLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathCreateMutable Lib CoreGraphicsLibName () As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathCreateMutableCopy Lib CoreGraphicsLibName (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathCreateMutableCopyByTransformingPath Lib CoreGraphicsLibName (APathRef as Ptr, aTransform as CGAffineTransform) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathMoveToPoint Lib CoreGraphicsLibName (APathRef as Ptr, aTransform as CGAffineTransform, x as CGFloat, y as CGFloat)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub CloseSubpath()
		  CGPathCloseSubpath mCFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor (CGPathCreateMutable, true)
		  MHasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Path as AppleCGPath)
		  // Calling the overridden superclass constructor.
		  Super.Constructor (CGPathCreateMutableCopy (path.cftyperef), true)
		  MHasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Copy(aTransform as CGAffineTransform) As AppleCGMutablePath
		  dim result as new AppleCGMutablePath (CGPathCreateMutableCopyByTransformingPath (CFTypeRef, aTransform), true)
		  Result.Mhasownership = true
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveToPoint(x as double, y as double)
		  MoveToPoint  x, y, CoreGraphicsFramework.CGAffineTransformIdentity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveToPoint(x as double, y as double, aTransform as CGAffineTransform)
		  CGPathMoveToPoint mcftypeRef, aTransform,  x, y
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
End Class
#tag EndClass
