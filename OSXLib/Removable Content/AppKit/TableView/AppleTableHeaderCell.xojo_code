#tag Class
Protected Class AppleTableHeaderCell
Inherits AppleTextFieldCell
	#tag Method, Flags = &h0, Description = 437265617465732061204E53546578746669656C6443656C6C206F626A65637420696E697469616C697A65642077697468207468652073706563696669656420737472696E6720616E642073657420746F2068617665207468652063656C6CE28099732064656661756C74206D656E752E
		Sub Constructor()
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(init(alloc(classptr)))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061204E53546578746669656C6443656C6C206F626A65637420696E697469616C697A65642077697468207468652073706563696669656420737472696E6720616E642073657420746F2068617665207468652063656C6CE28099732064656661756C74206D656E752E
		Sub Constructor(Caption as cfstringRef)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(initTextCell(alloc(classptr), caption))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsortIndicatorRectForBounds Lib AppKitLibName Selector "sortIndicatorRectForBounds:" (id as ptr, rect as FoundationFrameWork . NSRect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleTableHeaderCell
		  return if (aptr= nil, nil, new AppleTableHeaderCell(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206C6F636174696F6E20746F20646973706C61792074686520736F7274696E6720696E64696361746F7220676976656E20746865526563742E
		Function SortIndicatorRect(Bounds as FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  return getsortIndicatorRectForBounds (id, bounds)
		End Function
	#tag EndMethod


	#tag Note, Name = Status incomplete
		
		needs a subclass with custom draw avents too.
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSTableHeaderCell")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BezelStyle"
			Group="Behavior"
			Type="NSTextFieldBezelStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Square"
				"1 - Rounded"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DrawsBackground"
			Group="Behavior"
			Type="Boolean"
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
			Name="IntegerValue"
			Group="Behavior"
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
			Name="PlaceholderString"
			Group="Behavior"
			Type="Text"
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
			Name="Tag"
			Group="Behavior"
			Type="Integer"
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
