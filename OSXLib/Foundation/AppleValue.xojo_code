#tag Class
Protected Class AppleValue
Inherits AppleObject
	#tag Method, Flags = &h1000
		Sub Constructor(APoint As FoundationFrameWork.NSPoint)
		  super.Constructor (valueWithPoint (ClassPtr, apoint))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ARect As FoundationFramework.NSRect)
		  super.Constructor (valueWithRect (ClassPtr, aRect))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(ASize As FoundationFramework.NSSize)
		  super.Constructor (valueWithSize (ClassPtr, aSize))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub constructor(value as xojo.core.memoryblock, type as CString)
		  super.Constructor(  valueWithBytes (ClassPtr, value.Data, type))
		  retainclassobject
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Equals(anotherValue as AppleValue) As Boolean
		  return getisEqualToValue (id, anotherValue.id)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FromNonretainedObject(anObject as AppleGeneralObject) As AppleValue
		  dim result as new AppleValue(valueWithNonretainedObject(classptr, anobject.GeneralId))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function FromPtr(aPtr as Ptr) As AppleValue
		  dim result as new AppleValue(valueWithPointer(classptr, aptr))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getisEqualToValue Lib foundationlibname Selector "isEqualToValue:" (id as ptr, value as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getnonretainedObjectValue Lib foundationlibname Selector "nonretainedObjectValue" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getpointerValue Lib foundationlibname Selector "pointerValue" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getpointValue Lib foundationlibname Selector "pointValue" (id as ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getrectValue Lib foundationlibname Selector "rectValue" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getsizeValue Lib foundationlibname Selector "sizeValue" (id as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleValue
		  return if (aptr = nil, nil, new AppleValue(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function valueWithBytes Lib foundationlibname Selector "valueWithBytes:objCType:" (id as ptr, value as ptr, type as cstring) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function valueWithNonretainedObject Lib foundationlibname Selector "valueWithNonretainedObject:" (id as ptr, value as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function valueWithPoint Lib foundationlibname Selector "valueWithPoint:" (id as ptr, value as FoundationFrameWork . NSPoint) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function valueWithPointer Lib foundationlibname Selector "valueWithPointer:" (id as ptr, value as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function valueWithRect Lib foundationlibname Selector "valueWithRect:" (id as ptr, value as FoundationFrameWork . NSRect) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function valueWithSize Lib foundationlibname Selector "valueWithSize:" (id as ptr, value as FoundationFrameWork . NSSize) As ptr
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFrameWork.NSClassFromString ("NSValue")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return  AppleObject.MakeFromPtr (getnonretainedObjectValue (id))
			  
			End Get
		#tag EndGetter
		NonRetainedObjectValue As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getpointerValue (id)
			  
			End Get
		#tag EndGetter
		PointerValue As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getpointValue (id)
			  
			End Get
		#tag EndGetter
		PointValue As FoundationFramework.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getrectValue (id)
			  
			End Get
		#tag EndGetter
		RectValue As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getsizeValue (id)
			  
			  
			End Get
		#tag EndGetter
		SizeValue As FoundationFramework.NSSize
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