#tag Class
Protected Class AppleLibIntrospection
	#tag Method, Flags = &h0
		Sub Constructor(anId as Ptr)
		  mid = anid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Ivar(position as uinteger) As AppleLibIvar
		  dim myivars() as ptr = IvarList
		  if myivars <> NIL then
		    return new AppleLibIvar (myivars(position*IntegerSize))
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IvarList() As ptr()
		  if mIvarList.Ubound = -1 then
		    dim count as uint32
		    dim arrayPtr as ptr = ObjectiveCRuntime.class_copyIvarList (ClassPtr, count)
		    if arrayPtr <> NIL then
		      for q as UInteger = 0 to count -1
		        mIvarList.Append Arrayptr.Ptr(q*IntegerSize)
		      next
		    end if
		    AppleLibSystem.free arrayPtr
		  end if
		  return mIvarList
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IvarNames() As text()
		  dim result() as text
		  dim myivars() as AppleLibIvar = Ivars
		  if myivars <> NIL then
		    for q as uinteger = 0 to myivars.Ubound
		      result.Append myivars(q).Name
		    next
		    return result
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Ivars() As AppleLibIvar()
		  dim myivars() as ptr = IvarList
		  if myivars <> NIL then
		    dim result() as AppleLibIvar
		    for q as uinteger = 0 to myivars.Ubound
		      dim ivar as  new AppleLibIvar  (myivars (q))
		      result.Append ivar
		    next
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Method(position as uinteger) As AppleLibMethod
		  dim mymethods() as ptr = MethodList
		  if mymethods <> NIL then
		    return new AppleLibMethod (mymethods(position * IntegerSize))
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MethodList() As ptr()
		  if mMethodList.Ubound = -1 then
		    dim count as uint32
		    dim arrayPtr as ptr = ObjectiveCRuntime.class_copyMethodList (ClassPtr, count)
		    if arrayPtr <> NIL then
		      for q as UInteger = 0 to count -1
		        mmethodlist.Append Arrayptr.Ptr(q*IntegerSize)
		      next
		    end if
		    AppleLibSystem.free arrayPtr
		  end if
		  return mmethodlist
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MethodNames() As text()
		  dim result() as text
		  dim myMethods() as AppleLibMethod = Methods
		  if myMethods <> NIL then
		    for q as uinteger = 0 to myMethods.Ubound
		      dim myMethod as AppleLibMethod = Method (q)
		      result.Append myMethod.Name
		    next
		    return result
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Methods() As AppleLibMethod()
		  dim mymethods() as ptr = MethodList
		  if mymethods <> NIL then
		    dim result() as AppleLibMethod
		    for q as uinteger = 0 to (mymethods.Ubound)
		      dim mymethod as new AppleLibMethod ( mymethods (q))
		      result.Append mymethod
		    next
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Properties() As AppleLibProperty()
		  dim myProps() as ptr = PropertyList
		  
		  if myProps <> NIL then
		    dim result() as AppleLibProperty
		    for q as uinteger = 0 to myProps.Ubound
		      dim Prop as new AppleLibProperty (myProps (q))
		      result.Append prop
		    next
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PropertyList() As ptr()
		  if mPropertyList.Ubound = -1 then
		    dim count as uint32
		    dim arrayPtr as ptr = ObjectiveCRuntime.class_copyPropertyList (ClassPtr, count)
		    if arrayPtr <> NIL then
		      for q as UInteger = 0 to count -1
		        mPropertyList.Append Arrayptr.Ptr(q*IntegerSize)
		      next
		    end if
		    AppleLibSystem.free arrayPtr
		  end if
		  return mPropertyList
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PropertyNames() As text()
		  dim result() as text
		  dim myprops() as AppleLibProperty = Properties
		  if myprops <> NIL then
		    for q as uinteger = 0 to myprops.Ubound
		      dim myprop as AppleLibProperty = property_ (q)
		      result.Append myprop.Name
		    next
		    return result
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Property_(position as uinteger) As AppleLibProperty
		  dim myProps() as ptr = PropertyList
		  
		  if myProps <> NIL then
		    return new AppleLibProperty (myProps(position * IntegerSize))
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function RegisteredClasses() As text()
		  dim count as uinteger
		  dim ArrayPtr as ptr = ObjectiveCRuntime.objc_copyClassList (count)
		  dim classPtrs as xojo.Core.MemoryBlock = MemoryBlockExtension.fromPtrArray (ArrayPtr, count)
		  dim result() as text
		  for q as uinteger = 0 to count -1
		    result.Append text.FromCString (ObjectiveCRuntime.class_getName (classPtrs.PtrValue(q*IntegerSize)), StandardTextEncoding)
		  next
		  AppleLibSystem.free ArrayPtr // need to clear the memory - see Objective C Runtime Reference
		  // MacOSLibSystem.Free classptrs
		  // DeAlloc ArrayPtr // need to clear the memory - see Objective C Runtime Reference
		  Return result
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return text.FromCString (ObjectiveCRuntime.object_getClassName (id), StandardTextEncoding)
			End Get
		#tag EndGetter
		ClassName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.object_getClass (id)
			End Get
		#tag EndGetter
		ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.class_getVersion (ClassPtr)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ObjectiveCRuntime.class_setVersion ClassPtr, value
			End Set
		#tag EndSetter
		ClassVersion As Int32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.class_getInstanceSize (classptr)
			End Get
		#tag EndGetter
		InstanceSize As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.class_isMetaClass (classptr)
			End Get
		#tag EndGetter
		isMetaClass As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return text.FromCString (ObjectiveCRuntime.class_getName (MetaclassPtr), StandardTextEncoding)
			End Get
		#tag EndGetter
		MetaclassName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.objc_getMetaClass (ClassName.ToCString (StandardTextEncoding))
			End Get
		#tag EndGetter
		MetaclassPtr As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mId As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mIvarList() As ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mMethodList() As ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mPropertyList() As ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return text.FromCString (ObjectiveCRuntime.class_getImageName (ClassPtr), StandardTextEncoding)
			End Get
		#tag EndGetter
		OriginatedFromFramework As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  return  text.FromCString (ObjectiveCRuntime.class_getName (SuperclassPtr), StandardTextEncoding)
			End Get
		#tag EndGetter
		SuperclassName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.class_getSuperclass (ClassPtr)
			End Get
		#tag EndGetter
		SuperclassPtr As Ptr
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ClassName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClassVersion"
			Group="Behavior"
			Type="Int32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InstanceSize"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isMetaClass"
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
			Name="MetaclassName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OriginatedFromFramework"
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
			Name="SuperclassName"
			Group="Behavior"
			Type="Text"
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
