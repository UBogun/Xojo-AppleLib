#tag Class
Protected Class AppleString
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (init(alloc(classptr)))
		    MHasOwnership = true
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(TextData as appledata, encoding as StringEncodings = stringencodings.utf8)
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (initWithDataEncoding(alloc(classptr), textdata.id, encoding))
		    MHasOwnership = true
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aText as CFStringRef)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (initWithString(alloc(classptr), atext))
		    MHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
<<<<<<< HEAD
		Shared Function DataToCFSTringRef(aData as AppleData, encoding as StringEncodings = stringencodings.utf8) As cfstringref
		  declare function initWithDataEncoding lib FoundationLibName selector "initWithData:encoding:" (obj_id as ptr, data as ptr, encoding as stringencodings) as CFStringRef
		  dim result as text = initWithDataEncoding (alloc(ClassPtr), aData.id, encoding)
		  return result
=======
		 Shared Function DataToCFSTringRef(aData as AppleData, encoding as StringEncodings = stringencodings.utf8) As cfstringref
		  #If TargetMacOS then
		    declare function initWithDataEncoding lib FoundationLibName selector "initWithData:encoding:" (obj_id as ptr, data as ptr, encoding as stringencodings) as CFStringRef
		    dim result as text = initWithDataEncoding (alloc(ClassPtr), aData.id, encoding)
		    return result
		  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function dataUsingEncoding Lib FoundationLibName Selector "dataUsingEncoding:" (id as ptr, Encoding as StringEncodings) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithDataEncoding Lib FoundationLibName Selector "initWithData:encoding:" (id as ptr, data as ptr, Encoding as StringEncodings) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithDataEncodingtoCFStringRef Lib FoundationLibName Selector "dataUsingEncoding:" (id as ptr, data as ptr, Encoding as StringEncodings) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithString Lib FoundationLibName Selector "initWithString:" (id as ptr, aString as cfstringref) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function ToAppleData(Encoding as StringEncodings) As AppleData
		  #If TargetMacOS then
		    return AppleData.MakefromPtr (dataUsingEncoding(id, Encoding))
		  #endif
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSString")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty


	#tag Enum, Name = StringEncodings, Type = UInteger, Flags = &h0
		ASCII = 1
		  NEXTSTEP = 2
		  JapaneseEUC = 3
		  UTF8 = 4
		  ISOLatin1 = 5
		  Symbol = 6
		  NonLossyASCII = 7
		  ShiftJIS = 8
		  ISOLatin2 = 9
		  Unicode= 10
		  WindowsCP1251 = 11
		  WindowsCP1252 = 12
		  WindowsCP1253 = 13
		  WindowsCP1254 = 14
		  WindowsCP1250 = 15
		  ISO2022JP = 21
		  MacOSRoman = 30
		  UTF16 = Unicode
		  UTF16BigEndian = &h90000100
		  UTF16LittleEndian = &h94000100
		  UTF32 = &h8c000100
		  UTF32BigEndian = &h98000100
		  UTF32LittleEndian = &h9c000100
		Proprietary = 65536
	#tag EndEnum


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
