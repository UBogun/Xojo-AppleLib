#tag Module
Protected Module AppKitFramework
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getAction Lib appkitlibname Selector "action" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getattributedTitle Lib appkitlibname Selector "attributedTitle" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdelegate Lib appkitlibname Selector "delegate" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getenabled Lib appkitlibname Selector "isEnabled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getHidden Lib appkitlibname Selector "isHidden" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getHighlighted Lib appkitlibname Selector "isHighlighted" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getImage Lib appkitlibname Selector "image" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisHiddenOrHasHiddenAncestor Lib appkitlibname Selector "isHiddenOrHasHiddenAncestor" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getkeyEquivalent Lib appkitlibname Selector "keyEquivalent" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlocalizedName Lib appkitlibname Selector "localizedName" (id as ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getTag Lib appkitlibname Selector "tag" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getTarget Lib appkitlibname Selector "target" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getTitle Lib appkitlibname Selector "title" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettoolTip Lib appkitlibname Selector "toolTip" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getuserInterfaceLayoutDirection Lib appkitlibname Selector "userInterfaceLayoutDirection" (id as ptr) As Appkitframework.NSUserInterfaceLayoutdirection
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getView Lib appkitlibname Selector "view" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getwindow Lib appkitlibname Selector "window" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getwindowNumber Lib appkitlibname Selector "windowNumber" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setAction Lib appkitlibname Selector "setAction:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setattributedTitle Lib appkitlibname Selector "setAttributedTitle:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdelegate Lib appkitlibname Selector "setDelegate:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setenabled Lib appkitlibname Selector "setEnabled:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setHidden Lib appkitlibname Selector "setHidden:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setImage Lib appkitlibname Selector "setImage:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setkeyEquivalent Lib appkitlibname Selector "setKeyEquivalent:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setTag Lib appkitlibname Selector "setTag:" (id as ptr, value as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setTarget Lib appkitlibname Selector "setTarget:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setTitle Lib appkitlibname Selector "setTitle:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setToolTip Lib appkitlibname Selector "setToolTip:" (id as ptr, value as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setuserInterfaceLayoutDirection Lib appkitlibname Selector "setUserInterfaceLayoutDirection:" (id as ptr, value as Appkitframework . NSUserInterfaceLayoutdirection)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setView Lib appkitlibname Selector "setView:" (id as ptr, value as Ptr)
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
