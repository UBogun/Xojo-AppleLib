#tag Class
Protected Class AppleCGPathRoundedRect
Inherits AppleCGPath
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathCreateWithRoundedRect Lib CoreGraphicsLibName (ARect as FoundationFramework . NSRect, CornerWidth as cgfloat, CornerHeight as cgfloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ARect as FoundationFramework.NSRect, CornerWidth as Double, CornerHeight as Double)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCGPath
		  // Constructor(aTypeRef as Ptr) -- From AppleCFObject
		  Super.Constructor (CGPathCreateWithRoundedRect(ARect,CornerWidth, CornerHeight), true)
		  MHasOwnership = true
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
