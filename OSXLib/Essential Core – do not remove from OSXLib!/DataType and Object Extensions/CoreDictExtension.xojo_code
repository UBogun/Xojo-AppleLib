#tag Module
Protected Module CoreDictExtension
	#tag Method, Flags = &h0
		Function KeyForValue(extends d as xojo.core.dictionary, value as Auto) As Auto
		  for Each de as xojo.Core.DictionaryEntry in d
		    if de.Value = value then return de.Key
		  next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextKeyDicttoCoreDictionary(extends d as AppleDictionary) As xojo.Core.Dictionary
		  #If TargetMacOS then
		    dim result as new xojo.Core.Dictionary
		    dim keys as AppleArray = d.Allkeys
		    dim count as uinteger = keys.Count -1
		    for q as uinteger = 0 to count
		      dim key as text = keys.TextAtIndex(q)
		      result.Value(key) = d.ValueForKey(key)
		    next
		    return result
		  #endif
		End Function
	#tag EndMethod


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
End Module
#tag EndModule
