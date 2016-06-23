#tag Class
Protected Class AppleCALayer
Inherits AppleCAMediaTimingObject
	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577206C617965722E
		Sub Constructor()
		  #If TargetMacOS then
		    
		    Super.Constructor (Init(Alloc(ClassPtr)))
		    mHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(aLayer As AppleCALayer)
		  #If TargetMacOS then
		    Super.Constructor (initWithLayer (alloc(ClassPtr), aLayer.Id))
		    mHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbackgroundColor Lib QuartzCoreLib Selector "backgroundColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getborderColor Lib QuartzCoreLib Selector "borderColor" (id as ptr) As Ptr
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
		Protected Declare Function getcontentsGravity Lib QuartzCoreLib Selector "contentsGravity" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontentsRect Lib QuartzCoreLib Selector "contentsRect" (id as ptr) As FoundationFrameWork.NSREct
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcornerRadius Lib QuartzCoreLib Selector "cornerRadius" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdoubleSided Lib QuartzCoreLib Selector "isDoubleSided" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmask Lib QuartzCoreLib Selector "mask" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmasksToBounds Lib QuartzCoreLib Selector "masksToBounds" (id as ptr) As Boolean
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
		  #If TargetMacOS then
		    declare sub insertSublayer lib QuartzCoreLib selector "insertSublayer:atIndex:" (id as ptr, aLayer as ptr, Index as UInt32)
		    insertSublayer id, ALayer.id, index
		  #endif
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
		Protected Declare Sub setborderColor Lib QuartzCoreLib Selector "setBorderColor:" (id as ptr, avleu as ptr)
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
		Protected Declare Sub setcontentsGravity Lib QuartzCoreLib Selector "setContentsGravity:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontentsRect Lib QuartzCoreLib Selector "setContentsRect:" (id as ptr, value as FoundationFrameWork . NSREct)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcornerRadius Lib QuartzCoreLib Selector "setCornerRadius:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdoubleSided Lib QuartzCoreLib Selector "setDoubleSided:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setmask Lib QuartzCoreLib Selector "setMask:" (id as ptr, contents as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setmasksToBounds Lib QuartzCoreLib Selector "setMasksToBounds:" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 546865206261636B67726F756E6420636F6C6F72206F6620746865206C617965722E20416E696D617461626C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return applecolor.FromCGColor(AppleCGColor.MakeFromCFTypeRef(getbackgroundColor(id)))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setbackgroundColor id, value.CGColor.CFTypeRef
			    
			  #endif
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206261636B67726F756E6420636F6C6F72206F6620746865206C617965722E20416E696D617461626C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return applecolor.FromCGColor(AppleCGColor.MakeFromCFTypeRef(getborderColor(id)))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setborderColor id, value.CGColor.CFTypeRef
			    
			  #endif
			End Set
		#tag EndSetter
		BorderColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207769647468206F6620746865206C61796572E280997320626F726465722E20416E696D617461626C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getBorderWidth(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setBorderWidth id, value
			  #endif
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

	#tag ComputedProperty, Flags = &h0, Description = 486F7720746865206C61796572277320636F6E74656E74732061726520706F736974696F6E6564206F72207363616C65642077697468696E2069747320626F756E64732E496620746865206C61796572206F626A656374206973207469656420746F20612076696577206F626A6563742C20796F752073686F756C642061766F69642073657474696E672074686520636F6E74656E7473206F6620746869732070726F7065727479206469726563746C792E2054686520696E746572706C6179206265747765656E20766965777320616E64206C617965727320757375616C6C7920726573756C747320696E207468652076696577207265706C6163696E672074686520636F6E74656E7473206F6620746869732070726F706572747920647572696E6720612073756273657175656E74207570646174652E
		#tag Getter
			Get
			  select case ContentsGravity
			  case kCAGravityBottom
			    return CALayerContentPosition.Bottom
			  case kCAGravityBottomLeft
			    return CALayerContentPosition.BottomLeft
			  case kCAGravityBottomRight
			    return CALayerContentPosition.BottomRight
			  case kCAGravityCenter
			    return CALayerContentPosition.Center
			  case kCAGravityLeft
			    return CALayerContentPosition.Left
			  case kCAGravityResize
			    return CALayerContentPosition.Resize
			  case kCAGravityResizeAspect
			    return CALayerContentPosition.ResizeProportionally
			  case kCAGravityResizeAspectFill
			    return CALayerContentPosition.FillProportionally
			  case kCAGravityRight
			    return CALayerContentPosition.Right
			  case kCAGravityTop
			    return CALayerContentPosition.Top
			  case kCAGravityTopLeft
			    return CALayerContentPosition.TopLeft
			  case kCAGravityTopRight
			    return CALayerContentPosition.TopRight
			  end select
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim val as text
			  select case value
			  case CALayerContentPosition.Bottom
			    val = kCAGravityBottom
			  case CALayerContentPosition.BottomLeft
			    val = kCAGravityBottomLeft
			  case CALayerContentPosition.BottomRight
			    val = kCAGravityBottomRight
			  case CALayerContentPosition.Center
			    val = kCAGravityCenter
			  case CALayerContentPosition.FillProportionally
			    val = kCAGravityResizeAspectFill
			  case CALayerContentPosition.Left
			    val = kCAGravityLeft
			  case CALayerContentPosition.Resize
			    val = kCAGravityResize
			  case CALayerContentPosition.ResizeProportionally
			    val = kCAGravityResizeAspect
			  case CALayerContentPosition.Right
			    val = kCAGravityRight
			  case CALayerContentPosition.Top
			    val = kCAGravityTop
			  case CALayerContentPosition.TopLeft
			    val = kCAGravityTopLeft
			  case CALayerContentPosition.TopRight
			    val = kCAGravityTopRight
			  end select
			  ContentsGravity = val
			End Set
		#tag EndSetter
		ContentGravity As CaLayerContentPosition
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F626A65637420746861742070726F76696465732074686520636F6E74656E7473206F6620746865206C617965722E20416E696D617461626C652E0A496620746865206C61796572206F626A656374206973207469656420746F20612076696577206F626A6563742C20796F752073686F756C642061766F69642073657474696E672074686520636F6E74656E7473206F6620746869732070726F7065727479206469726563746C792E2054686520696E746572706C6179206265747765656E20766965777320616E64206C617965727320757375616C6C7920726573756C747320696E207468652076696577207265706C6163696E672074686520636F6E74656E7473206F6620746869732070726F706572747920647572696E6720612073756273657175656E74207570646174652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return new appleobject(getcontents(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setcontents id, value.GeneralID
			  #endif
			End Set
		#tag EndSetter
		Contents As AppleGeneralObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656374616E676C65207468617420646566696E657320686F7720746865206C6179657220636F6E74656E747320617265207363616C656420696620746865206C61796572E280997320636F6E74656E74732061726520726573697A65642E20416E696D617461626C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getcontentsCenter(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setcontentsCenter id, value
			  #endif
			End Set
		#tag EndSetter
		ContentsCenter As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1, Description = 416E206F626A65637420746861742070726F76696465732074686520636F6E74656E7473206F6620746865206C617965722E20416E696D617461626C652E0A496620746865206C61796572206F626A656374206973207469656420746F20612076696577206F626A6563742C20796F752073686F756C642061766F69642073657474696E672074686520636F6E74656E7473206F6620746869732070726F7065727479206469726563746C792E2054686520696E746572706C6179206265747765656E20766965777320616E64206C617965727320757375616C6C7920726573756C747320696E207468652076696577207265706C6163696E672074686520636F6E74656E7473206F6620746869732070726F706572747920647572696E6720612073756273657175656E74207570646174652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getcontentsGravity(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setcontentsGravity id, value
			  #endif
			End Set
		#tag EndSetter
		Protected ContentsGravity As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656374616E676C652C20696E2074686520756E697420636F6F7264696E6174652073706163652C207468617420646566696E65732074686520706F7274696F6E206F6620746865206C61796572E280997320636F6E74656E747320746861742073686F756C6420626520757365642E20416E696D617461626C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getcontentsRect(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setcontentsRect id, value
			  #endif
			End Set
		#tag EndSetter
		ContentsRect As FoundationFrameWork.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616469757320746F20757365207768656E2064726177696E6720726F756E64656420636F726E65727320666F7220746865206C61796572E2809973206261636B67726F756E642E20416E696D617461626C652E20416666656374732074686520636F6E74656E7473206966204D61736B73546F426F756E647320697320547275652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getcornerRadius(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setcornerRadius id, value
			  #endif
			End Set
		#tag EndSetter
		CornerRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 7768657468657220746865206C6179657220646973706C6179732069747320636F6E74656E74207768656E20666163696E6720617761792066726F6D20746865207669657765722E20416E696D617461626C652E2044656661756C7420547275652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getdoubleSided(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setdoubleSided id, value
			  #endif
			End Set
		#tag EndSetter
		DoubleSided As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206C6179657220697320646973706C617965642E20416E696D617461626C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return QuartzCoreFramework.gethidden(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    QuartzCoreFramework.setHidden id, value
			  #endif
			End Set
		#tag EndSetter
		Hidden As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAGravityBottom as text = SystemConstantName("kCAGravityBottom", QuartzCorePath)
			    return mkCAGravityBottom
			  #endif
			End Get
		#tag EndGetter
		Private Shared kCAGravityBottom As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAGravityBottomLeft as text = SystemConstantName("kCAGravityBottomLeft", QuartzCorePath)
			    return mkCAGravityBottomLeft
			  #endif
			End Get
		#tag EndGetter
		Private Shared kCAGravityBottomLeft As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAGravityBottomRight as text = SystemConstantName("kCAGravityBottomRight", QuartzCorePath)
			    return mkCAGravityBottomRight
			  #endif
			End Get
		#tag EndGetter
		Private Shared kCAGravityBottomRight As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAGravityCenter as text = SystemConstantName("kCAGravityCenter", QuartzCorePath)
			    return mkCAGravityCenter
			  #endif
			End Get
		#tag EndGetter
		Private Shared kCAGravityCenter As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAGravityLeft as text = SystemConstantName("kCAGravityLeft", QuartzCorePath)
			    return mkCAGravityLeft
			  #endif
			End Get
		#tag EndGetter
		Private Shared kCAGravityLeft As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAGravityResize as text = SystemConstantName("kCAGravityResize", QuartzCorePath)
			    return mkCAGravityResize
			  #endif
			End Get
		#tag EndGetter
		Private Shared kCAGravityResize As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAGravityResizeAspect as text = SystemConstantName("kCAGravityResizeAspect", QuartzCorePath)
			    return mkCAGravityResizeAspect
			  #endif
			End Get
		#tag EndGetter
		Private Shared kCAGravityResizeAspect As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAGravityResizeAspectFill as text = SystemConstantName("kCAGravityResizeAspectFill", QuartzCorePath)
			    return mkCAGravityResizeAspectFill
			  #endif
			End Get
		#tag EndGetter
		Private Shared kCAGravityResizeAspectFill As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAGravityRight as text = SystemConstantName("kCAGravityRight", QuartzCorePath)
			    return mkCAGravityRight
			  #endif
			End Get
		#tag EndGetter
		Private Shared kCAGravityRight As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAGravityTop as text = SystemConstantName("kCAGravityTop", QuartzCorePath)
			    return mkCAGravityTop
			  #endif
			End Get
		#tag EndGetter
		Private Shared kCAGravityTop As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAGravityTopLeft as text = SystemConstantName("kCAGravityTopLeft", QuartzCorePath)
			    return mkCAGravityTopLeft
			  #endif
			End Get
		#tag EndGetter
		Private Shared kCAGravityTopLeft As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mkCAGravityTopRight as text = SystemConstantName("kCAGravityTopRight", QuartzCorePath)
			    return mkCAGravityTopRight
			  #endif
			End Get
		#tag EndGetter
		Private Shared kCAGravityTopRight As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F7074696F6E616C206C617965722077686F736520616C706861206368616E6E656C206973207573656420746F206D61736B20746865206C61796572E280997320636F6E74656E742E0A546865206C6179657220796F752061737369676E20746F20746869732070726F7065727479206D757374206E6F74206861766520612073757065726C617965722E20496620697420646F65732C20746865206265686176696F7220697320756E646566696E65642E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleCALayer.MakefromPtr(getmask(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setmask id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		Mask As AppleCALayer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207375626C61796572732061726520636C697070656420746F20746865206C61796572E280997320626F756E64732E20416E696D617461626C652E0A5768656E207468652076616C7565206F6620746869732070726F706572747920697320547275652C20436F726520416E696D6174696F6E206372656174657320616E20696D706C6963697420636C697070696E67206D61736B2074686174206D6174636865732074686520626F756E6473206F6620746865206C6179657220616E6420696E636C7564657320616E7920636F726E65722072616469757320656666656374732E20496620612076616C756520666F7220746865206D61736B2070726F706572747920697320616C736F207370656369666965642C207468652074776F206D61736B7320617265206D756C7469706C69656420746F20676574207468652066696E616C206D61736B2076616C75652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getmasksToBounds(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setmasksToBounds id, value
			  #endif
			End Set
		#tag EndSetter
		MasksToBounds As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6F64656C206C61796572206F626A656374206173736F6369617465642077697468207468652072656365697665722C20696620616E792E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleCALayer.MakefromPtr(getmodelLayer(id))
			  #endif
			End Get
		#tag EndGetter
		ModelLayer As AppleCALayer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F706163697479206F6620746865206C617965722E20416E696D617461626C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return QuartzCoreFramework.getopacity(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    QuartzCoreFramework.setopacity id, value
			  #endif
			End Set
		#tag EndSetter
		Opacity As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120636F7079206F66207468652070726573656E746174696F6E206C61796572206F626A656374207468617420726570726573656E747320746865207374617465206F6620746865206C617965722061732069742063757272656E746C792061707065617273206F6E73637265656E2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleCALayer.MakefromPtr(getpresentationLayer(id))
			  #endif
			End Get
		#tag EndGetter
		PresentationLayer As AppleCALayer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F6620746865206C61796572E280997320736861646F772E20416E696D617461626C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return applecolor.FromCGColor(AppleCGColor.MakeFromCFTypeRef(QuartzCoreFramework.getshadowColor(id)))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    QuartzCoreFramework.setshadowColor id, value.CGColor.CFTypeRef
			    
			  #endif
			End Set
		#tag EndSetter
		ShadowColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F66667365742028696E20706F696E747329206F6620746865206C61796572E280997320736861646F772E20416E696D617461626C652E2044656661756C74207B302E302C202D332E307D
		#tag Getter
			Get
			  #If TargetMacOS then
			    return QuartzCoreFramework.getshadowOffset(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    QuartzCoreFramework.setshadowOffset id, value
			  #endif
			End Set
		#tag EndSetter
		ShadowOffset As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F706163697479206F6620746865206C61796572E280997320736861646F772E20416E696D617461626C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return QuartzCoreFramework.getshadowOpacity(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    QuartzCoreFramework.setshadowOpacity id, value
			  #endif
			End Set
		#tag EndSetter
		ShadowOpacity As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626C7572207261646975732028696E20706F696E747329207573656420746F2072656E64657220746865206C61796572E280997320736861646F772E20416E696D617461626C652E2044656661756C7420332E302E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return QuartzCoreFramework.getshadowRadius(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    QuartzCoreFramework.setshadowRadius id, value
			  #endif
			End Set
		#tag EndSetter
		ShadowRadius As Double
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


	#tag Enum, Name = CALayerContentPosition, Type = Integer, Flags = &h0
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
			Name="ContentGravity"
			Group="Behavior"
			Type="CaLayerContentPosition"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Top"
				"2 - Bottom"
				"3 - Left"
				"4 - Right"
				"5 - TopLeft"
				"6 - TopRight"
				"7 - BottomLeft"
				"8 - BottomRight"
				"9 - Resize"
				"10 - ResizeProportionally"
				"11 - FillProportionally"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CornerRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleSided"
			Group="Behavior"
			Type="Boolean"
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
			Name="MasksToBounds"
			Group="Behavior"
			Type="Boolean"
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
			Name="Opacity"
			Group="Behavior"
			Type="Double"
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
			Name="ShadowOpacity"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShadowRadius"
			Group="Behavior"
			Type="Double"
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
