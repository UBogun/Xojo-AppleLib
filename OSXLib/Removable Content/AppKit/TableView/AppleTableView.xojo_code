#tag Class
Protected Class AppleTableView
Inherits AppleControl
	#tag Method, Flags = &h0, Description = 41646473207468652073706563696669656420636F6C756D6E20617320746865206C61737420636F6C756D6E206F6620746865207461626C6520766965772E
		Sub AddTableColumn(column as AppleTableColumn)
		  #If TargetMacOS then
		    addTableColumn id, column.id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41646473206120636F6C756D6E20776974682074686520737065636966696564206E616D6520617320746865206C61737420636F6C756D6E206F6620746865207461626C6520766965772E
		Sub AddTableColumn(identifier as cfstringRef)
		  addTableColumn new AppleTableColumn(identifier)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addTableColumn Lib AppKitLibName Selector "addTableColumn:" (id as ptr, column as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 426567696E7320612067726F7570206F66207570646174657320666F7220746865207461626C6520766965772E
		Sub BeginUpdates()
		  #If TargetMacOS then
		    beginUpdates id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub beginUpdates Lib AppKitLibName Selector "beginUpdates" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E67207768657468657220746865207461626C65207669657720616C6C6F7773206472616767696E672074686520726F7773206174207769746820746865206472616720696E69746961746564206174207468652073706563696669656420706F696E742E
		Function CanDragRowsWithIndexes(Indexes as appleindexset, Point as FoundationFrameWork.NSPoint) As Boolean
		  #If TargetMacOS then
		    return canDragRowsWithIndexes(id, indexes.id, point)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function canDragRowsWithIndexes Lib AppKitLibName Selector "canDragRowsWithIndexes:atPoint:" (id as ptr, index as ptr, point as FoundationFrameWork . NSPoint) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320612072656374616E676C65206C6F636174696E67207468652063656C6C2074686174206C6965732061742074686520696E74657273656374696F6E206F66207468652073706563696669656420636F6C756D6E20616E6420726F772E
		Function CellRect(column as integer, row as Integer) As FoundationFrameWork.NSRect
		  #If TargetMacOS then
		    return getframeOfCellAtColumn (id, column, row)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696E646578206F662074686520666972737420636F6C756D6E20696E20746865207461626C6520766965772077686F7365206964656E74696669657220697320657175616C20746F2074686520737065636966696564206964656E7469666965722E
		Function Column(Identifier As CFStringRef) As Integer
		  #If TargetMacOS then
		    return getcolumnWithIdentifier(id, identifier)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696E646578206F662074686520636F6C756D6E2077686F736520686561646572206C69657320756E6465722061506F696E7420696E207468652072656365697665722C206F7220E2809331206966206E6F207375636820636F6C756D6E20697320666F756E642E
		Function ColumnAtPoint(Point as FoundationFrameWork.NSPoint) As Integer
		  #If TargetMacOS then
		    return TableViewAdditionsForAppkit.getcolumnAtPoint (id, point)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520636F6C756D6E20696E64657820666F72207468652073706563696669656420766965772E
		Function ColumnForView(View as AppleView) As Integer
		  #If TargetMacOS then
		    return getcolumnForView (id, view.id)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696E6465786573206F6620746865207461626C652076696577E280997320636F6C756D6E73207468617420696E7465727365637420746865207370656369666965642072656374616E676C652E
		Function ColumnIndexesInRect(Rect as FoundationFrameWork.NSRect) As AppleIndexSet
		  #If TargetMacOS then
		    return appleindexset.MakeFRomPtr(getcolumnIndexesInRect (id, rect))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206E6577206F72206578697374696E67207669657720776974682074686520737065636966696564206964656E7469666965722E
		Sub Constructor(Identifer As CFStringRef, Owner As AppleObject)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleControl
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor(makeViewWithIdentifier(alloc(classptr),Identifer,if (owner = nil, nil, owner.id)))
		    MHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(rect as FoundationFrameWork.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleControl
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor(initwithframe(alloc(classptr),Rect))
		    MHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53656C6563747320616C6C20726F7773206F7220616C6C20636F6C756D6E732C206163636F7264696E6720746F207768657468657220726F7773206F7220636F6C756D6E732077657265206D6F737420726563656E746C792073656C65637465642E
		Sub DeselectAll()
		  #If TargetMacOS then
		    deselectAll id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub deselectAll Lib AppKitLibName Selector "deselectAll" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 446573656C656374732074686520636F6C756D6E206174207468652073706563696669656420696E646578206966206974E28099732073656C65637465642E
		Sub DeselectColumn(Column as Integer)
		  #If TargetMacOS then
		    deselectColumn id, column
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub deselectColumn Lib AppKitLibName Selector "deselectColumn:" (id as ptr, column as integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 446573656C656374732074686520726F77206174207468652073706563696669656420696E646578206966206974E28099732073656C65637465642E
		Sub DeselectRow(Row as Integer)
		  #If TargetMacOS then
		    deselectRow id, row
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub deselectRow Lib AppKitLibName Selector "deselectRow:" (id as ptr, row as integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6D707574657320616E642072657475726E7320616E20696D61676520746F2075736520666F72206472616767696E672E
		Function DragImage(DragRows as AppleIndexSet, TableColumns as AppleArray, anEvent as AppleNSEvent, Offset as FoundationFrameWork.NSPoint) As AppleImage
		  #If TargetMacOS then
		    return appleimage.MakeFromPtr(dragImageForRowsWithIndexes(id, DragRows.id, TableColumns.id, if (anevent = nil, nil, anEvent.id), offset))
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function dragImageForRowsWithIndexes Lib AppKitLibName Selector "dragImageForRowsWithIndexes:tableColumns:event:offset:" (id as ptr, dragwors as ptr, columns as ptr, anEvent as ptr, offset as FoundationFrameWork . NSPoint) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4564697473207468652063656C6C206174207468652073706563696669656420636F6C756D6E20616E6420726F77207573696E672074686520737065636966696564206576656E7420616E642073656C656374696F6E206265686176696F722E
		Sub EditColumn(column as integer, row as integer, anEvent as appleNSEvent = nil, selectContents as Boolean = False)
		  #If TargetMacOS then
		    editColumn id, column, row, if (anevent = nil, nil, anevent.id), SelectContents
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub editColumn Lib AppKitLibName Selector "editColumn:row:witEvent:select:" (id as ptr, column as integer, row as integer, anevent as ptr, selecttag as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 456E647320612067726F7570206F66207570646174657320666F7220746865207461626C6520766965772E
		Sub EndUpdates()
		  #If TargetMacOS then
		    endUpdates id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub endUpdates Lib AppKitLibName Selector "endUpdates" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 416C6C6F77732074686520656E756D65726174696F6E206F6620616C6C20746865207461626C6520726F7773207468617420617265206B6E6F776E20746F20746865207461626C6520766965772E0A536565207468652074656D706C617465206D6574686F6420666F722074686520706172616D6574657273206F662074686520626C6F636B2E
		Sub EnumerateAvailableRowViews(Block as AppleBlock)
		  #If TargetMacOS then
		    enumerateAvailableRowViewsUsingBlock id, block.Handle
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub enumerateAvailableRowViewsUsingBlock Lib AppKitLibName Selector "enumerateAvailableRowViewsUsingBlock:" (id as ptr, block as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub EnumerationBlockTemplate(TableRowView as Ptr, Row As Integer)
		  // A Template for the enumaration method:
		  
		  Dim RowView as new AppleTableRowView(TableRowView)
		  
		  // Do somtehing with the properties and delete the pragmas:
		  #Pragma unused RowView
		  #pragma unused Row
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsColumnReordering Lib AppKitLibName Selector "allowsColumnReordering" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsColumnResizing Lib AppKitLibName Selector "allowsColumnResizing" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsColumnSelection Lib AppKitLibName Selector "allowsColumnSelection" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsEmptySelection Lib AppKitLibName Selector "allowsEmptySelection" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsExpansionToolTips Lib AppKitLibName Selector "dataSource" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsMultipleSelection Lib AppKitLibName Selector "allowsMultipleSelection" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsTypeSelect Lib AppKitLibName Selector "allowsTypeSelect" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getautosaveName Lib AppKitLibName Selector "autosaveName" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getautosaveTableColumns Lib AppKitLibName Selector "autosaveTableColumns" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getclickedColumn Lib AppKitLibName Selector "clickedColumn" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getclickedRow Lib AppKitLibName Selector "clickedRow" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcolumnAutoresizingStyle Lib AppKitLibName Selector "columnAutoresizingStyle" (id as ptr) As NSTableViewColumnAutoresizingStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcolumnForView Lib AppKitLibName Selector "columnForView:" (id as ptr, view as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcolumnIndexesInRect Lib AppKitLibName Selector "columnIndexesInRect:" (id as ptr, rect as FoundationFrameWork . NSRect) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcolumnWithIdentifier Lib AppKitLibName Selector "columnWithIdentifier:" (id as ptr, identifier as cfstringRef) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcornerView Lib AppKitLibName Selector "cornerView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdataSource Lib AppKitLibName Selector "dataSource" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdoubleAction Lib AppKitLibName Selector "doubleAction" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function geteditedColumn Lib AppKitLibName Selector "editedColumn" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function geteditedRow Lib AppKitLibName Selector "editedRow" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function geteffectiveRowSizeStyle Lib AppKitLibName Selector "effectiveRowSizeStyle" (id as ptr) As NSTableViewRowSizeStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfloatsGroupRows Lib AppKitLibName Selector "floatsGroupRows" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getframeOfCellAtColumn Lib AppKitLibName Selector "frameOfCellAtColumn:row:" (id as ptr, column as integer, row as Integer) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getgridColor Lib AppKitLibName Selector "gridColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getgridStyleMask Lib AppKitLibName Selector "gridStyleMask" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getheaderView Lib AppKitLibName Selector "headerView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethiddenRowIndexes Lib AppKitLibName Selector "hiddenRowIndexes" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethighlightedTableColumn Lib AppKitLibName Selector "highlightedTableColumn" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getindicatorImageInTableColumn Lib AppKitLibName Selector "indicatorImageInTableColumn:" (id as ptr, column as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getintercellSpacing Lib AppKitLibName Selector "intercellSpacing" (id as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisColumnSelected Lib AppKitLibName Selector "isColumnSelected:" (id as ptr, column as Integer) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisRowSelected Lib AppKitLibName Selector "isRowSelected:" (id as ptr, row as Integer) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnumberOfRows Lib AppKitLibName Selector "numberOfRows" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnumberOfSelectedColumns Lib AppKitLibName Selector "numberOfSelectedColumns" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnumberOfSelectedRows Lib AppKitLibName Selector "numberOfSelectedRows" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrectOfColumn Lib AppKitLibName Selector "rectOfColumn:" (id as ptr, column as Integer) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrectOfRow Lib AppKitLibName Selector "rectOfRow:" (id as ptr, row as Integer) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrowActionsVisible Lib AppKitLibName Selector "rowActionsVisible" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrowAtPoint Lib AppKitLibName Selector "rowAtPoint:" (id as ptr, point as FoundationFrameWork . NSPoint) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrowForView Lib AppKitLibName Selector "rowForView:" (id as ptr, view as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrowHeight Lib AppKitLibName Selector "rowHeight" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrowsInRect Lib AppKitLibName Selector "rowsInRect:" (id as ptr, rect as FoundationFrameWork . NSRect) As FoundationFrameWork.NSRange
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getselectedColumn Lib AppKitLibName Selector "selectedColumn" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getselectedColumnIndexes Lib AppKitLibName Selector "selectedColumnIndexes" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getselectedRow Lib AppKitLibName Selector "selectedRow" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getselectedRowIndexes Lib AppKitLibName Selector "selectedRowIndexes" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettableColumns Lib AppKitLibName Selector "tableColumns" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettableColumnWithIdentifier Lib AppKitLibName Selector "tableColumnWithIdentifier:" (id as ptr, identifier as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getusesAlternatingRowBackgroundColors Lib AppKitLibName Selector "usesAlternatingRowBackgroundColors" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getusesStaticContents Lib AppKitLibName Selector "usesStaticContents" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getverticalMotionCanBeginDrag Lib AppKitLibName Selector "verticalMotionCanBeginDrag:" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 48696465732074686520737065636966696564207461626C6520726F77732E
		Sub HideRows(Indexes as AppleIndexSet, Animation as AppleTableViewAnimationOptions)
		  #If TargetMacOS then
		    hideRowsAtIndexes id, Indexes.id, Animation.Id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub hideRowsAtIndexes Lib AppKitLibName Selector "hideRowsAtIndexes:withAnimations:" (id as ptr, indexset as ptr, animations as uinteger)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696E64696361746F7220696D616765206F662074686520737065636966696564207461626C6520636F6C756D6E2E
		Function IndicatorImage(Column as AppleTableColumn) As AppleImage
		  #If TargetMacOS then
		    return appleimage.MakeFromPtr(getindicatorImageInTableColumn (id, column.id))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520696E64696361746F7220696D61676520666F722074686520737065636966696564207461626C6520636F6C756D6E2E
		Sub IndicatorImage(Column as AppleTableColumn, assigns value as AppleImage)
		  #If TargetMacOS then
		    setindicatorImageInTableColumn (id, column.id, if (value = nil,nil, value.id))
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E73657274732074686520726F7773207573696E67207468652073706563696669656420616E696D6174696F6E2E
		Sub InsertRows(Indexes as AppleIndexSet, Animation as AppleTableViewAnimationOptions)
		  #If TargetMacOS then
		    insertRowsAtIndexes id, Indexes.id, Animation.Id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub insertRowsAtIndexes Lib AppKitLibName Selector "insertRowsAtIndexes:withAnimation:" (id as ptr, index as Ptr, animation as uinteger)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C7565207468617420696E6469636174657320776865746865722074686520636F6C756D6E206174207468652073706563696669656420696E6465782069732073656C65637465642E
		Function IsColumnSelected(Column as Integer) As Boolean
		  #If TargetMacOS then
		    return getisColumnSelected (id, column)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C7565207468617420696E6469636174657320776865746865722074686520726F77206174207468652073706563696669656420696E6465782069732073656C65637465642E
		Function IsRowSelected(Row as Integer) As Boolean
		  #If TargetMacOS then
		    return getisRowSelected (id, row)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleTableView
		  return if (aptr= nil, nil, new AppleTableView(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function makeViewWithIdentifier Lib AppKitLibName Selector "makeViewWithIdentifier:owner:" (id as ptr, identifier as CFStringRef, Owner As Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4D6F7665732074686520636F6C756D6E20616E642068656164696E67206174207468652073706563696669656420696E64657820746F20746865206E65772073706563696669656420696E6465782E
		Sub MoveColumn(OldIndex as Integer, NewIndex as Integer)
		  #If TargetMacOS then
		    moveColumn id, OldIndex, NewIndex
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub moveColumn Lib AppKitLibName Selector "moveColumn:toColumn:" (id as ptr, oldindex as integer, newindex as Integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4D6F766573207468652073706563696669656420726F7720746F20746865206E657720726F77206C6F636174696F6E207573696E6720616E696D6174696F6E2E
		Sub MoveRow(OldIndex as Integer, NewIndex as Integer)
		  #If TargetMacOS then
		    moveRowAtIndex id, OldIndex, NewIndex
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub moveRowAtIndex Lib AppKitLibName Selector "moveRowAtIndex:toIndex:" (id as ptr, oldindex as integer, newindex as Integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 496E666F726D7320746865207461626C65207669657720746861742074686520726F77732073706563696669656420696E20696E6465785365742068617665206368616E676564206865696768742E
		Sub NoteHeightOfRowsChanged(indexset as AppleIndexSet)
		  #If TargetMacOS then
		    noteHeightOfRowsWithIndexesChanged id, indexset.id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub noteHeightOfRowsWithIndexesChanged Lib AppKitLibName Selector "noteHeightOfRowsWithIndexesChanged:" (id as ptr, indexset as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 496E666F726D7320746865207461626C652076696577207468617420746865206E756D626572206F66207265636F72647320696E20697473206461746120736F7572636520686173206368616E6765642E
		Sub NoteNumberOfRowsChanged()
		  #If TargetMacOS then
		    noteNumberOfRowsChanged id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub noteNumberOfRowsChanged Lib AppKitLibName Selector "noteNumberOfRowsChanged" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652072656374616E676C6520636F6E7461696E696E672074686520636F6C756D6E206174207468652073706563696669656420696E6465782E
		Function RectOfColumn(column as Integer) As FoundationFrameWork.NSRect
		  #If TargetMacOS then
		    return getrectOfColumn (id, column)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652072656374616E676C6520636F6E7461696E696E672074686520726F77206174207468652073706563696669656420696E6465782E
		Function RectOfRow(row as Integer) As FoundationFrameWork.NSRect
		  #If TargetMacOS then
		    return getrectOfRow (id, row)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D61726B7320746865207461626C652076696577206173206E656564696E67207265646973706C61792C20736F2069742077696C6C2072656C6F616420746865206461746120666F722076697369626C652063656C6C7320616E64206472617720746865206E65772076616C7565732E
		Sub ReloadData()
		  #If TargetMacOS then
		    reloadData id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656C6F61647320746865206461746120666F72206F6E6C79207468652073706563696669656420726F777320616E6420636F6C756D6E732E
		Sub ReloadData(RowIndexes as AppleIndexSet, ColumnIndexes As AppleIndexSet)
		  #If TargetMacOS then
		    reloadDataForRowIndexes id, RowIndexes.id, ColumnIndexes.id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub reloadData Lib AppKitLibName Selector "reloadData" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub reloadDataForRowIndexes Lib AppKitLibName Selector "reloadDataForRowIndexes:columnIndexes:" (id as ptr, rows as Ptr, columns as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732074686520726F7773207573696E67207468652073706563696669656420616E696D6174696F6E2E
		Sub RemoveRows(Indexes as AppleIndexSet, Animation as AppleTableViewAnimationOptions)
		  #If TargetMacOS then
		    removeRowsAtIndexes id, Indexes.id, Animation.Id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeRowsAtIndexes Lib AppKitLibName Selector "removeRowsAtIndexes:withAnimation:" (id as ptr, index as Ptr, animation as uinteger)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573207468652073706563696669656420636F6C756D6E2066726F6D20746865207461626C6520766965772E
		Sub RemoveTableColumn(column as AppleTableColumn)
		  #If TargetMacOS then
		    removeTableColumn id, column.id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeTableColumn Lib AppKitLibName Selector "removeTableColumn:" (id as ptr, column as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function RowAtPoint(Point as FoundationFrameWork.NSPoint) As Integer
		  #If TargetMacOS then
		    return getrowAtPoint (id, point)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696E646578206F662074686520726F7720666F72207468652073706563696669656420766965772E
		Function RowForView(View as AppleView) As Integer
		  #If TargetMacOS then
		    return getrowForView (id, view.id)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320612072616E6765206F6620696E646578657320666F722074686520726F77732074686174206C69652077686F6C6C79206F72207061727469616C6C792077697468696E2074686520766572746963616C20626F756E646172696573206F6620746865207370656369666965642072656374616E676C652E
		Function RowsInRect(Rect as FoundationFrameWork.NSRect) As FoundationFrameWork.NSRange
		  #If TargetMacOS then
		    return getrowsInRect (id, rect)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120726F772076696577206174207468652073706563696669656420696E6465782C206372656174696E67206F6E65206966206E65636573736172792E
		Function RowView(row as integer, MakeIfNecessary As Boolean) As AppleTableRowView
		  #If TargetMacOS then
		    return AppleTableRowView.MakeFromPtr(rowViewAtRow( id, row, MakeIfNecessary))
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function rowViewAtRow Lib AppKitLibName Selector "rowViewAtRow:makeIfNecessary:" (id as ptr, row as Integer, MakeIfNEcessary As Boolean) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub scrollColumnToVisible Lib AppKitLibName Selector "scrollColumnToVisible:" (id as ptr, column as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub scrollRowToVisible Lib AppKitLibName Selector "scrollRowToVisible:" (id as ptr, row as integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5363726F6C6C7320746865207669657720736F207468652073706563696669656420636F6C756D6E2069732076697369626C652E
		Sub ScrollToColumn(column as Integer)
		  #If TargetMacOS then
		    scrollColumnToVisible id, column
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5363726F6C6C7320746865207669657720736F207468652073706563696669656420726F772069732076697369626C652E
		Sub ScrollToRow(row as Integer)
		  #If TargetMacOS then
		    scrollRowToVisible id, row
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53656C6563747320616C6C20726F7773206F7220616C6C20636F6C756D6E732C206163636F7264696E6720746F207768657468657220726F7773206F7220636F6C756D6E732077657265206D6F737420726563656E746C792073656C65637465642E
		Sub SelectAll()
		  #If TargetMacOS then
		    selectAll id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub selectAll Lib AppKitLibName Selector "selectAll" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C756D6E2073656C656374696F6E207573696E6720696E646578657320706F737369626C7920657874656E64696E67207468652073656C656374696F6E2E
		Sub SelectColumnIndexes(Indexset as AppleIndexSet, extendSelection As Boolean = False)
		  #If TargetMacOS then
		    SelectColumnIndexes id, indexset.id, extendSelection
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub selectColumnIndexes Lib AppKitLibName Selector "selectColumnIndexes:byExtendingSelection:" (id as ptr, indexset as ptr, extendselection as boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 536574732074686520726F772073656C656374696F6E207573696E6720696E646578657320657874656E64696E67207468652073656C656374696F6E206966207370656369666965642E
		Sub SelectRowIndexes(Indexset as AppleIndexSet, extendSelection As Boolean = False)
		  #If TargetMacOS then
		    selectRowIndexes id, indexset.id, extendSelection
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub selectRowIndexes Lib AppKitLibName Selector "selectRowIndexes:byExtendingSelection:" (id as ptr, indexset as ptr, extendselection as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsColumnReordering Lib AppKitLibName Selector "setAllowsColumnReordering:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsColumnResizing Lib AppKitLibName Selector "setAllowsColumnResizing:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsColumnSelection Lib AppKitLibName Selector "setAllowsColumnSelection:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsEmptySelection Lib AppKitLibName Selector "setAllowsEmptySelection:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsMultipleSelection Lib AppKitLibName Selector "setAllowsMultipleSelection:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsTypeSelect Lib AppKitLibName Selector "setAllowsTypeSelect:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setautosaveName Lib AppKitLibName Selector "setAutosaveName:" (id as ptr, value as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 5768657468657220746865206F7264657220616E64207769647468206F6620746865207461626C652076696577E280997320636F6C756D6E7320617265206175746F6D61746963616C6C792073617665642E
		Protected Declare Sub setautosaveTableColumns Lib AppKitLibName Selector "setAutosaveTableColumns:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcolumnAutoresizingStyle Lib AppKitLibName Selector "setColumnAutoresizingStyle:" (id as ptr, value as NSTableViewColumnAutoresizingStyle)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcornerView Lib AppKitLibName Selector "setCornerView:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdataSource Lib AppKitLibName Selector "setDataSource:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdoubleAction Lib AppKitLibName Selector "setDoubleAction:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfloatsGroupRows Lib AppKitLibName Selector "setFloatsGroupRows:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setgridColor Lib AppKitLibName Selector "setGridColor:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setgridStyleMask Lib AppKitLibName Selector "setGridStyleMask:" (id as ptr, value as uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setheaderView Lib AppKitLibName Selector "setHeaderView:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sethighlightedTableColumn Lib AppKitLibName Selector "setHighlightedTableColumn:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setindicatorImageInTableColumn Lib AppKitLibName Selector "setIndicatorImage:inTableColumn:" (id as ptr, value as Ptr, column as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setintercellSpacing Lib AppKitLibName Selector "setIntercellSpacing:" (id as ptr, value as FoundationFrameWork . NSSize)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrowActionsVisible Lib AppKitLibName Selector "setRowActionsVisible:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrowHeight Lib AppKitLibName Selector "setRowHeight:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setusesAlternatingRowBackgroundColors Lib AppKitLibName Selector "setUsesAlternatingRowBackgroundColors:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setusesStaticContents Lib AppKitLibName Selector "setUsesStaticContents:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setverticalMotionCanBeginDrag Lib AppKitLibName Selector "setVerticalMotionCanBeginDrag:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 526573697A657320746865206C61737420636F6C756D6E20736F20746865207461626C65207669657720666974732065786163746C792077697468696E2069747320656E636C6F73696E6720636C697020766965772E
		Sub SizeLastColumnToFit()
		  #If TargetMacOS then
		    sizeLastColumnToFit id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sizeLastColumnToFit Lib AppKitLibName Selector "sizeLastColumnToFit" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520666972737420636F6C756D6E20696E20746865207461626C6520766965772077686F7365206964656E74696669657220697320657175616C20746F2074686520737065636966696564206964656E7469666965722E
		Function TableColumn(Identifier As CFStringRef) As AppleTableColumn
		  #If TargetMacOS then
		    return AppleTableColumn.MakefromPtr(gettableColumnWithIdentifier(id, identifier))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50726F7065726C792073697A657320746865207461626C65207669657720616E642069747320686561646572207669657720616E64206D61726B73206974206173206E656564696E6720646973706C61792E
		Sub Tile()
		  #If TargetMacOS then
		    AppKitFramework.tile id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 556E68696465732074686520737065636966696564207461626C6520726F77732E
		Sub UnhideRows(Indexes as AppleIndexSet, Animation as AppleTableViewAnimationOptions)
		  #If TargetMacOS then
		    unhideRowsAtIndexes id, Indexes.id, Animation.Id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub unhideRowsAtIndexes Lib AppKitLibName Selector "unhideRowsAtIndexes:withAnimations:" (id as ptr, indexset as ptr, animations as uinteger)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320612076696577206174207468652073706563696669656420726F7720616E6420636F6C756D6E20696E64657865732C206372656174696E67206F6E65206966206E65636573736172792E
		Function ViewAtColumn(column as integer, row as integer, MakeIfNecessary As Boolean) As AppleView
		  #If TargetMacOS then
		    return AppleView.MakeFromPtr(viewAtColumn( id, column, row, MakeIfNecessary))
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function viewAtColumn Lib AppKitLibName Selector "viewAtColumn:row:makeIfNecessary:" (id as ptr, column as integer, row as Integer, MakeIfNEcessary As Boolean) As Ptr
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		missing:
		
		Nib methods
		didAddRow
		didRemoveRow
		drawRow
		drawGrid
		highlightSelection
		drawBackground
		setDraggingSourceOperationMask
		setDropRow
		sortDescriptors
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207461626C65207669657720616C6C6F777320746865207573657220746F207265617272616E676520636F6C756D6E73206279206472616767696E6720746865697220686561646572732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getallowsColumnReordering (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setallowsColumnReordering id,value
			  #endif
			End Set
		#tag EndSetter
		AllowsColumnReordering As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207461626C65207669657720616C6C6F777320746865207573657220746F20726573697A6520636F6C756D6E73206279206472616767696E67206265747765656E20746865697220686561646572732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getallowsColumnResizing (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setallowsColumnResizing id,value
			  #endif
			End Set
		#tag EndSetter
		AllowsColumnResizing As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207461626C65207669657720616C6C6F777320746865207573657220746F207265617272616E676520636F6C756D6E73206279206472616767696E6720746865697220686561646572732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getallowsColumnSelection (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setallowsColumnSelection id,value
			  #endif
			End Set
		#tag EndSetter
		AllowsColumnSelection As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207461626C65207669657720616C6C6F777320746865207573657220746F2073656C656374207A65726F20636F6C756D6E73206F7220726F77732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getallowsEmptySelection (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setallowsEmptySelection id,value
			  #endif
			End Set
		#tag EndSetter
		AllowsEmptySelection As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207461626C65207669657720616C6C6F777320746865207573657220746F2073656C656374206D6F7265207468616E206F6E6520636F6C756D6E206F7220726F7720617420612074696D652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getallowsMultipleSelection (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setallowsMultipleSelection id,value
			  #endif
			End Set
		#tag EndSetter
		AllowsMultipleSelection As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207461626C65207669657720616C6C6F777320746865207573657220746F2074797065206368617261637465727320746F2073656C65637420726F77732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getallowsTypeSelect (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setallowsTypeSelect id,value
			  #endif
			End Set
		#tag EndSetter
		AllowsTypeSelect As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D6520756E646572207768696368207461626C6520696E666F726D6174696F6E206973206175746F6D61746963616C6C792073617665642E0A4576656E207768656E2061207461626C6520766965772068617320616E206175746F73617665206E616D652C206974206F6E6C7920736176657320746865207461626C6520696E666F726D6174696F6E207768656E20746865206175746F736176655461626C65436F6C756D6E732070726F706572747920697320547275652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getautosaveName (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setautosaveName id,value
			  #endif
			End Set
		#tag EndSetter
		AutosaveName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206F7264657220616E64207769647468206F6620746865207461626C652076696577E280997320636F6C756D6E7320617265206175746F6D61746963616C6C792073617665642E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getautosaveTableColumns (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setautosaveTableColumns id,value
			  #endif
			End Set
		#tag EndSetter
		AutosaveTableColumns As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72207573656420746F206472617720746865206261636B67726F756E64206F6620746865207461626C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return applecolor.MakefromPtr(AppKitFramework.getbackgroundColor(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setbackgroundColor id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSTableView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E646578206F662074686520636F6C756D6E20746865207573657220636C69636B65642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getclickedColumn (id)
			  #endif
			End Get
		#tag EndGetter
		ClickedColumn As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E646578206F662074686520726F7720746865207573657220636C69636B65642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getclickedRow (id)
			  #endif
			End Get
		#tag EndGetter
		ClickedRow As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207461626C652076696577E280997320636F6C756D6E206175746F726573697A696E67207374796C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getcolumnAutoresizingStyle (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setcolumnAutoresizingStyle id, value
			  #endif
			End Set
		#tag EndSetter
		ColumnAutoresizingStyle As NSTableViewColumnAutoresizingStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577207573656420746F206472617720746865206172656120746F20746865207269676874206F662074686520636F6C756D6E206865616465727320616E642061626F76652074686520766572746963616C207363726F6C6C6572206F662074686520656E636C6F73696E67207363726F6C6C20766965772E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appleview.MakefromPtr(getcornerView(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setcornerView id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		CornerView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleTableViewDataSource.MakefromPtr(getdataSource(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setdataSource id, if (value = nil, nil, value.id)
			    
			  #endif
			End Set
		#tag EndSetter
		DataSource As AppleTableViewDataSource
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412073656C6563746F7220746861742069732073656E7420746F2074686520746172676574207768656E20746865207573657220646F75626C652D636C69636B7320612063656C6C206F7220636F6C756D6E206865616465722E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getdoubleAction(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setdoubleAction id, value
			  #endif
			End Set
		#tag EndSetter
		DoubleAction As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666565646261636B207374796C6520646973706C61796564207768656E207468652075736572206472616773206F76657220746865207461626C6520766965772E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return TableViewAdditionsForAppkit.getDraggingDestinationFeedbackStyle (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    TableViewAdditionsForAppkit.setDraggingDestinationFeedbackStyle id,value
			  #endif
			End Set
		#tag EndSetter
		DraggingDestinationFeedbackStyle As NSTableViewDraggingDestinationFeedbackStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E646578206F662074686520636F6C756D6E206265696E67206564697465642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return geteditedColumn (id)
			  #endif
			End Get
		#tag EndGetter
		EditedColumn As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E646578206F662074686520726F77206265696E67206564697465642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return geteditedRow (id)
			  #endif
			End Get
		#tag EndGetter
		EditedRow As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652065666665637469766520726F772073697A65207374796C6520666F7220746865207461626C652E2028726561642D6F6E6C79292E2053657420696E2073797374656D2070726566732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return geteffectiveRowSizeStyle (id)
			  #endif
			End Get
		#tag EndGetter
		EffectiveRowSizeStyle As NSTableViewRowSizeStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207461626C6520766965772064726177732067726F7570656420726F777320617320696620746865792061726520666C6F6174696E672E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getfloatsGroupRows (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setfloatsGroupRows id,value
			  #endif
			End Set
		#tag EndSetter
		FloatsGroupRows As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72207573656420746F20647261772067726964206C696E65732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return applecolor.MakefromPtr(getgridColor(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setgridColor id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		GridColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652067726964206C696E657320647261776E20627920746865207461626C6520766965772E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return new AppleTableViewGridStyleMask(getgridStyleMask (id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setgridStyleMask id, value.id
			  #endif
			End Set
		#tag EndSetter
		GridStyleMask As AppleTableViewGridStyleMask
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleTableHeaderView.MakefromPtr(getheaderView(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setheaderView id, if (value = nil, nil, value.id)
			    
			  #endif
			End Set
		#tag EndSetter
		HeaderView As AppleTableHeaderView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E6465786573206F6620616C6C2068696464656E207461626C6520726F77732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appleindexset.MakeFRomPtr(gethiddenRowIndexes (id))
			  #endif
			End Get
		#tag EndGetter
		HiddenRowIndexes As Appleindexset
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C756D6E20686967686C69676874656420696E20746865207461626C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleTableColumn.MakefromPtr(gethighlightedTableColumn (id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    sethighlightedTableColumn id, if (value =nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		HighlightedTableColumn As AppleTableColumn
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520686F72697A6F6E74616C20616E6420766572746963616C2073706163696E67206265747765656E2063656C6C732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getintercellSpacing (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setintercellSpacing id,value
			  #endif
			End Set
		#tag EndSetter
		IntercellSpacing As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  const mNSTableViewColumnDidMoveNotification = "NSTableViewColumnDidMoveNotification"
			  return mNSTableViewColumnDidMoveNotification
			End Get
		#tag EndGetter
		Shared kNSTableViewColumnDidMoveNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  const mNSTableViewColumnDidResizeNotification = "NSTableViewColumnDidResizeNotification"
			  return mNSTableViewColumnDidResizeNotification
			End Get
		#tag EndGetter
		Shared kNSTableViewColumnDidResizeNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  const mNSTableViewSelectionDidChangeNotification = "NSTableViewSelectionDidChangeNotification"
			  return mNSTableViewSelectionDidChangeNotification
			End Get
		#tag EndGetter
		Shared kNSTableViewSelectionDidChangeNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  const mNSTableViewSelectionIsChangingNotification = "NSTableViewSelectionIsChangingNotification"
			  return mNSTableViewSelectionIsChangingNotification
			End Get
		#tag EndGetter
		Shared kNSTableViewSelectionIsChangingNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620636F6C756D6E7320696E20746865207461626C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return TableViewAdditionsForAppkit.getnumberOfColumns (id)
			  #endif
			End Get
		#tag EndGetter
		NumberOfColumns As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620726F777320696E20746865207461626C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getnumberOfRows (id)
			  #endif
			End Get
		#tag EndGetter
		NumberOfRows As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F662073656C656374656420636F6C756D6E732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getnumberOfSelectedColumns (id)
			  #endif
			End Get
		#tag EndGetter
		NumberOfSelectedColumns As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F662073656C656374656420726F77732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getnumberOfSelectedRows (id)
			  #endif
			End Get
		#tag EndGetter
		NumberOfSelectedRows As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722061207461626C6520726F77E280997320616374696F6E73206172652076697369626C652E20746865207461626C65207669657720616C6C6F777320746865207573657220746F2073656C656374206D6F7265207468616E206F6E6520636F6C756D6E206F7220726F7720617420612074696D652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getrowActionsVisible (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setrowActionsVisible id,value
			  #endif
			End Set
		#tag EndSetter
		RowActionsVisible As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520686569676874206F66206561636820726F7720696E20746865207461626C652E2044656661756C742031362E302E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getrowHeight (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setrowHeight id,value
			  #endif
			End Set
		#tag EndSetter
		RowHeight As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652065666665637469766520726F772073697A65207374796C6520666F7220746865207461626C652E2028726561642D6F6E6C79292E2053657420696E2073797374656D2070726566732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return TableViewAdditionsForAppkit.getrowSizeStyle (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    TableViewAdditionsForAppkit.setrowSizeStyle id, value
			  #endif
			End Set
		#tag EndSetter
		RowSizeStyle As NSTableViewRowSizeStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E646578206F6620746865206C6173742073656C656374656420636F6C756D6E20286F7220746865206C61737420636F6C756D6E20616464656420746F207468652073656C656374696F6E292E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getselectedColumn (id)
			  #endif
			End Get
		#tag EndGetter
		SelectedColumn As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20696E6465782073657420636F6E7461696E696E672074686520696E6465786573206F66207468652073656C656374656420636F6C756D6E732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appleindexset.MakeFRomPtr(getselectedColumnIndexes (id))
			  #endif
			End Get
		#tag EndGetter
		SelectedColumnIndexes As Appleindexset
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E646578206F662074686520726F7720746865207573657220636C69636B65642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getselectedRow (id)
			  #endif
			End Get
		#tag EndGetter
		SelectedRow As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20696E6465782073657420636F6E7461696E696E672074686520696E6465786573206F66207468652073656C656374656420726F77732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appleindexset.MakeFRomPtr(getselectedRowIndexes (id))
			  #endif
			End Get
		#tag EndGetter
		SelectedRowIndexes As Appleindexset
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073656C656374696F6E20686967686C69676874207374796C65207573656420627920746865207461626C65207669657720746F20696E64696361746520726F7720616E6420636F6C756D6E2073656C656374696F6E2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return TableViewAdditionsForAppkit.getselectionHighlightStyle (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    TableViewAdditionsForAppkit.setselectionHighlightStyle id,value
			  #endif
			End Set
		#tag EndSetter
		SelectionHighlightStyle As NSTableViewSelectionHighlightStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20617272617920636F6E7461696E696E67207468652063757272656E74207461626C6520636F6C756D6E206F626A656374732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return applearray.MakefromPtr(gettableColumns(id))
			  #endif
			End Get
		#tag EndGetter
		TableColumns As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207461626C652076696577E28099732064656C65676174652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleObject.MakeFromPtr(AppKitFramework.getdelegate(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setdelegate(id, if (value = nil, nil, value.id))
			  #endif
			End Set
		#tag EndSetter
		TableViewDelegate As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207461626C652076696577207573657320616C7465726E6174696E6720726F7720636F6C6F727320666F7220697473206261636B67726F756E642E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getusesAlternatingRowBackgroundColors (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setusesAlternatingRowBackgroundColors id,value
			  #endif
			End Set
		#tag EndSetter
		UsesAlternatingRowBackgroundColors As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207461626C6520757365732073746174696320646174612E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getusesStaticContents (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setusesStaticContents id,value
			  #endif
			End Set
		#tag EndSetter
		UsesStaticContents As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220766572746963616C206D6F74696F6E206973207472656174656420617320612064726167206F722073656C656374696F6E206368616E67652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getverticalMotionCanBeginDrag (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setverticalMotionCanBeginDrag id,value
			  #endif
			End Set
		#tag EndSetter
		VerticalMotionCanBeginDrag As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = NSTableViewColumnAutoresizingStyle, Type = UInteger, Flags = &h0
		NoColumnAutoresizing = 0
		  UniformColumn
		  SequentialColumn
		  ReverseSequentialColumn
		  LastColumnOnly
		FirstColumnOnly
	#tag EndEnum

	#tag Enum, Name = NSTableViewDraggingDestinationFeedbackStyle, Type = Integer, Flags = &h0
		None = -1
		  Regular = 0
		  SourceList = 1
		Gap = 2
	#tag EndEnum

	#tag Enum, Name = NSTableViewRowSizeStyle, Type = Integer, Flags = &h0
		Default = -1
		  Custom = 0
		  Small = 1
		  Medium = 2
		Large = 3
	#tag EndEnum

	#tag Enum, Name = NSTableViewSelectionHighlightStyle, Type = Integer, Flags = &h0
		None = -1
		  Regular = 0
		SourceList = 1
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alignment"
			Group="Behavior"
			Type="AppleText.NSTextAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Left"
				"2 - Center"
				"1 - Right"
				"3 - Justified"
				"4 - Natural"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowExpansionTooltips"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsColumnReordering"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsColumnResizing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsColumnSelection"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsEditingTextAttributes"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsEmptySelection"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsMultipleSelection"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsTypeSelect"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutosaveName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutosaveTableColumns"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaselineOffsetFromBottom"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaseWritingDirection"
			Group="Behavior"
			Type="AppleText.NSWritingDirection"
			EditorType="Enum"
			#tag EnumValues
				"1 - Natural"
				"0 - LeftToRight"
				"1 - RightToLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="BoundsRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDraw"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDrawSubviewsIntoLayer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClickedColumn"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClickedRow"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnAutoresizingStyle"
			Group="Behavior"
			Type="NSTableViewColumnAutoresizingStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - NoColumnAutoresizing"
				"1 - UniformColumn"
				"2 - SequentialColumn"
				"3 - ReverseSequentialColumn"
				"4 - LastColumnOnly"
				"5 - FirstColumnOnly"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Continuous"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlSize"
			Group="Behavior"
			Type="NSControlSize"
			EditorType="Enum"
			#tag EnumValues
				"0 - Regular"
				"1 - Small"
				"2 - Mini"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DraggingDestinationFeedbackStyle"
			Group="Behavior"
			Type="NSTableViewDraggingDestinationFeedbackStyle"
			EditorType="Enum"
			#tag EnumValues
				"-1 - None"
				"0 - Regular"
				"1 - SourceList"
				"2 - Gap"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="EditedColumn"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EditedRow"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EffectiveRowSizeStyle"
			Group="Behavior"
			Type="NSTableViewRowSizeStyle"
			EditorType="Enum"
			#tag EnumValues
				"-1 - Default"
				"0 - Custom"
				"1 - Small"
				"2 - Medium"
				"3 - Large"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FirstBaselineOffsetFromTop"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FloatsGroupRows"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FocusRingType"
			Group="Behavior"
			Type="Appkitframework.NSFocusRingType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - Exterior"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameCenterRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeightAdjustLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Highlighted"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IgnoresMultiClick"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImportsGraphics"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Int32Value"
			Group="Behavior"
			Type="Int32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IntegerValue"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsDrawingFindIndicator"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsFlipped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsHiddenOrHasHiddenAncestor"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsInFullScreenMode"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsInLiveResize"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRotatedFromBase"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRotatedOrScaledFromBase"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastBaselineOffsetFromBottom"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerContentsPlacement"
			Group="Behavior"
			Type="NSViewLayerContentsPlacement"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleAxesIndependently"
				"1 - ScaleProprtionallyToFit"
				"2 - ScaleProprtionallyToFill"
				"3 - Center"
				"4 - Top"
				"5 - TopRight"
				"6 - Right"
				"7 - BottomRight"
				"8 - Bottom"
				"9 - BottomLeft"
				"10 - Left"
				"11 - TopLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerContentsRedrawPolicy"
			Group="Behavior"
			Type="NSViewLayerContentsRedrawPolicy"
			EditorType="Enum"
			#tag EnumValues
				"0 - Never"
				"1 - OnSetNeedsDisplay"
				"2 - DuringResize"
				"3 - BeforeResize"
				"4 - Crossfade"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerUsesCoreImageFilters"
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
			Name="LineBreakMode"
			Group="Behavior"
			Type="AppleText.NSLineBreakMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - WordWrap"
				"1 - CharacterWrap"
				"2 - Clip"
				"3 - TruncateHead"
				"4 - TruncateTail"
				"5 - TruncateMiddle"
			#tag EndEnumValues
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
			Name="NeedsDisplay"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsUpdateConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfColumns"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfRows"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfSelectedColumns"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfSelectedRows"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PostsBoundsChangedNotifications"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PostsFrameChangedNotifications"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RefusesFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RowActionsVisible"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RowHeight"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RowSizeStyle"
			Group="Behavior"
			Type="NSTableViewRowSizeStyle"
			EditorType="Enum"
			#tag EnumValues
				"-1 - Default"
				"0 - Custom"
				"1 - Small"
				"2 - Medium"
				"3 - Large"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedColumn"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedRow"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectionHighlightStyle"
			Group="Behavior"
			Type="NSTableViewSelectionHighlightStyle"
			EditorType="Enum"
			#tag EnumValues
				"-1 - None"
				"0 - Regular"
				"1 - SourceList"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="SingleValue"
			Group="Behavior"
			Type="Single"
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
			Name="TextValue"
			Group="Behavior"
			Type="text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ToolTip"
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
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInterfaceLayoutdirection"
			Group="Behavior"
			Type="Appkitframework.NSUserInterfaceLayoutdirection"
			EditorType="Enum"
			#tag EnumValues
				"0 - LeftToRight"
				"1 - RightToLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="UsesAlternatingRowBackgroundColors"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UsesStaticContents"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticalMotionCanBeginDrag"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WantsLayer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WidthAdjustLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
