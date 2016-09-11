#tag Class
Protected Class AppleColorSpace
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 437265617465732061204E53436F6C6F725370616365206F626A65637420726570726573656E74696E6720616E2041646F6265205247422028313939382920636F6C6F722073706163652E
<<<<<<< HEAD
		Shared Function AdobeRGB1998() As AppleColorSpace
		  dim Result As new AppleColorSpace(adobeRGB1998ColorSpace (ClassPtr))
		  Result.retainClassObject
		  Return Result
=======
		 Shared Function AdobeRGB1998() As AppleColorSpace
		  #If TargetMacOS then
		    dim Result As new AppleColorSpace(adobeRGB1998ColorSpace (ClassPtr))
		    Result.retainClassObject
		    Return Result
		  #Endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function adobeRGB1998ColorSpace Lib appkitlibname Selector "adobeRGB1998ColorSpace" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206C697374206F6620636F6C6F722073706163657320617661696C61626C65206F6E207468652073797374656D20746861742061726520646973706C6179656420696E2074686520636F6C6F722070616E656C2C20696E20746865206F7264657220746865792061726520646973706C6179656420696E2074686520636F6C6F722070616E656C2E
<<<<<<< HEAD
		Shared Function AvailableColorSpaces(Model as NSColorSpaceModel) As AppleArray
		  return AppleArray.MakeFromPtr(availableColorSpacesWithModel(classptr, model))
=======
		 Shared Function AvailableColorSpaces(Model as NSColorSpaceModel) As AppleArray
		  #If TargetMacOS then
		    return AppleArray.MakeFromPtr(availableColorSpacesWithModel(classptr, model))
		  #Endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function availableColorSpacesWithModel Lib appkitlibname Selector "availableColorSpacesWithModel:" (id as ptr, model as NSColorSpaceModel) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061204E53436F6C6F725370616365206F626A65637420726570726573656E74696E6720612063616C69627261746564206F72206465766963652D646570656E64656E7420434D594B20636F6C6F722073706163652E
<<<<<<< HEAD
		Shared Function DeviceCMYK() As AppleColorSpace
		  dim Result As new AppleColorSpace(deviceCMYKColorSpace (ClassPtr))
		  Result.retainClassObject
		  Return Result
=======
		 Shared Function DeviceCMYK() As AppleColorSpace
		  #If TargetMacOS then
		    dim Result As new AppleColorSpace(deviceCMYKColorSpace (ClassPtr))
		    Result.retainClassObject
		    Return Result
		  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function deviceCMYKColorSpace Lib appkitlibname Selector "deviceCMYKColorSpace" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061204E53436F6C6F725370616365206F626A65637420726570726573656E74696E6720612063616C69627261746564206F72206465766963652D646570656E64656E74206772617920636F6C6F722073706163652E
<<<<<<< HEAD
		Shared Function DeviceGray() As AppleColorSpace
		  dim Result As new AppleColorSpace(deviceGrayColorSpace (ClassPtr))
		  Result.retainClassObject
		  Return Result
=======
		 Shared Function DeviceGray() As AppleColorSpace
		  #If TargetMacOS then
		    dim Result As new AppleColorSpace(deviceGrayColorSpace (ClassPtr))
		    Result.retainClassObject
		    Return Result
		  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function deviceGrayColorSpace Lib appkitlibname Selector "deviceGrayColorSpace" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061204E53436F6C6F725370616365206F626A65637420726570726573656E74696E6720612063616C69627261746564206F72206465766963652D646570656E64656E742052474220636F6C6F722073706163652E
<<<<<<< HEAD
		Shared Function DeviceRGB() As AppleColorSpace
		  dim Result As new AppleColorSpace(deviceRGBColorSpace (ClassPtr))
		  Result.retainClassObject
		  Return Result
=======
		 Shared Function DeviceRGB() As AppleColorSpace
		  #If TargetMacOS then
		    dim Result As new AppleColorSpace(deviceRGBColorSpace (ClassPtr))
		    Result.retainClassObject
		    Return Result
		  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function deviceRGBColorSpace Lib appkitlibname Selector "deviceRGBColorSpace" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061204E53436F6C6F725370616365206F626A65637420726570726573656E74696E672061206465766963652D696E646570656E64656E7420434D594B20636F6C6F722073706163652E
<<<<<<< HEAD
		Shared Function GenericCMYK() As AppleColorSpace
		  dim Result As new AppleColorSpace(genericCMYKColorSpace (ClassPtr))
		  Result.retainClassObject
		  Return Result
=======
		 Shared Function GenericCMYK() As AppleColorSpace
		  #If TargetMacOS then
		    dim Result As new AppleColorSpace(genericCMYKColorSpace (ClassPtr))
		    Result.retainClassObject
		    Return Result
		  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function genericCMYKColorSpace Lib appkitlibname Selector "genericCMYKColorSpace" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function genericGamma22GrayColorSpace Lib appkitlibname Selector "genericGamma22GrayColorSpace" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061204E53436F6C6F725370616365206F626A65637420726570726573656E74696E672061206465766963652D696E646570656E64656E74206772617920636F6C6F722073706163652E
<<<<<<< HEAD
		Shared Function GenericGray() As AppleColorSpace
		  dim Result As new AppleColorSpace(genericGrayColorSpace (ClassPtr))
		  Result.retainClassObject
		  Return Result
