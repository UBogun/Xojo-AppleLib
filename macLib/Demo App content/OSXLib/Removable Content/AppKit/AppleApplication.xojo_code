#tag Class
Protected Class AppleApplication
Inherits AppleObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsharedApplication Lib appkitlibname Selector "sharedApplication" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Function MakefromPtr(aPtr as Ptr) As AppleApplication
		  return if (aptr = nil, nil, new AppleApplication(aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSApplication")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mApp as AppleApplication = AppleApplication.MakeFromPtr (getsharedApplication(ClassPtr))
			  return mapp
			End Get
		#tag EndGetter
		Protected Shared SharedApplication As AppleApplication
	#tag EndComputedProperty


	#tag Constant, Name = kNSApplicationDidFinishLaunchingNotification, Type = Text, Dynamic = False, Default = \"NSApplicationDidFinishLaunchingNotification", Scope = Private
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
