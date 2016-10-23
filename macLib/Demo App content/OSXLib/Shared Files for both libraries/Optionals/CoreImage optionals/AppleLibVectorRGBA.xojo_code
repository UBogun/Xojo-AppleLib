#tag Class
Protected Class AppleLibVectorRGBA
Inherits AppleCIVector
	#tag Method, Flags = &h0
		Sub Constructor()
		  Constructor(0,1,0,0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(val0 as double, val1 as double, val2 as double, val3 as double)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIVector
		  // Constructor(X as Double) -- From AppleCIVector
		  // Constructor(X as Double, Y As Double) -- From AppleCIVector
		  // Constructor(X as Double, Y As Double, Z As Double) -- From AppleCIVector
		  // Constructor(X as Double, Y As Double, Z As Double, W As Double) -- From AppleCIVector
		  // Constructor(Point as FoundationFrameWork.NSPoint) -- From AppleCIVector
		  // Constructor(size as FoundationFrameWork.NSSize) -- From AppleCIVector
		  // Constructor(value as AppleCIColor) -- From AppleCIVector
		  // Constructor(Transform  as CGAffineTransform) -- From AppleCIVector
		  // Constructor(StringRep as CFStringref) -- From AppleCIVector
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(val0, val1, val2, val3)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Identity() As AppleLibVectorRGBA
		  return new AppleLibVectorRGBA
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Count"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
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
			Name="StringRepresentation"
			Group="Behavior"
			Type="Text"
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
			Name="W"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="X"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Z"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
