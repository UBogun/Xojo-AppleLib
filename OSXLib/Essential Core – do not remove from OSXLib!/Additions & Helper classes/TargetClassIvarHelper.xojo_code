#tag Class
Protected Class TargetClassIvarHelper
	#tag Method, Flags = &h0
		Sub Constructor(IvarName as Text,Size as Uinteger, Alignment as Uint8, charCode as Text)
		  self.IvarName = IvarName
		  self.size = size
		  self.Alignment = Alignment
		  self.charCode = charCode
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Alignment As UInt8
	#tag EndProperty

	#tag Property, Flags = &h0
		charCode As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		IvarName As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		size As UInteger
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alignment"
			Group="Behavior"
			Type="UInt8"
		#tag EndViewProperty
		#tag ViewProperty
			Name="charCode"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IvarName"
			Group="Behavior"
			Type="Text"
			EditorType="MultiLineEditor"
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
			Name="size"
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
	#tag EndViewBehavior
End Class
#tag EndClass
