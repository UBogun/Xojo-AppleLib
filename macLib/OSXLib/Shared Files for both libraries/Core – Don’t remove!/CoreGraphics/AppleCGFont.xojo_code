#tag Class
Protected Class AppleCGFont
Inherits AppleCFObject
	#tag Method, Flags = &h0, Description = 44657465726D696E6573207768657468657220436F72652047726170686963732063616E20637265617465206120737562736574206F662074686520666F6E7420696E20506F737453637269707420666F726D61742E
		Function CanCreatePostScriptSubset(Format as CoreGraphicsFramework.CGFontPostScriptFormat) As Boolean
		  return CGFontCanCreatePostScriptSubset (mcftyperef, format)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontCanCreatePostScriptSubset Lib CoreGraphicsLibName (id as ptr, format as CoreGraphicsFramework . CGFontPostScriptFormat) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontCopyFullName Lib CoreGraphicsLibName (id as ptr) As cfstringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontCopyGlyphNameForGlyph Lib CoreGraphicsLibName (id as ptr, glyph as uint16) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontCopyPostScriptName Lib CoreGraphicsLibName (id as ptr) As cfstringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontCopyTableForTag Lib CoreGraphicsLibName (id as ptr, Ref as uint32) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontCopyTableTags Lib CoreGraphicsLibName (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontCreateCopyWithVariations Lib CoreGraphicsLibName (id as ptr, variations as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontCreateWithFontName Lib CoreGraphicsLibName (fontname as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontGetAscent Lib CoreGraphicsLibName (id as ptr) As Int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontGetCapHeight Lib CoreGraphicsLibName (id as ptr) As Int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontGetDescent Lib CoreGraphicsLibName (id as ptr) As Int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontGetFontBBox Lib CoreGraphicsLibName (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontGetGlyphAdvances Lib CoreGraphicsLibName (id as ptr, glyps as ptr, size as integer, advances as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontGetGlyphBBoxes Lib CoreGraphicsLibName (id as ptr, glyps as ptr, size as integer, boxes as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontGetGlyphWithGlyphName Lib CoreGraphicsLibName (id as ptr, glyps as cfstringref) As Uint16
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontGetItalicAngle Lib CoreGraphicsLibName (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontGetLeading Lib CoreGraphicsLibName (id as ptr) As Int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontGetNumberOfGlyphs Lib CoreGraphicsLibName (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontGetStemV Lib CoreGraphicsLibName (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontGetUnitsPerEm Lib CoreGraphicsLibName (id as ptr) As Int32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGFontGetXHeight Lib CoreGraphicsLibName (id as ptr) As Int32
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

	#tag Method, Flags = &h0, Description = 52657475726E732074686520676C79706820666F7220612073706563696669656420676C797068206E616D65206F66207468652073706563696669656420676C79706820696E2074686520666F6E742E
		Function Glyph(Glyphname as cfstringref) As UInt16
		  return CGFontGetGlyphWithGlyphName (mcftyperef, Glyphname)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520616476616E6365207769647468206F66206561636820676C79706820696E207468652070726F76696465642061727261792E
		Function GlyphAdvances(Glyphs() as Uint16) As Int32()
		  dim ub as integer = Glyphs.Ubound
		  Dim mb As New Xojo.Core.MutableMemoryBlock((ub + 1) * 2)
		  For q As Integer = 0 To ub
		    mb.UInt16Value (q * 2) = Glyphs(q)
		  Next
		  dim result as new Xojo.Core.MutableMemoryBlock((ub + 1) * 4 )
		  Dim success As Boolean = CGFontGetGlyphBBoxes (mcftyperef, mb.Data, ub + 1, result.Data)
		  If success Then
		    Dim resArray() As Int32
		    For q As Integer = 0 To ub
		      resArray.Append result.Int32Value(q * 4)
		    Next
		    return resArray
		  End If
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520626F756E64696E6720626F78206F66206561636820676C79706820696E20616E2061727261792E
		Function GlyphBoxes(Glyphs() as Uint16) As FoundationFrameWork.NSRect()
		  dim ub as integer = Glyphs.Ubound
		  Dim mb As New Xojo.Core.MutableMemoryBlock((ub + 1) * 2)
		  For q As Integer = 0 To ub
		    mb.UInt16Value (q * 2) = Glyphs(q)
		  Next
		  dim result as new Xojo.Core.MutableMemoryBlock((ub + 1) * 4 * IntegerSize)
		  Dim success As Boolean = CGFontGetGlyphBBoxes (mcftyperef, mb.Data, ub + 1, result.Data)
		  If success Then
		    Dim resArray() As FoundationFrameWork.NSRect
		    For q As Integer = 0 To ub
		      Dim part As Xojo.Core.MemoryBlock = result.Mid(q * 4 * IntegerSize, 4 * IntegerSize)
		      resArray.Append part.toNsrect
		    Next
		    return resArray
		  End If
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520676C797068206E616D65206F66207468652073706563696669656420676C79706820696E2074686520666F6E742E
		Function GlyphName(Glyph as uint16) As Text
		  return CGFontCopyGlyphNameForGlyph (mcftyperef, Glyph)
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


	#tag ComputedProperty, Flags = &h0, Description = 54686520617363656E74206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return CGFontGetAscent(mcfTypeRef)
			End Get
		#tag EndGetter
		Ascent As Int32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063617020686569676874206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return CGFontGetCapHeight(mcfTypeRef)
			End Get
		#tag EndGetter
		CapHeight As Int32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064657363656E74206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return CGFontGetDescent(mcfTypeRef)
			End Get
		#tag EndGetter
		Descent As Int32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626F756E64696E6720626F78206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return CGFontGetFontBBox(mcfTypeRef)
			End Get
		#tag EndGetter
		FontBoundingBox As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066756C6C206E616D65206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return CGFontCopyFullName(mcfTypeRef)
			End Get
		#tag EndGetter
		FullName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206974616C696320416E676C65206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return CGFontGetItalicAngle(mcfTypeRef)
			End Get
		#tag EndGetter
		ItalicAngle As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C656164696E67206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return CGFontGetLeading(mcfTypeRef)
			End Get
		#tag EndGetter
		Leading As Int32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620676C797068732074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return CGFontGetNumberOfGlyphs(mcfTypeRef)
			End Get
		#tag EndGetter
		NumberOfGlyphs As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520506F7374536372697074206E616D65206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return CGFontCopyPostScriptName(mcfTypeRef)
			End Get
		#tag EndGetter
		PostScriptName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F662074616773207468617420636F72726573706F6E6420746F2074686520666F6E74207461626C657320666F722074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Return ApplecfArray.MakefromCFTypeRef(CGFontCopyTableTags(mcftyperef), false, true)
			End Get
		#tag EndGetter
		TableTags As Applecfarray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620676C79706820737061636520756E6974732070657220656D20666F722074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return CGFontGetUnitsPerEm(mcfTypeRef)
			End Get
		#tag EndGetter
		UnitsPerEm As Int32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520746869636B6E657373206F662074686520646F6D696E616E7420766572746963616C207374656D73206F6620676C79706873206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return CGFontGetStemV(mcfTypeRef)
			End Get
		#tag EndGetter
		VerticalStemThickness As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520782D686569676874206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return CGFontGetXHeight(mcfTypeRef)
			End Get
		#tag EndGetter
		XHeight As Int32
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Ascent"
			Group="Behavior"
			Type="Int32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CapHeight"
			Group="Behavior"
			Type="Int32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CFTypeDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Descent"
			Group="Behavior"
			Type="Int32"
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
			Name="ItalicAngle"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Leading"
			Group="Behavior"
			Type="Int32"
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
			Name="NumberOfGlyphs"
			Group="Behavior"
			Type="Integer"
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
		#tag ViewProperty
			Name="UnitsPerEm"
			Group="Behavior"
			Type="Int32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalStemThickness"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XHeight"
			Group="Behavior"
			Type="Int32"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
