#tag Class
Protected Class AppleVisualEffectView
Inherits AppleView
	#tag Method, Flags = &h0, Description = 437265617465732061206E657720456666656374566965772077697468206120737065636966696564206672616D652E
		Sub Constructor(frame as FoundationFrameWork.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(x as double, y as double, width as double, height as double) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(AppKitFramework.initWithFrame(alloc(ClassPtr), frame), true)
		  
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getblendingMode Lib AppkitLibName Selector "blendingMode" (id as ptr) As NSVisualEffectBlendingMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getemphasized Lib AppkitLibName Selector "isEmphasized" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getmaskImage Lib AppkitLibName Selector "maskImage" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getmaterial Lib AppkitLibName Selector "material" (id as ptr) As NSVisualEffectMaterial
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Function getstate Lib AppkitLibName Selector "state" (id as ptr) As NSVisualEffectState
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setblendingMode Lib AppkitLibName Selector "setBlendingMode:" (id as ptr, value as NSVisualEffectBlendingMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setemphasized Lib AppkitLibName Selector "setEmphasized:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setmaskImage Lib AppkitLibName Selector "setMaskImage:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setmaterial Lib AppkitLibName Selector "setMaterial:" (id as ptr, value as NSVisualEffectMaterial)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Private Declare Sub setstate Lib AppkitLibName Selector "setState:" (id as ptr, value as NSVisualEffectState)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 53706563696669657320686F77207468652076696577E280997320636F6E74656E74732061726520626C75727265642E2044456661756C7420697320426568696E6457696E646F772E
		#tag Getter
			Get
			  return getblendingMode(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setblendingMode mid, value
			End Set
		#tag EndSetter
		BlendingMode As NSVisualEffectBlendingMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr 
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("NSVisualEffectView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4966207468652073656C656374696F6E2073686F756C64206472617720696E2022666972737420726573706F6E64657222207374617475732C206F72206E6F742E20417661696C61626C652073696E6365206D61634F532031302E31322E
		#tag Getter
			Get
			  if RespondsToSelector ("isEmphasized", classptr) then return getemphasized (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if RespondsToSelector ("setEmphasized:", ClassPtr) then setemphasized mid, value
			End Set
		#tag EndSetter
		Emphasized As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577E280997320696E746572696F72206261636B67726F756E64207374796C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppKitFramework.getinteriorBackgroundstyle (id)
			End Get
		#tag EndGetter
		InteriorBackgroundStyle As AppleCell.NSBackgroundStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4966207468652073656C656374696F6E2073686F756C64206472617720696E2022666972737420726573706F6E64657222207374617475732C206F72206E6F742E20417661696C61626C652073696E6365206D61634F532031302E31322E
		#tag Getter
			Get
			  return AppleImage.MakeFromPtr(getmaskImage(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmaskImage mid, nilptr(value)
			End Set
		#tag EndSetter
		MaskImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getmaterial(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmaterial mid, value
			End Set
		#tag EndSetter
		Material As NSVisualEffectMaterial
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 486F7720746865206D6174657269616C20617070656172616E63652073686F756C64207265666C6563742077696E646F772061637469766974792073746174652E
		#tag Getter
			Get
			  return getstate(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setstate mid, value
			End Set
		#tag EndSetter
		State As NSVisualEffectState
	#tag EndComputedProperty


	#tag Enum, Name = NSVisualEffectBlendingMode, Type = Integer, Flags = &h0
		BehindWindow
		WithinWindow
	#tag EndEnum

	#tag Enum, Name = NSVisualEffectMaterial, Type = Integer, Flags = &h0
		AppearanceBased = 0
		  Light
		  Dark
		  Titlebar
		  Selection
		  Menu
		  Popover
		  Sidebar
		  MediumLight
		UltraDark
	#tag EndEnum

	#tag Enum, Name = NSVisualEffectState, Type = Integer, Flags = &h0
		FollowsWindowActiveState
		  Active
		Inactive
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaselineOffsetFromBottom"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BoundsRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDraw"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDrawSubviewsIntoLayer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FirstBaselineOffsetFromTop"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FocusRingType"
			Group="Behavior"
			Type="Appkitframework.NSFocusRingType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - Exterior"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameCenterRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeightAdjustLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsDrawingFindIndicator"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsFlipped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsHiddenOrHasHiddenAncestor"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsInFullScreenMode"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsInLiveResize"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRotatedFromBase"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRotatedOrScaledFromBase"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastBaselineOffsetFromBottom"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerContentsPlacement"
			Group="Behavior"
			Type="NSViewLayerContentsPlacement"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleAxesIndependently"
				"1 - ScaleProprtionallyToFit"
				"2 - ScaleProprtionallyToFill"
				"3 - Center"
				"4 - Top"
				"5 - TopRight"
				"6 - Right"
				"7 - BottomRight"
				"8 - Bottom"
				"9 - BottomLeft"
				"10 - Left"
				"11 - TopLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerContentsRedrawPolicy"
			Group="Behavior"
			Type="NSViewLayerContentsRedrawPolicy"
			EditorType="Enum"
			#tag EnumValues
				"0 - Never"
				"1 - OnSetNeedsDisplay"
				"2 - DuringResize"
				"3 - BeforeResize"
				"4 - Crossfade"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerUsesCoreImageFilters"
			Group="Behavior"
			Type="Boolean"
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
			Name="NeedsDisplay"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsUpdateConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PostsBoundsChangedNotifications"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PostsFrameChangedNotifications"
			Group="Behavior"
			Type="Boolean"
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
			Name="Tag"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ToolTip"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInterfaceLayoutdirection"
			Group="Behavior"
			Type="Appkitframework.NSUserInterfaceLayoutdirection"
			EditorType="Enum"
			#tag EnumValues
				"0 - LeftToRight"
				"1 - RightToLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="WantsLayer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WidthAdjustLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
