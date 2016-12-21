#tag Class
Protected Class AppleFontManager
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 5468697320616374696F6E206D6574686F64206361757365732074686520466F6E744D616E6167657220746F2073656E642069747320616374696F6E206D6573736167652075702074686520726573706F6E64657220636861696E2E
		Sub AddFontTrait(Sender As AppleObject)
		  addFontTrait mid, sender.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addFontTrait Lib appkitlibname Selector "addFontTrait:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Function AvailableFontFamilyMembers(FontFamily As CFStringRef) As AppleFontFamily
		  return AppleFontFamily.MakeFromPtr(availableMembersOfFontFamily(mid, fontfamily))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function availableFontNamesWithTraits Lib appkitlibname Selector "availableFontNamesWithTraits:" (id as ptr, traits as uinteger) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206E616D6573206F662074686520666F6E747320617661696C61626C6520696E207468652073797374656D2077686F73652074726169747320617265206465736372696265642065786163746C792062792074686520676976656E20666F6E74207472616974206D61736B20286E6F7420746865204E53466F6E74206F626A65637473207468656D73656C766573292E
		Function AvailableFontNamesWithTraits(Traits as uinteger) As AppleArray
		  return applearray.MakeFromPtr(availableFontNamesWithTraits(mid, traits))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function availableMembersOfFontFamily Lib appkitlibname Selector "availableMembersOfFontFamily:" (id as ptr, family as cfstringRef) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437261746573206120757361626C6520696E7374616E6365206F66207468652073686172656420466F6D744D616E61676572206F626A656374
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor (getsharedFontManager (classptr))
		  dim AppleOwnerwindow as  AppleWindow = AppleResponder.getOwnerAppleWindow(me)
		  if AppleOwnerwindow <> nil then
		    NotificationObjects.Append AppleNotificationCenter.AddObserver ("NSWindowWillCloseNotification", AppleOwnerwindow, _
		    AppleOperationQueue.MainQueue, new appleblock (Addressof informonWindowWillClose))
		  end if
		  
		  // Target= me
		  xojo.core.timer.CallLater 0, Addressof RaiseOpenEvent
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206174747269627574657320696E20726573706F6E736520746F20616E206F626A65637420696E6974696174696E6720616E20617474726962757465206368616E67652C207479706963616C6C792074686520466F6E742070616E656C206F7220466F6E74206D656E752E
		Function ConvertAttributes(Attributedict As AppleDictionary) As AppleDictionary
		  return AppleDictionary.MakeFromPtr(convertAttributes(mid, Attributedict.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertAttributes Lib appkitlibname Selector "convertAttributes:" (id as ptr, Atts as Ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120666F6E742077686F736520747261697473206172652061732073696D696C617220617320706F737369626C6520746F2074686F7365206F662074686520676976656E20666F6E742065786365707420666F72207468652074797065666163652C207768696368206973206368616E67656420746F2074686520676976656E2074797065666163652E
		Function ConvertFontFace(Font As AppleFont, Face As CFStringRef) As AppleFont
		  return AppleFont.MakeFromPtr(convertFonttoFace(mid, font.id, face))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120666F6E742077686F736520747261697473206172652061732073696D696C617220617320706F737369626C6520746F2074686F7365206F662074686520676976656E20666F6E742065786365707420666F722074686520666F6E742066616D696C792C207768696368206973206368616E67656420746F2074686520676976656E2066616D696C792E
		Function ConvertFontFamily(Font As AppleFont, Family As CFStringRef) As AppleFont
		  return AppleFont.MakeFromPtr(convertFonttoFamily(mid, font.id, Family))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E204E53466F6E74206F626A6563742077686F73652074726169747320617265207468652073616D652061732074686F7365206F662074686520676976656E20666F6E742C2065786365707420666F72207468652073697A652C207768696368206973206368616E67656420746F2074686520676976656E2073697A652E
		Function ConvertFontSize(Font As AppleFont, Size As Double) As AppleFont
		  return AppleFont.MakeFromPtr(convertFonttoSize(mid, font.id, size))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertFonttoFace Lib appkitlibname Selector "convertFont:toFace:" (id as ptr, font as ptr, face as cfstringRef) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertFonttoFamily Lib appkitlibname Selector "convertFont:toFamily:" (id as ptr, font as ptr, family as cfstringRef) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertFonttoHaveTrait Lib appkitlibname Selector "convertFont:toHaveTrait:" (id as ptr, font as ptr, trait as uinteger) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertFonttonotHaveTrait Lib appkitlibname Selector "convertFont:toNotHaveTrait:" (id as ptr, font as ptr, trait as uinteger) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertFonttoSize Lib appkitlibname Selector "convertFont:toSize:" (id as ptr, font as ptr, size as cgfloat) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120666F6E742077686F736520747261697473206172652061732073696D696C617220617320706F737369626C6520746F2074686F7365206F662074686520676976656E20666F6E742065786365707420666F72207468652074797065666163652C207768696368206973206368616E67656420746F2074686520676976656E2074797065666163652E200A5573696E67204E53556E626F6C64466F6E744D61736B206F72204E53556E6974616C6963466F6E744D61736B2072656D6F7665732074686520626F6C64206F72206974616C69632074726169742C20726573706563746976656C792E
		Function ConvertFontTrait(Font As AppleFont, Trait as AppleFontTraitMask) As AppleFont
		  return AppleFont.MakeFromPtr(convertFonttoHaveTrait(mid, font.id, trait.Id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320666F6E742074726169747320746F2061206E657720747261697473206D61736B2076616C75652E
		Function ConvertFontTraits(Fonttraits as AppleFontTraitMask) As AppleFontTraitMask
		  return new AppleFontTraitMask(convertFontTraits(mid, Fonttraits.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertFontTraits Lib appkitlibname Selector "convertFontTraits:" (id as ptr, fonttraits as uinteger) As uinteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertWeightOfFont Lib appkitlibname Selector "convertWeight:ofFont:" (id as ptr, up as boolean, font as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E204E53466F6E74206F626A6563742077686F736520776569676874206973206C6573736572207468616E2074686174206F662074686520676976656E20666F6E742C20696620706F737369626C652E
		Function DecreaseFontWeight(Font As AppleFont) As AppleFont
		  return AppleFont.MakeFromPtr(convertWeightOfFont(mid, false, font.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E6469636174657320776865746865722074686520676976656E20666F6E742068617320616C6C2074686520737065636966696564207472616974732E
		Function FontHasTraits(Font as CFStringRef, Traits As AppleFontTraitMask) As Boolean
		  return fontNamedhasTraits (mid, font, traits.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FontMenu(Create as Boolean = false) As applemenu
		  return AppleMenu.MakeFromPtr(getfontMenu(mid, create))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function fontNamedhasTraits Lib appkitlibname Selector "fontWithFamily:traits:weight:size:" (id as ptr, font as cfstringRef, traits as uinteger) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206170706C69636174696F6EE28099732073686172656420466F6E742070616E656C206F626A6563742C206F7074696F6E616C6C79206372656174696E67206974206966206E65636573736172792E
		Function FontPanel(Create as Boolean = false) As AppleFontPanel
		  return AppleFontPanel.MakeFromPtr(getfontPanel(mid, create))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520747261697473206F662074686520676976656E20666F6E742E2028726561642D6F6E6C7929
		Function FontTraits(Font as AppleFont) As AppleFontTraitMask
		  return new AppleFontTraitMask (gettraitsOfFont(mid, font.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120726F756768206E756D65726963206D6561737572652074686520776569676874206F662074686520676976656E20666F6E742E2028726561642D6F6E6C7929
		Function FontWeight(Font as AppleFont) As FontWeight
		  return FontWeight(getweightOfFont(mid, font.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function fontWithFamily Lib appkitlibname Selector "fontWithFamily:traits:weight:size:" (id as ptr, family as cfstringRef, traits as uinteger, weight as Integer, size as cgfloat) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getavailableFontFamilies Lib appkitlibname Selector "availableFontFamilies" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getavailableFonts Lib appkitlibname Selector "availableFonts" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcurrentFontAction Lib appkitlibname Selector "currentFontAction" (id as ptr) As NSFontAction
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfontMenu Lib appkitlibname Selector "fontMenu:" (id as ptr, create as Boolean) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfontPanel Lib appkitlibname Selector "fontPanel:" (id as ptr, create as Boolean) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getMultiple Lib appkitlibname Selector "isMultiple" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getselectedFont Lib appkitlibname Selector "selectedFont" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsendAction Lib appkitlibname Selector "sendAction" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsharedFontManager Lib appkitlibname Selector "sharedFontManager" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettraitsOfFont Lib appkitlibname Selector "traitsOfFont:" (id as ptr, font as ptr) As uinteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getweightOfFont Lib appkitlibname Selector "weightOfFont:" (id as ptr, font as ptr) As integer
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Sub impl_changeFont(pid as ptr, sel as ptr, sender as ptr)
		  break
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E204E53466F6E74206F626A6563742077686F7365207765696768742069732067726561746572207468616E2074686174206F662074686520676976656E20666F6E742C20696620706F737369626C652E
		Function IncreaseFontWeight(Font As AppleFont) As AppleFont
		  return AppleFont.MakeFromPtr(convertWeightOfFont(mid, true, font.id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonWindowWillClose()
		  RaiseEvent Close
		  RemoveNotifications
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 417474656D70747320746F206C6F6164206120666F6E7420776974682074686520737065636966696564206368617261637465726973746963732E
		Function LoadFont(Family As CFStringRef, Traits As AppleFontTraitMask, Weight as FontWeight, size as double) As AppleFont
		  return AppleFont.MakeFromPtr(fontWithFamily(mid,family, Traits.id, integer(Weight), size))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206C6F63616C697A656420737472696E67207769746820746865206E616D65206F66207468652073706563696669656420666F6E742066616D696C7920616E6420666163652C206966206F6E65206578697374732E
		Function LocalizedName(FontFamily As CFStringRef, FontFace As CFStringRef = "") As Text
		  return localizedNameForFamily (mid, FontFamily, FontFace)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function localizedNameForFamily Lib appkitlibname Selector "localizedNameForFamily:face:" (id as ptr, famiy as cfstringref, face as cfstringRef) As CFStringRef
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5468697320616374696F6E206D6574686F64206361757365732074686520466F72744D616E6167657220746F2073656E642069747320616374696F6E206D6573736167652075702074686520726573706F6E64657220636861696E2E
		Sub ModifyFont(Sender As AppleObject)
		  modifyFont mid, sender.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub modifyFont Lib appkitlibname Selector "modifyFont:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5468697320616374696F6E206D6574686F64206361757365732074686520466F72744D616E6167657220746F2073656E642069747320616374696F6E206D6573736167652075702074686520726573706F6E64657220636861696E2E
		Sub ModifyFontViaPanel(Sender As AppleObject)
		  me.Target = sender
		  modifyFontViaPanel mid, sender.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub modifyFontViaPanel Lib appkitlibname Selector "modifyFontViaPanel:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub OpenFontPanel()
		  orderFrontFontPanel mid, mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenFontsStylePanel()
		  orderFrontStylesPanel mid, mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub orderFrontFontPanel Lib appkitlibname Selector "orderFrontFontPanel:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub orderFrontStylesPanel Lib appkitlibname Selector "orderFrontStylesPanel:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub RaiseOpenEvent()
		  RaiseEvent open
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5468697320616374696F6E206D6574686F64206361757365732074686520466F72744D616E6167657220746F2073656E642069747320616374696F6E206D6573736167652075702074686520726573706F6E64657220636861696E2E
		Sub RemoveFontTrait(Sender As AppleObject)
		  removeFontTrait mid, sender.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeFontTrait Lib appkitlibname Selector "removeFontTrait:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub RemoveNotifications()
		  for each o as AppleNotificationObject in NotificationObjects
		    AppleNotificationCenter.RemoveObserver o
		  next
		  redim NotificationObjects(-1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E204E53466F6E74206F626A6563742077697468207468652073616D65207472616974732061732074686520676976656E20666F6E742C2065786365707420666F72207468652074726169747320696E2074686520676976656E20666F6E74207472616974206D61736B2C207768696368206172652072656D6F7665642E0A5573696E67204E53556E626F6C64466F6E744D61736B206F72204E53556E6974616C6963466F6E744D61736B2072656D6F7665732074686520626F6C64206F72206974616C69632074726169742C20726573706563746976656C792E
		Function RemoveTraitFromFont(Font As AppleFont, Trait as AppleFontTraitMask) As AppleFont
		  return AppleFont.MakeFromPtr(convertFonttoNotHaveTrait(mid, font.id, trait.Id))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E666F726D73207468652070617261677261706820616E642063686172616374657220666F726D617474696E672070616E656C73207768656E207465787420696E20612073656C656374696F6E20686173206368616E67656420617474726962757465732E
		Sub SelectedAttributes(Multiple as Boolean, assigns value as AppleDictionary)
		  setSelectedAttributes mid, nilptr(value), Multiple
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5265636F7264732074686520676976656E20666F6E74206173207468652063757272656E746C792073656C656374656420666F6E7420616E6420757064617465732074686520466F6E742070616E656C20746F207265666C65637420746869732E
		Sub SelectedFont(Multiple as Boolean, assigns value as AppleFont)
		  setSelectedFont mid, nilptr(value), Multiple
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setFontMenu Lib appkitlibname Selector "setFontMenu:" (id as ptr, fontmenu as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setSelectedAttributes Lib appkitlibname Selector "setSelectedAttributes:isMultiple:" (id as ptr, atts as ptr, multiple as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setSelectedFont Lib appkitlibname Selector "setSelectedFont:isMultiple:" (id as ptr, font as ptr, multiple as Boolean)
	#tag EndExternalMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520636F6E74726F6C20636C6F7365732E
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 54686520636F6E74726F6C2068617320696E697469616C697A65642E
		Event Open()
	#tag EndHook


	#tag Note, Name = Status
		pretty complete (macOS 10.12), but the panel target-action has not been tested yet. Need to implement the action handlers to text classes which are not done yet.
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520616374696F6E2073656E7420746F2074686520666972737420726573706F6E646572207768656E2074686520757365722073656C656374732061206E657720666F6E742066726F6D2074686520466F6E742070616E656C206F722063686F6F736573206120636F6D6D616E642066726F6D2074686520466F6E74206D656E752E2044656661756C74206973206368616E6765466F6E743A
		#tag Getter
			Get
			  return appkitframework.getaction (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setAction id,  value
			End Set
		#tag EndSetter
		Action As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D6573206F662074686520666F6E747320617661696C61626C6520696E207468652073797374656D20286E6F7420746865204E53466F6E74206F626A65637473207468656D73656C766573292E
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (getavailableFontFamilies(id))
			End Get
		#tag EndGetter
		AvailableFontFamilies As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D6573206F662074686520666F6E747320617661696C61626C6520696E207468652073797374656D20286E6F7420746865204E53466F6E74206F626A65637473207468656D73656C766573292E
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (getAvailableFonts(mid))
			End Get
		#tag EndGetter
		AvailableFonts As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr
			  if mClassPtr = nil then
			    mClassPtr = FoundationFrameWork.NSClassFromString("NSFontManager")
			    // dim methods() as TargetClassMethodHelper
			    // methods.Append new TargetClassMethodHelper ("changeFont:", Addressof impl_changeFont, "v@:@")
			    //
			    // mClassPtr =BuildTargetClass ("NSFontManager", "OSXLibFontManager", methods)
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E7420666F6E7420636F6E76657273696F6E20616374696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcurrentFontAction (mid)
			End Get
		#tag EndGetter
		CurrentFontAction As NSFontAction
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520666F6E7420636F6E76657273696F6E2073797374656DE2809973207573657220696E74657266616365206974656D73202874686520466F6E742070616E656C20616E6420466F6E74206D656E75206974656D73292061726520656E61626C65642E0A0A
		#tag Getter
			Get
			  return appkitframework.getenabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setenabled id,value
			End Set
		#tag EndSetter
		Enabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D656E752074686174E280997320686F6F6B656420757020746F2074686520666F6E7420636F6E76657273696F6E2073797374656D2C2077686963682077696C6C2062652063726561746564206966206E656365737361727920696620796F752070617373206120626F6F6C65616E205472756520696E20746865206765747465722E
		#tag Setter
			Set
			  setFontMenu mid, nilptr(value)
			End Set
		#tag EndSetter
		FontMenu As AppleMenu
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520666F6E74206D616E61676572E280997320616374696F6E206D657373616765207761732068616E646C65642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getsendAction(mid)
			End Get
		#tag EndGetter
		LastActionWasHandled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206C61737420666F6E742073656C656374696F6E207265636F7264656420686173206D756C7469706C6520666F6E74732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getMultiple(mid)
			End Get
		#tag EndGetter
		Multiple As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private NotificationObjects() As AppleNotificationObject
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C61737420666F6E74207265636F726465642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleFont.MakeFromPtr(getselectedFont(mid))
			End Get
		#tag EndGetter
		SelectedFont As AppleFont
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520746172676574206F626A656374207468617420726563656976657320616374696F6E206D657373616765732066726F6D207468652063656C6C2E
		#tag Getter
			Get
			  return appleobject.MakeFromPtr(appkitframework.getTarget (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setTarget id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Target As AppleObject
	#tag EndComputedProperty


	#tag Enum, Name = FontWeight, Type = Integer, Flags = &h0
		UltraLight = 1
		  Thin = 2
		  Light = 3
		  Book = 4
		  Regular = 5
		  Medium = 6
		  Demibold = 7
		  Semibold = 8
		  Bold = 9
		  Extrabold = 10
		  Heavy = 11
		  Black = 12
		  Ultrablack = 13
		Extrablack = 14
	#tag EndEnum

	#tag Enum, Name = NSFontAction, Type = UInteger, Flags = &h0
		FontChange = 0
		  ViaPanel = 1
		  AddTrait = 2
		  SizeUp = 3
		  SizeDown = 4
		  HeavierFont = 5
		  LighterFont = 6
		RemoveTrait = 7
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="CurrentFontAction"
			Group="Behavior"
			Type="NSFontAction"
			EditorType="Enum"
			#tag EnumValues
				"0 - FontChange"
				"1 - ViaPanel"
				"2 - AddTrait"
				"3 - SizeUp"
				"4 - SizeDown"
				"5 - HeavierFont"
				"6 - LighterFont"
				"7 - RemoveTrait"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
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
			Name="LastActionWasHandled"
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
			Name="Multiple"
			Group="Behavior"
			Type="Boolean"
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
