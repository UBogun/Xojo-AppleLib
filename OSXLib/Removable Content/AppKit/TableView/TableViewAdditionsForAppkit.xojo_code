#tag Module
Protected Module TableViewAdditionsForAppkit
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcolumnAtPoint Lib AppKitLibName Selector "columnAtPoint:" (id as ptr, point as FoundationFrameWork . NSPoint) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdraggingDestinationFeedbackStyle Lib AppKitLibName Selector "draggingDestinationFeedbackStyle" (id as ptr) As AppleTableView.NSTableViewDraggingDestinationFeedbackStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnumberOfColumns Lib AppKitLibName Selector "numberOfColumns" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getselectionHighlightStyle Lib AppKitLibName Selector "selectionHighlightStyle" (id as ptr) As AppleTableView.NSTableViewSelectionHighlightStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettableView Lib AppKitLibName Selector "tableView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdraggingDestinationFeedbackStyle Lib AppKitLibName Selector "setDraggingDestinationFeedbackStyle:" (id as ptr, value as AppleTableView . NSTableViewDraggingDestinationFeedbackStyle)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setselectionHighlightStyle Lib AppKitLibName Selector "setSelectionHighlightStyle:" (id as ptr, value as appleTableView . NSTableViewSelectionHighlightStyle)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setTableView Lib AppKitLibName Selector "setTableView:" (id as ptr, value as ptr)
	#tag EndExternalMethod


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
