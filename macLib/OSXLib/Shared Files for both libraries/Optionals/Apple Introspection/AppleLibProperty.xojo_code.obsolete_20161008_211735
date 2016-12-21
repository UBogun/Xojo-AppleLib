#tag Class
Protected Class AppleLibProperty
	#tag Method, Flags = &h0
		Function AttributeList() As objc_property_attribute_t()
		  dim mAttributes() as objc_property_attribute_t
		  dim Count as uinteger
		  dim arrayPtr as ptr = ObjectiveCRuntime.property_copyAttributeList(id, count)
		  if arrayPtr <> NIL then
		    for q as UInteger = 0 to count -1
		      dim att as objc_property_attribute_t = arrayPtr.objc_property_attribute_t(q * objc_property_attribute_t.size)
		      mAttributes.Append att
		    next
		    AppleLibSystem.free arrayPtr
		  end if
		  
		  return mAttributes
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AttributeNames() As text()
		  dim mynames() as text
		  dim myAttributes() as objc_property_attribute_t = AttributeList
		  for q as uinteger = 0 to myAttributes.Ubound
		    dim myattname as cstring = myAttributes(q ).Name
		    mynames.Append text.FromCString (myattname, StandardTextEncoding)
		  next
		  return mynames
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AttributeValue(attribute as CString) As CFStringRef
		  return text.FromCString (ObjectiveCRuntime.property_copyAttributeValue (id, attribute), StandardTextEncoding)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AttributeValues() As text()
		  dim myvalues() as text
		  dim myAttributes() as objc_property_attribute_t = AttributeList
		  for q as uinteger = 0 to myAttributes.Ubound
		    dim myattval as cstring = myAttributes(q ).Value
		    dim attext as text = text.fromCString(myattval, StandardTextEncoding)
		    if not attext.Empty then myvalues.Append attext
		  next
		  return myvalues
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AttributeValuesTranslated() As text()
		  dim myvalues() as text
		  dim myAttributes() as text = AttributeValues
		  for q as uinteger = 0 to myAttributes.Ubound
		    myvalues.Append ObjectiveCRuntime.SingleTypeEncoding (myAttributes(q))
		  next
		  return myvalues
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aProperty as ptr)
		  mid = aProperty
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return text.FromCString (ObjectiveCRuntime.property_getAttributes (id), StandardTextEncoding)
			End Get
		#tag EndGetter
		Attribute As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mId
			End Get
		#tag EndGetter
		Id As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mId As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return  text.FromCString (ObjectiveCRuntime.property_getName (id), StandardTextEncoding)
			End Get
		#tag EndGetter
		Name As Text
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Attribute"
			Group="Behavior"
			Type="Text"
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
End Class
#tag EndClass
