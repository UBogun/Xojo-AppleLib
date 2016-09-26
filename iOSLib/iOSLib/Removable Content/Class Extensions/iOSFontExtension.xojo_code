#tag Module
Protected Module iOSFontExtension
	#tag Method, Flags = &h0
		Function FontFamilies() As Text()
		  return AppleFont.FamilyNames.toTextArray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FontsInFamily(Family as Text) As Text()
		  return AppleFont.FontNamesForFamilyName(Family).toTextArray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toAppleFont(extends f as iOSFont) As applefont
		  return AppleFont.FromiOSFont (f)
		End Function
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
