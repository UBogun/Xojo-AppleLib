#tag Class
Protected Class AppleTrackingArea
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E697469616C697A657320616E642072657475726E7320616E206F626A65637420646566696E696E67206120726567696F6E206F662061207669657720746F2072656365697665206D6F7573652D747261636B696E67206576656E74732C206D6F7573652D6D6F766564206576656E74732C20637572736F722D757064617465206576656E74732C206F7220706F737369626C7920616C6C207468657365206576656E74732E
		Sub Constructor(Rect as FoundationFrameWork.NSRect, optionas as AppleTrackingAreaOptions, oner as AppleResponder, userinfo as AppleDictionary = nil)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(initWithRect(alloc(classptr),rect, options.id, if (userinfo = nil,nil, userinfo.id)))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getoptions Lib appkitlibname Selector "options" (id as ptr) As UInteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getowner Lib appkitlibname Selector "owner" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getrect Lib appkitlibname Selector "rect" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function initWithRect Lib appkitlibname Selector "initWithRect:options:owner:userinfo:" (id as ptr, Rect as FoundationFrameWork . NSRect, options as uinteger, userinfo as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleTrackingArea
		  return if (aptr = nil, nil, new appletrackingarea(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status completed
		
		OS X 10.11.5
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSTrackingArea")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F7074696F6E732073706563696669656420666F72207468652072656365697665722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return new AppleTrackingAreaOptions(getoptions(id))
			End Get
		#tag EndGetter
		Options As AppleTrackingAreaOptions
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F626A656374206F776E696E67207468652072656365697665722C2077686963682069732074686520726563697069656E74206F66206D6F7573652D747261636B696E672C206D6F7573652D6D6F76656D656E742C20616E6420637572736F722D757064617465206D657373616765732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return  AppleResponder.MakefromPtr(getowner(id))
			End Get
		#tag EndGetter
		Owner As AppleResponder
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656374616E676C6520646566696E696E6720746865206172656120656E636F6D706173736564206279207468652072656365697665722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getrect(id)
			End Get
		#tag EndGetter
		Rect As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064696374696F6E61727920636F6E7461696E696E67207468652064617461206173736F636961746564207769746820746865207265636569766572207768656E2069742077617320637265617465642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleDictionary.MakeFromPtr (foundationframework.getuserinfo (id))
			End Get
		#tag EndGetter
		UserInfo As AppleDictionary
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
