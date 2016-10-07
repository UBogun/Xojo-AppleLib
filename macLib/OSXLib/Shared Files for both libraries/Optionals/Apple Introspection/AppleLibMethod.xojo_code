#tag Class
Protected Class AppleLibMethod
	#tag Method, Flags = &h0
		Function Argumenttype(index as uint32) As Text
		  dim temp as cstring = ObjectiveCRuntime.method_copyArgumentType (id, index)
		  dim result as text =  TextExtension.FromCString (temp)
		  AppleLibSystem.free temp
		  return result
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Argumenttypes() As Text()
		  dim result() as text
		  if NumberofArguments > 0 then
		    for q as uint32 = 0 to NumberofArguments -1
		      result.Append Argumenttype (q)
		    next
		  end if
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ArgumenttypesTranslated() As Text()
		  dim result() as text
		  dim myarguments() as text = Argumenttypes
		  for q as uint32 = 0 to myarguments.Ubound
		    result.Append ObjectiveCRuntime.TranslateTypeEncoding (myarguments (q))
		  next
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(aMethod as ptr)
		  mid = aMethod
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Invoke(anInstance as Ptr, Argument as ptr) As Auto
		  return ObjectiveCRuntime.method_invoke (aninstance, id, Argument)
		End Function
	#tag EndMethod


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
			  return ObjectiveCRuntime.method_getImplementation (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  call ObjectiveCRuntime.method_setImplementation (id, value)
			End Set
		#tag EndSetter
		Implementation As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( hidden ) Private mId As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return text.FromCString (ObjectiveCRuntime.method_getName (id), xojo.core.TextEncoding.UTF8)
			End Get
		#tag EndGetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.method_getNumberOfArguments (id)
			End Get
		#tag EndGetter
		NumberofArguments As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return text.FromCString (ObjectiveCRuntime.method_copyReturnType (id), xojo.core.TextEncoding.UTF8)
			End Get
		#tag EndGetter
		ReturnType As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.TranslateTypeEncoding (ReturnType)
			End Get
		#tag EndGetter
		ReturnTypeTranslated As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return text.FromCString (ObjectiveCRuntime.method_getTypeEncoding (id), xojo.core.TextEncoding.UTF8)
			End Get
		#tag EndGetter
		TypeEncoding As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ObjectiveCRuntime.TranslateTypeEncoding (typeencoding)
			End Get
		#tag EndGetter
		TypeEncodingTranslated As Text
	#tag EndComputedProperty


	#tag ViewBehavior
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
			Name="NumberofArguments"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReturnType"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReturnTypeTranslated"
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
		#tag ViewProperty
			Name="TypeEncoding"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TypeEncodingTranslated"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
