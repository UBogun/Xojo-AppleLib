#tag Class
Protected Class AppleCGPathEllipse
Inherits AppleCGPath
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGPathCreateWithEllipseInRect Lib CoreGraphicsLibName (ARect as FoundationFramework . NSRect) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(radius as double)
		  Constructor (FoundationFrameWork.NSMakeRect (0,0,radius, radius))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ARect as FoundationFramework.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCGPath
		  // Constructor(aTypeRef as Ptr) -- From AppleCFObject
		  Super.Constructor (CGPathCreateWithEllipseInRect(ARect), true)
		  Mhasownership = true
		  
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
