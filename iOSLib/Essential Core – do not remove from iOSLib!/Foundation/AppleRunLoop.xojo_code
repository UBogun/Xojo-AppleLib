#tag Class
 Attributes ( incomplete = "Timer and Ports methods missing" ) Protected Class AppleRunLoop
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 52756E7320746865206C6F6F70206F6E6365206F7220756E74696C207468652073706563696669656420646174652C20616363657074696E6720696E707574206F6E6C7920666F722074686520737065636966696564206D6F6465
		Sub AcceptInput(Mode AS CFStringRef, untilDate as Appledate)
		  acceptInputForMode id, mode, untildate.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub acceptInputForMode Lib foundationlibname Selector "acceptInputForMode:beforeDate:" (id as ptr, mode as cfstringref, date as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43616E63656C73207468652073656E64696E67206F6620612070726576696F75736C79207363686564756C6564206D6573736167652E
		Sub CancelPerformSelector(aSelector as ptr, Target as AppleObject, Argument as AppleObject)
		  cancelperformSelector id, aSelector, target.id, if (argument = nil, nil, argument.id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub cancelPerformSelector Lib foundationlibname Selector "cancelPerformSelector:target:argument:" (id as ptr, sel as ptr, target as ptr, argument as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43616E63656C7320616C6C206F75747374616E64696E67206F72646572656420706572666F726D73207363686564756C65642077697468206120676976656E207461726765742E
		Sub CancelPerformSelectors(Target as AppleObject)
		  cancelperformSelectors id, target.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub cancelPerformSelectors Lib foundationlibname Selector "cancelPerformSelectorsWithTarget:" (id as ptr, target as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getCFRunLoop Lib foundationlibname Selector "getCFRunLoop" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getcurrentMode Lib foundationlibname Selector "currentMode" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getcurrentRunLoop Lib foundationlibname Selector "currentRunLoop" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getmainRunLoop Lib foundationlibname Selector "mainRunLoop" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 506572666F726D73206F6E652070617373207468726F756768207468652072756E206C6F6F7020696E2074686520737065636966696564206D6F646520616E642072657475726E7320746865206461746520617420776869636820746865206E6578742074696D6572206973207363686564756C656420746F20666972652E
		Function LimitDate(Mode AS CFStringRef) As AppleDate
		  return appledate.MakefromPtr(LimitDateformode(id, mode))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function limitDateForMode Lib foundationlibname Selector "limitDateForMode:" (id as ptr, mode as CFStringRef) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5363686564756C6573207468652073656E64696E67206F662061206D657373616765206F6E207468652063757272656E742072756E206C6F6F702E
		Sub PerformSelector(aSelector as ptr, Target as AppleObject, Argument as AppleObject, order as uinteger, modes as AppleArray)
		  performSelector id, aSelector, target.id, if (argument = nil, nil, argument.id), order, modes.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub performSelector Lib foundationlibname Selector "performSelector:target:argument:order:modes:" (id as ptr, sel as ptr, target as ptr, argument as ptr, order as uinteger, modes as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 50757473207468652072756E6C6F6F7020696E746F2061207065726D616E656E74206C6F6F702C20647572696E672077686963682074696D652069742070726F63657373657320646174612066726F6D20616C6C20617474616368656420696E70757420736F75726365732E
		Sub Run()
		  run id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub run Lib foundationlibname Selector "run" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52756E7320746865206C6F6F70206F6E63652C20626C6F636B696E6720666F7220696E70757420696E2074686520737065636966696564206D6F646520756E74696C206120676976656E20646174652E20
		Sub RunMode(Mode AS CFStringRef, untilDate as Appledate)
		  runMode (id, mode, untildate.id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub runMode Lib foundationlibname Selector "runMode:beforeDate:" (id as ptr, mode as cfstringref, date as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52756E7320746865206C6F6F7020756E74696C207468652073706563696669656420646174652C20647572696E672077686963682074696D652069742070726F63657373657320646174612066726F6D20616C6C20617474616368656420696E70757420736F75726365732E
		Sub RunUntil(Date as appledate)
		  runUntilDate id, date.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Sub runUntilDate Lib foundationlibname Selector "runUntilDate:" (id as ptr, date as ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status
		9.2.
		Timer and ports methods missing due to NSTimer and NSPort not being implemented
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5468652072756E6C6F6F70E280997320756E6465726C79696E6720434652756E4C6F6F70205265666572656E6365206F626A6563742E
		#tag Getter
			Get
			  return new AppleCFRunLoop(getCFRunLoop(id))
			End Get
		#tag EndGetter
		CFRunLoop As AppleCFRunLoop
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSRunLoop")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726563656976657227732063757272656E7420696E707574206D6F64652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcurrentMode (id)
			End Get
		#tag EndGetter
		CurrentMode As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865204E5352756E4C6F6F70206F626A65637420666F72207468652063757272656E74207468726561642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return new AppleRunLoop(getcurrentRunLoop(classptr))
			End Get
		#tag EndGetter
		Shared CurrentRunLoop As AppleRunLoop
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072756E206C6F6F70206F6620746865206D61696E207468726561642E2038726561642D6F6E6C7929
		#tag Getter
			Get
			  return new AppleRunLoop(getmainRunLoop(classptr))
			End Get
		#tag EndGetter
		Shared MainRunLoop As AppleRunLoop
	#tag EndComputedProperty


	#tag Constant, Name = kNSDefaultRunLoopMode, Type = Text, Dynamic = False, Default = \"NSDefaultRunLoopMode", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kNSRunLoopCommonModes, Type = Text, Dynamic = False, Default = \"NSRunLoopCommonModes", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="CurrentMode"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
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
