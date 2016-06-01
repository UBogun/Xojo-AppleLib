#tag Class
Protected Class AppleTableColumn
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Identifier as CFStringRef)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(initWithIdentifier(alloc(classptr), Identifier))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getheaderCell Lib AppKitLibName Selector "headerCell" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getheaderToolTip Lib AppKitLibName Selector "headerToolTip" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getresizingMask Lib AppKitLibName Selector "resizingMask" (id as ptr) As Uinteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithIdentifier Lib AppKitLibName Selector "initWithIdentifier:" (id as ptr, identifier as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleTableColumn
		  return if (aptr = nil,nil, new AppleTableColumn(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setheaderCell Lib AppKitLibName Selector "setHeaderCell:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setheaderToolTip Lib AppKitLibName Selector "setHeaderToolTip:" (id as ptr, value as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setresizingMask Lib AppKitLibName Selector "setResizingMask:" (id as ptr, value as uinteger)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 526573697A657320746865207461626C6520636F6C756D6E20746F2066697420746865207769647468206F6620697473206865616465722063656C6C2E
		Sub SizeToFit()
		  AppKitFramework.sizeToFit id
		End Sub
	#tag EndMethod


	#tag Note, Name = Status incomplete
		
		missing:
		sortdescriptor
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSTableColumn")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220612063656C6C2D6261736564207461626C65E280997320636F6C756D6E2063656C6C73206172652075736572206564697461626C652E
		#tag Getter
			Get
			  return AppKitFramework.geteditable (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.seteditable id, value
			End Set
		#tag EndSetter
		Editable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656C6C207573656420746F206472617720746865207461626C6520636F6C756D6EE2809973206865616465722E
		#tag Getter
			Get
			  return AppleTableHeaderCell.MakefromPtr(getheadercell(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setheaderCell id, value.id
			End Set
		#tag EndSetter
		HeaderCell As AppleTableHeaderCell
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520737472696E672074686174E280997320646973706C6179656420696E20612068656C7020746167206F76657220746865207461626C6520636F6C756D6E206865616465722E
		#tag Getter
			Get
			  return getheaderToolTip(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setheaderToolTip id, value
			End Set
		#tag EndSetter
		HeaderToolTip As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207461626C6520636F6C756D6E2069732068696464656E2E
		#tag Getter
			Get
			  return appkitframework.getHidden (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setHidden id,value
			End Set
		#tag EndSetter
		Hidden As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207469746C65206F6620746865207461626C6520636F6C756D6EE2809973206865616465722E
		#tag Getter
			Get
			  return AppKitFramework.getidentifier(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setidentifier id, value
			End Set
		#tag EndSetter
		Identifier As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207461626C6520636F6C756D6EE28099732077696474682C20696E20706F696E74732E
		#tag Getter
			Get
			  return AppKitFramework.getMaxWidth(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setMaxWidth id, value
			End Set
		#tag EndSetter
		MaxWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207461626C6520636F6C756D6EE2809973206D696E696D756D2077696474682C20696E20706F696E74732E
		#tag Getter
			Get
			  return AppKitFramework.getminWidth(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setminWidth id, value
			End Set
		#tag EndSetter
		MinWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207461626C6520636F6C756D6EE280997320726573697A696E67206D61736B2E
		#tag Getter
			Get
			  return new AppleTableColumnResizingOptions(getresizingMask(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setresizingMask id, value.id
			End Set
		#tag EndSetter
		ResizingMask As AppleTableColumnResizingOptions
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207461626C652076696577207468617420636F6E7461696E7320746865207461626C6520636F6C756D6E2E
		#tag Getter
			Get
			  return AppleTableView.MakefromPtr(TableViewAdditionsForAppkit.gettableView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  TableViewAdditionsForAppkit.setTableView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		TableView As AppleTableView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207469746C65206F6620746865207461626C6520636F6C756D6EE2809973206865616465722E
		#tag Getter
			Get
			  return AppKitFramework.getTitle(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setTitle id, value
			End Set
		#tag EndSetter
		Title As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207461626C6520636F6C756D6EE28099732077696474682C20696E20706F696E74732E
		#tag Getter
			Get
			  return AppKitFramework.getWidth(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setWidth id, value
			End Set
		#tag EndSetter
		Width As Double
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
