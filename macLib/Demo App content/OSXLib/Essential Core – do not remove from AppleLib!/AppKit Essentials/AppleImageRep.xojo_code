#tag Class
Protected Class AppleImageRep
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E6720776865746865722074686520636C6173732063616E20696E697469616C697A6520616E20696E7374616E63652066726F6D207468652073706563696669656420646174612E
		Shared Function CanInitWithData(Data As AppleData) As Boolean
		  return getcanInitWithData(classptr, data.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(init(alloc(classptr)), true)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function draw Lib AppkitLibName Selector "draw" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function drawAtPoint Lib AppkitLibName Selector "drawAtPoint:" (id as ptr, point as FoundationFrameWork . Nspoint) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function drawInRect Lib AppkitLibName Selector "drawInRect:" (id as ptr, rect as FoundationFrameWork . Nsrect) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function drawInRectfromRect Lib AppkitLibName Selector "drawInRect:fromRect:operation:fraction:respectFlipped:hints:" (id as ptr, rect as FoundationFrameWork . Nsrect, sourcerect as FoundationFrameWork . Nsrect, operation as appkitframework . NSCompositingOperation, alpha as cgfloat, RespectFlipped As boolean, Hints as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getAlpha Lib AppkitLibName Selector "hasAlpha" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbitsPerSample Lib AppkitLibName Selector "bitsPerSample" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcanInitWithData Lib AppkitLibName Selector "canInitWithData:" (id as ptr, data as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getimageTypes Lib AppkitLibName Selector "imageTypes" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getimageUnfilteredTypes Lib AppkitLibName Selector "imageUnfilteredTypes" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlayoutDirection Lib AppkitLibName Selector "layoutDirection" (id as ptr) As Appkitframework.NSImageLayoutDirection
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpixelsHigh Lib AppkitLibName Selector "pixelsHigh" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpixelsWide Lib AppkitLibName Selector "pixelsWide" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getregisteredImageRepClasses Lib AppkitLibName Selector "registeredImageRepClasses" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E20696D61676520726570726573656E746174696F6E206F626A6563747320696E697469616C697A6564207573696E672074686520636F6E74656E7473206F66207468652055524C2E
		Function ImageRep(URL As AppleURL) As AppleImageRep
		  return AppleImageRep.MakeFromPtr(imageRepWithContentsOfURL(mid, URL.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E20696D61676520726570726573656E746174696F6E206F626A65637420696E697469616C697A6564207573696E672074686520636F6E74656E7473206F6620746865207370656369666965642066696C652E
		Function ImageRep(FileName As CFStringRef) As AppleImageRep
		  return AppleImageRep.MakeFromPtr(imageRepWithContentsOfFile(mid, FileName))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865204E53496D61676552657020737562636C61737320746861742068616E646C657320746865207370656369666965642074797065206F6620646174612E0A0A
		Shared Function ImageRepClass(Data as appledata) As Text
		  dim typeclass as ptr = imageRepClassForData(classptr, data.id)
		  dim name as cstring = ObjectiveCRuntime.class_getName(typeclass)
		  return text.fromCString(name, StandardTextEncoding)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865204E53496D61676552657020737562636C61737320746861742068616E646C657320696D616765206461746120666F722074686520737065636966696564205554492E
		Shared Function ImageRepClass(Type As CFStringRef) As Text
		  dim typeclass as ptr = imageRepClassForType(classptr, type)
		  dim name as cstring = ObjectiveCRuntime.class_getName(typeclass)
		  return text.fromCString(name, StandardTextEncoding)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function imageRepClassForData Lib AppkitLibName Selector "imageRepClassForData:" (id as ptr, data as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function imageRepClassForType Lib AppkitLibName Selector "imageRepClassForType:" (id as ptr, type as cfstringref) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E206172726179206F6620696D61676520726570726573656E746174696F6E206F626A6563747320696E697469616C697A6564207573696E672074686520636F6E74656E7473206F66207468652055524C2E
		Function ImageReps(URL As AppleURL) As AppleArray
		  return AppleArray.MakeFromPtr(imageRepsWithContentsOfURL(mid, URL.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E206172726179206F6620696D61676520726570726573656E746174696F6E206F626A6563747320696E697469616C697A6564207573696E672074686520636F6E74656E7473206F6620746865207370656369666965642066696C652E
		Function ImageReps(FileName As CFStringRef) As AppleArray
		  return AppleArray.MakeFromPtr(imageRepsWithContentsOfFile(mid, FileName))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function imageRepsWithContentsOfFile Lib AppkitLibName Selector "imageRepsWithContentsOfFile:" (id as ptr, filename as cfstringref) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function imageRepsWithContentsOfURL Lib AppkitLibName Selector "imageRepsWithContentsOfURL:" (id as ptr, url as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function imageRepWithContentsOfFile Lib AppkitLibName Selector "imageRepWithContentsOfFile:" (id as ptr, filename as cfstringref) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function imageRepWithContentsOfURL Lib AppkitLibName Selector "imageRepWithContentsOfURL:" (id as ptr, url as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleImageRep
		  return if (aptr = nil, nil, new AppleImageRep(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41646473207468652073706563696669656420636C61737320746F20746865207265676973747279206F6620617661696C61626C65204E53496D61676552657020737562636C61737365732E
		Shared Sub RegisterImageRepClass(ImageRepClassPtr As Ptr)
		  registerImageRepClass (classptr, ImageRepClassPtr)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub registerImageRepClass Lib AppkitLibName Selector "registerImageRepClass:" (id as ptr, repclass as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setAlpha Lib AppkitLibName Selector "setAlpha:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbitsPerSample Lib AppkitLibName Selector "setBitsPerSample:" (id as ptr, value as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlayoutDirection Lib AppkitLibName Selector "setLayoutDirection:" (id as ptr, value as Appkitframework . NSImageLayoutDirection)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setpixelsHigh Lib AppkitLibName Selector "setPixelsHigh:" (id as ptr, value as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setpixelsWide Lib AppkitLibName Selector "setPixelsWide:" (id as ptr, value as Integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061204347496D61676520636170747572696E67207468652064726177696E67206F66207468652072656365697665722E
		Function toCGImage(byref Rect as FoundationFrameWork.NSRect, context as AppleGraphicsContext = nil, Hints as AppleDictionary = nil) As AppleCGImage
		  return AppleCGImage.MakeFromCFTypeRef (AppleImage.CGImageforproposedrect (mid, rect, nilptr(context), nilptr(hints)), true, true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732074686520737065636966696564204E53496D61676552657020737562636C6173732066726F6D20746865207265676973747279206F6620617661696C61626C6520696D61676520726570726573656E746174696F6E732E
		Shared Sub UnregisterImageRepClass(ImageRepClassPtr As Ptr)
		  unregisterImageRepClass (classptr, ImageRepClassPtr)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub unregisterImageRepClass Lib AppkitLibName Selector "unregisterImageRepClass:" (id as ptr, repclass as ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		pasteboard features missing
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F662062697473207065722073616D706C6520696E20746865206F626A6563742028696620746865206F626A656374206973206120706C616E617220696D6167652C20746869732070726F706572747920636F6E7461696E7320746865206E756D626572206F662062697473207065722073616D706C652070657220706C616E65292E
		#tag Getter
			Get
			  return getbitsPerSample(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbitsPerSample mid, value
			End Set
		#tag EndSetter
		BitsPerSample As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassptr as ptr
			  if mClassptr = nil then mClassptr = FoundationFrameWork.NSClassFromString("NSImageRep")
			  return mClassptr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520696D61676520646174612068617320616E20616C706861206368616E6E656C2E
		#tag Getter
			Get
			  return getAlpha(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setalpha mid, value
			End Set
		#tag EndSetter
		HasAlpha As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F662055544920737472696E6773206964656E74696679696E672074686520696D61676520747970657320737570706F72746564206279207468652072656365697665722C20656974686572206469726563746C79206F72207468726F756768206120757365722D696E7374616C6C65642066696C74657220736572766963652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(getimageTypes(classptr))
			End Get
		#tag EndGetter
		Shared ImageTypes As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F662055544920737472696E6773206964656E74696679696E672074686520696D61676520747970657320737570706F72746564206469726563746C79206279207468652072656365697665722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(getimageUnfilteredTypes(classptr))
			End Get
		#tag EndGetter
		Shared ImageUnfilteredTypes As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696D616765206C61796F757420646972656374696F6E2E20417661696C61626C652073696E6365206D61634F532031302E31322E
		#tag Getter
			Get
			  if RespondsToSelector( "layoutDirection", classptr) then return getlayoutdirection(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector("setLayoutDirection:", classptr) then setlayoutDirection mid, value
			End Set
		#tag EndSetter
		LayoutDirection As Appkitframework.NSImageLayoutDirection
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520696D616765206973206F7061717565
		#tag Getter
			Get
			  return AppKitFramework.getopaque(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setopaque(mid, value)
			End Set
		#tag EndSetter
		Opaque As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520686569676874206F662074686520696D6167652C206D6561737572656420696E20706978656C732E
		#tag Getter
			Get
			  return getpixelsHigh(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setpixelsHigh mid, value
			End Set
		#tag EndSetter
		PixelsHigh As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207769647468206F662074686520696D6167652C206D6561737572656420696E20706978656C732E
		#tag Getter
			Get
			  return getpixelsWide(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setpixelsWide mid, value
			End Set
		#tag EndSetter
		PixelsWide As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20617272617920636F6E7461696E696E67207468652072656769737465726564204E53496D61676552657020636C61737365732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(getregisteredImageRepClasses(classptr))
			End Get
		#tag EndGetter
		Shared RegisteredImageRepClasses As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F662074686520696D61676520726570726573656E746174696F6E2C206D6561737572656420696E20706F696E747320696E20746865207573657220636F6F7264696E6174652073706163652E20
		#tag Getter
			Get
			  return FoundationFrameWork.getSize(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFrameWork.setsize mid,value
			End Set
		#tag EndSetter
		Size As FoundationFrameWork.NSSize
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BitsPerSample"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAlpha"
			Group="Behavior"
			Type="Boolean"
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
			Name="LayoutDirection"
			Group="Behavior"
			Type="Appkitframework.NSImageLayoutDirection"
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
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PixelsHigh"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PixelsWide"
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
