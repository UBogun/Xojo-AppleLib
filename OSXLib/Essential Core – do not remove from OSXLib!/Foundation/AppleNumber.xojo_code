#tag Class
Protected Class AppleNumber
Inherits AppleValue
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFNumberGetByteSize Lib Foundationlibname (Number as Ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFNumberGetType Lib Foundationlibname (Number as Ptr) As CFNumberTypes
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function CFNumberIsFloatType Lib Foundationlibname (Number as Ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub Constructor(aBool as boolean)
		  super.constructor (initWithBool (Alloc(ClassPtr), aBool))
		  mhasOwnership = true
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aDouble as Double)
		  super.constructor ( initWithDouble (Alloc(ClassPtr), aDouble))
		  mhasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(anint as int16)
		  super.constructor ( initWithShort (Alloc(ClassPtr), anint))
		  mhasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(achar as int8)
		  super.constructor ( initWithChar (Alloc(ClassPtr), achar))
		  mhasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(anint as Integer)
		  super.constructor ( initWithInteger (Alloc(ClassPtr), anint))
		  mhasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aSingle as Single)
		  super.constructor ( initWithFloat (Alloc(ClassPtr), asingle))
		  mhasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(aNumber as AppleNumber) As boolean
		  return getisEqualToNumber (id, aNumber.id)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getboolValue Lib foundationlibname Selector "boolValue" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getcharValue Lib foundationlibname Selector "charValue" (id as ptr) As INT8
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getisEqualToNumber Lib foundationlibname Selector "isEqualToNumber:" (id as ptr, value as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getlongLongValue Lib foundationlibname Selector "longLongValue" (id as ptr) As INT64
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getshortValue Lib foundationlibname Selector "shortValue" (id as ptr) As int16
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getunsignedCharValue Lib foundationlibname Selector "unsignedCharValue" (id as ptr) As uint8
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getunsignedIntegerValue Lib foundationlibname Selector "unsignedIntegerValue" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getunsignedLongLongValue Lib foundationlibname Selector "unsignedLongLongValue" (id as ptr) As UInt64
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getunsignedLongValue Lib foundationlibname Selector "unsignedLongValue" (id as ptr) As UInt32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getunsignedShortValue Lib foundationlibname Selector "unsignedShortValue" (id as ptr) As uint16
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function initWithBool Lib foundationlibname Selector "initWithBool:" (id as ptr, value as Boolean) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function initWithChar Lib foundationlibname Selector "initWithChar:" (id as ptr, value as int8) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function initWithDouble Lib foundationlibname Selector "initWithDouble:" (id as ptr, value as double) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function initWithFloat Lib foundationlibname Selector "initWithFloat:" (id as ptr, value as single) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function initWithInteger Lib foundationlibname Selector "initWithInteger:" (id as ptr, value as integer) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function initWithShort Lib foundationlibname Selector "initWithShort:" (id as ptr, value as int16) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleNumber
		  return if (aPtr <> NIL, new AppleNumber(aptr), Nil)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getboolValue (id)
			  
			End Get
		#tag EndGetter
		BoolValue As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFrameWork.NSClassFromString ("NSNumber")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FoundationFrameWork.getDoubleValue (id)
			  
			End Get
		#tag EndGetter
		DoubleValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getshortValue (id)
			  
			End Get
		#tag EndGetter
		Int16Value As Int16
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppKitFramework.getintValue (id)
			  
			End Get
		#tag EndGetter
		Int32Value As Int32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getlongLongValue (id)
			  
			End Get
		#tag EndGetter
		Int64Value As Int64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getcharValue (id)
			  
			End Get
		#tag EndGetter
		Int8Value As Int8
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppKitFramework.getintegerValue (id)
			  
			End Get
		#tag EndGetter
		IntegerValue As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFNumberIsFloatType (id)
			End Get
		#tag EndGetter
		IsFloat As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFNumberGetType (id)
			End Get
		#tag EndGetter
		NumberType As CFNumberTypes
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FoundationFrameWork.getobjCType (id)
			  
			End Get
		#tag EndGetter
		objCType As cstring
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppKitFramework.getfloatValue (id)
			  
			End Get
		#tag EndGetter
		SingleValue As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CFNumberGetByteSize (id)
			End Get
		#tag EndGetter
		Size As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppKitFramework.getstringValue (id)
			  
			End Get
		#tag EndGetter
		StringValue As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getunsignedShortValue (id)
			  
			End Get
		#tag EndGetter
		UInt16Value As UInt16
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getunsignedLongValue (id)
			  
			End Get
		#tag EndGetter
		UInt32Value As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getunsignedLongLongValue (id)
			  
			End Get
		#tag EndGetter
		UInt64Value As UInt64
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getunsignedCharValue (id)
			  
			End Get
		#tag EndGetter
		UInt8Value As UInt8
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getunsignedIntegerValue (id)
			  
			End Get
		#tag EndGetter
		UIntegerValue As UInteger
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BoolValue"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleValue"
			Group="Behavior"
			Type="Double"
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
			Name="Int16Value"
			Group="Behavior"
			Type="Int16"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Int32Value"
			Group="Behavior"
			Type="Int32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Int64Value"
			Group="Behavior"
			Type="Int64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Int8Value"
			Group="Behavior"
			Type="Int8"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IntegerValue"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsFloat"
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
			Name="NumberType"
			Group="Behavior"
			Type="CFNumberTypes"
			EditorType="Enum"
			#tag EnumValues
				"1 - Int8"
				"2 - Int16"
				"3 - Int32"
				"4 - Int64"
				"5 - Float32"
				"6 - Float64"
				"7 - Char"
				"8 - Short"
				"9 - Int"
				"10 - Long"
				"11 - LongLong"
				"12 - Float"
				"13 - Double"
				"14 - CFIndex"
				"15 - NSInteger"
				"16 - CGFloat"
				"16 - Max"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SingleValue"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StringValue"
			Group="Behavior"
			Type="text"
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
			Name="UInt16Value"
			Group="Behavior"
			Type="UInt16"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UInt32Value"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UInt64Value"
			Group="Behavior"
			Type="UInt64"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UInt8Value"
			Group="Behavior"
			Type="UInt8"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UIntegerValue"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
