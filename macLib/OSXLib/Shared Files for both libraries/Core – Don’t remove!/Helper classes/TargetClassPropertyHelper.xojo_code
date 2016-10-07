#tag Class
Protected Class TargetClassPropertyHelper
	#tag Method, Flags = &h0
		Function AppendBlock(t as Text) As Xojo.core.mutablememoryblock
		  dim appendblock as new xojo.Core.MutableMemoryBlock (t.Length +1)
		  appendblock.CStringValue(0) = CStringValue(t)
		  return appendblock
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(PropertyName as Text, ClassPtr as Ptr, type as actiontype, Paramarray AddValues() as text)
		  self.PropertyName = PropertyName
		  self.Type = type
		  if type = ActionType.Replace then
		    PropertyPtr= ObjectiveCRuntime.class_getProperty (classptr, CStringValue(PropertyName)) // get the original class property
		    if PropertyPtr <> nil then
		      dim attstring as cstring = ObjectiveCRuntime.property_getAttributes(PropertyPtr) // and its attributes names and values
		      dim attext as text = text.fromCString(attstring, xojo.core.TextEncoding.ASCII)
		      dim attarray() as text = attext.Split(",")
		      dim attcount as uinteger = attarray.Ubound
		      for q as integer = 0 to attcount // and add them to the arrays.
		        dim curtext as text = attarray(q)
		        attnames.Append curtext.left(1)
		        if curtext.Length > 1 then
		          dim atval as text = curtext.right (curtext.Length -1)
		          Attvalues.Append atval
		        else
		          Attvalues.Append ""
		        end if
		      next
		    else
		      MakeException "Couldn’t get the property for "+PropertyName
		    end if
		  end if
		  
		  // Now add the new properties
		  dim valuecount as integer = AddValues.Ubound
		  if valuecount > 0 then
		    for q as integer = 0 to valuecount step 2
		      AttNames.Append AddValues(q)
		      Attvalues.Append AddValues(q+1)
		      if AddValues(q) = "S" then // setter: Remove REad-only?
		        for p as integer = 0 to AttNames.Ubound - 1
		          if AttNames(p) ="R" then
		            AttNames.Remove (p)
		            Attvalues.remove (p)
		          end if
		        next
		      end if
		    next
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CStringValue(aText as Text) As CString
		  return aText.toCString (xojo.core.TextEncoding.ASCII)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		AttNames() As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		Attvalues() As Text
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return CStringValue(PropertyName)
			End Get
		#tag EndGetter
		PropertyCString As CString
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		PropertyName As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Private PropertyPtr As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim offsets() as uinteger
			  dim attCount as integer = AttNames.Ubound +1
			  dim mResult as new xojo.Core.MutableMemoryBlock(attCount * IntegerSize * 2)
			  // Two ptrs for each attribute: One to the name, the second to its value.
			  dim offset as uinteger =mResult.Size
			  Offsets.Append offset
			  dim loopcount as integer = attCount -1
			  for q as integer = 0 to loopcount
			    dim appendMB as xojo.Core.MutableMemoryBlock  = AppendBlock(attnames(q))
			    mResult.Append appendMB
			    offset = offset + appendMB.size
			    Offsets.Append offset
			    // mResult.PtrValue(q * IntegerSize * 2) =posptr
			    appendMB = AppendBlock(Attvalues(q))
			    mResult.Append appendMB
			    offset = offset + appendMB.size
			    Offsets.Append offset
			    // mResult.PtrValue(q * IntegerSize * 2 + IntegerSize) =posptr
			    // PosPtr = Ptr(uinteger(posptr) + appendMB.Size)
			    // System.DebugLog integer(mresult.Data).ToText
			  next
			  for q as integer = 0 to Offsets.Ubound -1
			    mResult.PtrValue(q*IntegerSize) = ptr(uinteger(mResult.Data)+offsets(q))
			  next
			  return mResult
			  
			End Get
		#tag EndGetter
		ResultMB As xojo.Core.MutableMemoryBlock
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Type As ActionType
	#tag EndProperty


	#tag Enum, Name = ActionType, Type = Integer, Flags = &h0
		Replace
		  Add
		Override
	#tag EndEnum


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
			Name="PropertyName"
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
			Name="Type"
			Group="Behavior"
			Type="ActionType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Replace"
				"1 - Add"
				"2 - Override"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
