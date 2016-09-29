#tag Class
Protected Class iOSLibKeyboardEventDictionary
Inherits AppleDictionary
	#tag Method, Flags = &h0
		Shared Function makefromPtr(aPtr as Ptr) As iOSLibKeyboardEventDictionary
		  return if (aptr = nil, nil, new iOSLibKeyboardEventDictionary(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 54686520616E696D6174696F6E2063757276652077697468207468617420746865206B6579626F6172642077696C6C20626520616E696D6174656420647572696E6720646973706C617920262068696465
		#tag Getter
			Get
			  dim value as applenumber = applenumber.MakefromPtr (me.PtrForKey (kUIKeyboardAnimationCurveUserInfoKey))
			  if value <> nil then return UIKitFramework.UIViewAnimationCurve(value.IntegerValue)
			End Get
		#tag EndGetter
		AnimationCurve As UIKitFramework.UIViewAnimationCurve
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206B6579626F61726420686964652F646973706C617920616E696D6174696F6E2074696D65
		#tag Getter
			Get
			  dim value as applenumber = applenumber.MakefromPtr (me.PtrForKey (kUIKeyboardAnimationDurationUserInfoKey))
			  if value <> nil then return value.DoubleValue
			End Get
		#tag EndGetter
		AnimationDuration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207374617274206672616D65206F6620746865206B6579626F61726420616E696D6174696F6E20696E2073637265656E20636F6F7264696E617465732E2053686F756C6420626520636F6E76657274656420746F2077696E646F77206F72207669657720636F6F7264696E617465732E
		#tag Getter
			Get
			  dim value as AppleValue = AppleValue.MakefromPtr (me.PtrForKey (kUIKeyboardFrameBeginUserInfoKey))
			  if value <> nil then return value.RectValue
			End Get
		#tag EndGetter
		BeginFrame As FoundationFrameWork.nsrect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520656E64206672616D65206F6620746865206B6579626F61726420616E696D6174696F6E20696E2073637265656E20636F6F7264696E617465732E2053686F756C6420626520636F6E76657274656420746F2077696E646F77206F72207669657720636F6F7264696E617465732E
		#tag Getter
			Get
			  dim value as AppleValue = AppleValue.MakefromPtr (me.PtrForKey (kUIKeyboardFrameEndUserInfoKey))
			  if value <> nil then return value.RectValue
			End Get
		#tag EndGetter
		EndFrame As FoundationFrameWork.nsrect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865204B6579626F6172642062656C6F6E677320746F207468652063757272656E74206170702E
		#tag Getter
			Get
			  dim value as applenumber = applenumber.MakefromPtr (me.PtrForKey (kUIKeyboardIsLocalUserInfoKey))
			  if value <> nil then return value.BoolValue
			End Get
		#tag EndGetter
		LocalKeyboard As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = kUIKeyboardAnimationCurveUserInfoKey, Type = Text, Dynamic = False, Default = \"UIKeyboardAnimationCurveUserInfoKey", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kUIKeyboardAnimationDurationUserInfoKey, Type = Text, Dynamic = False, Default = \"UIKeyboardAnimationDurationUserInfoKey", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kUIKeyboardFrameBeginUserInfoKey, Type = Text, Dynamic = False, Default = \"UIKeyboardFrameBeginUserInfoKey", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kUIKeyboardFrameEndUserInfoKey, Type = Text, Dynamic = False, Default = \"UIKeyboardFrameEndUserInfoKey", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kUIKeyboardIsLocalUserInfoKey, Type = Text, Dynamic = False, Default = \"UIKeyboardIsLocalUserInfoKey", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="AnimationCurve"
			Group="Behavior"
			Type="UIKitFramework.UIViewAnimationCurve"
			EditorType="Enum"
			#tag EnumValues
				"0 - EaseInEaseOut"
				"1 - EaseIn"
				"2 - EaseOut"
				"3 - Linear"
				"7 - Keyboard"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AnimationDuration"
			Group="Behavior"
			Type="Double"
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
			Name="LocalKeyboard"
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
