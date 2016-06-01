#tag Class
Protected Class AppleActionCell
Inherits AppleCell
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(Image as AppleImage) -- From AppleCell
		  // Constructor(Caption as cfstringRef) -- From AppleCell
		  // Constructor() -- From AppleCell
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(init(alloc(ClassPtr)))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleActionCell
		  return if (aptr = nil, nil, new AppleActionCell(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207265636569766572277320636F6E74726F6C20766965772C20746865207669657720696E20776869636820697420697320647261776E2E
		Sub SetControlView(view as AppleView)
		  setControlView id, if(view = nil, nil, view.id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setControlView Lib appkitlibname Selector "setControlView:" (id as ptr, view as ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		OS X 10.11.5
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5468652073656C6563746F72207573656420666F7220616374696F6E206D657373616765732073656E7420627920746865207265636569766572277320636F6E74726F6C2E
		#tag Getter
			Get
			  return appkitframework.getaction (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setAction id,  value
			End Set
		#tag EndSetter
		Action As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSActionCell")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E28099732076616C756520617320612036342D62697420636F6D70617469626C6520696E74656765722061667465722076616C69646174696E6720616E792065646974696E67206F662063656C6C20636F6E74656E742E
		#tag Getter
			Get
			  return AppKitFramework.getintegerValue (id)
			  
			End Get
		#tag EndGetter
		IntegerValue As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656C6CE2809973207461672C20776869636820697320616E20696E7465676572207468617420796F752075736520746F206964656E746966792074686520766965772077697468696E20796F7572206170702E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppKitFramework.gettag(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.settag id, value
			End Set
		#tag EndSetter
		Tag As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207265636569766572E280997320746172676574206F626A6563742E
		#tag Getter
			Get
			  return appleobject.MakeFromPtr(appkitframework.getTarget (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setTarget id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Target As AppleObject
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
