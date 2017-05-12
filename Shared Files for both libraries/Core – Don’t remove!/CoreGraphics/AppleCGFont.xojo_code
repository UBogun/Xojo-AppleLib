#tag Class
Protected Class AppleCGFont
Inherits AppleCFObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontCopyFullName Lib CoreGraphicsLibName (id as ptr) As cfstringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontCopyPostScriptName Lib CoreGraphicsLibName (id as ptr) As cfstringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontCreateCopyWithVariations Lib CoreGraphicsLibName (id as ptr, variations as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontCreateWithFontName Lib CoreGraphicsLibName (fontname as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CGFontRelease Lib CoreGraphicsLibName (id as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontRetain Lib CoreGraphicsLibName (id as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120666F6E74206F626A65637420636F72726573706F6E64696E6720746F2074686520666F6E7420737065636966696564206279206120506F7374536372697074206F722066756C6C206E616D652E
		Sub Constructor(FontName As CFStringRef)
		  // Calling the overridden superclass constructor.
		  Super.Constructor(CGFontCreateWithFontName(FontName), true, true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120636F7079206F66206120666F6E74207573696E67206120766172696174696F6E2073706563696669636174696F6E2064696374696F6E6172792E
		Function CopyWithVariations(Variations As AppleDictionary) As AppleCGFont
		  Dim result As New AppleCGFont(CGFontCreateCopyWithVariations(mcftyperef, Variations.id))
		  result.MHasOwnership = True
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Release()
		  CGFontRelease mCFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Retain()
		  mCFTypeRef = CGFontRetain (mCFTypeRef)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 5468652066756C6C206E616D65206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return CGFontCopyFullName(mcfTypeRef)
			End Get
		#tag EndGetter
		FullName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520506F7374536372697074206E616D65206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return CGFontCopyPostScriptName(mcfTypeRef)
			End Get
		#tag EndGetter
		PostScriptName As Text
	#tag EndComputedProperty


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
			Name="FullName"
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
			Name="isNIL"
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
			Name="PostScriptName"
			Group="Behavior"
			Type="Text"
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
