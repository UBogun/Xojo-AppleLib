#tag Class
 Attributes ( incomplete ) Protected Class AppleSet
Inherits AppleObject
	#tag Method, Flags = &h1000
		Sub Constructor()
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (init(Alloc(ClassPtr)))
		    mHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(AnArray as AppleArray)
		  Declare Function initWithArray lib FoundationLibName  selector "initWithArray:" (id as ptr, anArray as Ptr) as Ptr
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (initWithArray(Alloc(ClassPtr), AnArray.id))
		    mHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Paramarray Objects() as AppleObject)
		  Declare Function initWithObjects lib FoundationLibName  selector "initWithObjects:" (id as ptr, anArray as Ptr) as Ptr
		  dim objCount as UInteger= objects.Ubound
		  dim mb as new MutableMemoryBlock ((objCount + 2) * IntegerSize)
		  for q as uinteger = 0 to objCount
		    mb.PtrValue(q * IntegerSize) = Objects(q).Id
		  next
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor (initWithObjects(Alloc(ClassPtr), mb.Data))
		    mHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContainsObject(anObject as AppleObject) As Boolean
		  #If TargetMacOS then
		    Declare Function containsObject lib FoundationLibName  selector "containsObject:" (id as ptr, anobject as ptr) as Boolean
		    Return containsObject (id, anObject.id)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleSet
		  return if (aptr = nil, nil, new AppleSet (aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function allObjects lib FoundationLibName  selector "allObjects" (id as ptr) as Ptr
			  #If TargetMacOS then
			    Return AppleArray.MakeFromPtr (allObjects(id))
			  #endif
			End Get
		#tag EndGetter
		AllObjects As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function anyObject lib FoundationLibName  selector "anyObject" (id as ptr) as Ptr
			  #If TargetMacOS then
			    Return AppleObject.MakeFromPtr (anyObject(id))
			  #endif
			End Get
		#tag EndGetter
		AnyObject As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSSet")
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


	#tag Using, Name = Xojo.core
	#tag EndUsing


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
