#tag Class
Protected Class AppleScrollView
Inherits AppleView
	#tag Method, Flags = &h0, Description = 41646473206120666C6F6174696E67207375627669657720746F2074686520646F63756D656E7420766965772E
		Sub AddFloatingSubview(SubView as AppleView, GestureAxis As AppleNSEvent.NSEventGestureAxis)
		  addFloatingSubview id, subview.id, GestureAxis
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addFloatingSubview Lib appkitlibname Selector "addFloatingSubview:forAxis:" (id as ptr, subview as ptr, axis as AppleNSEvent . NSEventGestureAxis)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6577205363726F6C6C5669657720666F722074686520676976656E206672616D652E
		Sub Constructor(frame as FoundationFrameWork.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(initwithframe(alloc(classptr), frame))
		  MHasOwnership = true
		  
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontentSize Lib appkitlibname Selector "contentSize" (id as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontentView Lib appkitlibname Selector "contentView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdocumentView Lib appkitlibname Selector "documentView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdocumentVisibleRect Lib appkitlibname Selector "documentVisibleRect" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontentView Lib appkitlibname Selector "setContentView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdocumentView Lib appkitlibname Selector "setDocumentView:" (id as ptr, value as ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		missing:
		documentCursor
		 impl. for SendActionOn (EventMask)
		
		changes:
		contentView & documentView must be NSClipView, not NSView
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F662074686520636F6E74656E742076696577E2809973206261636B67726F756E642E
		#tag Getter
			Get
			  return applecolor.MakefromPtr(getbackgroundColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbackgroundColor id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520617070656172616E6365206F6620746865207363726F6C6C2076696577E280997320626F726465722E
		#tag Getter
			Get
			  return getBorderType(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBorderType id, value
			End Set
		#tag EndSetter
		BorderType As NSBorderType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSScrollView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F6620746865207363726F6C6C2076696577E280997320636F6E74656E7420766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcontentSize(id)
			End Get
		#tag EndGetter
		Contentsize As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363726F6C6C2076696577E280997320636F6E74656E7420766965772C207468652076696577207468617420636C6970732074686520646F63756D656E7420766965772E
		#tag Getter
			Get
			  return appleview.MakefromPtr(getcontentView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcontentView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ContentView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207669657720746865207363726F6C6C2076696577207363726F6C6C732077697468696E2069747320636F6E74656E7420766965772E
		#tag Getter
			Get
			  return appleview.MakefromPtr(getdocumentView(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setdocumentView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		DocumentView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F7274696F6E206F662074686520646F63756D656E7420766965772C20696E20697473206F776E20636F6F7264696E6174652073797374656D2C2076697369626C65207468726F75676820746865207363726F6C6C2076696577E280997320636F6E74656E7420766965772E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getdocumentVisibleRect(id)
			End Get
		#tag EndGetter
		DocumentVisibleRect As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207363726F6C6C207669657720647261777320697473206261636B67726F756E642E
		#tag Getter
			Get
			  return getdrawsBackground(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setdrawsBackground id, value
			End Set
		#tag EndSetter
		DrawsBackground As Boolean
	#tag EndComputedProperty


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
			Name="BorderType"
			Group="Behavior"
			Type="NSBorderType"
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
			Name="DrawsBackground"
			Group="Behavior"
			Type="Boolean"
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
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
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
			Name="WidthAdjustLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
