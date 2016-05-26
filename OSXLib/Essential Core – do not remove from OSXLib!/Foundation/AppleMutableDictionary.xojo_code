#tag Class
Protected Class AppleMutableDictionary
Inherits AppleDictionary
	#tag Method, Flags = &h0
		Sub AddDictionary(Dictionary as AppleDictionary)
		  addEntriesFromDictionary id, Dictionary.Id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub addEntriesFromDictionary Lib foundationlibname Selector "addEntriesFromDictionary:" (id as ptr, otherDict as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (Init(Alloc(ClassPtr)))
		  mhasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Capacity as uinteger)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (FoundationFrameWork.initWithCapacity(Alloc(ClassPtr), Capacity))
		  mhasownership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MakeCopyOf(Dictionary as AppleDictionary)
		  setDictionary id, Dictionary.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjectForKey(akey as Applegeneralobject, assigns value as AppleGeneralObject)
		  setObjectForKey(id, value.GeneralID, akey.GeneralID)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjectForKey(akey as cfstringref, assigns value as AppleGeneralObject)
		  setObjectForKey(id, value.GeneralID, akey)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveAllObjects()
		  removeAllObjects id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub removeAllObjects Lib foundationlibname Selector "removeAllObjects" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub RemoveObject(akey as Applegeneralobject)
		  removeObjectForKey (id, akey.GeneralID)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveObject(akey as CFStringRef)
		  removeObjectForKey (id, akey)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub removeObjectForKey Lib foundationlibname Selector "removeObjectForKey:" (id as ptr, Key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub removeObjectForKey Lib foundationlibname Selector "removeObjectForKey:" (id as ptr, Key as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub RemoveObjects(Keys as AppleArray)
		  removeObjectsForKeys id, keys.Id
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub removeObjectsForKeys Lib foundationlibname Selector "removeObjectsForKeys:" (id as ptr, Keys as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setDictionary Lib foundationlibname Selector "setDictionary:" (id as ptr, otherDict as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setObjectForKey Lib foundationlibname Selector "setObject:forKey:" (id as ptr, anObject as Ptr, Key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setObjectForKey Lib foundationlibname Selector "setObject:forKey:" (id as ptr, anObject as Ptr, Key as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub setValue(Key as CFstringRef , value as AppleGeneralObject)
		  FoundationFrameWork.setValueforKey(id, value.GeneralID, key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setValue(Key as CFstringRef , value as CFStringRef)
		  FoundationFrameWork.setValueforKey(id, value, key)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSMutableDictionary")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Count"
			Group="Behavior"
			Type="UInteger"
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
			Name="StringsFileFormat"
			Group="Behavior"
			Type="Text"
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
