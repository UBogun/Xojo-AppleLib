#tag Class
Protected Class AppleCALayer
Inherits AppleCAMediaTimingObject
	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577206C617965722E
		Sub Constructor()
		  Super.Constructor (Init(Alloc(ClassPtr)))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aLayer As AppleCALayer)
		  Super.Constructor (initWithLayer (alloc(ClassPtr), aLayer.Id))
		  mHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbackgroundColor Lib QuartzCoreLib Selector "backgroundColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getBorderWidth Lib QuartzCoreLib Selector "borderWidth" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontents Lib QuartzCoreLib Selector "contents" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontentsCenter Lib QuartzCoreLib Selector "contentsCenter" (id as ptr) As FoundationFrameWork.NSREct
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontentsRect Lib QuartzCoreLib Selector "contentsRect" (id as ptr) As FoundationFrameWork.NSREct
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmodelLayer Lib QuartzCoreLib Selector "modelLayer" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpresentationLayer Lib QuartzCoreLib Selector "presentationLayer" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 437265617465732061206E6577206C6179657220696E7374616E6365207769746820616E7920637573746F6D20696E7374616E6365207661726961626C657320636F706965642066726F6D206C617965722E
		Protected Declare Function initWithLayer Lib QuartzCoreLib Selector "initWithLayer:" (id as ptr, layer as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub InsertSubLayer(ALayer as AppleCALayer, index as UInt32)
		  declare sub insertSublayer lib QuartzCoreLib selector "insertSublayer:atIndex:" (id as ptr, aLayer as ptr, Index as UInt32)
		  insertSublayer id, ALayer.id, index
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleCALAyer
		  return if (aptr= nil, nil, new AppleCALayer(aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbackgroundColor Lib QuartzCoreLib Selector "setBackgroundColor:" (id as ptr, avleu as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setBorderWidth Lib QuartzCoreLib Selector "setBorderWidth:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontents Lib QuartzCoreLib Selector "setContents:" (id as ptr, contents as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontentsCenter Lib QuartzCoreLib Selector "setContentsCenter:" (id as ptr, value as FoundationFrameWork . NSREct)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontentsRect Lib QuartzCoreLib Selector "setContentsRect:" (id as ptr, value as FoundationFrameWork . NSREct)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A65637420746861742070726F76696465732074686520636F6E74656E7473206F6620746865206C617965722E20416E696D617461626C652E0A496620746865206C61796572206F626A656374206973207469656420746F20612076696577206F626A6563742C20796F752073686F756C642061766F69642073657474696E672074686520636F6E74656E7473206F6620746869732070726F7065727479206469726563746C792E2054686520696E746572706C6179206265747765656E20766965777320616E64206C617965727320757375616C6C7920726573756C747320696E207468652076696577207265706C6163696E672074686520636F6E74656E7473206F6620746869732070726F706572747920647572696E6720612073756273657175656E74207570646174652E
		#tag Getter
			Get
			  return applecolor.MakefromPtr(getbackgroundColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setbackgroundColor id, value.CGColor.CFTypeRef
			  
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A65637420746861742070726F76696465732074686520636F6E74656E7473206F6620746865206C617965722E20416E696D617461626C652E0A496620746865206C61796572206F626A656374206973207469656420746F20612076696577206F626A6563742C20796F752073686F756C642061766F69642073657474696E672074686520636F6E74656E7473206F6620746869732070726F7065727479206469726563746C792E2054686520696E746572706C6179206265747765656E20766965777320616E64206C617965727320757375616C6C7920726573756C747320696E207468652076696577207265706C6163696E672074686520636F6E74656E7473206F6620746869732070726F706572747920647572696E6720612073756273657175656E74207570646174652E
		#tag Getter
			Get
			  return getBorderWidth(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setBorderWidth id, value
			End Set
		#tag EndSetter
		BorderWidth As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CALayer")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A65637420746861742070726F76696465732074686520636F6E74656E7473206F6620746865206C617965722E20416E696D617461626C652E0A496620746865206C61796572206F626A656374206973207469656420746F20612076696577206F626A6563742C20796F752073686F756C642061766F69642073657474696E672074686520636F6E74656E7473206F6620746869732070726F7065727479206469726563746C792E2054686520696E746572706C6179206265747765656E20766965777320616E64206C617965727320757375616C6C7920726573756C747320696E207468652076696577207265706C6163696E672074686520636F6E74656E7473206F6620746869732070726F706572747920647572696E6720612073756273657175656E74207570646174652E
		#tag Getter
			Get
			  return new appleobject(getcontents(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcontents id, value.GeneralID
			End Set
		#tag EndSetter
		Contents As AppleGeneralObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656374616E676C65207468617420646566696E657320686F7720746865206C6179657220636F6E74656E747320617265207363616C656420696620746865206C61796572E280997320636F6E74656E74732061726520726573697A65642E20416E696D617461626C652E
		#tag Getter
			Get
			  return getcontentsCenter(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcontentsCenter id, value
			End Set
		#tag EndSetter
		ContentsCenter As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656374616E676C652C20696E2074686520756E697420636F6F7264696E6174652073706163652C207468617420646566696E65732074686520706F7274696F6E206F6620746865206C61796572E280997320636F6E74656E747320746861742073686F756C6420626520757365642E20416E696D617461626C652E
		#tag Getter
			Get
			  return getcontentsRect(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setcontentsRect id, value
			End Set
		#tag EndSetter
		ContentsRect As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6F64656C206C61796572206F626A656374206173736F6369617465642077697468207468652072656365697665722C20696620616E792E
		#tag Getter
			Get
			  return AppleCALayer.MakefromPtr(getmodelLayer(id))
			End Get
		#tag EndGetter
		ModelLayer As AppleCALayer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120636F7079206F66207468652070726573656E746174696F6E206C61796572206F626A656374207468617420726570726573656E747320746865207374617465206F6620746865206C617965722061732069742063757272656E746C792061707065617273206F6E73637265656E2E
		#tag Getter
			Get
			  return AppleCALayer.MakefromPtr(getpresentationLayer(id))
			End Get
		#tag EndGetter
		PresentationLayer As AppleCALayer
	#tag EndComputedProperty


	#tag Constant, Name = kCAGravityBottom, Type = Text, Dynamic = False, Default = \"kCAGravityBottom", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityBottomLeft, Type = Text, Dynamic = False, Default = \"kCAGravityBottomLeft", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityBottomRight, Type = Text, Dynamic = False, Default = \"kCAGravityBottomRight", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityCenter, Type = Text, Dynamic = False, Default = \"kCAGravityCenter", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityLeft, Type = Text, Dynamic = False, Default = \"kCAGravityLeft", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityResize, Type = Text, Dynamic = False, Default = \"kCAGravityResize", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityResizeAspect, Type = Text, Dynamic = False, Default = \"kCAGravityResizeAspect", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityResizeAspectFill, Type = Text, Dynamic = False, Default = \"kCAGravityResizeAspectFill", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityRight, Type = Text, Dynamic = False, Default = \"kCAGravityRight", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityTop, Type = Text, Dynamic = False, Default = \"kCAGravityTop", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityTopLeft, Type = Text, Dynamic = False, Default = \"kCAGravityTopLeft", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kCAGravityTopRight, Type = Text, Dynamic = False, Default = \"kCAGravityTopRight", Scope = Protected
	#tag EndConstant


	#tag Enum, Name = CaLayerContentPosition, Type = Integer, Flags = &h0
		Center
		  Top
		  Bottom
		  Left
		  Right
		  TopLeft
		  TopRight
		  BottomLeft
		  BottomRight
		  Resize
		  ResizeProportionally
		FillProportionally
	#tag EndEnum

	#tag Enum, Name = LayerOrderingMode, Type = Integer, Flags = &h0
		Above = 1
		  Below = -1
		Replace = 0
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Autoreverses"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BeginTime"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderWidth"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FillMode"
			Group="Behavior"
			Type="FillModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Remove"
				"1 - Remain"
				"2 - Reset"
				"3 - Both"
			#tag EndEnumValues
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
			Name="MagnificationFilter"
			Group="Behavior"
			Type="ScalingFilters"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - Nearest"
				"2 - Trilinear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinificationFilter"
			Group="Behavior"
			Type="ScalingFilters"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - Nearest"
				"2 - Trilinear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinificationFilterBias"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepeatCount"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepeatDuration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeOffset"
			Group="Behavior"
			Type="Double"
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
