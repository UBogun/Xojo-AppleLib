#tag Class
Protected Class AppleControl
Inherits AppleView
	#tag Method, Flags = &h0, Description = 5465726D696E61746573207468652063757272656E742065646974696E67206F7065726174696F6E20616E6420646973636172647320616E792065646974656420746578742E0A52657475726E2074727565206966207468657265207761732061206669656C6420656469746F72206173736F63696174656420776974682074686520636F6E7472
		Function AbortEditing() As Boolean
		  #If TargetMacOS then
		    return abortEditing(id)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function abortEditing Lib foundationlibname Selector "abortEditing" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D7320637573746F6D20657870616E73696F6E20746F6F6C207469702064726177696E672E
		Sub DrawWithExpansionFrame(Frame as FoundationFrameWork.NSREct, view as appleview)
		  #If TargetMacOS then
		    DrawWithExpansionFrame id, frame, view.id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub drawWithExpansionFrame Lib foundationlibname Selector "drawWithExpansionFrame:inView:" (id as ptr, frame as FoundationFrameWork . NSRect, view as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 426567696E732065646974696E67206F6620746865207265636569766572E28099732074657874207573696E672074686520737065636966696564206669656C6420656469746F722E
		Sub EditWithFrame(Frame as FoundationFrameWork.NSREct, editor as appletext, delegateObj as AppleObject, anEvent As AppleNSEvent)
		  #If TargetMacOS then
		    editWithFrame id, frame, editor.id,delegateObj.id, anevent.id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub editWithFrame Lib foundationlibname Selector "editWithFrame:editor:delegate:event:" (id as ptr, frame as FoundationFrameWork . NSRect, editor as ptr, delegateObj as ptr, anEvent as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 456E6473207468652065646974696E67206F66207465787420696E20746865207265636569766572207573696E672074686520737065636966696564206669656C6420656469746F722E52657475726E2074727565206966207468657265207761732061206669656C6420656469746F72206173736F63696174656420776974682074686520636F6E7472
		Sub EndEditing(TextObj as Appletext)
		  #If TargetMacOS then
		    endEditing id, textobj.id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub endEditing Lib foundationlibname Selector "endEditing:" (id as ptr, textobj as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 546865206672616D6520696E207768696368206120746F6F6C207469702063616E20626520646973706C617965642C206966206E65656465642E
		Function ExpansionFrame(Frame as FoundationFrameWork.NSREct) As foundationFrameWork.NSREct
		  #If TargetMacOS then
		    return expansionFrameWithFrame(id, frame)
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function expansionFrameWithFrame Lib foundationlibname Selector "expansionFrameWithFrame:" (id as ptr, frame as FoundationFrameWork . NSRect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsExpansionToolTips Lib foundationlibname Selector "allowsExpansionToolTips" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontrolTint Lib foundationlibname Selector "controlTint" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcurrentEditor Lib foundationlibname Selector "currentEditor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getignoresMultiClick Lib foundationlibname Selector "ignoresMultiClick" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsizeThatFits Lib foundationlibname Selector "sizeThatFits:" (id as ptr, size as FoundationFrameWork . NSSize) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53696D756C6174657320612073696E676C65206D6F75736520636C69636B206F6E207468652072656365697665722E
		Sub PerformClick(Sender as appleobject)
		  #If TargetMacOS then
		    AppKitFramework.performClick id, sender.id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53656C65637473207468652073706563696669656420746578742072616E676520696E207468652072656365697665722773206669656C6420656469746F722E
		Sub SelectWithFrame(Frame as FoundationFrameWork.NSREct, editor as appletext, delegateObj as AppleObject, start As Integer, length as integer)
		  #If TargetMacOS then
		    selectWithFrame id, frame, editor.id,delegateObj.id, start, length
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub selectWithFrame Lib foundationlibname Selector "selectWithFrame:editor:delegate:start:length:" (id as ptr, frame as FoundationFrameWork . NSRect, editor as ptr, delegateObj as ptr, start as integer, length as integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436175736573207468652073706563696669656420616374696F6E20746F2062652073656E7420746865207461726765742E
		Sub SendAction(ActionSelector as Ptr, Target as AppleObject)
		  #If TargetMacOS then
		    AppKitFramework.sendActionTo id, ActionSelector, target.id
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsExpansionToolTips Lib foundationlibname Selector "setAllowsExpansionToolTips:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontrolTint Lib foundationlibname Selector "setControlTint:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setignoresMultiClick Lib foundationlibname Selector "setIgnoresMultiClick:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 41736B732074686520636F6E74726F6C20746F2063616C63756C61746520616E642072657475726E207468652073697A6520746861742062657374206669747320746865207370656369666965642073697A652E52657475726E2074727565206966207468657265207761732061206669656C6420656469746F72206173736F63696174656420776974682074686520636F6E7472
		Function SizeThatFits(Size as FoundationFrameWork.NSSize) As FoundationFrameWork.NSSize
		  #If TargetMacOS then
		    return getSizeThatFits(id, size)
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526573697A65732074686520636F6E74726F6CE2809973206672616D6520736F207468617420697420697320746865206D696E696D756D2073697A65206E656564656420746F20636F6E7461696E206974732063656C52657475726E2074727565206966207468657265207761732061206669656C6420656469746F72206173736F63696174656420776974682074686520636F6E7472
		Sub SizeToFit()
		  #If TargetMacOS then
		    AppKitFramework.sizeToFit id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652076616C7565206F662074686520636F6E74726F6CE28099732063656C6C20746F206120646F75626C652D707265636973696F6E20666C6F6174696E672D706F696E742076616C7565206F627461696E65642066726F6D2074686520737065636966696564206F626A6563742E
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

	#tag Method, Flags = &h0, Description = 56616C696461746573206368616E67657320746F20616E7920757365722D747970656420746578742E0A56616C69646174696F6E207365747320746865206F626A6563742076616C7565206F66207468652063656C6C20746F207468652063757272656E7420636F6E74656E7473206F66207468652063656C6CE280997320656469746F722028746865204E5354657874206F626A656374207573656420666F722065646974696E67292C2073746F72696E6720697420617320612073696D706C65204E53537472696E67206F7220616E206174747269627574656420737472696E67206F626A656374206261736564206F6E207468652061747472696275746573206F662074686520656469746F722E
		Function ValidateEditing() As Boolean
		  #If TargetMacOS then
		    validateEditing id
		  #endif
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub validateEditing Lib appkitlibname Selector "validateEditing" (id as ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		missing:
		
		cell and cellclass, selectedCell and selectedTag because they are decprecated in OS X 10.10 and 10.11
		font (NSFont)
		formatter (NSFormatter)
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 5468652064656661756C7420616374696F6E2D6D6573736167652073656C6563746F72206173736F63696174656420776974682074686520636F6E74726F6C2E
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520616C69676E6D656E74206D6F6465206F6620746865207465787420696E2074686520636F6E74726F6CE28099732063656C6C2E
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

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220657870616E73696F6E20746F6F6C2074697073206172652073686F776E207768656E2074686520636F6E74726F6C20697320686F7665726564206F7665722E0A0A
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getallowsExpansionToolTips (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setallowsExpansionToolTips id, value
			  #endif
			End Set
		#tag EndSetter
		AllowExpansionTooltips As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C20616C6C6F7773207468652065646974696E67206F662069747320636F6E74656E74E2809973207465787420617474726962757465732062792074686520757365722E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getallowsEditingTextAttributes (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setallowsEditingTextAttributes id, value
			  #endif
			End Set
		#tag EndSetter
		AllowsEditingTextAttributes As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076616C7565206F662074686520636F6E74726F6CE28099732063656C6C20617320616E206174747269627574656420737472696E672E
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

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSControl")
			  return mClassPtr
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207265636569766572E28099732063656C6C2073656E64732069747320616374696F6E206D65737361676520636F6E74696E756F75736C7920746F206974732074617267657420647572696E67206D6F75736520747261636B696E672E
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

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F662074686520636F6E74726F6C2E
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
		ControlSize As NSControlSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E74206669656C6420656469746F7220666F722074686520636F6E74726F6C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  #If TargetMacOS then
			    return appletext.MakeFromPtr(getcurrentEditor (id))
			    
			  #endif
			End Get
		#tag EndGetter
		CurrentEditor As AppleText
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076616C7565206F662074686520636F6E74726F6CE28099732063656C6C206173206120646F75626C652D707265636973696F6E20666C6F6174696E672D706F696E74206E756D6265722E
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

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E74726F6C2072656163747320746F206D6F757365206576656E74732E
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

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652072656365697665722069676E6F726573206D756C7469706C6520636C69636B73206D61646520696E2072617069642073756363657373696F6E2E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return getignoresMultiClick (id)
			    
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    setignoresMultiClick id, value
			  #endif
			End Set
		#tag EndSetter
		IgnoresMultiClick As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063656C6C20737570706F7274732074686520696D706F72746174696F6E206F6620696D6167657320696E746F2069747320746578742E
		#tag Getter
			Get
			  #If TargetMacOS then
			    return AppKitFramework.getimportsGraphics (id)
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #If TargetMacOS then
			    AppKitFramework.setimportsGraphics id, value
			  #endif
			End Set
		#tag EndSetter
		ImportsGraphics As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652076616C7565206F662074686520636F6E74726F6CE28099732063656C6C20617320616E20496E7433322E
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

	#tag ComputedProperty, Flags = &h0, Description = 5468652076616C7565206F662074686520636F6E74726F6CE28099732063656C6C20617320616E20496E74656765722076616C75652E
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

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mNSControlTextDidBeginEditingNotification as text = "NSControlTextDidBeginEditingNotification"
			  return mNSControlTextDidBeginEditingNotification
			End Get
		#tag EndGetter
		Shared kNSControlTextDidBeginEditingNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mNSControlTextDidChangeNotification as text = "NSControlTextDidChangeNotification"
			  return mNSControlTextDidChangeNotification
			End Get
		#tag EndGetter
		Shared kNSControlTextDidChangeNotification As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mNSControlTextDidEndEditingNotification as text = "NSControlTextDidEndEditingNotification"
			  return mNSControlTextDidEndEditingNotification
			End Get
		#tag EndGetter
		Shared kNSControlTextDidEndEditingNotification As Text
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

	#tag ComputedProperty, Flags = &h0, Description = 5468652076616C7565206F6620746865207265636569766572E28099732063656C6C20617320616E204F626A6563746976652D43206F626A6563742E
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
			    AppKitFramework.setobjectValue id, if (value = nil, nil, value.GeneralID)
			  #endif
			End Set
		#tag EndSetter
		ObjectValue As AppleGeneralObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520726563656976657220726566757365732074686520666972737420726573706F6E64657220726F6C65
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

	#tag ComputedProperty, Flags = &h0, Description = 5468652076616C7565206F6620746865207265636569766572E28099732063656C6C20617320612073696E676C652D707265636973696F6E20666C6F6174696E672D706F696E74206E756D6265722E
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

	#tag ComputedProperty, Flags = &h0, Description = 54686520746172676574206F626A656374207468617420726563656976657320616374696F6E206D657373616765732066726F6D207468652063656C6C2E
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

	#tag ComputedProperty, Flags = &h0, Description = 5468652076616C7565206F6620746865207265636569766572E28099732063656C6C20617320616E20546578742064617461747970652E
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


	#tag Enum, Name = NSControlSize, Type = Integer, Flags = &h0
		Regular
		  Small
		Mini
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
			Name="AllowExpansionTooltips"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsEditingTextAttributes"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
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
			Name="Continuous"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlSize"
			Group="Behavior"
			Type="NSControlSize"
			EditorType="Enum"
			#tag EnumValues
				"0 - Regular"
				"1 - Small"
				"2 - Mini"
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
			Name="Highlighted"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IgnoresMultiClick"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImportsGraphics"
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
			Name="SingleValue"
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
