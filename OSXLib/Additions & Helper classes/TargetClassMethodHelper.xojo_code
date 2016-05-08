#tag Class
Protected Class TargetClassMethodHelper
	#tag Method, Flags = &h0
		Sub Constructor(selName as Text, impl as ptr, charCode as Text, ReplaceMethod as Boolean = false, classmethod as boolean = false)
		  self.selName = selName
		  self.impl = impl
		  self.charCode = charCode
		  self.ReplaceMethod = ReplaceMethod
		  self.ClassMethod = classmethod
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		charCode As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		ClassMethod As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		impl As Ptr
	#tag EndProperty

	#tag Property, Flags = &h0
		ReplaceMethod As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		selName As Text
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="charCode"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClassMethod"
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
			Name="ReplaceMethod"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="selName"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
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
