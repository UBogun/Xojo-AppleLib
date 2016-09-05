#tag Class
Protected Class AppleCGPath
Inherits AppleCFObject
	#tag Method, Flags = &h0
		Sub Apply(UserData as Ptr, MethodHandler as Ptr)
		  CGPathApply mcftyperef, UserData, MethodHandler
		  
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathApply Lib CoreGraphicsLibName (CFTypeRef as Ptr, info as ptr, Handler as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathContainsPoint Lib CoreGraphicsLibName (APathRef as Ptr, aTransform as CGAffineTransform, aPoint as FoundationFramework . NSPoint, EvenOddFill as Boolean) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathCreateCopy Lib CoreGraphicsLibName (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathCreateCopyByTransformingPath Lib CoreGraphicsLibName (APathRef as Ptr, aTransform as CGAffineTransform) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathEqualToPath Lib CoreGraphicsLibName (CFTypeRef as Ptr, anotherTypeRef as Ptr) As boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathGetBoundingBox Lib CoreGraphicsLibName (CFTypeRef as Ptr) As FoundationFrameWork.nsrect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathGetCurrentPoint Lib CoreGraphicsLibName (APathRef as Ptr) As FoundationFrameWork.nspoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathGetPathBoundingBox Lib CoreGraphicsLibName (CFTypeRef as Ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathIsEmpty Lib CoreGraphicsLibName (CFTypeRef as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathIsRect Lib CoreGraphicsLibName (APathRef as Ptr, byref aRect as FoundationFramework . NSRect) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGPathRelease Lib CoreGraphicsLibName (CFTypeRef as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathRetain Lib CoreGraphicsLibName (CFTypeRef as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsPoint(aPoint as FoundationFramework.NSPoint, evenoddfill as boolean = true) As Boolean
		  return ContainsPoint (aPoint,  evenoddfill, CoreGraphicsFramework.CGAffineTransformIdentity)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsPoint(aPoint as FoundationFramework.NSPoint, evenoddfill as boolean = true, aTransform as CGAffineTransform) As Boolean
		  return CGPathContainsPoint (mCFTypeRef, aTransform, aPoint, evenoddfill)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Copy() As AppleCGPath
		  dim result as new AppleCGPath (CGPathCreateCopy (CFTypeRef), true)
		  Result.Mhasownership = true
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Copy(aTransform as CGAffineTransform) As AppleCGPath
		  return new AppleCGPath (CGPathCreateCopyByTransformingPath (mCFTypeRef, aTransform), true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Destructor()
		  if not isNIL then
		    if mhasownership then
		      if libdebug then system.DebugLog "Releasing CFObject "+CFTypeDescription+", "+Description+", ARC: "+RetainCount.ToText
		      release
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(anotherPath as AppleCGPath) As boolean
		  return CGPathEqualToPath (mCFTypeRef, anotherPath.CFTypeRef)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsRectangle(ByRef aRect as FoundationFramework.NSRect) As Boolean
		  return CGPathIsRect (mcfTypeRef, aRect)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromCFTypeRef(aCFTypeRef as ptr) As AppleCGPath
		  return if (aCFTypeRef = nil, nil, new AppleCGPath(aCFTypeRef))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MutableCopy() As AppleCGMutablePath
		  return new AppleCGMutablePath(self)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PathApplyTemplate(Info as Ptr, PathElement as CGPathElement)
		  // This is a dummy template for the Apply methods.
		  // With info, you can forward the pointer to some user data you want the method to receive
		  // The PathElement gives you information about the pathelement the method is examining currently.
		  // ElementType tells you about its type and Points is an AppleArray of the points the PathElement contains
		  
		  
		  // Don't forget to remove these pragmas:
		  #pragma Unused info
		  #pragma Unused PathElement
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Release()
		  CGPathRelease (mCFTypeRef)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Retain()
		  mCFTypeRef = CGPathRetain (mCFTypeRef)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGPathGetBoundingBox (mCFTypeRef)
			  
			End Get
		#tag EndGetter
		BoundingBox As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGPathGetCurrentPoint (mCFTypeRef)
			  
			End Get
		#tag EndGetter
		CurrentPoint As FoundationFramework.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGPathIsEmpty (mcftypeRef)
			  
			End Get
		#tag EndGetter
		isEmpty As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim myRect  as FoundationFramework.NSRect
			  return IsRectangle (myrect)
			End Get
		#tag EndGetter
		isRect As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGPathGetPathBoundingBox (mCFTypeRef)
			  
			End Get
		#tag EndGetter
		PathBoundingBox As FoundationFramework.NSRect
	#tag EndComputedProperty


	#tag Structure, Name = CGPathElement, Flags = &h0
		ElementType As CGPathElementType
		Points As Ptr
	#tag EndStructure


	#tag Enum, Name = CGPathElementType, Type = UInt32, Flags = &h0
		MoveToPoint
		  AddLineToPoint
		  AddQuadCurveToPoint
		  AddCurveToPoint
		CloseSubpath
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="CFTypeDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
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
			Name="isEmpty"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isRect"
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
			Type="Boolean"
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
			Type="Integer"
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
			Name="TypeID"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
