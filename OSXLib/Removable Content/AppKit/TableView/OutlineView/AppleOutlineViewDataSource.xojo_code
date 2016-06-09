#tag Class
Protected Class AppleOutlineViewDataSource
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

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Function impl_Outlineviewchild(pid as ptr, sel as ptr, outlineview as ptr, child as integer, item as ptr) As ptr
		  Break
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Function impl_OutlineviewisItemExpandable(pid as ptr, sel as ptr, outlineview as ptr,  item as ptr) As Boolean
		  Break
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Function impl_OutlineviewitemForPersistentObject(pid as ptr, sel as ptr, outlineview as ptr, PersisttantObject as ptr) As Ptr
		  Break
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Function impl_OutlineviewnumberOfChildrenOfItem(pid as ptr, sel as ptr, outlineview as ptr,  item as ptr) As integer
		  dim obj as new AppleOutlineViewDataSource(pid)
		  if obj <> nil then
		    return obj.InformOnOutlineviewnumberOfChildrenOfItem (AppleoutlineView.MakefromPtr(outlineview), appleobject.MakeFromPtr(item))
		  end if
		  #pragma unused sel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Function impl_OutlineviewObjectValueForTableColumn(pid as ptr, sel as ptr, outlineview as ptr, tablecolumn as ptr,  item as ptr) As integer
		  Break
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Function impl_OutlineviewpersistentObjectForItem(pid as ptr, sel as ptr, outlineview as ptr, Item as ptr) As Ptr
		  Break
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Function impl_OutlineviewSetObjectValueForTableColumn(pid as ptr, sel as ptr, outlineview as ptr, objectValue as ptr, tablecolumn as ptr,  item as ptr) As integer
		  Break
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Shared Function impl_OutlineviewsortDescriptorsDidChange(pid as ptr, sel as ptr, outlineview as ptr,  sortdescArray as ptr) As integer
		  Break
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function InformOnOutlineviewnumberOfChildrenOfItem(OutlineView as AppleOutlineView, item as appleobject) As Integer
		  if ParentControl <> nil then
		    return  parentcontrol.InformOnOutlineviewnumberOfChildrenOfItem(OutlineView, item)
		  else
		    return RaiseEvent NumberOfChildren (OutlineView, item)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleOutlineViewDataSource
		  return if (aptr= nil, nil, new AppleOutlineViewDataSource(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ParentControl() As OSXLibOutlineViewDataSource
		  if XojoControls <> nil then
		    dim  wr as xojo.core.weakref = XojoControls.Lookup (id, nil)  
		    return if (wr = nil, nil,  OSXLibOutlineViewDataSource(wr.Value))
		  end if
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event NumberOfChildren(OutlineView as AppleOutlineview, Item as Appleobject) As Integer
	#tag EndHook


	#tag Note, Name = Status incomplete
		
		drag & drop and pasteboard methods missing
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  // static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CBCentralManager")
			  // return mClassPtr
			  
			  static mClassPtr as ptr
			  if mClassPtr = Nil then
			    dim methods() as TargetClassMethodHelper
			    
			    //TableViewDataSource methods:
			    methods.Append new TargetClassMethodHelper("outlineView:child:ofItem:", AddressOf impl_Outlineviewchild, "@@:@i@")
			    methods.Append new TargetClassMethodHelper("outlineView:numberOfChildrenOfItem:", AddressOf impl_OutlineviewnumberOfChildrenOfItem, "i@:@@")
			    methods.Append new TargetClassMethodHelper("outlineView:objectValueForTableColumn:byItem:", AddressOf impl_OutlineviewObjectValueForTableColumn, "@@:@@@")
			    methods.Append new TargetClassMethodHelper("outlineView:isItemExpandable:", AddressOf impl_OutlineviewisItemExpandable, "c@:@@")
			    methods.Append new TargetClassMethodHelper("outlineView:setObjectValue:forTableColumn:byItem:", AddressOf impl_OutlineviewSetObjectValueForTableColumn, "v@:@@@@")
			    methods.Append new TargetClassMethodHelper("outlineView:itemForPersistentObject:", AddressOf impl_OutlineviewitemForPersistentObject, "@@:@@")
			    methods.Append new TargetClassMethodHelper("outlineView:persistentObjectForItem:", AddressOf impl_OutlineviewpersistentObjectForItem," @@:@@")
			    methods.Append new TargetClassMethodHelper("outlineView:sortDescriptorsDidChange:", AddressOf impl_OutlineviewsortDescriptorsDidChange, "@@:@@")
			    
			    mClassPtr = BuildTargetClass ("NSObject", "OSXLibOutlineViewDataSource",methods)
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
