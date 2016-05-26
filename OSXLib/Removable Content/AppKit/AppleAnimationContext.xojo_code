#tag Class
Protected Class AppleAnimationContext
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 437265617465732061206E657720616E696D6174696F6E2067726F7570696E672E
		Sub BeginGrouping()
		  BeginGrouping classptr
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub beginGrouping Lib AppKitLibName Selector "beginGrouping" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207669727475616C207772617070657220666F7220616E20416E696D6174696F6E436F6E7465787420616E6420696E766F6B6573206120666972737420426567696E47726F7570696E67206D6574686F642063616C6C2077686963682077696C6C20626520656E646564206279207468652064657374727563746F72206175746F6D61746963616C6C792E
		Sub Constructor(Caller As AppleResponder = nil)
		  super.Constructor(init(alloc(classptr)))
		  MHasOwnership = true
		  BeginGrouping
		  if caller <> nil then 
		    dim block as new AppleBlock (addressof caller.AnimationContextCompletionBlock)
		    setcompletionHandler CurrentContext.id, block.Handle
		  else
		    setcompletionHandler CurrentContext.id, nil
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Destructor()
		  EndGrouping
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E6473207468652063757272656E7420616E696D6174696F6E2067726F7570696E672E
		Sub EndGrouping()
		  EndGrouping classptr
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub endGrouping Lib AppKitLibName Selector "endGrouping" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getcurrentContext Lib AppKitLibName Selector "currentContext" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function gettimingFunction Lib AppKitLibName Selector "timingFunction" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleAnimationContext
		  return if (aptr = nil, nil, new AppleAnimationContext(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setcompletionHandler Lib AppKitLibName Selector "setCompletionHandler:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub settimingFunction Lib AppKitLibName Selector "setTimingFunction:" (id as ptr, value as ptr)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSAnimationContext")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21, Description = 5468652063757272656E7420616E696D6174696F6E20636F6E746578742E
		#tag Getter
			Get
			  dim result as new  AppleAnimationContext(GetCurrentContext(classptr))
			  result.retainclassobject
			  return result
			  
			End Get
		#tag EndGetter
		Private Shared CurrentContext As AppleAnimationContext
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206475726174696F6E207573656420627920616E696D6174696F6E732063726561746564206173206120726573756C74206F662073657474696E67206E65772076616C75657320666F7220616E20616E696D617461626C652070726F70657274792E
		#tag Getter
			Get
			  return QuartzCoreFramework.getduration (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  QuartzCoreFramework.setDuration (id, value)
			  
			End Set
		#tag EndSetter
		Duration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206475726174696F6E207573656420627920616E696D6174696F6E732063726561746564206173206120726573756C74206F662073657474696E67206E65772076616C75657320666F7220616E20616E696D617461626C652070726F70657274792E
		#tag Getter
			Get
			  return AppleCAMediaTimingFunction.MakeFromPtr(gettimingfunction (id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  settimingFunction id, value.id
			End Set
		#tag EndSetter
		TimingFunction As AppleCAMediaTimingFunction
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
