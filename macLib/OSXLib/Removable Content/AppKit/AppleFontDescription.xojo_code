#tag Class
Protected Class AppleFontDescription
Inherits AppleArray
	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleFontDescription
		  return if (aptr = nil, nil, new AppleFontDescription(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Read me
		
		A helper class for faster access to the FontManger.availableMembersofFontFamily method
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5468652070617274206F662074686520666F6E74206E616D65207573656420696E2074686520666F6E742070616E656C2074686174E2809973206E6F742074686520666F6E74206E616D652C20617320616E204E53537472696E67206F626A6563742E20546869732076616C7565206973206E6F74206C6F63616C697A6564E28094666F72206578616D706C652C2022526F6D616E222C20224974616C6963222C206F722022426F6C64222E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return me.TextAtIndex(1)
			End Get
		#tag EndGetter
		FontFace As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520506F737453637269707420666F6E74206E616D652028726561642D6F6E6C79292E
		#tag Getter
			Get
			  return me.TextAtIndex(0)
			End Get
		#tag EndGetter
		PostScriptFontName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F6E74E2809973207472616974732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  dim result as new AppleNumber (me.PtrAtIndex(3))
			  return new AppleFontTraitMask(result.UIntegerValue)
			End Get
		#tag EndGetter
		Traits As AppleFontTraitMask
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F6E74E2809973207765696768742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  dim result as new AppleNumber (me.PtrAtIndex(2))
			  return result.IntegerValue
			End Get
		#tag EndGetter
		Weight As Integer
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Count"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontFace"
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
			Name="PostScriptFontName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
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
			Name="Traits"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Weight"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
