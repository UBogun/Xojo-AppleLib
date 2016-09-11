#tag Class
Protected Class AppleIndexSet
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 4372656174657320616E20656D70747920696E646578207365742E
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor(indexSet(classptr))
		    RetainClassObject
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20696E64657820736574207769746820616E20696E6465782072616E67652E
		Sub Constructor(Range As FoundationFrameWork.NSRange)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor(indexSetWithIndexesInRange(classptr, range))
		    RetainClassObject
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20696E64657820736574207769746820616E20696E6465782E
		Sub Constructor(Index As UInteger)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor(indexSetWithIndex(classptr, index))
		    RetainClassObject
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20696E64657820736574207769746820616E20696E6465782E
		Sub Constructor(Location As UInteger, Length as UInteger)
		  Constructor(FoundationFrameWork.NSMakeRange(location, length))
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function indexSet Lib FoundationLibName Selector "indexSet" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function indexSetWithIndex Lib FoundationLibName Selector "indexSetWithIndex:" (id as ptr, index as uinteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function indexSetWithIndexesInRange Lib FoundationLibName Selector "indexSetWithIndexesInRange:" (id as ptr, range as FoundationFrameWork . NSRange) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFRomPtr(aPtr as Ptr) As AppleIndexSet
		  return if (aptr = nil, nil, new AppleIndexSet(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status incomplete
		
		everything missing besides the constructors
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSIndexSet")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
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
