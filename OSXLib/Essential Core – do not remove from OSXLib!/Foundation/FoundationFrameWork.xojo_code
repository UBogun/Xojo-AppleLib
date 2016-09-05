#tag Module
Protected Module FoundationFrameWork
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFCopyDescription Lib FoundationLibName (id as ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFCopyTypeIDDescription Lib FoundationLibName (CFTypeId as uinteger) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFNumberGetValue Lib FoundationLibName (Number as Ptr, Numbertype as CFNumberTypes, byref ValuePtr as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub CFRelease Lib FoundationLibName (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFStringCreateCopy Lib FoundationLibName (aString as cfstringref) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFStringCreateWithCString Lib FoundationLibName (aString as cstring, encoding as integer) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFStringGetCharactersPtr Lib FoundationLibName (aString as cfstringref) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFStringGetCStringPtr Lib FoundationLibName (aString as cfstringref, anencoding as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFStringGetFastestEncoding Lib FoundationLibName (aString as cfstringref) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getCount Lib FoundationLibName Selector "count" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcurrentTime Lib FoundationLibName Selector "currentTime" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getdictionaryWithValuesForKeys Lib foundationlibname Selector "dictionaryWithValuesForKeys:" (id as ptr, keys as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdoubleValue Lib FoundationLibName Selector "doubleValue" (id as ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlocalizedDescription Lib FoundationLibName Selector "localizedDescription" (id as ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getmutableArrayValueForKey Lib foundationlibname Selector "mutableArrayValueForKey:" (id as ptr, key as cfstringref) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getmutableArrayValueForKeyPath Lib foundationlibname Selector "mutableArrayValueForKeyPath:" (id as ptr, key as cfstringref) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getmutableOrderedSetValueForKey Lib foundationlibname Selector "mutableOrderedSetValueForKey:" (id as ptr, key as cfstringref) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getmutableOrderedSetValueForKeyPath Lib foundationlibname Selector "mutableOrderedSetValueForKeyPath:" (id as ptr, key as cfstringref) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getmutableSetValueForKey Lib foundationlibname Selector "mutableSetValueForKey:" (id as ptr, key as cfstringref) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getmutableSetValueForKeyPath Lib foundationlibname Selector "mutableSetValueForKeyPath:" (id as ptr, key as cfstringref) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getName Lib FoundationLibName Selector "name" (id as ptr) As CFStringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getobjCType Lib FoundationLibName Selector "objCType" (id as ptr) As cstring
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getSize Lib foundationlibname Selector "size" (id as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsupportsSecureCoding Lib FoundationLibName Selector "supportsSecureCoding" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getURL Lib FoundationLibName Selector "url" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getUserInfo Lib FoundationLibName Selector "userInfo" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getvalueForKey Lib foundationlibname Selector "valueForKey:" (id as ptr, key as cfstringref) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getvalueForKey Lib foundationlibname Selector "valueForKey:" (id as ptr, key as Ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getvalueForKeyPath Lib foundationlibname Selector "valueForKeyPath:" (id as ptr, key as cfstringref) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function initWithCapacity Lib foundationlibname Selector "initWithCapacity:" (id as ptr, capacity as uinteger) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function NSClassFromString Lib FoundationLibName (aClassName as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Function NSMakePoint(x as double, y as double) As FoundationFRamework.NSPoint
		  #pragma DisableBackgroundTasks
		  #pragma DisableBoundsChecking
		  #Pragma NilObjectChecking false
		  
		  dim NP as foundationframework.NSPoint
		  NP.x = x
		  NP.y = y
		  return np
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function NSMakeRange(Location as UInteger, Length as UInteger) As FoundationFRamework.NSRange
		  #pragma DisableBackgroundTasks
		  #pragma DisableBoundsChecking
		  #Pragma NilObjectChecking false
		  
		  dim NP as foundationframework.NSRange
		  NP.location = location
		  NP.length = Length
		  return np
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function NSMakeRect(x as double, y as double, w as double, h as double) As FoundationFramework.NSRect
		  dim NP  as FoundationFramework.NSRect
		  NP.Origin.x = x
		  np.Origin.y = y
		  NP.Size_.width = w
		  np.Size_.height = h
		  return np
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function NSMakeSize(width as Double, height as double) As FoundationFramework.NSSize
		  dim NS as FoundationFramework.NSSize
		  ns.height = height
		  ns.width = width
		  return ns
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function NSProtocolFromString Lib FoundationLibName (aProtocol as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function NSSelectorFromString Lib FoundationLibName (aSelector as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function NSStringFromSelector Lib FoundationLibName (aSelector as Ptr) As cfstringref
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Sub PerformSelectorOnMainThread(id as ptr, Selector as ptr, AnObject as Ptr, waitUntilDone as Boolean = false)
		  #Pragma StackOverflowChecking false
		  Declare sub performSelectorOnMainThread lib FoundationLibName  selector "performSelectorOnMainThread:withObject:waitUntilDone:" _
		  (id as ptr, aselector as Ptr, withObject as Ptr, waituntildone as boolean) // cannot address an external method, therefore we have to keep the declare here
		  performSelectorOnMainThread id, selector, anObject, waitUntilDone // and have the change checked
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function retain Lib foundationlibname Selector "retain" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdoubleValue Lib FoundationLibName Selector "setDoubleValue:" (id as ptr, value as Double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlocalizedDescription Lib FoundationLibName Selector "setLocalizedDescription:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setName Lib FoundationLibName Selector "setName:" (id as ptr, value as CFStringref)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setNilValueForKey Lib foundationlibname Selector "setNilValueForKey:" (id as ptr, Key as cfstringref)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setSize Lib foundationlibname Selector "setSize:" (id as ptr, value as FoundationFrameWork . NSSize)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function setUserInfo Lib FoundationLibName Selector "setUserInfo:" (id as ptr, value as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setValueforKey Lib foundationlibname Selector "setValue:forKey:" (id as ptr, anObject as cfstringref, Key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setValueforKey Lib foundationlibname Selector "setValue:forKey:" (id as ptr, anObject as Ptr, Key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setValueforKeyPath Lib foundationlibname Selector "setValue:forKeyPath:" (id as ptr, anObject as cfstringref, Key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setValueforKeyPath Lib foundationlibname Selector "setValue:forKeyPath:" (id as ptr, anObject as Ptr, Key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setValuesForKeysWithDictionary Lib foundationlibname Selector "setValuesForKeysWithDictionary:" (id as ptr, KeyedValues as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function StandardTextEncoding() As xojo.Core.TextEncoding
		  static enc as xojo.Core.TextEncoding = xojo.core.TextEncoding.utf8
		  return enc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 436F6E766572747320616E204170706C654172726179207769746820555549447320746F204170706C65555549442829
		Protected Function UUIDtoXojoArray(extends a as AppleArray) As AppleUUID()
		  dim result() as AppleUUID
		  dim count as uinteger = a.Count -1
		  for q  as uinteger = 0 to count
		    result.Append new AppleUUID (a.PtrAtIndex(q))
		  next
		  return result
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if Target64Bit
			    return 8
			  #elseif Target32Bit
			    return 4
			  #endif
			End Get
		#tag EndGetter
		IntegerSize As UInteger
	#tag EndComputedProperty


	#tag Constant, Name = FoundationLibName, Type = Text, Dynamic = False, Default = \"Foundation.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = FoundationPath, Type = Text, Dynamic = False, Default = \"com.apple.Foundation", Scope = Public
	#tag EndConstant


	#tag Structure, Name = CGVector, Flags = &h1
		dx as cgfloat
		dy as cgfloat
	#tag EndStructure

	#tag Structure, Name = NSPoint, Flags = &h1
		x as CGFloat
		y as CGFloat
	#tag EndStructure

	#tag Structure, Name = NSRange, Flags = &h1
		location as UInteger
		length as uinteger
	#tag EndStructure

	#tag Structure, Name = NSRect, Flags = &h1
		Origin as FoundationFramework.NSPoint
		Size_ as FoundationFramework.NSSize
	#tag EndStructure

	#tag Structure, Name = NSSize, Flags = &h1
		width as CGFloat
		height as CGFloat
	#tag EndStructure


	#tag Enum, Name = CFNumberTypes, Flags = &h0
		Int8 = 1
		  Int16 = 2
		  Int32 = 3
		  Int64= 4
		  Float32 = 5
		  Float64 = 6
		  Char = 7
		  Short = 8
		  Int = 9
		  Long = 10
		  LongLong = 11
		  Float = 12
		  Double = 13
		  CFIndex = 14
		  NSInteger = 15
		  CGFloat = 16
		Max = 16
	#tag EndEnum

	#tag Enum, Name = NSComparisonResult, Type = Integer, Flags = &h1
		Ascending = -1
		  Same
		Descending
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IntegerSize"
			Group="Behavior"
			Type="UInteger"
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
End Module
#tag EndModule
