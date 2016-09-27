#tag Class
Protected Class AppleTextRange
Inherits AppleObject
	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function getempty Lib uikitlibname Selector "isEmpty" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function getend Lib uikitlibname Selector "end" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function getstart Lib uikitlibname Selector "start" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleTextRange
		  Return if (aptr = nil, nil, new AppleTextRange(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete
		
		iOS 10
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Static mclassptr as ptr
			  if mclassptr = nil then mclassptr = FoundationFrameWork.NSClassFromString("UITextRange")
			  return mclassptr
			End Get
		#tag EndGetter
		Protected Shared Classptr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652072616E6765206F66207465787420726570726573656E74656420627920746865207265636569766572206973207A65726F2D6C656E6774682E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getempty(mid)
			End Get
		#tag EndGetter
		Empty As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520656E64206F6620612072616E6765206F6620746578742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleTextPosition.MakefromPtr(getend(mid))
			End Get
		#tag EndGetter
		EndPosition As AppleTextPosition
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207374617274206F6620612072616E6765206F6620746578742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleTextPosition.MakefromPtr(getstart(mid))
			End Get
		#tag EndGetter
		StartPosition As AppleTextPosition
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Empty"
			Group="Behavior"
			Type="Boolean"
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
