#tag Class
Protected Class AppleTouch
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 52657475726E732074686520617A696D75746820616E676C652028696E2072616469616E7329206F6620746865207374796C75732E
		Function AzimuthAngleInView(aView as AppleView) As double
		  if RespondsToSelector ("azimuthAngleInView:", classptr) then
		    Declare Function azimuthAngleInView lib UIKitLibname selector "azimuthAngleInView:" (id as ptr, view as ptr) as cgfloat
		    return azimuthAngleInView(id, aview.id)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120756E697420766563746F72207468617420706F696E747320696E2074686520646972656374696F6E206F662074686520617A696D757468206F6620746865207374796C75732E2E20417661696C61626C652073696E636520694F5320392E312E
		Function AzimuthUnitVectorInView(aView as AppleView) As FoundationFramework.cgvector
		  if RespondsToSelector ("azimuthUnitVectorInView:", classptr) then
		    Declare Function azimuthUnitVectorInView lib UIKitLibname selector "azimuthUnitVectorInView:" (id as ptr, view as ptr) as FoundationFramework.cgvector
		    return azimuthUnitVectorInView (id, aview.id)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function getaltitudeAngle Lib uikitlibname Selector "altitudeAngle" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getmajorRadius Lib uikitlibname Selector "majorRadius" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getmajorRadiusTolerance Lib uikitlibname Selector "majorRadiusTolerance" (id as ptr) As cgfloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target64Bit)) or  (TargetWeb and (Target64Bit)) or  (TargetDesktop and (Target64Bit)) or  (TargetIOS and (Target64Bit))
		Attributes( hidden ) Private Declare Function getmaximumPossibleForce Lib uikitlibname Selector "maximumPossibleForce" (id as ptr) As double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit)) or  (TargetWeb and (Target32Bit)) or  (TargetDesktop and (Target32Bit)) or  (TargetIOS and (Target32Bit))
		Attributes( hidden ) Private Declare Function getmaximumPossibleForce Lib uikitlibname Selector "maximumPossibleForce" (id as ptr) As single
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652063757272656E74206C6F636174696F6E206F662074686520726563656976657220696E2074686520636F6F7264696E6174652073797374656D206F662074686520676976656E20766965772E
		Function LocationInView(aView as AppleView) As FoundationFramework.NSPoint
		  return UIKitFramework.getlocationInView (mid, aview.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleTouch
		  return if (aPtr = nil, nil, new AppleTouch(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320612070726563697365206C6F636174696F6E20666F722074686520746F7563682C207768656E20617661696C61626C652E20417661696C61626C652073696E636520694F5320392E312E
		Function PreciseLocationInView(aView as AppleView) As FoundationFramework.NSPoint
		  return UIKitFramework.getpreciseLocationInView (mid, aview.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120707265636973652070726576696F7573206C6F636174696F6E20666F722074686520746F7563682C207768656E20617661696C61626C652E20417661696C61626C652073696E636520694F5320392E312E
		Function PrecisePreviousLocationInView(aView as AppleView) As FoundationFramework.NSPoint
		  return UIKitFramework.getprecisePreviousLocationInView (mid, aview.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652070726576696F7573206C6F636174696F6E206F662074686520726563656976657220696E2074686520636F6F7264696E6174652073797374656D206F662074686520676976656E20766965772E
		Function PreviousLocationInView(aView as AppleView) As FoundationFramework.NSPoint
		  return UIKitFramework.getpreviousLocationInView (mid, aview.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function SetToCoreArray(touches as AppleSet) As appletouch()
		  dim result() as AppleTouch
		  if  touches <> nil then
		    for q as Integer = 1 to touches.Count
		      result.Append new appletouch(touches.AllObjects.PtrAtIndex(q-1))
		    next
		  end if
		  return result
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete & documented
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520616C7469747564652028696E2072616469616E7329206F6620746865207374796C75732E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E312E
		#tag Getter
			Get
			  if RespondsToSelector( "altitudeAngle", Classptr) then return getaltitudeAngle (id)
			End Get
		#tag EndGetter
		AltitudeAngle As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UITouch")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120736574206F6620746F7563682070726F7065727469657320746861742077696C6C2067657420757064617465642E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E312E
		#tag Getter
			Get
			  if RespondsToSelector( "estimatedProperties", classptr) then
			    declare Function estimatedProperties lib UIKitLibName selector "estimatedProperties" (id as ptr) as uinteger
			    return new AppleTouchProperties(estimatedProperties(id))
			  end if
			End Get
		#tag EndGetter
		EstimatedProperties As AppleTouchProperties
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120736574206F6620746F7563682070726F7065727469657320746861742065787065637420746F206861766520696E636F6D696E67207570646174657320696E20746865206675747572652E
		#tag Getter
			Get
			  if RespondsToSelector("estimatedPropertiesExpectingUpdates", classptr) then
			    declare Function estimatedPropertiesExpectingUpdates lib UIKitLibName selector "estimatedPropertiesExpectingUpdates" (id as ptr) as uinteger
			    return new AppleTouchProperties(estimatedPropertiesExpectingUpdates(id))
			  end if
			End Get
		#tag EndGetter
		EstimatedPropertiesExpectingUpdates As AppleTouchProperties
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20696E646578206E756D6265722074686174206C65747320796F7520636F7272656C61746520616E207570646174656420746F756368207769746820746865206F726967696E616C20746F7563682E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E312E
		#tag Getter
			Get
			  if RespondsToSelector( "estimationUpdateIndex", classptr) then
			    declare Function estimationUpdateIndex lib UIKitLibName selector "estimationUpdateIndex" (id as ptr) as ptr
			    dim mynumber as AppleNumber = applenumber.MakefromPtr(estimationUpdateIndex(id))
			    if mynumber <> nil then return mynumber.UIntegerValue
			  end if
			End Get
		#tag EndGetter
		EstimationUpdateIndex As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F726365206F662074686520627574746F6E2070726573732E2028726561642D6F6E6C792E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector ("force", classptr) then
			    Return UIKitFramework.getForce (mid)
			  end if
			End Get
		#tag EndGetter
		Force As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652067657374757265207265636F676E697A65727320746861742061726520726563656976696E672074686520746F756368206F626A6563742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (UIKitFramework.getgestureRecognizers(id))
			End Get
		#tag EndGetter
		GestureRecognizers As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207261646975732028696E20706F696E747329206F662074686520746F7563682E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getmajorRadius (mid)
			  
			End Get
		#tag EndGetter
		MajorRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520746F6C6572616E63652028696E20706F696E747329206F662074686520746F756368E2809973207261646975732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getmajorRadiusTolerance (mid)
			  
			End Get
		#tag EndGetter
		MajorRadiusTolerance As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D20706F737369626C6520666F72636520666F72206120746F7563682E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F5320392E302E
		#tag Getter
			Get
			  if RespondsToSelector( "maximumPossibleForce", classptr) then return getmaximumPossibleForce(id)
			End Get
		#tag EndGetter
		MaximumPossibleForce As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074797065206F662074686520746F7563682E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F7320392E302E
		#tag Getter
			Get
			  Declare function phase lib UIKitLibName selector "phase" (id as ptr) as UITouchPhase
			  return phase(id)
			  
			End Get
		#tag EndGetter
		Phase As UITouchPhase
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function tapCount lib UIKitLibname selector "tapCount" (id as ptr) as UInteger
			  return tapCount (id)
			  
			End Get
		#tag EndGetter
		TapCount As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D65207768656E20746865207072657373206F63637572726564206F72207768656E20697420776173206C617374206D7574617465642E2028726561642D6F6E6C79292E205265666572656E63652069732073797374656D7374617274757074696D652E
		#tag Getter
			Get
			  return UIKitFramework.getTimeStamp (id)
			End Get
		#tag EndGetter
		Timestamp As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074797065206F662074686520746F7563682E2028726561642D6F6E6C79292E20417661696C61626C652073696E636520694F7320392E302E
		#tag Getter
			Get
			  if RespondsToSelector ("type", classptr) then
			    Declare function type lib UIKitLibName selector "type" (id as ptr) as UITouchType
			    return type(id)
			  end if
			End Get
		#tag EndGetter
		TouchType As UITouchType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207669657720746F20776869636820746F756368657320617265206265696E672064656C6976657265642C20696620616E792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleView.MakeFromPtr(UIKitFramework.getview(mid))
			  
			End Get
		#tag EndGetter
		View As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652077696E646F7720696E2077686963682074686520746F75636820696E697469616C6C79206F636375727265642E
		#tag Getter
			Get
			  return AppleWindow.MakeFromPtr(UIKitFramework.getwindow(id))
			  
			End Get
		#tag EndGetter
		Window As AppleWindow
	#tag EndComputedProperty


	#tag Enum, Name = UITouchPhase, Type = Integer, Flags = &h0
		Began
		  Moved
		  Stationary
		  Ended
		Cancelled
	#tag EndEnum

	#tag Enum, Name = UITouchType, Type = Integer, Flags = &h0
		Direct
		  Indirect
		Stylus
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AltitudeAngle"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EstimationUpdateIndex"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
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
			Name="MajorRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MajorRadiusTolerance"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximumPossibleForce"
			Group="Behavior"
			Type="Double"
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
			Type="UITouchPhase"
			EditorType="Enum"
			#tag EnumValues
				"0 - Began"
				"1 - Moved"
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
			Name="TapCount"
			Group="Behavior"
			Type="UInteger"
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
			Name="TouchType"
			Group="Behavior"
			Type="UITouchType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Direct"
				"1 - Indirect"
				"2 - Stylus"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
