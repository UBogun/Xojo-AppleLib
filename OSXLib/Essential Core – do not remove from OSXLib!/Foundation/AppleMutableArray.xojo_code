#tag Class
Protected Class AppleMutableArray
Inherits AppleArray
	#tag Method, Flags = &h0
		Sub Addobject(anObject as AppleGeneralObject)
		  AddPtr if (anObject = nil, nil,  anObject.GeneralID)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddPtr(anObject as Ptr)
		  #If TargetMacOS then
		    Declare Sub addObject lib FoundationLibName  selector "addObject:" (id as ptr, value as ptr)
		    addObject (id, anObject)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddText(aText as CFStringREf)
		  #If TargetMacOS then
		    Declare Sub addObject lib FoundationLibName  selector "addObject:" (id as ptr, value as cfstringref)
		    addObject (id, atext)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (Init(Alloc(ClassPtr)))
		    mHasOwnership = true
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Capacity as uinteger)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (FoundationFrameWork.initwithcapacity(Alloc(ClassPtr), Capacity))
		    mhasownership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function fromAppleObjects(paramarray objects() as AppleObject) As AppleMutableArray
		  dim count as uinteger = objects.Ubound
		  dim myarray as new AppleMutableArray (count + 1)
		  for q as uinteger = 0 to count
		    myarray.AddPtr objects(q).id
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function fromAppleObjects(objects() as AppleObject) As AppleMutableArray
		  dim count as uinteger = objects.Ubound
		  dim myarray as new AppleMutableArray (count + 1)
		  for q as uinteger = 0 to count
		    myarray.AddPtr objects(q).id
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function fromGeneralObjects(paramarray objects() as AppleGeneralObject) As AppleMutableArray
		  dim count as uinteger = objects.Ubound
		  dim myarray as new AppleMutableArray (count + 1)
		  for q as uinteger = 0 to count
		    myarray.AddPtr objects(q).GeneralID
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function fromGeneralObjects(objects() as AppleGeneralObject) As AppleMutableArray
		  dim count as uinteger = objects.Ubound
		  dim myarray as new AppleMutableArray (count + 1)
		  for q as uinteger = 0 to count
		    myarray.AddPtr objects(q).GeneralID
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakeArrayPtr(Capacity as uinteger = 1) As Ptr
		  #If TargetMacOS then
		    
		    #pragma StackOverflowChecking false
		    // Declare Function alloc lib FoundationLibName selector "alloc" (id as ptr) as ptr
		    return FoundationFrameWork.InitWithCapacity (alloc(ThreadSafeClassPtr), capacity)
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSPointArray(Pointarray() as Foundationframework.NSPoint) As AppleMutableArray
		  dim count as uinteger = pointarray.Ubound + 1
		  dim myarray as new AppleMutableArray (count)
		  for q as uinteger = 1 to count
		    myarray.Addobject new AppleValue (Pointarray(q-1))
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NumberArray(NumberArray() as Double) As AppleMutableArray
		  dim count as uinteger = NumberArray.Ubound
		  dim myarray as new AppleMutableArray (count + 1)
		  for q as uinteger = 0 to count
		    dim mynumber as new AppleNumber (NumberArray(q))
		    myarray.Addobject mynumber
		  next
		  return myarray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveObjectAtIndex(Index as uinteger)
		  #If TargetMacOS then
		    Declare sub removeObjectAtIndex lib FoundationLibName  selector "removeObjectAtIndex:" (id as ptr, index as uinteger)
		    removeObjectAtIndex id, index
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Textarray(Textarray() as text) As AppleMutableArray
		  #If TargetMacOS then
		    
		    dim count as uinteger = Textarray.Ubound
		    dim myarray as new AppleMutableArray (count + 1)
		    for q as uinteger = 0 to count
		      myarray.AddText Textarray(q)
		    next
		    return myarray
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub ThreadSafeAdd(NSarray as ptr, anObject as ptr)
		  #If TargetMacOS then
		    #pragma StackOverflowChecking false
		    Declare Sub addObject lib FoundationLibName  selector "addObject:" (id as ptr, value as ptr)
		    addObject (NSarray, anObject)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function ThreadSafeClassPtr() As ptr
		  #pragma StackOverflowChecking false
		  static macptr as ptr
		  if macptr= nil then macptr= FoundationFrameWork.NSClassFromString("NSMutableArray")
		  return macptr
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSMutableArray")
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
