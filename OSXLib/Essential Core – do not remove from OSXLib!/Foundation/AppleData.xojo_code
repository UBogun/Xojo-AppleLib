#tag Class
Protected Class AppleData
Inherits AppleObject
	#tag ExternalMethod, Flags = &h21
		Private Declare Function base64EncodedStringWithOptions Lib FoundationLibName Selector "base64EncodedStringWithOptions:" (id as ptr, options as uinteger) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CFDataGetBytePtr Lib FoundationLibName (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CFDataGetLength Lib FoundationLibName (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function CFDataGetTypeID Lib FoundationLibName (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  #If TargetMacOS then
		    super.Constructor(data(classptr))
		    RetainClassObject
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(data as AppleData)
<<<<<<< HEAD
		  super.Constructor (FoundationFrameWork.initWithData (alloc(ClassPtr), data.id), true)
=======
		  #If TargetMacOS then
		    declare function initWithData lib FoundationLibName  selector "initWithData:" (id as ptr, data as ptr) as ptr
		    super.Constructor (initWithData (alloc(ClassPtr), data.id))
		    mHasownership = true
		  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(MB as xojo.Core.MemoryBlock)
		  #If TargetMacOS then
		    declare function initWithBytes lib FoundationLibName  selector "initWithBytes:length:" (id as ptr, bytes as ptr, length as uinteger) as ptr
		    super.Constructor (initWithBytes (alloc(ClassPtr), mb.Data, mb.Size))
		    mHasownership = true
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function data Lib FoundationLibName Selector "data" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function Equals(anotherData as AppleData) As Boolean
		  #If TargetMacOS then
		    declare function isEqualToData lib FoundationLibName  selector "isEqualToData:" (id as ptr, anotherData as ptr) as Boolean
		    return isEqualToData (id, anotherData.id)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetBytes(byref buffer as xojo.Core.MutableMemoryBlock, Range as FoundationFramework.NSRange)
		  #If TargetMacOS then
		    declare sub getBytes lib FoundationLibName  selector "getBytes:range:" (id as ptr, buffer as ptr, range as FoundationFramework.NSRange)
		    if buffer.Size >= length then getBytes id, buffer.Data, Range
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetBytes(byref buffer as xojo.Core.MutableMemoryBlock, length as uinteger)
		  #If TargetMacOS then
		    declare sub getBytes lib FoundationLibName  selector "getBytes:length:" (id as ptr, buffer as ptr, length as uinteger)
		    if buffer.Size >= length then getBytes id, buffer.Data, length
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getdescription Lib FoundationLibName Selector "description" (id as ptr) As cfstringref
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleData
		  return if (aptr = nil, nil, new AppleData(aPtr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return base64EncodedStringWithOptions (id, 0)
			  #endif
			End Get
		#tag EndGetter
		Base64String As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim result as new xojo.Core.MutableMemoryBlock (Length)
			  GetBytes result, Length
			  return result
			End Get
		#tag EndGetter
		ByteBlock As xojo.Core.MemoryBlock
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFDataGetTypeID (id)
			End Get
		#tag EndGetter
		CFTypeID As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSData")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getdescription (id)
			  #endif
			End Get
		#tag EndGetter
		Description As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    declare function length lib FoundationLibName  selector "length" (id as ptr) as uinteger
			    return length (id)
			  #endif
			  
			End Get
		#tag EndGetter
		Length As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleString.DataToCFSTringRef(self)
			  #endif
			End Get
		#tag EndGetter
		ToText As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // return DecodeBase64 (Base64StringDefault)
			End Get
		#tag EndGetter
		UTF8stringDefault As cfstringref
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // return DecodeBase64 (Base64StringIngoreUnknownChars)
			End Get
		#tag EndGetter
		UTF8stringWithOutUnknownChars As cfstringref
	#tag EndComputedProperty


	#tag Enum, Name = Base64DecodingOptions, Type = UInteger, Flags = &h0
		None = 0
		IgnoreUnknownCharacters = 1
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Base64String"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CFTypeID"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
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
			Name="Length"
			Group="Behavior"
			Type="UInteger"
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
		#tag ViewProperty
			Name="ToText"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
