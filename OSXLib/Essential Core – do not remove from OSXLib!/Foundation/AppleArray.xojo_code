#tag Class
Protected Class AppleArray
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E7320616E20617272617920636F6E7461696E696E67206120676976656E206F626A6563742E
<<<<<<< HEAD
		Shared Function ArrayWithObject(anObject as AppleGeneralObject) As AppleArray
		  dim result as new AppleArray(ArrayWithObject(classptr, anObject.GeneralID))
		  result.RetainClassObject
		  return Result
=======
		 Shared Function ArrayWithObject(anObject as AppleGeneralObject) As AppleArray
		  #If TargetMacOS then
		    dim result as new AppleArray(ArrayWithObject(classptr, anObject.GeneralID))
		    result.RetainClassObject
		    return Result
		  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function arrayWithObject Lib foundationlibname Selector "arrayWithObject:" (id as ptr, anobject as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1000, Description = 4372656174657320616E642072657475726E7320616E20656D7074792061727261792E
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

	#tag Method, Flags = &h1000, Description = 4372656174657320616E642072657475726E7320616E20617272617920636F6E7461696E696E6720746865206F626A6563747320696E20616E6F7468657220676976656E2061727261792E
		Sub Constructor(anArray as AppleArray)
		  Declare function arrayWithArray lib FoundationLibName  selector "arrayWithArray:" (id as ptr, anarray as ptr) as ptr
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (arrayWithArray(classptr, anArray.id))
		    RetainClassObject
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A65732061206E65776C7920616C6C6F636174656420617272617920776974682074686520636F6E74656E7473206F66207468652066696C6520737065636966696564206279206120676976656E20706174682E
		Sub Constructor(FileName As Text)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
<<<<<<< HEAD
		  Super.Constructor (FoundationFrameWork.initwithcontentsoffile(alloc(classptr), FileName))
		  MHasOwnership = true
=======
		  #If TargetMacOS then
		    Super.Constructor (initwithcontentsoffile(alloc(classptr), FileName))
		    MHasOwnership = true
		  #endif
>>>>>>> 850c2b9e64f764e6e5f008b647e59ba9d919e03d
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4120636F6E76656E65696E636520636F6E7374727563746F7220746F20636F6E766572742061206D656D6F7279626C6F636B20636F6E7461696E696E67206F626A6563747320696E746F20616E204170706C6541727261792E
		Sub Constructor(Objectarray As xojo.Core.MemoryBlock)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (initWithObjects(alloc(classptr), Objectarray.Data))
		    MHasOwnership = true
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 4120636F6E76656E65696E636520636F6E7374727563746F7220746F20636F6E766572742074686520666972737420636F756E74206974656D73206F662061206D656D6F7279626C6F636B20636F6E7461696E696E67206F626A6563747320696E746F20616E204170706C6541727261792E
		Sub Constructor(Objectarray As xojo.Core.MemoryBlock, count as uinteger)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (initWithObjectsCount(alloc(classptr), Objectarray.Data, count))
		    MHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsObject(anObject as AppleGeneralObject) As Boolean
		  #If TargetMacOS then
		    return getcontainsObject (id, anObject.GeneralID)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsText(SearchText as Text) As Boolean
		  #If TargetMacOS then
		    return getcontainsText (id, SearchText)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcontainsObject Lib foundationlibname Selector "containsObject:" (id as ptr, anobject as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcontainsText Lib foundationlibname Selector "containsObject:" (id as ptr, aText as CFStringRef) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getobjectAtIndex Lib foundationlibname Selector "objectAtIndex:" (id as ptr, index as uinteger) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getTextAtIndex Lib foundationlibname Selector "objectAtIndex:" (id as ptr, index as uinteger) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function initWithObjects Lib foundationlibname Selector "initWithObjects:" (id as ptr, objects as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function initWithObjectsCount Lib foundationlibname Selector "initWithObjects:count:" (id as ptr, objects as ptr, count as uinteger) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleArray
		  return if (aptr = NIL, Nil, new AppleArray (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ObjectAtIndex(Index as Uinteger) As AppleObject
		  #If TargetMacOS then
		    return AppleObject.MakeFromPtr (getobjectAtIndex (id, index))
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PtrAtIndex(Index as Uinteger) As Ptr
		  #If TargetMacOS then
		    return getobjectAtIndex (id, index)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function sortedArrayUsingComparator Lib foundationlibname Selector "sortedArrayUsingComparator:" (id as ptr, compareblock as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E2061727261792074686174206C697374732074686520726563656976696E67206172726179E280997320656C656D656E747320696E20617363656E64696E67206F726465722C2061732064657465726D696E65642062792074686520636F6D70617269736F6E206D6574686F6420737065636966696564206279206120676976656E204E53436F6D70617261746F7220426C6F636B2E
		Function SortWithBlock(compareblock as AppleBlock) As AppleArray
		  #If TargetMacOS then
		    return AppleArray.MakeFromPtr (sortedArrayUsingComparator(id, compareblock.Handle))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextAtIndex(Index as Uinteger) As text
		  #If TargetMacOS then
		    return getTextAtIndex (id, index)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toPtrArray() As Ptr()
		  dim result() as Ptr
		  dim mycount as uinteger = count -1
		  for q as uinteger = 0 to mycount
		    result.Append PtrAtIndex (q)
		  next
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function toTextArray() As text()
		  dim result() as text
		  dim mycount as uinteger = count -1
		  for q as uinteger = 0 to mycount
		    result.Append Textatindex (q)
		  next
		  return result
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSArray")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return FoundationFrameWork.getCount(id)
			  #endif
			End Get
		#tag EndGetter
		Count As UInteger
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
