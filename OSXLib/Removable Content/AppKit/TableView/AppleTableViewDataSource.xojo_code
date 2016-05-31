#tag Class
Protected Class AppleTableViewDataSource
Inherits AppleObject
	#tag Method, Flags = &h0
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

	#tag Method, Flags = &h21
		Private Shared Function impl_numberOfRowsInTableView(pid as ptr, sel as ptr, tableview as ptr) As Integer
		  dim obj as new AppleTableViewDataSource(pid)
		  if obj <> nil then
		    return obj.informOnNumberOfRows (AppleTableView.MakefromPtr(tableview))
		  end if
		  #pragma unused sel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_objectValueForTableColumn(pid as ptr, sel as ptr, tableview as ptr, tablecolumn as ptr, row as Integer) As Ptr
		  dim obj as new AppleTableViewDataSource(pid)
		  if obj <> nil then
		    dim result as appleobject = obj.objectValueForTableColumn (AppleTableView.MakefromPtr(tableview), tablecolumn, row)
		    return if (result = nil, nil, result.id)
		  end if
		  #pragma unused sel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_textValueForTableColumn(pid as ptr, sel as ptr, tableview as ptr, tablecolumn as ptr, row as Integer) As cfstringRef
		  dim obj as new AppleTableViewDataSource(pid)
		  if obj <> nil then
		    return obj.TextValueForTableColumn (AppleTableView.MakefromPtr(tableview), tablecolumn, row)
		  end if
		  #pragma unused sel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnNumberOfRows(TableView as AppleTableView) As Integer
		  if ParentControl <> nil then
		    return ParentControl.informOnNumberOfRows(TableView)
		  else
		    return RaiseEvent NumberOfRows(TableView)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleTableViewDataSource
		  return if (aptr = nil, nil, new AppleTableViewDataSource(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function objectValueForTableColumn(TableView as AppleTableView, column as ptr, row as Integer) As Appleobject
		  if ParentControl <> nil then
		    return ParentControl.objectValueForTableColumn(TableView, column, row)
		  else
		    return RaiseEvent ObjectValue(TableView, column, row)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ParentControl() As OSXLibTableViewDataSource
		  if XojoControls <> nil then
		    dim  wr as xojo.core.weakref = XojoControls.Lookup (id, nil)  
		    return if (wr = nil, nil,  OSXLibTableViewDataSource(wr.Value))
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function textValueForTableColumn(TableView as AppleTableView, column as ptr, row as Integer) As cfstringRef
		  if ParentControl <> nil then
		    return ParentControl.textValueForTableColumn(TableView, column, row)
		  else
		    return RaiseEvent textValue(TableView, column, row)
		  end if
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 52657475726E20746865206E756D626572206F6620726F777320796F7572207461626C65766965772073686F756C6420646973706C617920686572652E
		Event NumberOfRows(TableView As AppleTableView) As Integer
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E20746865206E756D626572206F6620726F777320796F7572207461626C65766965772073686F756C6420646973706C617920686572652E
		Event ObjectValue(TableView As AppleTableView, column as ptr, row as Integer) As Appleobject
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E20746865206E756D626572206F6620726F777320796F7572207461626C65766965772073686F756C6420646973706C617920686572652E
		Event TextValue(TableView As AppleTableView, column as ptr, row as Integer) As cfstringRef
	#tag EndHook


	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  // static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CBCentralManager")
			  // return mClassPtr
			  
			  static mClassPtr as ptr
			  if mClassPtr = Nil then
			    dim methods() as TargetClassMethodHelper
			    
			    //TableViewDataSource methods:
			    methods.Append new TargetClassMethodHelper("numberOfRowsInTableView:", AddressOf impl_numberOfRowsInTableView, "i@:@")
			    methods.Append new TargetClassMethodHelper("tableView:objectValueForTableColumn:row:", AddressOf impl_textValueForTableColumn, "@@:@@i")
			    
			    mClassPtr = BuildTargetClass ("NSObject", "OSXLibTableViewDataSource",methods)
			  end if
			  Return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
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
