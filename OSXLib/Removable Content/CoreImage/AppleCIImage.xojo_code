#tag Class
Protected Class AppleCIImage
Inherits AppleObject
	#tag Method, Flags = &h1000
		Sub Constructor()
		  Declare function emptyImage lib CoreImageLibName selector "emptyImage" (id as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Super.Constructor (emptyImage (ClassPtr))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(anImage as AppleCGImage)
		  Declare function imageWithCGImage lib CoreImageLibName selector "imageWithCGImage:" (id as ptr, ainimage as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Super.Constructor (imageWithCGImage (ClassPtr, anImage.CFTypeRef))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(anImage as AppleImage)
		  Declare function initWithImage lib CoreImageLibName selector "initWithImage:" (id as ptr, ainimage as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From iOSLibObject
		  // Constructor(AnId as Ptr) -- From iOSLibObject
		  Super.Constructor (initWithImage (alloc(ClassPtr), anImage.id))
		  MHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(anImage as Picture)
		  Dim ApImg as new AppleImage (anImage)
		  Constructor (apimg)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CropToRect(aRect as FoundationFramework.NSRect) As AppleCIImage
		  Declare function imageByCroppingToRect lib CoreImageLibName selector "imageByCroppingToRect:" (id as ptr, aRect  as FoundationFramework.NSRect) as ptr
		  return new AppleCIImage( imageByCroppingToRect (id, aRect))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 447261777320616C6C206F722070617274206F662074686520696D616765206174207468652073706563696669656420706F696E7420696E207468652063757272656E7420636F6F7264696E6174652073797374656D2E
		Sub Draw(TargetPoint as FoundationFrameWork.NSPoint, SourceRect AS FoundationFrameWork.NSREct, operation as AppkitFrameWork.NScompositingOperation, Opacity As Double)
		  drawAtPointfromRect mid, TargetPoint, sourcerect, operation, Opacity
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 447261777320616C6C206F722070617274206F662074686520696D616765206174207468652073706563696669656420706F696E7420696E207468652063757272656E7420636F6F7264696E6174652073797374656D2E
		Sub Draw(TargetRect as FoundationFrameWork.NSRect, SourceRect AS FoundationFrameWork.NSREct, operation as AppKitFrameWork.NScompositingOperation, Opacity As Double)
		  drawInRectfromRect mid, TargetRect, sourcerect, operation, Opacity
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Declare Sub drawAtPointfromRect Lib CoreImageLibName Selector "drawAtPoint:fromRect:operation:fraction:" (id as ptr, point as FoundationFrameWork . NSPoint, Rect as FoundationFrameWork . NSRect, operation as AppKitFrameWork . NSCompositingOperation, fraction as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Sub drawInRectfromRect Lib CoreImageLibName Selector "drawInRect:fromRect:operation:fraction:" (id as ptr, destRect as FoundationFrameWork . NSRect, SourceRect as FoundationFrameWork . NSRect, operation as AppKitFrameWork . NSCompositingOperation, fraction as cgfloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function getExtent Lib CoreImageLibName Selector "extent" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As Appleciimage
		  return if (aptr = nil, nil, new AppleCIImage(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CIImage")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412072656374616E676C652074686174207370656369666965732074686520657874656E74206F662074686520696D6167652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getextent(mid)
			  
			End Get
		#tag EndGetter
		Extent As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function properties lib CoreImageLibName selector "properties" (id as ptr) as ptr
			  return appleDictionary.MakeFromPtr (properties(id))
			  
			End Get
		#tag EndGetter
		Properties As AppleDictionary
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