=======
		 Shared Function GenericGray() As AppleColorSpace
		  #If TargetMacOS then
		    dim Result As new AppleColorSpace(genericGrayColorSpace (ClassPtr))
		    Result.retainClassObject
		    Return Result
		  #Endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function genericGrayColorSpace Lib appkitlibname Selector "genericGrayColorSpace" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061204E53436F6C6F725370616365206F626A65637420726570726573656E74696E672061206772617920636F6C6F72207370616365207769746820612067616D6D612076616C7565206F6620322E322E
<<<<<<< HEAD
		Shared Function GenericGrayGamma22() As AppleColorSpace
		  dim Result As new AppleColorSpace(genericGamma22GrayColorSpace (ClassPtr))
		  Result.retainClassObject
		  Return Result
=======
		 Shared Function GenericGrayGamma22() As AppleColorSpace
		  #If TargetMacOS then
		    dim Result As new AppleColorSpace(genericGamma22GrayColorSpace (ClassPtr))
		    Result.retainClassObject
		    Return Result
		  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061204E53436F6C6F725370616365206F626A65637420726570726573656E74696E672061206465766963652D696E646570656E64656E742052474220636F6C6F722073706163652E
<<<<<<< HEAD
		Shared Function GenericRGB() As AppleColorSpace
		  dim Result As new AppleColorSpace(genericRGBColorSpace (ClassPtr))
		  Result.retainClassObject
		  Return Result
=======
		 Shared Function GenericRGB() As AppleColorSpace
		  #If TargetMacOS then
		    dim Result As new AppleColorSpace(genericRGBColorSpace (ClassPtr))
		    Result.retainClassObject
		    Return Result
		  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function genericRGBColorSpace Lib appkitlibname Selector "genericRGBColorSpace" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcolorSpaceModel Lib appkitlibname Selector "colorSpaceModel" (id as ptr) As NSColorSpaceModel
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getICCProfileData Lib appkitlibname Selector "ICCProfileData" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnumberOfColorComponents Lib appkitlibname Selector "numberOfColorComponents" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleColorSpace
		  return if (aptr = nil, nil, new AppleColorSpace(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061204E53436F6C6F725370616365206F626A65637420726570726573656E74696E6720616E207352474220636F6C6F722073706163652E
<<<<<<< HEAD
		Shared Function sRGB() As AppleColorSpace
		  dim Result As new AppleColorSpace(sRGBColorSpace (ClassPtr))
		  Result.retainClassObject
		  Return Result
=======
		 Shared Function sRGB() As AppleColorSpace
		  #If TargetMacOS then
		    dim Result As new AppleColorSpace(sRGBColorSpace (ClassPtr))
		    Result.retainClassObject
		    Return Result
		  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function sRGBColorSpace Lib appkitlibname Selector "sRGBColorSpace" (id as ptr) As ptr
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 52657475726E7320746865206C697374206F6620616C6C20636F6C6F72207370616365732E
		#tag Getter
			Get
			  return AvailableColorSpaces(NSColorSpaceModel.NSUnknownColorSpaceModel)
			End Get
		#tag EndGetter
		Shared AllColorSpaces As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSColorSpace")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getcolorSpaceModel(id)
			  #Endif
			End Get
		#tag EndGetter
		ColorSpaceModel As NSColorSpaceModel
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 52657475726E7320746865206C697374206F6620616C6C20636F6C6F722073706163657320617661696C61626C6520666F72207468652063757272656E7420636F6C6F722073706163652E
		#tag Getter
			Get
			  return AvailableColorSpaces(me.ColorSpaceModel)
			End Get
		#tag EndGetter
		ColorSpaces As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865204943432070726F66696C6520646174612066726F6D207768696368207468652072656365697665722077617320637265617465642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleData.MakefromPtr(getICCProfileData(id))
			  #endif
			End Get
		#tag EndGetter
		ICCProfileData As AppleData
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206E616D65206F66207468652072656365697665722E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getlocalizedName(id)
			  #endif
			End Get
		#tag EndGetter
		LocalizedName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620636F6D706F6E656E747320737570706F72746564206279207468652072656365697665722E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getnumberOfColorComponents(id)
			  #endif
			End Get
		#tag EndGetter
		NumberOfColorComponents As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return FoundationFrameWork.getsupportsSecureCoding(classptr)
			  #endif
			End Get
		#tag EndGetter
		Shared SupportsSecureCoding As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = NSColorSpaceModel, Flags = &h0
		NSUnknownColorSpaceModel = -1
		  NSGrayColorSpaceModel
		  NSRGBColorSpaceModel
		  NSCMYKColorSpaceModel
		  NSLABColorSpaceModel
		  NSDeviceNColorSpaceModel
		  NSIndexedColorSpaceModel
		NSPatternColorSpaceModel
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="ColorSpaceModel"
			Group="Behavior"
			Type="NSColorSpaceModel"
			EditorType="Enum"
			#tag EnumValues
				"-1 - NSUnknownColorSpaceModel"
				"0 - NSGrayColorSpaceModel"
				"1 - NSRGBColorSpaceModel"
				"2 - NSCMYKColorSpaceModel"
				"3 - NSLABColorSpaceModel"
				"4 - NSDeviceNColorSpaceModel"
				"5 - NSIndexedColorSpaceModel"
				"6 - NSPatternColorSpaceModel"
			#tag EndEnumValues
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
			Name="LocalizedName"
			Group="Behavior"
			Type="Text"
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
			Name="NumberOfColorComponents"
			Group="Behavior"
			Type="Integer"
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
	#tag EndViewBehavior
End Class
#tag EndClass
