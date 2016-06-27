#tag Class
Protected Class AppleCell
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 5468652063656C6C206174747269627574652077686F73652076616C756520796F752077616E7420746F206765742E204174747269627574657320696E636C7564652074686520726563656976657227732063757272656E7420737461746520616E6420776865746865722069742069732064697361626C65642C206564697461626C652C206F7220686967686C6967687465642E
		Function CellAttribute(attribute as NSCellAttribute) As integer
		  #If TargetMacOS then
		    return getCellAttribute ( id, attribute )
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206D696E696D756D2073697A65206E656564656420746F20646973706C6179207468652063656C6C2C20636F6E73747261696E696E6720697420746F20746865207370656369666965642072656374616E676C652E
		Function CellSize(Bounds as FoundationFrameWork.NSRect) As FoundationFrameWork.NSSize
		  #If TargetMacOS then
		    return cellSizeForBounds (id, bounds)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function cellSizeForBounds Lib appkitlibname Selector "cellSizeForBounds:" (id as ptr, bounds as FoundationFrameWork . NSRect) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061204E5343656C6C206F626A6563742E
		Sub Constructor()
		  #If TargetMacOS then
		    super.Constructor(init(alloc(ClassPtr)))
		    MHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061204E5343656C6C206F626A65637420696E697469616C697A65642077697468207468652073706563696669656420696D61676520616E642073657420746F2068617665207468652063656C6CE28099732064656661756C74206D656E752E
		Sub Constructor(Image as AppleImage)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor(initImageCell(alloc(classptr), image.id))
		    MHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061204E5343656C6C206F626A65637420696E697469616C697A65642077697468207468652073706563696669656420737472696E6720616E642073657420746F2068617665207468652063656C6CE28099732064656661756C74206D656E752E
		Sub Constructor(Caption as cfstringRef)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  #If TargetMacOS then
		    Super.Constructor(initTextCell(alloc(classptr), caption))
		    MHasOwnership = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652072656374616E676C652077697468696E207768696368207468652063656C6C20647261777320697473656C66
		Function DrawingRect(Bounds as FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  #If TargetMacOS then
		    return AppKitFramework.drawingRectForBounds (id, bounds)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 44726177732074686520696E746572696F7220706F7274696F6E206F66207468652072656365697665722C20776869636820696E636C756465732074686520696D616765206F72207465787420706F7274696F6E2062757420646F6573206E6F7420696E636C7564652074686520626F726465722E0A54686973206D6574686F64206472617773207468652063656C6C20696E207468652063757272656E746C7920666F637573656420766965772C2077686963682063616E20626520646966666572656E742066726F6D2074686520636F6E74726F6C566965772070617373656420696E2E2054616B696E6720616476616E74616765206F662074686973206265686176696F72206973206E6F74207265636F6D6D656E6465642C20686F77657665722E
		Sub DrawInterior(inFrame as FoundationFrameWork.NSRect, controlView as appleview)
		  #If TargetMacOS then
		    AppKitFramework.drawInteriorWithFrameInView (id, inFrame, controlView.id)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E737472756374732074686520726563656976657220746F206472617720696E20616E20657870616E73696F6E206672616D652E0A5468652076696577206D617920626520646966666572656E742066726F6D20746865206F726967696E616C20766965772074686174207468652063656C6C20617070656172656420696E2E
		Sub DrawWithExpansionFrame(inFrame as FoundationFrameWork.NSRect, InView as appleview)
		  #If TargetMacOS then
		    AppKitFramework.drawWithFrameinView (id, inFrame, inView.id)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 447261777320746865207265636569766572E280997320626F7264657220616E64207468656E2064726177732074686520696E746572696F72206F66207468652063656C6C2E0A54686973206D6574686F64206472617773207468652063656C6C20696E207468652063757272656E746C7920666F637573656420766965772C2077686963682063616E20626520646966666572656E742066726F6D2074686520636F6E74726F6C566965772070617373656420696E2E2054616B696E6720616476616E74616765206F662074686973206265686176696F72206973206E6F74207265636F6D6D656E6465642C20686F77657665722E
		Sub DrawWithFrame(inFrame as FoundationFrameWork.NSRect, controlView as appleview)
		  #If TargetMacOS then
		    AppKitFramework.drawWithFrameinView (id, inFrame, controlView.id)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520657870616E73696F6E2063656C6C206672616D6520666F72207468652072656365697665722E
		Function ExpansionFrame(cellFrame as FoundationFrameWork.NSRect, ControlView as appleview) As FoundationFrameWork.NSRect
		  #If TargetMacOS then
		    return  AppKitFramework.getexpansionFrameWithFrame (id,cellFrame, controlView.id)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcellAttribute Lib appkitlibname Selector "cellAttribute" (id as ptr, attribute as NSCellAttribute) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcellsize Lib appkitlibname Selector "cellSize" (id as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethasValidObjectValue Lib appkitlibname Selector "hasValidObjectValue" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnextState Lib appkitlibname Selector "nextState" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettype Lib appkitlibname Selector "type" (id as ptr) As NSCellType
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656472617773207468652063656C6C2077697468207468652073706563696669656420686967686C696768742073657474696E672E54686973206D6574686F64206472617773207468652063656C6C20696E207468652063757272656E746C7920666F637573656420766965772C2077686963682063616E20626520646966666572656E742066726F6D2074686520636F6E74726F6C566965772070617373656420696E2E2054616B696E6720616476616E74616765206F662074686973206265686176696F72206973206E6F74207265636F6D6D656E6465642C20686F77657665722E
		Sub Highlight(inFrame as FoundationFrameWork.NSRect, controlView as appleview, assigns value as Boolean)
		  #If TargetMacOS then
		    AppKitFramework.highlightWithFrameinView (id, value, inFrame, controlView.id)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520636F6C6F72207468652072656365697665722075736573207768656E2064726177696E67207468652073656C656374696F6E20686967686C696768742E
		Function HighlightColor(inFrame as FoundationFrameWork.NSRect, controlView as appleview) As AppleColor
		  #If TargetMacOS then
		    return applecolor.MakefromPtr( AppKitFramework.gethighlightColorWithFrame (id, inFrame, controlView.id))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652072656374616E676C6520696E207768696368207468652063656C6C2064726177732069747320696D6167652E
		Function ImageRect(Bounds as FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  #If TargetMacOS then
		    return AppKitFramework.imageRectForBounds (id, bounds)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initImageCell Lib appkitlibname Selector "initImageCell:" (id as ptr, image as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initTextCell Lib appkitlibname Selector "initTextCell:" (id as ptr, atext as CFStringref) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleCell
		  return if (aptr = nil, nil, new applecell(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53696D756C6174657320612073696E676C65206D6F75736520636C69636B206F6E207468652072656365697665722E0A4D75737420626520736F6D65206B696E64206F6620416374696F6E43656C6C206F7220616E20657863657074696F6E2077696C6C206265207261697365642E
		Sub PerformClick(Sender as appleobject)
		  #If TargetMacOS then
		    AppKitFramework.performClick id, sender.id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652076616C756520666F7220746865207370656369666965642063656C6C206174747269627574652E
		Sub SetCellAttribute(attribute as NSCellAttribute, value as integer)
		  #If TargetMacOS then
		    setCellAttribute id, attribute, value
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setCellAttribute Lib appkitlibname Selector "setCellAttribute:to:" (id as ptr, attribute as NSCellAttribute, value as integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4368616E6765732063656C6CE280997320737461746520746F20746865206E6578742076616C756520696E207468652073657175656E63652E
		Sub SetNextState()
		  #If TargetMacOS then
		    setNextState id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setNextState Lib appkitlibname Selector "setNextState" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settype Lib appkitlibname Selector "setType:" (id as ptr, value as NSCellType)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E6669677572657320746865207465787475616C20616E64206261636B67726F756E642061747472696275746573206F66207468652072656365697665722773206669656C6420656469746F722E0A4966207468652072656365697665722069732064697361626C65642C2074686973206D6574686F64207365747320746865207465787420636F6C6F7220746F206461726B20677261793B206F746865727769736520746865206D6574686F64207365747320697420746F207468652064656661756C7420636F6C6F722E204966207468652072656365697665722068617320612062657A656C656420626F726465722C2074686973206D6574686F64207365747320746865206261636B67726F756E6420746F207468652064656661756C7420636F6C6F7220666F722074657874206261636B67726F756E64733B206F74686572776973652C20746865206D6574686F64207365747320697420746F2074686520636F6C6F72206F6620746865207265636569766572E2809973204E53436F6E74726F6C206F626A6563742E0A596F752073686F756C64206E6F74207573652074686973206D6574686F6420746F20737562737469747574652061206E6577206669656C6420656469746F722E2073657455704669656C64456469746F72417474726962757465733A20697320696E74656E64656420746F206D6F64696679207468652061747472696275746573206F66207468652074657874206F626A6563742028746861742069732C20746865206669656C6420656469746F72292070617373656420696E746F20697420616E642072657475726E20746861742074657874206F626A6563742E20496620796F752077616E7420746F207375627374697475746520796F7572206F776E206669656C6420656469746F722C2075736520746865206669656C64456469746F723A666F724F626A6563743A206D6574686F64206F72207468652077696E646F7757696C6C52657475726E4669656C64456469746F723A746F4F626A6563743A2064656C6567617465206D6574686F64206F66204E5357696E646F772E
		Function SetUpFieldEditorAttributes(FieldEditor As AppleText) As AppleText
		  #If TargetMacOS then
		    return appletext.MakefromPtr(AppKitFramework.setUpFieldEditorAttributes(id, FieldEditor.id))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652076616C7565206F66207468652063656C6C20746F206120646F75626C652D707265636973696F6E20666C6F6174696E672D706F696E742076616C7565206F627461696E65642066726F6D2074686520737065636966696564206F626A6563742E
		Sub TakeDoubleValueFrom(Obj As AppleObject)
		  #If TargetMacOS then
		    AppKitFramework.takeDoubleValueFrom id, obj.id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652076616C7565206F662074686520636F6E74726F6CE28099732063656C6C20746F206120496E7433322076616C7565206F627461696E65642066726F6D2074686520737065636966696564206F626A6563742E
		Sub TakeInt32ValueFrom(Obj As AppleObject)
		  #If TargetMacOS then
		    AppKitFramework.takeIntValueFrom id, obj.id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652076616C7565206F662074686520636F6E74726F6CE28099732063656C6C20746F206120496E74656765722076616C7565206F627461696E65642066726F6D2074686520737065636966696564206F626A6563742E
		Sub TakeIntegerValueFrom(Obj As AppleObject)
		  #If TargetMacOS then
		    AppKitFramework.takeIntegerValueFrom id, obj.id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652076616C7565206F662074686520636F6E74726F6CE28099732063656C6C20746F20616E206F626A6563742076616C7565206F627461696E65642066726F6D2074686520737065636966696564206F626A6563742E
		Sub TakeObjectValueFrom(Obj As AppleObject)
		  #If TargetMacOS then
		    AppKitFramework.takeObjectValueFrom id, obj.id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652076616C7565206F662074686520636F6E74726F6CE28099732063656C6C20746F20612073696E676C652D707265636973696F6E20666C6F6174696E672D706F696E742076616C7565206F627461696E65642066726F6D2074686520737065636966696564206F626A6563742E
		Sub TakeSingleValueFrom(Obj As AppleObject)
		  #If TargetMacOS then
		    AppKitFramework.takeFloatValueFrom id, obj.id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652076616C7565206F662074686520636F6E74726F6CE28099732063656C6C20746F2074686520737472696E672076616C7565206F627461696E65642066726F6D2074686520737065636966696564206F626A6563742E
		Sub TakeStringValueFrom(Obj As AppleObject)
		  #If TargetMacOS then
		    AppKitFramework.takeStringValueFrom id, obj.id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652072656374616E676C6520696E2077686963682074686520726563656976657220647261777320697473207469746C6520746578742E
		Function TitleRect(Bounds as FoundationFrameWork.NSRect) As FoundationFrameWork.NSRect
		  #If TargetMacOS then
		    return AppKitFramework.titleRectForBounds (id, bounds)
		  #endif
		End Function
	#tag EndMethod


	#tag Note, Name = Status incomplete
		
		missing:
		
		font
		sendactionOn
		formatter
		menuforevent
		compare
		acceptsfirstreponder
		tracking section
		hitTest
		resetCursorRect
		draggingimagecomponents
		drawFocusRingMask
		FocusRingMaskBounds
		calcDrawInfo
		Editing and selcting text section
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520616374696F6E2073656C6563746F7220746F20626520706572666F726D6564206279207468652063656C6C2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appkitframework.getaction (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setAction id,  value
			  #endif
			End Set
		#tag EndSetter
		Action As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616C69676E6D656E74206F66207468652063656C6CE280997320746578742E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getalignment (id)
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setalignment id, value
			  #endif
			End Set
		#tag EndSetter
		Alignment As AppleText.NSTextAlignment
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C20737570706F7274732074687265652073746174657320696E7374656164206F662074776F2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appkitframework.getallowsMixedState (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setallowsMixedState id,value
			  #endif
			End Set
		#tag EndSetter
		AllowsMixedState As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C20617373756D657320726573706F6E736962696C69747920666F7220756E646F206F7065726174696F6E732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appkitframework.getallowsUndo (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setallowsUndo id,value
			  #endif
			End Set
		#tag EndSetter
		AllowsUndo As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076616C7565206F66207468652063656C6C20617320616E206174747269627574656420737472696E672E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleAttributedString.MakeFromPtr(AppKitFramework.getattributedStringValue (id))
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setattributedStringValue id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		AttributedStringValue As AppleAttributedString
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656C6CE2809973206261636B67726F756E64207374796C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getBackgroundstyle (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setBackgroundStyle id, value
			  #endif
			End Set
		#tag EndSetter
		BackgroundStyle As AppleCell.NSBackgroundStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E697469616C2077726974696E6720646972656374696F6E207573656420746F2064657465726D696E65207468652061637475616C2077726974696E6720646972656374696F6E20666F7220746578742E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getbaseWritingDirection (id)
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setbaseWritingDirection id, value
			  #endif
			End Set
		#tag EndSetter
		BaseWritingDirection As AppleText.NSWritingDirection
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C2068617320612062657A656C656420626F726465722E0A546869732070726F7065727479206973206D757475616C6C79206578636C757369766520776974682074686520626F7264657265642070726F7065727479E28094746861742069732C20612063656C6CE280997320626F726465722063616E20626520706C61696E206F722062657A656C656420627574206E6F7420626F74682E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appkitframework.getBezeled (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setBezeled id,value
			  #endif
			End Set
		#tag EndSetter
		Bezeled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C20647261777320697473656C66206F75746C696E65642077697468206120706C61696E20626F726465722E0A546869732070726F7065727479206973206D757475616C6C79206578636C75736976652077697468207468652062657A656C65642070726F7065727479E28094746861742069732C20612063656C6CE280997320626F726465722063616E20626520706C61696E206F722062657A656C656420627574206E6F7420626F74682E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appkitframework.getBordered (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setBordered id,value
			  #endif
			End Set
		#tag EndSetter
		Bordered As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D2073697A65206E656564656420746F20646973706C6179207468652063656C6C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getcellsize (id)
			  #endif
			End Get
		#tag EndGetter
		CellSize As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSCell")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C2073656E64732069747320616374696F6E206D65737361676520636F6E74696E756F75736C7920647572696E67206D6F75736520747261636B696E672E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getContinuous (id)
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setContinuous id, value
			  #endif
			End Set
		#tag EndSetter
		Continuous As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F66207468652063656C6C2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getcontrolSize(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setcontrolSize id, value
			  #endif
			End Set
		#tag EndSetter
		ControlSize As AppleControl.NSControlSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656C6CE280997320636F6E74726F6C2074696E742E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getcontrolTint(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setcontrolTint id, value
			  #endif
			End Set
		#tag EndSetter
		ControlTint As NSControlTint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076696577206173736F6369617465642077697468207468652063656C6C2E0A546869732076696577206973206E6F726D616C6C7920616E204E53436F6E74726F6C206F626A6563742E205468652064656661756C742076616C7565206F6620746869732070726F7065727479206973206E696C2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appleview.MakeFromPtr(AppKitFramework.getcontrolView (id))
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setcontrolView id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		ControlView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656661756C7420666F6375732072696E6720747970652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getdefaultFocusRingType (classptr)
			  #endif
			End Get
		#tag EndGetter
		Shared DefaultFocusRingType As Appkitframework.NSFocusRingType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656661756C74206D656E7520666F7220696E7374616E636573206F66207468652063656C6C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleMenu.MakefromPtr(AppKitFramework.getdefaultMenu (classptr))
			    
			  #endif
			End Get
		#tag EndGetter
		Shared DefaultMenu As AppleMenu
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656C6CE28099732076616C7565206173206120646F75626C652D707265636973696F6E20666C6F6174696E672D706F696E74206E756D6265722E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return FoundationFrameWork.getDoubleValue (id)
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    FoundationFrameWork.setdoubleValue id, value
			  #endif
			End Set
		#tag EndSetter
		DoubleValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C206973206564697461626C652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.geteditable (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.seteditable id, value
			  #endif
			End Set
		#tag EndSetter
		Editable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C20697320656E61626C65642E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appkitframework.getenabled (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setenabled id,value
			  #endif
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074797065206F6620666F6375732072696E6720746F20757365207769746820746865206173736F63696174656420766965772E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getfocusRingType(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setfocusRingType id, value
			  #endif
			End Set
		#tag EndSetter
		FocusRingType As Appkitframework.NSFocusRingType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C2068617320612076616C6964206F626A6563742076616C75652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return gethasValidObjectValue(id)
			  #endif
			End Get
		#tag EndGetter
		HasValidObjectValue As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C20697320686967686C6967687465642E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getHighlighted (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setHighlighted id, value
			  #endif
			End Set
		#tag EndSetter
		Highlighted As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696D61676520646973706C61796564206279207468652063656C6C2C20696620616E792E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appleimage.MakeFromPtr(AppKitFramework.getImage (id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setImage id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		Image As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656C6CE28099732076616C756520617320616E20696E74656765722E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getintValue (id)
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setIntValue id, value
			  #endif
			End Set
		#tag EndSetter
		Int32Value As Int32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656C6CE28099732076616C756520617320616E20496E746567657220747970652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getintegerValue (id)
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setIntegervalue id, value
			  #endif
			End Set
		#tag EndSetter
		IntegerValue As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656CE280997320696E746572696F72206261636B67726F756E64207374796C652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getinteriorBackgroundstyle (id)
			  #endif
			End Get
		#tag EndGetter
		InteriorBackgroundStyle As AppleCell.NSBackgroundStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206B6579206571756976616C656E74206173736F636961746564207769746820636C69636B696E67207468652063656C6C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getkeyEquivalent(id)
			  #endif
			End Get
		#tag EndGetter
		KeyEquivalent As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C696E6520627265616B206D6F646520746F20757365207768656E2064726177696E67207465787420696E207468652063656C6C2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getlineBreakMode (id)
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setlineBreakMode id, value
			  #endif
			End Set
		#tag EndSetter
		LineBreakMode As AppleText.NSLineBreakMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656C6CE280997320636F6E7465787475616C206D656E752E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleMenu.MakefromPtr (AppKitFramework.getmenu(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setMenu id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		Menu As AppleMenu
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656C6CE2809973206E6578742073746174652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return NSCellStateValue(getnextState(id))
			  #endif
			End Get
		#tag EndGetter
		NextState As NSCellStateValue
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656C6CE28099732076616C756520617320616E204F626A6563746976652D43206F626A6563742E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppleObject.MakeFromPtr(AppKitFramework.getobjectValue (id))
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setobjectValue id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		ObjectValue As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C20697320636F6D706C6574656C79206F70617175652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appkitframework.getopaque (id)
			  #endif
			End Get
		#tag EndGetter
		Opaque As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C20726566757365732074686520666972737420726573706F6E64657220726F6C65
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getrefusesFirstResponder (id)
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setrefusesFirstResponder id, value
			  #endif
			End Set
		#tag EndSetter
		RefusesFirstResponder As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F626A65637420726570726573656E746564206279207468652063656C6C2E0A55736520746869732070726F706572747920746F206C696E6B207468652063656C6C20616E20617070726F707269617465206F626A6563742E20466F72206578616D706C652C20696E206120706F702D7570206C697374206F6620636F6C6F72206E616D65732C2074686520726570726573656E746564206F626A656374206F6620656163682063656C6C20636F756C642062652074686520617070726F707269617465204E53436F6C6F72206F626A6563742E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appleobject.MakeFromPtr(AppKitFramework.getrepresentedObject (id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setrepresentedObject id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		RepresentedObject As Appleobject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572206578636573732074657874207363726F6C6C732070617374207468652063656C6CE280997320626F756E64732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getScrollable (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setScrollable id, value
			  #endif
			End Set
		#tag EndSetter
		Scrollable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6CE280997320746578742063616E2062652073656C65637465642E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getSelectable (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setSelectable id, value
			  #endif
			End Set
		#tag EndSetter
		Selectable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C2070726F766964657320612076697375616C20696E6469636174696F6E20746861742069742069732074686520666972737420726573706F6E6465722E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appkitframework.getshowsFirstResponder (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setshowsFirstResponder id,value
			  #endif
			End Set
		#tag EndSetter
		ShowsFirstResponder As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656C6CE28099732076616C756520617320612073696E676C652D707265636973696F6E20666C6F6174696E672D706F696E74206E756D6265722E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getfloatValue (id)
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setfloatvalue id, value
			  #endif
			End Set
		#tag EndSetter
		SingleValue As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656C6CE28099732063757272656E742073746174652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return NSCellStateValue(AppKitFramework.getState(id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setState id, integer(value)
			  #endif
			End Set
		#tag EndSetter
		State As NSCellStateValue
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412074616720666F72206964656E74696679696E67207468652063656C6C2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.gettag(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.settag id, value
			  #endif
			End Set
		#tag EndSetter
		Tag As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F626A6563742074686174207265636569766573207468652063656C6CE280997320616374696F6E206D657373616765732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appleobject.MakeFromPtr(appkitframework.getTarget (id))
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setTarget id, if (value = nil, nil, value.id)
			  #endif
			End Set
		#tag EndSetter
		Target As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656C6CE28099732076616C7565206173206120737472696E672E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getstringValue (id)
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setstringvalue id, value
			  #endif
			End Set
		#tag EndSetter
		TextValue As text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063656C6CE2809973207469746C6520746578742E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getTitle(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setTitle id, value
			  #endif
			End Set
		#tag EndSetter
		Title As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C20737570706F7274732074687265652073746174657320696E7374656164206F662074776F2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appkitframework.gettruncatesLastVisibleLine (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.settruncatesLastVisibleLine id,value
			  #endif
			End Set
		#tag EndSetter
		TruncatesLastVisibleLine As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074797065206F66207468652063656C6C2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return gettype(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    settype id, value
			  #endif
			End Set
		#tag EndSetter
		Type As NSCellType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C61796F757420646972656374696F6E20666F7220636F6E74656E7420696E207468652063656C6C2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getuserInterfaceLayoutDirection(id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setuserInterfaceLayoutDirection id, value
			  #endif
			End Set
		#tag EndSetter
		UserInterfaceLayoutdirection As Appkitframework.NSUserInterfaceLayoutdirection
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C20777261707320746578742077686F7365206C656E67746820746861742065786365656473207468652063656C6CE2809973206672616D652E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appkitframework.getwraps (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setWraps id,value
			  #endif
			End Set
		#tag EndSetter
		Wraps As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = NSBackgroundStyle, Type = UInteger, Flags = &h0
		Light = 0
		  Dark
		  Raised
		Lowered
	#tag EndEnum

	#tag Enum, Name = NSCellAttribute, Type = UInteger, Flags = &h0
		Disabled = 0
		  CellState
		  PushInCell
		  Editable
		  ChangeGrayCell
		  Highlighted
		  LightsByContents
		  LightsByGray
		  ChangeBackgroundCell
		  LightsByBackground
		  IsBordered
		  HasOverlappingImage
		  HasImageHorizontal
		  HasImageOnLeftOrBottom
		  ChangesContents
		  InsetButton
		AllowsMixedState
	#tag EndEnum

	#tag Enum, Name = NSCellStateValue, Type = Integer, Flags = &h0
		Mixed = -1
		  Off = 0
		On = 1
	#tag EndEnum

	#tag Enum, Name = NSCellType, Type = UInteger, Flags = &h0
		NullCell
		  TextCell
		ImageCell
	#tag EndEnum

	#tag Enum, Name = NSControlTint, Type = UInteger, Flags = &h0
		Default = 0
		  Blue = 1
		  Graphite = 6
		Clear = 7
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alignment"
			Group="Behavior"
			Type="AppleText.NSTextAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Left"
				"2 - Center"
				"1 - Right"
				"3 - Justified"
				"4 - Natural"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsMixedState"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsUndo"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackgroundStyle"
			Group="Behavior"
			Type="AppleCell.NSBackgroundStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Light"
				"1 - Dark"
				"2 - Raised"
				"3 - Lowered"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaseWritingDirection"
			Group="Behavior"
			Type="AppleText.NSWritingDirection"
			EditorType="Enum"
			#tag EnumValues
				"1 - Natural"
				"0 - LeftToRight"
				"1 - RightToLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bezeled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bordered"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Continuous"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlSize"
			Group="Behavior"
			Type="AppleControl.NSControlSize"
			EditorType="Enum"
			#tag EnumValues
				"0 - Regular"
				"1 - Small"
				"2 - Mini"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlTint"
			Group="Behavior"
			Type="NSControlTint"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Blue"
				"6 - Graphite"
				"7 - Clear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Editable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
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
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasValidObjectValue"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Highlighted"
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
			Name="Int32Value"
			Group="Behavior"
			Type="Int32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IntegerValue"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InteriorBackgroundStyle"
			Group="Behavior"
			Type="AppleCell.NSBackgroundStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - Light"
				"1 - Dark"
				"2 - Raised"
				"3 - Lowered"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeyEquivalent"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineBreakMode"
			Group="Behavior"
			Type="AppleText.NSLineBreakMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - WordWrap"
				"1 - CharacterWrap"
				"2 - Clip"
				"3 - TruncateHead"
				"4 - TruncateTail"
				"5 - TruncateMiddle"
			#tag EndEnumValues
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
			Name="NextState"
			Group="Behavior"
			Type="NSCellStateValue"
			EditorType="Enum"
			#tag EnumValues
				"-1 - Mixed"
				"0 - Off"
				"1 - On"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RefusesFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Scrollable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selectable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowsFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SingleValue"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="State"
			Group="Behavior"
			Type="NSCellStateValue"
			EditorType="Enum"
			#tag EnumValues
				"-1 - Mixed"
				"0 - Off"
				"1 - On"
			#tag EndEnumValues
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
			Name="TextValue"
			Group="Behavior"
			Type="text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
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
			Name="TruncatesLastVisibleLine"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Type"
			Group="Behavior"
			Type="NSCellType"
			EditorType="Enum"
			#tag EnumValues
				"0 - NullCell"
				"1 - TextCell"
				"2 - ImageCell"
			#tag EndEnumValues
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
			Name="Wraps"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
