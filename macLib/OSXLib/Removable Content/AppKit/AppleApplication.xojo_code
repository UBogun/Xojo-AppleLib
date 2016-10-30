#tag Class
Protected Class AppleApplication
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(SharedApplication.id)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getapplicationIconImage Lib appkitlibname Selector "applicationIconImage" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsharedApplication Lib appkitlibname Selector "sharedApplication" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Function MakefromPtr(aPtr as Ptr) As AppleApplication
		  return if (aptr = nil, nil, new AppleApplication(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setapplicationIconImage Lib appkitlibname Selector "setApplicationIconImage:" (id as ptr, value as ptr)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 54686520696D616765207573656420666F722074686520617070E28099732069636F6E2E
		#tag Getter
			Get
			  return AppleImage.MakeFromPtr(getApplicationIconImage(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setApplicationIconImage mid, nilptr(value)
			End Set
		#tag EndSetter
		ApplicationIconImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSApplication")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206170706C69636174696F6EE280997320446F636B2074696C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleDockTile.MakeFromPtr(AppKitFramework.getdockTile(mid))
			  
			End Get
		#tag EndGetter
		DockTile As AppleDockTile
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
