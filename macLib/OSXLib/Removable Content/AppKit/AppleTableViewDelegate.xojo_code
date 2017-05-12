#tag Class
Protected Class AppleTableViewDelegate
Inherits AppleControlTextEditingDelegate
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(init(alloc(ClassPtr)), True)
		  RegisterIdentity(self)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function Identity(id as ptr) As AppleTableViewDelegate
		  dim wr as xojo.Core.WeakRef = XojoIdentity.Lookup(id, Nil)
		  if wr <> nil then return AppleTableViewDelegate(wr.Value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function impl_selectionShouldChangeInTableView(pid as ptr, sel as ptr, TableView As Ptr) As Boolean
		  Dim Ident as AppleTableViewDelegate =Identity(pid)
		  If Ident <> Nil Then Return ident.informOnSelectionShouldChangeInTableView(TableView)
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function impl_tableViewDataCellForTableColumnRow(pid as ptr, sel as ptr, TableView As Ptr,  Column as Ptr, Row As Integer) As Ptr
		  Dim Ident as AppleTableViewDelegate =Identity(pid)
		  If Ident <> Nil Then Return ident.informOnTableViewDataCellForTableColumnRow(TableView, Column, Row)
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub impl_tableViewDidAddRowViewForRow(pid as ptr, sel as ptr, TableView As Ptr,  rowView as Ptr, Row As Integer)
		  Dim Ident as AppleTableViewDelegate =Identity(pid)
		  If Ident <> Nil Then ident.informOnTableViewDidAddRowViewForRow(TableView, Rowview, Row)
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub impl_tableViewDidRemoveRowViewForRow(pid as ptr, sel as ptr, TableView As Ptr,  rowView as Ptr, Row As Integer)
		  Dim Ident as AppleTableViewDelegate =Identity(pid)
		  If Ident <> Nil Then ident.informOnTableViewDidRemoveRowViewForRow(TableView, Rowview, Row)
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function impl_tableViewHeightOfRow(pid as ptr, sel as ptr, TableView As Ptr,  Row As Integer) As CGFloat
		  Dim Ident as AppleTableViewDelegate =Identity(pid)
		  If Ident <> Nil Then Return ident.informOntableViewHeightOfRow(TableView, Row)
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function impl_tableViewisGroupRow(pid as ptr, sel as ptr, TableView As Ptr,  Row As Integer) As Boolean
		  Dim Ident as AppleTableViewDelegate =Identity(pid)
		  If Ident <> Nil Then Return ident.informOnTableViewisGroupRow(TableView, Row)
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function impl_tableViewRowViewForRow(pid as ptr, sel as ptr, TableView As Ptr,  Row As Integer) As Ptr
		  Dim Ident as AppleTableViewDelegate =Identity(pid)
		  If Ident <> Nil Then Return ident.informOnTableViewRowViewForRow(TableView, Row)
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function impl_tableViewShouldEditTableColumnRow(pid as ptr, sel as ptr, TableView As Ptr,  Column as Ptr, Row As Integer) As Boolean
		  Dim Ident as AppleTableViewDelegate =Identity(pid)
		  If Ident <> Nil Then Return ident.informOnTableViewShouldEditTableColumnRow(TableView, Column, Row)
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function impl_tableViewShouldSelectRow(pid as ptr, sel as ptr, TableView As Ptr, row as integer) As Boolean
		  Dim Ident as AppleTableViewDelegate =Identity(pid)
		  If Ident <> Nil Then Return ident.informOnTableViewShouldSelectRow(TableView, row)
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function impl_tableViewShouldShowCellExpansionForTableColumnRow(pid as ptr, sel as ptr, TableView As Ptr,  Column as Ptr, Row As Integer) As Boolean
		  Dim Ident as AppleTableViewDelegate =Identity(pid)
		  If Ident <> Nil Then Return ident.informOnTableViewShouldShowCellExpansionForTableColumnRow(TableView, Column, Row)
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function impl_tableViewSizeToFitWidthOfColumn(pid as ptr, sel as ptr, TableView As Ptr,  Column As Integer) As CGFloat
		  Dim Ident as AppleTableViewDelegate =Identity(pid)
		  If Ident <> Nil Then Return ident.informOnTableViewSizeToFitWidthOfColumn(TableView, Column)
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function impl_tableViewToolTipForCellRect(pid as ptr, sel as ptr, TableView As Ptr, Cell as ptr, Rect As FoundationFramework.NSRect, TableColumn as Ptr, Row As Integer, location as FoundationFrameWork.NSPoint) As CFStringRef
		  Dim Ident as AppleTableViewDelegate =Identity(pid)
		  If Ident <> Nil Then Return ident.informOnTableViewToolTipForCellRect(TableView, Cell, Rect, TableColumn, Row, location)
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function impl_tableViewviewForTableColumnrow(pid as ptr, sel as ptr, TableView As Ptr, TableColumn as Ptr, Row As Integer) As Ptr
		  Dim Ident as AppleTableViewDelegate =Identity(pid)
		  If Ident <> Nil Then Return ident.informOntableViewviewForTableColumnrow(TableView, TableColumn, Row)
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub impl_tableViewWillDisplayCellForTableColumnRow(pid as ptr, sel as ptr, TableView As Ptr,  Cell as Ptr, column as Ptr, Row As Integer)
		  Dim Ident as AppleTableViewDelegate =Identity(pid)
		  If Ident <> Nil Then ident.informOnTableViewWillDisplayCellForTableColumnRow(TableView, Cell, Column, Row)
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnSelectionShouldChangeInTableView(TableView As Ptr) As Boolean
		  Return RaiseEvent AllowSelectionChange(AppleTableView.MakefromPtr(Tableview))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnTableViewDataCellForTableColumnRow(TableView As Ptr, Column as Ptr, Row as Integer) As Ptr
		  Return Nilptr(RaiseEvent DataCellForColumn(AppleTableView.MakefromPtr(Tableview), AppleTableColumn.MakefromPtr(Column), Row))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnTableViewDidAddRowViewForRow(TableView As Ptr, RowView as Ptr, Row as Integer)
		  RaiseEvent DidAddRowViewForRow(AppleTableView.MakefromPtr(Tableview), AppleTableRowView.MakefromPtr(RowView), Row)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnTableViewDidRemoveRowViewForRow(TableView As Ptr, RowView as Ptr, Row as Integer)
		  RaiseEvent DidRemoveRowViewForRow(AppleTableView.MakefromPtr(Tableview), AppleTableRowView.MakefromPtr(RowView), Row)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOntableViewHeightOfRow(TableView As Ptr, Row as Integer) As Double
		  Return RaiseEvent HeightOfRow(AppleTableView.MakefromPtr(Tableview), Row)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnTableViewisGroupRow(TableView As Ptr, Row as Integer) As Boolean
		  Return RaiseEvent isGroupRow(AppleTableView.MakefromPtr(Tableview), Row)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnTableViewRowViewForRow(TableView As Ptr, Row as Integer) As Ptr
		  Return Nilptr(RaiseEvent RowViewForRow(AppleTableView.MakefromPtr(Tableview), Row))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnTableViewShouldEditTableColumnRow(TableView As Ptr, Column as Ptr, Row as Integer) As Boolean
		  Return RaiseEvent PermitCellEdit(AppleTableView.MakefromPtr(Tableview), AppleTableColumn.MakefromPtr(Column), Row)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnTableViewShouldSelectRow(TableView As Ptr, row as integer) As Boolean
		  Return RaiseEvent AllowRowSelection(AppleTableView.MakefromPtr(Tableview), row)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnTableViewShouldShowCellExpansionForTableColumnRow(TableView As Ptr, Column as Ptr, Row as Integer) As Boolean
		  Return RaiseEvent ShowToolTip(AppleTableView.MakefromPtr(Tableview), AppleTableColumn.MakefromPtr(Column), Row)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnTableViewSizeToFitWidthOfColumn(TableView As Ptr, Column as Integer) As Double
		  Return RaiseEvent OptimumColumnWidth(AppleTableView.MakefromPtr(Tableview), Column)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnTableViewToolTipForCellRect(TableView As Ptr, Cell as Ptr, Rect as FoundationFrameWork.NSRect, Column as Ptr, Row as Integer, location as FoundationFrameWork.NSPoint) As CFStringRef
		  Return RaiseEvent ToolTipforCell(AppleTableView.MakefromPtr(Tableview), AppleCell.MakefromPtr(cell), Rect, _
		  AppleTableColumn.MakefromPtr(Column), Row, location)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOntableViewviewForTableColumnrow(TableView As Ptr, TableColumn as Ptr, Row as Integer) As Ptr
		  Return Nilptr(RaiseEvent ViewForColumnAtRow(AppleTableView.MakefromPtr(Tableview), AppletableColumn.MakeFromPtr(TableColumn), Row))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnTableViewWillDisplayCellForTableColumnRow(TableView As Ptr,  Cell as ptr, Column as Ptr, Row As Integer)
		  RaiseEvent WillDisplayCellForColumn (appletableview.makefromptr(Tableview), applecell.makefromptr(Cell), AppleTableColumn.makefromPtr(Column), Row)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleTableViewDelegate
		  Return if (aptr = nil, nil, new AppleTableViewDelegate(aptr))
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 41736B73207468652064656C656761746520696620746865207461626C6520766965772073686F756C6420616C6C6F772073656C656374696F6E206F66207468652073706563696669656420726F772E
		Event AllowRowSelection(TableView As AppleTableView, Row as Integer) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 41736B73207468652064656C656761746520696620746865207573657220697320616C6C6F77656420746F206368616E6765207468652073656C656374696F6E2E
		Event AllowSelectionChange(TableView As AppleTableView) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 41736B73207468652064656C656761746520666F72206120637573746F6D20646174612063656C6C20666F72207468652073706563696669656420726F7720616E6420636F6C756D6E2E
		Event DataCellForColumn(TableView As AppleTableView,   Column As AppleTableColumn, Row As Integer) As AppleCell
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 54656C6C73207468652064656C65676174652074686174206120726F77207669657720776173206164646564206174207468652073706563696669656420726F772E205573652074686973206576656E7420746F20616464206578747261207669657773206F72206D6F64696679207468652070726F70657274696573206F6620726F77566965772E
		Event DidAddRowViewForRow(TableView As AppleTableView,  RowView as AppleTableRowView, Row As Integer)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 54656C6C73207468652064656C65676174652074686174206120726F772076696577207761732072656D6F7665642066726F6D20746865207461626C65206174207468652073706563696669656420726F772E20496620726F7720657175616C73202D312C2074686520726F77206973206265696E672064656C657465642066726F6D20746865207461626C6520616E64206973206E6F206C6F6E67657220612076616C696420726F773B206F746865727769736520726F7720697320612076616C696420726F772074686174206973206265696E672072656D6F766564206279206265696E67206D6F766564206F66662073637265656E2E
		Event DidRemoveRowViewForRow(TableView As AppleTableView,  RowView as AppleTableRowView, Row As Integer)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 41736B73207468652064656C656761746520666F722074686520686569676874206F66207468652073706563696669656420726F772E
		Event HeightOfRow(TableView As AppleTableView,  Row As Integer) As Double
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E732077686574686572207468652073706563696669656420726F7720697320612067726F757020726F772E
		Event isGroupRow(TableView As AppleTableView,  Row As Integer) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 41736B73207468652064656C656761746520746F2070726F7669646520637573746F6D2073697A696E67206265686176696F72207768656E206120636F6C756D6EE280997320726573697A65206469766964657220697320646F75626C6520636C69636B65642E
		Event OptimumColumnWidth(TableView As AppleTableView,  Column As Integer) As Double
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 41736B73207468652064656C6567617465206966207468652063656C6C206174207468652073706563696669656420726F7720616E6420636F6C756D6E2063616E206265206564697465642E
		Event PermitCellEdit(TableView As AppleTableView,  Colun as AppleTableColumn, Row As Integer) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 41736B73207468652064656C656761746520666F722061207669657720746F20646973706C6179207468652073706563696669656420726F772E
		Event RowViewForRow(TableView As AppleTableView,  Row As Integer) As AppleTableRowView
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 41736B73207468652064656C656761746520696620616E20657870616E73696F6E20746F6F6C7469702073686F756C6420626520646973706C6179656420666F72206120737065636966696320726F7720616E6420636F6C756D6E2E
		Event ShowToolTip(TableView As AppleTableView,  Column As AppleTableColumn, Row As Integer) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 41736B73207468652064656C656761746520666F72206120737472696E6720746F20646973706C617920696E206120746F6F6C74697020666F7220746865207370656369666965642063656C6C20696E2074686520636F6C756D6E20616E6420726F772E
		Event ToolTipforCell(TableView As AppleTableView,   Cell as AppleCell, Rect As FoundationFramework.NSRect, Column As AppleTableColumn, Row As Integer, Mouselocation As FoundationFrameWork.NSPoint) As Text
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 41736B73207468652064656C656761746520666F722061207669657720746F20646973706C6179207468652073706563696669656420726F7720616E6420636F6C756D6E2E
		Event ViewForColumnAtRow(TableView As AppleTableView, Column As AppleTableColumn, Row As Integer) As AppleView
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 54656C6C73207468652064656C6567617465207468617420746865207461626C6520766965772077696C6C20646973706C617920746865207370656369666965642063656C6C206174207468652073706563696669656420726F7720616E6420636F6C756D6E2E205573652074686973206576656E7420746F206D6F646966792074686520646973706C61792061747472696275746573206F66206143656C6C20746F20616C7465722074686520617070656172616E6365206F66207468652063656C6C2E
		Event WillDisplayCellForColumn(TableView As AppleTableView,  Cell as AppleCell, Column As AppleTableColumn, Row As Integer)
	#tag EndHook


	#tag Note, Name = Status incomplete
		methods from tableView:selectionIndexesForProposedSelection: on missing.
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as ptr
			  if mClassPtr = Nil then
			    dim methods() as TargetClassMethodHelper
			    
			    // NSControlTextEditingDelegate methods
			    methods.Append new TargetClassMethodHelper("control:isValidObject:", AddressOf impl_controlisValidObject, "c@:@@")
			    methods.Append New TargetClassMethodHelper("control:didFailToValidatePartialString:errorDescription:", AddressOf impl_controldidFailToValidatePartialString, "v@:@@@")
			    methods.Append New TargetClassMethodHelper("control:didFailToFormatString:errorDescription:", AddressOf impl_controldidFailToFormatString, "v@:@@@")
			    methods.Append New TargetClassMethodHelper("control:textShouldBeginEditing:", AddressOf impl_controltextShouldBeginEditing, "c@:@@")
			    methods.Append New TargetClassMethodHelper("control:textShouldEndEditing:", AddressOf impl_controltextShouldEndEditing, "c@:@@")
			    
			    
			    // NSTableViewDelegate methods
			    methods.Append New TargetClassMethodHelper("tableView:viewForTableColumn:row:", AddressOf impl_tableViewviewForTableColumnrow, "@@:@@i")
			    methods.Append New TargetClassMethodHelper("tableView:rowViewForRow:", AddressOf impl_tableViewRowViewForRow, "@@:@i")
			    methods.Append New TargetClassMethodHelper("tableView:didAddRowView:forRow:", AddressOf impl_tableViewDidAddRowViewForRow, "v@:@@i")
			    methods.Append New TargetClassMethodHelper("tableView:didRemoveRowView:forRow:", AddressOf impl_tableViewDidRemoveRowViewForRow, "v@:@@i")
			    methods.Append New TargetClassMethodHelper("tableView:isGroupRow:", AddressOf impl_tableViewisGroupRow, "c@:@i")
			    methods.Append New TargetClassMethodHelper("tableView:willDisplayCell:forTableColumn:row:", AddressOf impl_tableViewWillDisplayCellForTableColumnRow, "v@:@@@i")
			    methods.Append New TargetClassMethodHelper("tableView:dataCellForTableColumn:row:", AddressOf impl_tableViewDataCellForTableColumnRow, "@@:@@i")
			    methods.Append New TargetClassMethodHelper("tableView:shouldShowCellExpansionForTableColumn:row:", AddressOf impl_tableViewShouldShowCellExpansionForTableColumnRow, "c@:@@i")
			    methods.Append New TargetClassMethodHelper("tableView:toolTipForCell:rect:tableColumn:row:mouseLocation:", AddressOf impl_tableViewToolTipForCellRect, "@@:@@{NSRect}@i{NSPoint}")
			    methods.Append New TargetClassMethodHelper("tableView:shouldEditTableColumn:row:", AddressOf impl_tableViewShouldEditTableColumnRow, "c@:@@i")
			    methods.Append New TargetClassMethodHelper("selectionShouldChangeInTableView:", AddressOf impl_selectionShouldChangeInTableView, "c@:@")
			    methods.Append New TargetClassMethodHelper("tableView:shouldSelectRow:", AddressOf impl_tableViewShouldSelectRow, "c@:@i")
			    
			    #If Target32Bit
			      methods.Append New TargetClassMethodHelper("tableView:heightOfRow:", AddressOf impl_tableViewHeightOfRow, "f@:@i")
			      methods.Append New TargetClassMethodHelper("tableView:sizeToFitWidthOfColumn:", AddressOf impl_tableViewSizeToFitWidthOfColumn, "f@:@i")
			      
			    #Elseif Target64Bit
			      methods.Append New TargetClassMethodHelper("tableView:heightOfRow:", AddressOf impl_tableViewHeightOfRow, "d@:@i")
			      methods.Append New TargetClassMethodHelper("tableView:sizeToFitWidthOfColumn:", AddressOf impl_tableViewSizeToFitWidthOfColumn, "d@:@i")
			    #EndIf
			    
			    mClassPtr = BuildTargetClass ("NSObject", "OSXLibTableViewDelegate",methods)
			  end if
			  Return mClassPtr
			  
			  
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
