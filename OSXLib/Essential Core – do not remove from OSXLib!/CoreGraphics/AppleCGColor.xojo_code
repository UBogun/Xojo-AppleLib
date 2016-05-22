#tag Class
Protected Class AppleCGColor
Inherits AppleCFObject
	#tag ExternalMethod, Flags = &h21
		Private Declare Function CGColorCreateCopy Lib CoreGraphicsLibName (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Function CGColorCreateCopyWithAlpha(acolor as ptr, alpha as double) As Ptr
		  #if target32bit
		    declare function CGColorCreateCopyWithAlpha lib CoreGraphicsLibName (acolor as ptr, alpha as single) as Ptr
		  #elseif target64bit
		    declare function CGColorCreateCopyWithAlpha lib CoreGraphicsLibName (acolor as ptr, alpha as double) as Ptr
		  #endif
		  return CGColorCreateCopyWithAlpha (acolor, alpha)
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CGColorCreateGenericCMYK(cyan as double, magenta as double, yellow as double, black as double, alpha as double) As Ptr
		  #if target32bit
		    declare function CGColorCreateGenericCMYK lib CoreGraphicsLibName (cyan as single, magenta as single, yellow as Single, black as single, alpha as single) as Ptr
		  #elseif target64bit
		    declare function CGColorCreateGenericCMYK lib CoreGraphicsLibName (cyan as double, magenta as double, yellow as double, black as double, alpha as double) as Ptr
		  #endif
		  return CGColorCreateGenericCMYK (cyan, magenta, yellow, black, alpha)
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CGColorCreateGenericGray(gray as double, alpha as double) As Ptr
		  #if target32bit
		    declare function CGColorCreateGenericGray lib CoreGraphicsLibName (gray as Single, alpha as single) as Ptr
		  #elseif target64bit
		    declare function CGColorCreateGenericGray lib CoreGraphicsLibName (gray as double, alpha as double) as Ptr
		  #endif
		  return CGColorCreateGenericGray (gray, alpha)
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CGColorCreateGenericRGB(red as double, green as double, blue as double, alpha as double) As Ptr
		  #if target32bit
		    declare function CGColorCreateGenericRGB lib CoreGraphicsLibName (red as single, green as single, blue as Single, alpha as single) as Ptr
		  #elseif target64bit
		    declare function CGColorCreateGenericRGB lib CoreGraphicsLibName (red as double, green as double, blue as double, alpha as double) as Ptr
		  #endif
		  return CGColorCreateGenericRGB (red, green, blue, alpha)
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CGColorEqualToColor Lib CoreGraphicsLibName (id as ptr, anotherid as ptr) As boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CGColorGetColorSpace Lib CoreGraphicsLibName (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CGColorGetComponents Lib CoreGraphicsLibName (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CGColorGetConstantColor Lib CoreGraphicsLibName (colorname as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CGColorGetNumberOfComponents Lib CoreGraphicsLibName (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CGColorGetTypeID Lib CoreGraphicsLibName (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub CGColorRelease Lib CoreGraphicsLibName (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CGColorRetain Lib CoreGraphicsLibName (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function ChangeAlpha(Alpha as Double) As AppleCGColor
		  dim result as  new AppleCGColor (CGColorCreateCopyWithAlpha (mCFTypeRef, Alpha), true)
		  result.mhasownership = true
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aColor as AppleCGColor, alpha as double)
		  super.Constructor ( CGColorCreateCopyWithAlpha (acolor.mCFTypeRef, alpha), true)
		  mHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aColor as Color)
		  dim r as double = aColor.red/255
		  dim g as double = aColor.Green/255
		  dim b as double = aColor.Blue/255
		  dim a as double = (255 - aColor.Alpha) / 255
		  
		  super.Constructor ( CGColorCreateGenericRGB (r, g, b, a), true)
		  mHasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(gray as Double, alpha as double)
		  super.Constructor ( CGColorCreateGenericGray (gray, alpha), true)
		  mhasownership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(red as Double, green as Double, blue as double, alpha as double)
		  super.Constructor( CGColorCreateGenericRGB (red, green, Blue, alpha), true)
		  mHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(cyan as Double, magenta as Double, yellow as double, black as double, alpha as double)
		  super.Constructor( CGColorCreateGenericCMYK (cyan, magenta, yellow, black, alpha), true)
		  mhasownership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Copy() As AppleCGColor
		  dim mResult as new AppleCGColor (CGColorCreateCopy(mcftypeRef), true)
		  mresult.mHasOwnership = true
		  return mResult
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  if not isNIL then
		    if mhasownership then
		      if libdebug then system.DebugLog "Releasing CFObject "+CFTypeDescription+", "+Description+", ARC: "+RetainCount.ToText
		      release
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(anothercolor as AppleCGColor) As boolean
		  Return CGColorEqualToColor (mCFTypeRef, anothercolor.mCFTypeRef)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function fromColor(aColor as Color) As AppleCGColor
		  return new AppleCGColor (acolor)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromCFTypeRef(aCFTypeRef as ptr) As AppleCGColor
		  return if (aCFTypeRef = nil, nil, new applecgcolor(aCFTypeRef))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Release()
		  CGColorRelease (mCFTypeRef)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Retain()
		  mCFTypeRef = CGColorRetain (mCFTypeRef)
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if target32bit
			    declare function CGColorGetAlpha lib CoreGraphicsLibName (id as ptr) as single
			  #elseif target64bit
			    declare function CGColorGetAlpha lib CoreGraphicsLibName (id as ptr) as double
			  #endif
			  return CGColorGetAlpha (mCFTypeRef)
			  
			End Get
		#tag EndGetter
		Alpha As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if NumberOfComponents = 5 then // only when we have a cmyk+a) color
			    #if target32bit
			      return Components.SingleValue(12)
			    #elseif Target64Bit
			      return Components.DoubleValue(24)
			    #endif
			  end if
			End Get
		#tag EndGetter
		Black As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mBlackColor as AppleCGColor = new AppleCGColor(CGColorGetConstantColor (SystemConstantName(kCGColorBlack, CoreGraphicsPath)))
			  return mBlackColor
			End Get
		#tag EndGetter
		Shared BlackColor As AppleCGColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if NumberOfComponents = 4 then // only when we have a RGB(+a) color
			    #if target32bit
			      return Components.SingleValue(8)
			    #elseif Target64Bit
			      return Components.DoubleValue(16)
			    #endif
			  end if
			End Get
		#tag EndGetter
		Blue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleCFObject.CFCopyTypeIDDescription (TypeID)
			End Get
		#tag EndGetter
		CFTypeDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClearColor as AppleCGColor = new AppleCGColor(CGColorGetConstantColor (SystemConstantName(kCGColorClear, CoreGraphicsPath)))
			  return mClearColor
			End Get
		#tag EndGetter
		Shared ClearColor As AppleCGColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return new AppleCGColorSpace (CGColorGetColorSpace (mcfTypeRef))
			End Get
		#tag EndGetter
		ColorSpace As AppleCGColorSpace
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  if mComponents = nil then
			    dim mb as new xojo.Core.MemoryBlock (CGColorGetComponents (mCFTypeRef), NumberOfComponents * IntegerSize)
			    mComponents = mb
			  end if
			  Return mComponents
			  
			End Get
		#tag EndGetter
		Private Components As Xojo.core.memoryblock
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if NumberOfComponents = 5 then // only when we have a CMYK (+a) color
			    #if target32bit
			      return Components.SingleValue(0)
			    #elseif Target64Bit
			      return Components.DoubleValue(0)
			    #endif
			  end if
			End Get
		#tag EndGetter
		Cyan As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if NumberOfComponents = 2 then // only when we have a gray CGColor
			    #if target32bit
			      return Components.SingleValue(0)
			    #elseif Target64Bit
			      return Components.DoubleValue(0)
			    #endif
			  end if
			End Get
		#tag EndGetter
		Gray As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if NumberOfComponents = 4 then // only when we have a RGB(+a) color
			    #if target32bit
			      return Components.SingleValue(4)
			    #elseif Target64Bit
			      return Components.DoubleValue(8)
			    #endif
			  end if
			End Get
		#tag EndGetter
		Green As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if NumberOfComponents = 5 then // only when we have a cmyk(+a) color
			    #if target32bit
			      return Components.SingleValue(4)
			    #elseif Target64Bit
			      return Components.DoubleValue(8)
			    #endif
			  end if
			End Get
		#tag EndGetter
		Magenta As Double
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mComponents As Xojo.core.memoryblock
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGColorGetNumberOfComponents (mCFTypeRef)
			  
			End Get
		#tag EndGetter
		NumberOfComponents As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if NumberOfComponents = 4 then // only when we have a RGB(+a) color
			    #if target32bit
			      return Components.SingleValue(0)
			    #elseif Target64Bit
			      return Components.DoubleValue(0)
			    #endif
			  end if
			End Get
		#tag EndGetter
		Red As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return color.rgba (red * 255, green * 255, blue * 255, 255 - alpha * 255)
			  
			End Get
		#tag EndGetter
		toColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CGColorGetTypeID (mCFTypeRef)
			End Get
		#tag EndGetter
		TypeID As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mWhiteColor as AppleCGColor = new AppleCGColor(CGColorGetConstantColor (SystemConstantName(kCGColorWhite, CoreGraphicsPath)))
			  return mWhiteColor
			End Get
		#tag EndGetter
		Shared WhiteColor As AppleCGColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if NumberOfComponents = 5 then // only when we have a cmyk(+a) color
			    #if target32bit
			      return Components.SingleValue(8)
			    #elseif Target64Bit
			      return Components.DoubleValue(16)
			    #endif
			  end if
			End Get
		#tag EndGetter
		Yellow As Double
	#tag EndComputedProperty


	#tag Constant, Name = kCGColorBlack, Type = Text, Dynamic = False, Default = \"kCGColorBlack", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCGColorClear, Type = Text, Dynamic = False, Default = \"kCGColorClear", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCGColorWhite, Type = Text, Dynamic = False, Default = \"kCGColorWhite", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Black"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Blue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CFTypeDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Cyan"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Gray"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Green"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
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
			Name="isNIL"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Magenta"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
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
			Name="NumberOfComponents"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Red"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="toColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TypeID"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Yellow"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
