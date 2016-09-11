#tag Class
Protected Class AppleAnimationContext
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 437265617465732061206E657720616E696D6174696F6E2067726F7570696E672E
		Sub BeginGrouping()
		  #If TargetMacOS then
		    BeginGrouping classptr
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub beginGrouping Lib AppKitLibName Selector "beginGrouping" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207669727475616C207772617070657220666F7220616E20416E696D6174696F6E436F6E7465787420616E6420696E766F6B6573206120666972737420426567696E47726F7570696E67206D6574686F642063616C6C2077686963682077696C6C20626520656E646564206279207468652064657374727563746F72206175746F6D61746963616C6C792E
		Sub Constructor(Caller As AppleResponder = nil)
		  #If TargetMacOS then
		    super.Constructor(init(alloc(classptr)))
		    MHasOwnership = true
		    BeginGrouping
		    if caller <> nil then 
		      dim block as new AppleBlock (addressof caller.AnimationContextCompletionBlock)
		      setcompletionHandler CurrentContext.id, block.Handle
		    else
		      setcompletionHandler CurrentContext.id, nil
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Destructor()
		  EndGrouping
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E6473207468652063757272656E7420616E696D6174696F6E2067726F7570696E672E
		Sub EndGrouping()
		  #If TargetMacOS then
		    EndGrouping classptr
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub endGrouping Lib AppKitLibName Selector "endGrouping" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getallowsImplicitAnimation Lib AppKitLibName Selector "allowsImplicitAnimation" (id as ptr) As boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getcurrentContext Lib AppKitLibName Selector "currentContext" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleAnimationContext
		  return if (aptr = nil, nil, new AppleAnimationContext(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setallowsImplicitAnimation Lib AppKitLibName Selector "setAllowsImplicitAnimation:" (id as ptr, value as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub setcompletionHandler Lib AppKitLibName Selector "setCompletionHandler:" (id as ptr, value as ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 496620616E696D6174696F6E732061726520656E61626C6564206F72206E6F7420666F7220616E696D6174696F6E732074686174206F63637572206173206120726573756C74206F6620616E6F746865722070726F7065727479206368616E67652E2044656661756C742046616C73652E0A54686973206973206F6E6C79206170706C696361626C65207768656E206C61796572206261636B6564206F6E204F53207631302E3820616E64206C617465722E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getallowsImplicitAnimation (id)
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setallowsImplicitAnimation (id, value)
			    
			  #endif
			End Set
		#tag EndSetter
		AllowsImplicitAnimation As Boolean
	#tag EndComputedProperty

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
			  #If TargetMacOS then
			    dim result as new  AppleAnimationContext(GetCurrentContext(classptr))
			    result.retainclassobject
			    return result
			  #endif
			End Get
		#tag EndGetter
		Private Shared CurrentContext As AppleAnimationContext
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206475726174696F6E207573656420627920616E696D6174696F6E732063726561746564206173206120726573756C74206F662073657474696E67206E65772076616C75657320666F7220616E20616E696D617461626C652070726F70657274792E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return QuartzCoreFramework.getduration (id)
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    QuartzCoreFramework.setDuration (id, value)
			    
			  #endif
			End Set
		#tag EndSetter
		Duration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206475726174696F6E207573656420627920616E696D6174696F6E732063726561746564206173206120726573756C74206F662073657474696E67206E65772076616C75657320666F7220616E20616E696D617461626C652070726F70657274792E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleCAMediaTimingFunction.MakeFromPtr(QuartzCoreFramework.gettimingfunction (id))
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    QuartzCoreFramework.settimingFunction id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		TimingFunction As AppleCAMediaTimingFunction
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowsImplicitAnimation"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
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
