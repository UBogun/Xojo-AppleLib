#tag Module
Protected Module AppKitFramework
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdelegate Lib appkitlibname Selector "delegate" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlocalizedName Lib appkitlibname Selector "localizedName" (id as ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getwindow Lib appkitlibname Selector "window" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getwindowNumber Lib appkitlibname Selector "windowNumber" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdelegate Lib appkitlibname Selector "setDelegate:" (id as ptr, value as ptr)
	#tag EndExternalMethod


	#tag Constant, Name = AppKitLibName, Type = Text, Dynamic = False, Default = \"Appkit.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AppKitPath, Type = Text, Dynamic = False, Default = \"com.apple.AppKit", Scope = Public
	#tag EndConstant


	#tag Enum, Name = NSFocusRingType, Type = UInteger, Flags = &h1
		Default = 0
		  None = 1
		Exterior = 2
	#tag EndEnum

	#tag Enum, Name = NSUserInterfaceLayoutDirection, Type = Integer, Flags = &h1
		LeftToRight
		RightToLeft
	#tag EndEnum


	#tag ViewBehavior
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
End Module
#tag EndModule
