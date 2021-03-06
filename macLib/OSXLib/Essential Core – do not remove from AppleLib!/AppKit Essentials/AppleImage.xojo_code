#tag Class
Protected Class AppleImage
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub AddRepresentation(Representation as AppleImageRep)
		  addRepresentation mid, Representation.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addRepresentation Lib appkitlibname Selector "addRepresentation:" (id as ptr, rep as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function blendedColorWithFraction Lib appkitlibname Selector "blendedColorWithFraction:ofColor:" (id as ptr, fraction as cgfloat, OtherColor As Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CGImageForProposedRect Lib appkitlibname Selector "CGImageForProposedRect:context:hints:" (id as ptr, byref Rect As FoundationFrameWork . NSRect, context as ptr, hints as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A657320616E642072657475726E7320616E20696D616765206F626A656374207573696E672074686520636F6E74656E7473206F66206120436F726520477261706869637320696D6167652E
		Sub Constructor(CGImage As AppleCGImage)
		  Constructor(CGImage, FoundationFrameWork.NSZeroSize)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A657320616E642072657475726E7320616E20696D616765206F626A656374207573696E672074686520636F6E74656E7473206F66206120436F726520477261706869637320696D6167652C2064656C69766572696E672074686520726573756C7420696E2061207370656369666965642073697A652E
		Sub Constructor(CGImage As AppleCGImage, size as FoundationFrameWork.NSSize)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(initWithCGImage(alloc(classptr), CGImage.CFTypeRef, size), true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A657320616E642072657475726E7320616E20696D616765206F626A656374207573696E672074686520636F6E74656E7473206F66206120436F726520477261706869637320696D6167652E
		Sub Constructor(CIImage As AppleCIImage)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  dim size as FoundationFrameWork.NSSize = CIImage.Extent.Size_
		  // If the Extent has illogical values or is simply too big, we need to catch the error and return an emtpy image
		  #pragma BreakOnExceptions false
		  try
		    Constructor(size)
		    me.LockFocus
		    CIImage.Draw (FoundationFrameWork.NSMakePoint(0,0), CIImage.Extent, AppKitFramework.NSCompositingOperation.Copy, 1)
		    me.UnlockFocus
		  catch
		    Constructor(FoundationFrameWork.NSMakeSize(1,1))
		  end try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A657320616E642072657475726E7320616E20696D616765206F626A656374207573696E67207468652070726F766964656420696D61676520646174612C206F7074696F6E616C6C792069676E6F72696E6720746865206F7269656E746174696F6E2066726F6D20746865204558494620646174612E0A
		Sub Constructor(Data As AppleData, IgnoreOrientation As Boolean = False)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  if IgnoreOrientation then
		    super.Constructor(initWithDataIgnoringOrientation (alloc(classptr), data.id), true)
		  else
		    Super.Constructor(FoundationFrameWork.initWithData(alloc(ClassPtr), data.id), true)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A657320616E642072657475726E7320616E20696D616765206F626A656374207769746820746865207370656369666965642064696D656E73696F6E732E
		Sub Constructor(size as FoundationFrameWork.NSSize)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor (AppKitFramework.initWithSize(alloc(classptr), size), true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061204E53496D6167652066726F6D206120506963747572652E
		Sub Constructor(Pic as picture)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  dim p as ptr = pic.CopyOSHandle (Picture.HandleType.MacNSImage)
		  Super.Constructor(p, true, true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 44726177732074686520696D61676520696E20746865206772617068696373636F6E74657874206F662061207370656369666965642072656374616E676C652E0A
		Sub Draw(Rect As FoundationFrameWork.NSRect)
		  AppKitFramework.drawInRect mid, Rect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function fromPicture(aPic as Picture) As AppleImage
		  #if targetmacos
		    return new AppleImage(apic)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrepresentations Lib appkitlibname Selector "representations" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getTemplate Lib appkitlibname Selector "isTemplate" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getValid Lib appkitlibname Selector "isValid" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E642072657475726E7320616E20696D616765206F626A656374207573696E6720746865207370656369666965642066696C652E
		Shared Function ImageByFileReference(FileName As CFStringRef) As AppleImage
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  return new AppleImage (initByReferencingFile(alloc(classptr), FileName), true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E642072657475726E7320616E20696D616765206F626A6563742077686F736520636F6E74656E74732061726520647261776E207573696E67207468652073706563696669656420626C6F636B2E2054686520626C6F636B2077696C6C206265206578656375746564207768656E2074686520696D616765206973207573656420666F72207465682066697273742074696D652E204974206D696768742062652063616C6C6564206F6E2061206261636B67726F756E642074687265616420696620796F75206372656174652074686520696D6167652066726F6D2074686572652E
		Shared Function ImageFromDrawingBlock(Block as AppleBlock, size as FoundationFrameWork.NSSize, flipped as boolean = false) As AppleImage
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  return new AppleImage (imageWithSizeflipped (classptr, size, flipped, block.Handle), true, true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696D616765206F626A656374206173736F63696174656420776974682074686520737065636966696564206E616D652E
		Shared Function ImageNamed(ImageName As CFStringRef) As AppleImage
		  return new AppleImage(imageNamed(classPtr, ImageName), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function imageNamed Lib appkitlibname Selector "imageNamed:" (id as ptr, ImageName As CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A657320616E642072657475726E7320616E20696D616765206F626A65637420776974682074686520636F6E74656E7473206F6620746865207370656369666965642066696C652E0A
		Shared Function ImageWithFileContents(FileName As Text) As AppleImage
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  return new AppleImage (FoundationFrameWork.initwithcontentsoffile(alloc(classptr), FileName), true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function imageWithSizeflipped Lib appkitlibname Selector "imageWithSize:flipped:drawingHandler:" (id as ptr, size As FoundationFrameWork . NSSize, flipped as boolean, block as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initByReferencingFile Lib appkitlibname Selector "initByReferencingFile:" (id as ptr, file as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithCGImage Lib appkitlibname Selector "initWithCGImage:size:" (id as ptr, cgi as Ptr, size as FoundationFrameWork . NSSize) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithDataIgnoringOrientation Lib appkitlibname Selector "initWithDataIgnoringOrientation:" (id as ptr, data As Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 50726570617265732074686520696D61676520746F20726563656976652064726177696E6720636F6D6D616E64732C206F7074696F6E616C6C7920666C697070696E6720697420766572746963616C6C792E
		Sub LockFocus(Flipped as Boolean = False)
		  AppKitFramework.lockFocusFlipped mid, Flipped
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleImage
		  return if (aptr = nil, nil, new appleimage(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526573697A65732074686520696D61676520746F2061206E65772073697A652C206F7074696F6E616C6C79206B656570696E67207468652070726F706F7274696F6E7320616E642077697468206120736C65637461626C6520696E746572706F6C6174696F6E207175616C6974792E
		Function Resize(NewSize as FoundationFramework.NSSize, proportional as boolean = false, interpolationQuality as AppKitFramework.NSImageinterpolation = AppKitFramework.NSImageinterpolation.Default, Scale as double = 0) As AppleImage
		  dim xfactor as double = NewSize.width / Width
		  dim yfactor as double = NewSize.height/Height
		  if proportional then
		    return scale (min(xfactor, yfactor), 0, interpolationquality, scale)
		  else
		    return scale (xfactor, yfactor, interpolationquality, scale)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206E657720696D616765207468617420697320726573697A6564207769746820616C6F6E6720746865207820616E64207920617869732077697468207468652076616C75657320796F752070726F766964652E200A5F595363616C655F203D2030206D616B657320746865207363616C652070726F706F74696F6E616C2E
		Function Scale(XScale as double, YScale as Double = 0, interpolationQuality as AppKitFramework.NSImageinterpolation = AppKitFramework.NSImageinterpolation.Default, scale as double = 0) As AppleImage
		  if scale = 0 then scale =  if (window(0) <> nil, Window(0).ScaleFactor, 2)
		  if YScale = 0 then YScale = XScale
		  dim W as double = me.Width* XScale
		  dim h as double = me.Height* YScale
		  dim frame as FoundationFrameWork.nsrect = FoundationFrameWork.NSMakeRect(0,0,w*scale,h*scale)
		  dim result as  new AppleImage(frame.Size_)
		  try
		    result.LockFocus
		    AppleGraphicsContext.CurrentContext.ImageInterpolation = interpolationQuality
		    me.Draw (frame)
		    result.UnlockFocus
		  end try
		  return result
		  
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function setName Lib appkitlibname Selector "setName:" (id as ptr, name as cfstringRef) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setTemplate Lib appkitlibname Selector "setTemplate:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function toCGImage(ProposedRect As FoundationFrameWork.NSRect,  Context As AppleGRaphicsContext = nil,  Hints As AppleDictionary = nil) As AppleCGImage
		  dim contPtr as Ptr = if (Context = nil, nil, Context.id)
		  dim hintPtr as Ptr = if (hints = nil, nil, Hints.Id)
		  dim resptr as ptr = CGImageForProposedRect (mid, ProposedRect, contPtr, hintPtr)
		  dim result as AppleCGImage = AppleCGImage.MakeFromCFTypeRef(resptr, true, true)
		  // Context = AppleGraphicsContext.MakefromPtr(contptr)
		  // hints = AppleDictionary.MakeFromPtr(hintptr)
		  return result
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732074686520666F6375732066726F6D207468652072656365697665722E
		Sub UnlockFocus()
		  AppKitFramework.unlockFocus mid
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 546865206261636B67726F756E6420636F6C6F7220666F722074686520696D6167652E
		#tag Getter
			Get
			  return applecolor.MakefromPtr(AppKitFramework.getbackgroundColor(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setbackgroundColor mid, nilptr(value)
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 52657475726E732061204347496D61676520636170747572696E67207468652064726177696E67206F66207468652072656365697665722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return me.toCGImage (FoundationFrameWork.NSMakeRect(0,0,me.Width, me.Height), nil, nil)
			End Get
		#tag EndGetter
		CGImage As AppleCGImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSImage")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Size.height
			End Get
		#tag EndGetter
		Height As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F7074696F6E616C206E616D6520796F752063616E2073657420746F207265676973746572207468697320696D61676520746F2074686520696D6167652063616368652E2041737369676E20616E20656D70747920737472696E6720746F2072656D6F76652069742066726F6D2063616368652E205468726F777320616E204572726F72457863657074696F6E20696620616E2061737369676E6D656E74206661696C732E
		#tag Getter
			Get
			  return FoundationFrameWork.getname (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim result as Boolean = setName (mid, value)
			  if not result then MakeException ("The image could not be registered to the image cache")
			End Set
		#tag EndSetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20617272617920636F6E7461696E696E6720616C6C206F662074686520696D616765E280997320696D61676520726570726573656E746174696F6E732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(getrepresentations(mid))
			End Get
		#tag EndGetter
		Representations As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F662074686520696D6167652E
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

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520696D61676520726570726573656E747320612074656D706C61746520696D616765
		#tag Getter
			Get
			  return getTemplate (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setTemplate mid, value
			End Set
		#tag EndSetter
		Template As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220616E20696D61676520726570726573656E746174696F6E2066726F6D207468652072656365697665722063616E20626520647261776E2E2028726561642D6F6E6C79290A49662074686520696D61676520697320696E697469616C697A6564207769746820616E206578697374696E6720696D6167652066696C652C206275742074686520636F72726573706F6E64696E6720696D6167652064617461206973206E6F7420796574206C6F6164656420696E746F206D656D6F72792C2074686973206D6574686F64206C6F61647320746865206461746120616E6420657870616E6473206974206173206E65656465642E2049662074686520696D61676520636F6E7461696E73206E6F20696D61676520726570726573656E746174696F6E7320616E64206E6F206173736F63696174656420696D6167652066696C652C2074686973206D6574686F64206372656174657320612076616C69642063616368656420696D61676520726570726573656E746174696F6E20616E6420696E697469616C697A657320697420746F207468652064656661756C74206269742064657074682E2052657475726E732046616C736520696E206361736573207768657265207468652066696C65206F722055524C2066726F6D2077686963682069742077617320696E697469616C697A6564206973206E6F6E6578697374656E74206F72207768656E20746865206461746120696E20616E206578697374696E672066696C6520697320696E76616C69642E
		#tag Getter
			Get
			  return getvalid (mid)
			End Get
		#tag EndGetter
		Valid As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Size.width
			End Get
		#tag EndGetter
		Width As Double
	#tag EndComputedProperty


	#tag ViewBehavior
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
			Name="Height"
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
			Name="Template"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Valid"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
