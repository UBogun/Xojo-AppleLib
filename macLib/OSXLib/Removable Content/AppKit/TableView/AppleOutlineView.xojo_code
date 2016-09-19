#tag Class
Protected Class AppleOutlineView
Inherits AppleTableView
	#tag Method, Flags = &h0, Description = 52657475726E732074686520737065636966696564206368696C64206F6620616E206974656D2E
		Function Child(index as integer, parentitem as appleobject) As AppleObject
		  return appleobject.MakeFromPtr(getchild(id, index, ParentItem.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6C6C6170736573206120676976656E206974656D20616E642C206F7074696F6E616C6C792C20697473206368696C6472656E2E
		Sub CollapseItem(item as appleobject, CollapseChildren as Boolean = false)
		  if CollapseChildren then
		    CollapseItemChildren (id, item.id, CollapseChildren)
		  else
		    CollapseItem (id, item.id)
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub collapseItem Lib AppKitLibName Selector "collapseItem:" (id as ptr, item as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub collapseItemChildren Lib AppKitLibName Selector "collapseItem:collapseChildren:" (id as ptr, item as ptr, collapseChildren as Boolean)
	#tag EndExternalMethod

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
		  Super.Constructor(makeViewWithIdentifier(alloc(classptr),Identifer,if (owner = nil, nil, owner.id)))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub constructor(type as DisclosureButtonType)
		  dim newinstance as new AppleOutlineView(FoundationFrameWork.NSMakeRect(0,0,100,100))
		  select case type
		  case DisclosureButtonType.DisclosureButton
		    constructor(kNSOutlineViewDisclosureButtonKey, newinstance)
		  case DisclosureButtonType.ShowHideButton
		    constructor(kNSOutlineViewShowHideButtonKey, newinstance)
		  end select
		  
		  
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
		  Super.Constructor(initwithframe(alloc(classptr),Rect))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 457870616E6473206120737065636966696564206974656D20616E642C206F7074696F6E616C6C792C20697473206368696C6472656E2E
		Sub ExpandItem(item as appleobject, ExpandChildren as Boolean = false)
		  if ExpandChildren then
		    expandItemChildren (id, item.id, ExpandChildren)
		  else
		    expandItem (id, item.id)
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub expandItem Lib AppKitLibName Selector "expandItem:" (id as ptr, item as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub expandItemChildren Lib AppKitLibName Selector "expandItem:expandChildren:" (id as ptr, item as ptr, expandchildren as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206672616D65206F6620746865206F75746C696E652063656C6C20666F72206120676976656E20726F772E
		Function FrameOfOutlineCell(row as Integer) As FoundationFrameWork.NSRect
		  return getframeOfOutlineCellAtRow (id, row)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getautoresizesOutlineColumn Lib AppKitLibName Selector "autoresizesOutlineColumn" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getautosaveExpandedItems Lib AppKitLibName Selector "autosaveExpandedItems" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getchild Lib AppKitLibName Selector "child:ofItem:" (id as ptr, index as integer, item as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getframeOfOutlineCellAtRow Lib AppKitLibName Selector "frameOfOutlineCellAtRow:" (id as ptr, row as Integer) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getindentationMarkerFollowsCell Lib AppKitLibName Selector "indentationMarkerFollowsCell" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getindentationPerLevel Lib AppKitLibName Selector "indentationPerLevel" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlevelForItem Lib AppKitLibName Selector "levelForItem:" (id as ptr, item as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlevelForRow Lib AppKitLibName Selector "levelForRow:" (id as ptr, row as Integer) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnumberOfChildrenOfItem Lib AppKitLibName Selector "numberOfChildrenOfItem:" (id as ptr, item as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getoutlineTableColumn Lib AppKitLibName Selector "outlineTableColumn" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparentForItem Lib AppKitLibName Selector "parentForItem:" (id as ptr, item as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 496E7365727473206E6577206974656D732061742074686520676976656E20696E646578657320696E2074686520676976656E20706172656E7420776974682074686520737065636966696564206F7074696F6E616C20616E696D6174696F6E73
		Sub InsertItems(indexes as AppleIndexSet, Parent as AppleObject, Animation As AppleTableViewAnimationOptions = Nil)
		  insertItemsAtIndexes id, indexes.id, parent.id, if (animation = nil, 0, animation.id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E7320746865206974656D206173736F6369617465642077697468206120676976656E20726F77
		Protected Declare Sub insertItemsAtIndexes Lib AppKitLibName Selector "insertItemsAtIndexes:inParrent:withAnimation:" (id as ptr, indexes as ptr, parent as ptr, animation as uinteger)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C7565207468617420696E646963617465732077686574686572206120676976656E206974656D20697320657870616E6461626C652E
		Function IsExpandable(item as appleobject) As Boolean
		  return isExpandable (id, item.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function isExpandable Lib AppKitLibName Selector "isExpandable:" (id as ptr, item as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C7565207468617420696E646963617465732077686574686572206120676976656E206974656D20697320657870616E6465642E
		Function IsItemExpanded(item as appleobject) As Boolean
		  return isItemExpanded (id, item.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function isItemExpanded Lib AppKitLibName Selector "isItemExpanded:" (id as ptr, item as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C7565207468617420696E646963617465732077686574686572206120676976656E206974656D20697320657870616E6461626C652E
		Function Item(row as Integer) As AppleObject
		  return AppleObject.MakeFromPtr( itemAtRow (id,row))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E7320746865206974656D206173736F6369617465642077697468206120676976656E20726F77
		Protected Declare Function itemAtRow Lib AppKitLibName Selector "itemAtRow:" (id as ptr, row as integer) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696E64656E746174696F6E206C6576656C20666F72206120676976656E206974656D2E
		Function Level(item as appleobject) As Integer
		  return getlevelForItem (id, item.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696E64656E746174696F6E206C6576656C20666F72206120676976656E20726F772E
		Function Level(row as integer) As Integer
		  return getlevelForRow (id, row)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D6F76657320616E206974656D206174206120676976656E20696E64657820696E2074686520676976656E20706172656E7420746F2061206E657720696E64657820696E2061206E657720706172656E742E
		Sub MoveItem(Index as integer, Parent as AppleObject, NewIndex as Integer, NewParent As AppleObject)
		  moveItemAtIndex id, index, parent.id, newindex, newparent.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E7320746865206974656D206173736F6369617465642077697468206120676976656E20726F77
		Protected Declare Sub moveItemAtIndex Lib AppKitLibName Selector "moveItemAtIndex:inParent:toIndex:inParent:" (id as ptr, index as integer, parent as ptr, toindex as integer, inParent as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206E756D626572206F66206368696C6472656E20666F72207468652073706563696669656420706172656E74206974656D2E
		Function NumberOfChildrenOfItem(parentitem as appleobject) As Integer
		  return getnumberOfChildrenOfItem (id,  ParentItem.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520706172656E7420666F72206120676976656E206974656D2E
		Function Parent(item as appleobject) As AppleObject
		  return appleobject.MakeFromPtr(getparentForItem(id, item.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656C6F616473206120676976656E206974656D20616E642C206F7074696F6E616C6C792C20697473206368696C6472656E2E
		Sub ReloadItem(item as appleobject,reloadchildren as boolean = false)
		  if reloadchildren then
		    reloadItemChildren id,item.id , reloadchildren
		  else
		    reloadItem id,item.id
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub reloadItem Lib AppKitLibName Selector "reloadItem:" (id as ptr, item as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub reloadItemChildren Lib AppKitLibName Selector "reloadItem:reloadChildren:" (id as ptr, item as ptr, reloadchildren as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C7565207468617420696E646963617465732077686574686572206120676976656E206974656D20697320657870616E6461626C652E
		Function Row(Item as Appleobject) As Integer
		  return rowForItem (id, item.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520726F77206173736F6369617465642077697468206120676976656E20746578742E
		Function Row(Item as cfstringRef) As Integer
		  return rowFortext (id, item)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E7320746865206974656D206173736F6369617465642077697468206120676976656E20726F77
		Protected Declare Function rowForItem Lib AppKitLibName Selector "rowForItem:" (id as ptr, item as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E7320746865206974656D206173736F6369617465642077697468206120676976656E20726F77
		Protected Declare Function rowForText Lib AppKitLibName Selector "rowForItem:" (id as ptr, item as cfstringRef) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setautoresizesOutlineColumn Lib AppKitLibName Selector "setAutoresizesOutlineColumn:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setautosaveExpandedItems Lib AppKitLibName Selector "setAutosaveExpandedItems:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5573656420746F20E2809C7265746172676574E2809D20612070726F706F7365642064726F702E
		Sub SetDropItem(item as appleobject, index as integer)
		  setDropItem id, item.id, index
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setDropItem Lib AppKitLibName Selector "setDropItem:dropChildIndex:" (id as ptr, item as ptr, index as integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setindentationMarkerFollowsCell Lib AppKitLibName Selector "setIndentationMarkerFollowsCell:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setindentationPerLevel Lib AppKitLibName Selector "setIndentationPerLevel:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setoutlineTableColumn Lib AppKitLibName Selector "setOutlineTableColumn:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C7565207468617420696E646963617465732077686574686572206175746F2D657870616E646564206974656D732073686F756C642072657475726E20746F207468656972206F726967696E616C20636F6C6C61707365642073746174652E
		Function ShouldCollapseAutoExpandedItems(Deposited as Boolean) As Boolean
		  return shouldCollapseAutoExpandedItemsForDeposited (id, deposited)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function shouldCollapseAutoExpandedItemsForDeposited Lib AppKitLibName Selector "shouldCollapseAutoExpandedItemsForDeposited:" (id as ptr, deposited as Boolean) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 52657475726E73207468652074657874206173736F6369617465642077697468206120676976656E20726F77
		Protected Declare Function textAtRow Lib AppKitLibName Selector "itemAtRow:" (id as ptr, row as integer) As cfstringRef
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206F75746C696E65207669657720726573697A657320697473206F75746C696E6520636F6C756D6E207768656E20746865207573657220657870616E6473206F7220636F6C6C6170736573206974656D732E
		#tag Getter
			Get
			  return getautoresizesOutlineColumn(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setautoresizesOutlineColumn id, value
			End Set
		#tag EndSetter
		AutoresizesOutlineColumn As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520657870616E646564206974656D7320617265206175746F6D61746963616C6C79207361766564206163726F7373206C61756E63686573206F6620746865206170702E
		#tag Getter
			Get
			  return getautosaveExpandedItems(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setautosaveExpandedItems id, value
			End Set
		#tag EndSetter
		AutosaveExpandedItems As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSOutlineView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520696E64656E746174696F6E206D61726B65722073796D626F6C20646973706C6179656420696E20746865206F75746C696E6520636F6C756D6E2073686F756C6420626520696E64656E74656420616C6F6E672077697468207468652063656C6C20636F6E74656E74732E
		#tag Getter
			Get
			  return getindentationMarkerFollowsCell(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setindentationMarkerFollowsCell id, value
			End Set
		#tag EndSetter
		IndentationMarkerFollowsCell As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207065722D6C6576656C20696E64656E746174696F6E2C206D6561737572656420696E20706F696E74732E
		#tag Getter
			Get
			  return getindentationPerLevel (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setindentationPerLevel (id, value)
			End Set
		#tag EndSetter
		IndentationPerLevel As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207461626C6520636F6C756D6E20696E2077686963682068696572617263686963616C206461746120697320646973706C617965642E
		#tag Getter
			Get
			  return AppleTableColumn.MakefromPtr (getoutlineTableColumn(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setoutlineTableColumn id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		OutlineTableColumn As AppleTableColumn
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F75746C696E652076696577E28099732064656C65676174652E
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr(FoundationFramework.GetDelegate(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFramework.setDelegate(id, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		OutlineViewDelegate As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207573657220696E74657266616365206C61796F757420646972656374696F6E2E
		#tag Getter
			Get
			  return AppKitFramework.getuserInterfaceLayoutDirection(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setuserInterfaceLayoutDirection id, value
			End Set
		#tag EndSetter
		UserInterfaceLayoutdirection1 As Appkitframework.NSUserInterfaceLayoutdirection
	#tag EndComputedProperty


	#tag Constant, Name = kNSOutlineViewColumnDidMoveNotification, Type = Text, Dynamic = False, Default = \"NSOutlineViewColumnDidMoveNotification", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kNSOutlineViewColumnDidResizeNotification, Type = Text, Dynamic = False, Default = \"NSOutlineViewColumnDidResizeNotification", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kNSOutlineViewDisclosureButtonKey, Type = Text, Dynamic = False, Default = \"NSOutlineViewDisclosureButtonKey", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kNSOutlineViewItemDidCollapseNotification, Type = Text, Dynamic = False, Default = \"NSOutlineViewItemDidCollapseNotification", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kNSOutlineViewItemDidExpandNotification, Type = Text, Dynamic = False, Default = \"NSOutlineViewItemDidExpandNotification", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kNSOutlineViewItemWillCollapseNotification, Type = Text, Dynamic = False, Default = \"NSOutlineViewItemWillCollapseNotification", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kNSOutlineViewItemWillExpandNotification, Type = Text, Dynamic = False, Default = \"NSOutlineViewItemWillExpandNotification", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kNSOutlineViewSelectionDidChangeNotification, Type = Text, Dynamic = False, Default = \"NSOutlineViewSelectionDidChangeNotification", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kNSOutlineViewSelectionIsChangingNotification, Type = Text, Dynamic = False, Default = \"NSOutlineViewSelectionIsChangingNotification", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kNSOutlineViewShowHideButtonKey, Type = Text, Dynamic = False, Default = \"NSOutlineViewShowHideButtonKey", Scope = Public
	#tag EndConstant


	#tag Enum, Name = DisclosureButtonType, Type = Integer, Flags = &h0
		DisclosureButton
		ShowHideButton
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
			Name="AutoresizesOutlineColumn"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutosaveExpandedItems"
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
			Name="IndentationMarkerFollowsCell"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IndentationPerLevel"
			Group="Behavior"
			Type="Double"
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
			Name="UserInterfaceLayoutdirection1"
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
