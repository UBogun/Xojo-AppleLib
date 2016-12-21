#tag Class
Protected Class AppleAppearance
Inherits AppleObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function AppearanceNamed Lib AppKitLibName Selector "appearanceNamed:" (id as ptr, name as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865204E53417070656172616E6365206F626A65637420776974682074686520737065636966696564206E616D652E
		Sub Constructor(Appearencetype as  AppearanceStandardType)
		  dim type as  text
		  select case Appearencetype
		  case AppearanceStandardType.Aqua
		    type = NSAppearanceNameAqua
		  case AppearanceStandardType.VibrantDark
		    type = NSAppearanceNameVibrantDark
		  case AppearanceStandardType.VibrantLight
		    type = NSAppearanceNameVibrantLight
		  end select
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Constructor(type)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865204E53417070656172616E6365206F626A65637420776974682074686520737065636966696564206E616D652E
		Sub Constructor(Appearance as CFStringRef)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(AppearanceNamed(classptr, Appearance), true, true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E204E53417070656172616E6365206F626A65637420696E697469616C697A656420746F2074686520737065636966696564206E616D656420617070656172616E636520696E20746865207370656369666965642062756E646C652E
		Sub Constructor(Appearance as CFStringRef, Bundle As CFStringRef)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(initWithAppearanceNamed(alloc(classptr), Appearance, bundle), true)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsVibrancy Lib AppKitLibName Selector "allowsVibrancy" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcurrentAppearance Lib AppKitLibName Selector "currentAppearance" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithAppearanceNamed Lib AppKitLibName Selector "initWithAppearanceNamed:bundle:" (id as ptr, name as cfstringRef, bundle as CFstringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleAppearance
		  return if (aptr = nil, nil, new AppleAppearance(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setCurrentAppearance Lib AppKitLibName Selector "setCurrentAppearance:" (id as ptr, value as ptr)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063757272656E7420617070656172616E636520616C6C6F77732076696272616E63792028726561642D6F6E6C79292E
		#tag Getter
			Get
			  return getallowsVibrancy (mid)
			End Get
		#tag EndGetter
		AllowsVibrancy As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleAppearance.MakeFromPtr(AppearanceNamed(classptr, NSAppearanceNameAqua))
			End Get
		#tag EndGetter
		Shared AppearanceAqua As AppleAppearance
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleAppearance.MakeFromPtr(AppearanceNamed(classptr, NSAppearanceNameVibrantDark))
			End Get
		#tag EndGetter
		Shared AppearanceVibrantDark As AppleAppearance
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleAppearance.MakeFromPtr(AppearanceNamed(classptr, NSAppearanceNameVibrantLight))
			End Get
		#tag EndGetter
		Shared AppearanceVibrantLight As AppleAppearance
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mclassptr as ptr
			  if mclassptr = nil then mclassptr = FoundationFrameWork.NSClassFromString("NSAppearance")
			  return mclassptr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865204E53417070656172616E6365206F626A6563742074686174E280997320736574206F6E207468652063757272656E74207468726561642E
		#tag Getter
			Get
			  return new AppleAppearance(getcurrentAppearance(classptr))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setCurrentAppearance classptr, nilptr(value)
			End Set
		#tag EndSetter
		Shared CurrentAppearance As AppleAppearance
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F662074686520617070656172616E63652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return FoundationFrameWork.getname (mid)
			End Get
		#tag EndGetter
		Name As Text
	#tag EndComputedProperty


	#tag Constant, Name = NSAppearanceNameAqua, Type = Text, Dynamic = False, Default = \"NSAppearanceNameAqua", Scope = Private
	#tag EndConstant

	#tag Constant, Name = NSAppearanceNameVibrantDark, Type = Text, Dynamic = False, Default = \"NSAppearanceNameVibrantDark", Scope = Private
	#tag EndConstant

	#tag Constant, Name = NSAppearanceNameVibrantLight, Type = Text, Dynamic = False, Default = \"NSAppearanceNameVibrantLight", Scope = Private
	#tag EndConstant


	#tag Enum, Name = AppearanceStandardType, Type = Integer, Flags = &h0
		Aqua
		  VibrantDark
		VibrantLight
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowsVibrancy"
			Group="Behavior"
			Type="Boolean"
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
