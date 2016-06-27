#tag Class
Protected Class AppleNib
Inherits AppleObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithNibData Lib appkitlibname Selector "initWithNibData:bundle:" (id as ptr, data as ptr, Bundle as Ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithNibNamed Lib appkitlibname Selector "initWithNibNamed:bundle:" (id as ptr, name as cfstringRef, Bundle as Ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 496E7374616E7469617465732061206E696220616E642072657475726E7320616E206172726179206F662069747320546F70206C6576656C206F626A656374732E2052616973657320616E20657863657074696F6E20696620696E7374616E74696174696F6E206661696C65642E
		Function Instantiate(Owner as AppleObject) As AppleArray
		  #If TargetMacOS then
		    
		    dim ArrPtr as Ptr
		    dim result as Boolean = instantiateWithOwner(me.mid, Owner.id, arrptr)
		    if result = true then
		      dim resultarr as applearray = AppleArray.MakeFromPtr(arrptr)
		      resultarr.RetainClassobject
		      return resultarr
		    else
		      MakeException kCouldNotInstantiateNib
		    end if
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function instantiateWithOwner Lib appkitlibname Selector "instantiateWithOwner:topLevelObjects:" (id as ptr, owner as ptr, byref toplevelobjects as Ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleNib
		  Return if (aptr = nil, nil, new applenib(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status incomplete
		
		Constructors missing  need AppleBundle first.
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSNib")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty


	#tag Constant, Name = kCouldNotInstantiateNib, Type = Text, Dynamic = False, Default = \"Could Not instantiate Nib", Scope = Private
	#tag EndConstant


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
