#tag Class
Protected Class ApplePress
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getPhase Lib uikitlibname Selector "phase" (id as ptr) As UIPressPhase
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getResponder Lib uikitlibname Selector "responder" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getType Lib uikitlibname Selector "type" (id as ptr) As UIPressType
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getWindow Lib uikitlibname Selector "window" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Shared Function MakeFromPtr(aPtr as Ptr) As ApplePress
		  return if (aptr = nil, nil, new applepress (aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status completed & documented
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return classptr <> nil
			End Get
		#tag EndGetter
		Shared ClassAvailable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIPress")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F726365206F662074686520627574746F6E2070726573732E2028726561642D6F6E6C792E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector ("force", classptr) then return uikitframework.getForce (id)
			End Get
		#tag EndGetter
		Force As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652067657374757265207265636F676E697A65727320746861742061726520726563656976696E67207468652070726573732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (UIKitFramework.getgestureRecognizers(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setGestureRecognizers id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		GestureRecognizers As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207068617365206F6620746865207370656369666965642070726573732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getphase (id)
			End Get
		#tag EndGetter
		Phase As UIPressPhase
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546869732070726F70657274792069732061205549526573706F6E646572206F626A65637420746861742065697468657220697320666F6375736564206F72206973207468652069734669727374526573706F6E646572206F626A65637420696E207468652077696E646F77207768656E2055494170706C69636174696F6E206F726967696E616C6C79206469737061746368656420746865207072657373206576656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleResponder.MakeFromPtr (getResponder(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setGestureRecognizers id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Responder As AppleResponder
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D65207768656E20746865207072657373206F63637572726564206F72207768656E20697420776173206C617374206D7574617465642E2028726561642D6F6E6C79292E205265666572656E63652069732073797374656D7374617274757074696D652E
		#tag Getter
			Get
			  return UIKitFramework.getTimeStamp (id)
			End Get
		#tag EndGetter
		Timestamp As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074797065206F6620746865207370656369666965642070726573732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return GetType (id)
			End Get
		#tag EndGetter
		Type As UIPresstype
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652077696E646F7720696E2077686963682074686520707265737320696E697469616C6C79206F636375727265642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return applewindow.MakeFromPtr (getWindow(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setGestureRecognizers id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Window As AppleWindow
	#tag EndComputedProperty


	#tag Enum, Name = UIPressPhase, Type = Integer, Flags = &h0
		Began
		  Changed
		  Stationary
		  Ended
		Cancelled
	#tag EndEnum

	#tag Enum, Name = UIPressType, Type = Integer, Flags = &h0
		UpArrow
		  DownArrow
		  LeftArrow
		  RightArrow
		  SelectKey
		  Menu
		PlayPause
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Force"
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Phase"
			Group="Behavior"
			Type="UIPressPhase"
			EditorType="Enum"
			#tag EnumValues
				"0 - Began"
				"1 - Changed"
				"2 - Stationary"
				"3 - Ended"
				"4 - Cancelled"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Timestamp"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Type"
			Group="Behavior"
			Type="UIPresstype"
			EditorType="Enum"
			#tag EnumValues
				"0 - UpArrow"
				"1 - DownArrow"
				"2 - LeftArrow"
				"3 - RightArrow"
				"4 - SelectKey"
				"5 - Menu"
				"6 - PlayPause"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
