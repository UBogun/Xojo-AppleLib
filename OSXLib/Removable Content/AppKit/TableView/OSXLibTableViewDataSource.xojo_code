#tag Class
Protected Class OSXLibTableViewDataSource
Inherits Control
	#tag Event
		Sub CreatePane()
		  mAppleObject= new AppleTableViewDataSource
		  mAppleObject.registercontrol(self)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnNumberOfRows(TableView as AppleTableView) As Integer
		  return RaiseEvent NumberOfRows(TableView)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function objectValueForTableColumn(TableView as AppleTableView, column as ptr, row as Integer) As AppleObject
		  return RaiseEvent ObjectValue(TableView, column, row)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function TextValueForTableColumn(TableView as AppleTableView, column as ptr, row as Integer) As cfstringRef
		  return RaiseEvent TextValue(TableView, column, row)
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 52657475726E20746865206E756D626572206F6620726F777320796F7572207461626C65766965772073686F756C6420646973706C617920686572652E
		Event NumberOfRows(TableView As AppleTableView) As Integer
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E20746865206E756D626572206F6620726F777320796F7572207461626C65766965772073686F756C6420646973706C617920686572652E
		Event ObjectValue(TableView As AppleTableView, column as ptr, row as Integer) As AppleObject
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E20746865206E756D626572206F6620726F777320796F7572207461626C65766965772073686F756C6420646973706C617920686572652E
		Event TextValue(TableView As AppleTableView, column as ptr, row as Integer) As cfstringRef
	#tag EndHook


	#tag Note, Name = Status incomplete
		
		Pasteboard and drag events not implemented
	#tag EndNote

	#tag Note, Name = Why two classes? Read me!
		
		Basically, two types of TableViews exist: View-based ones (the standard) and cell-based ones. 
		The Standard tableview uses NSView objects, or rather the subclass Apple/NSTableCellView, to display usually text content. 
		You set these values with an OXLibTableViewDataSoure Control which returns text values in its TextValue event which is called when you need to set the view textvalue.
		
		With a cell-based tableview, for which NSNib has to be ported from iOSLib, the OSXLibTableViewObjectDataSource has to be used  which does not return text but the data to display in the appropriate cell.
		Also, the latter class delivers this object (as AppleObject) so you can save it during the SetObject event.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mAppleObject
			End Get
		#tag EndGetter
		AppleObject As AppleTableViewDataSource
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mAppleObject As AppleTableViewDataSource
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Handle"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
			Name="MouseX"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MouseY"
			Group="Behavior"
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
			Name="PanelIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Window"
			Group="Behavior"
			InitialValue="0"
			Type="Window"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mInitialParent"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mPanelIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mWindow"
			Group="Behavior"
			InitialValue="0"
			Type="Window"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
