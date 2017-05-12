#tag Class
Protected Class AppleText
Inherits AppleView
	#tag Method, Flags = &h0, Description = 4170706C6965732063656E74657220616C69676E6D656E7420746F2073656C6563746564207061726167726170687320286F7220616C6C207465787420696620746865207265636569766572206973206120706C61696E2074657874206F626A656374292E
		Sub AlignCenter(Sender As AppleObject = nil)
		  doalignCenter mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C696573206C65667420616C69676E6D656E7420746F2073656C6563746564207061726167726170687320286F7220616C6C207465787420696620746865207265636569766572206973206120706C61696E2074657874206F626A656374292E
		Sub AlignLeft(Sender As AppleObject = nil)
		  doalignLeft mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C69657320726967687420616C69676E6D656E7420746F2073656C6563746564207061726167726170687320286F7220616C6C207465787420696620746865207265636569766572206973206120706C61696E2074657874206F626A656374292E
		Sub AlignRight(Sender As AppleObject = nil)
		  doalignRight mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E6765732074686520666F6E74206F66207468652073656C656374696F6E20666F72206120726963682074657874206F626A6563742C206F72206F6620616C6C207465787420666F72206120706C61696E2074657874206F626A6563742E2049662074686520726563656976657220646F65736EE2809974207573652074686520466F6E742070616E656C2C2074686973206D6574686F6420646F6573206E6F7468696E672E
		Sub ChangeFont(Sender As AppleObject = nil)
		  dochangeFont mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5265706C61636573207468652073656C656374656420776F726420696E2074686520636F6E74726F6C2077697468206120636F727265637465642076657273696F6E2066726F6D20746865205370656C6C696E672070616E656C2E
		Sub ChangeSpelling(Sender As AppleObject = nil)
		  dochangeSpelling mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536561726368657320666F722061206D69737370656C6C656420776F726420696E20746865207265636569766572E280997320746578742E
		Sub CheckSpelling(Sender As AppleObject = nil)
		  docheckSpelling mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Frame as FoundationFrameWork.NSRect)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(x as double, y as double, width as double, height as double, DontRegisterEvents as Boolean = False) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect, DontRegisterEvents as Boolean = False) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(AppKitFramework.initwithframe(alloc(classptr), frame), true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F70696573207468652073656C65637465642074657874206F6E746F207468652067656E6572616C207061737465626F6172642C20696E206173206D616E7920666F726D6174732061732074686520726563656976657220737570706F7274732E
		Sub Copy(Sender As AppleObject = nil)
		  docopy mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F706965732074686520666F6E7420696E666F726D6174696F6E20666F722074686520666972737420636861726163746572206F66207468652073656C656374696F6E20286F7220666F722074686520696E73657274696F6E20706F696E7429206F6E746F2074686520666F6E74207061737465626F6172642C206173204E53466F6E7450626F617264547970652E
		Sub CopyFont(Sender As AppleObject = nil)
		  docopyFont mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F706965732074686520706172616772617068207374796C6520696E666F726D6174696F6E20666F722066697273742073656C656374656420706172616772617068206F6E746F207468652072756C6572207061737465626F6172642C206173204E5352756C657250626F617264547970652C20616E6420657870616E6473207468652073656C656374696F6E20746F2070617261677261706820626F756E6461726965732E
		Sub CopyRuler(Sender As AppleObject = nil)
		  docopyRuler mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 44656C65746573207468652073656C6563746564207465787420616E6420706C61636573206974206F6E746F207468652067656E6572616C207061737465626F6172642C20696E206173206D616E7920666F726D6174732061732074686520726563656976657220737570706F7274732E
		Sub Cut(Sender As AppleObject = nil)
		  docut mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 44656C65746573207468652073656C656374656420746578742E
		Sub Delete(Sender As AppleObject = nil)
		  dodelete mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub doalignCenter Lib AppKitLibname Selector "alignCenter:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub doalignLeft Lib AppKitLibname Selector "alignLeft:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub doalignRight Lib AppKitLibname Selector "alignRight:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub dochangeFont Lib AppKitLibname Selector "changeFont:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub dochangeSpelling Lib AppKitLibname Selector "changeSpelling:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub docheckSpelling Lib AppKitLibname Selector "checkSpelling:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub doCopy Lib AppKitLibname Selector "copy:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub docopyFont Lib AppKitLibname Selector "copyFont:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub docopyRuler Lib AppKitLibname Selector "copyRuler:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub doCut Lib AppKitLibname Selector "cut:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub dodelete Lib AppKitLibname Selector "delete:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub doignoreSpelling Lib AppKitLibname Selector "ignoreSpelling:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub doPaste Lib AppKitLibname Selector "paste:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub dopasteFont Lib AppKitLibname Selector "pasteFont:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub dopasteRuler Lib AppKitLibname Selector "pasteRuler:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub doSelectAll Lib AppKitLibname Selector "selectAll:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub doshowGuessPanel Lib AppKitLibname Selector "showGuessPanel:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub dosubscript Lib AppKitLibname Selector "subscript:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub dosuperscript Lib AppKitLibname Selector "superscript:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub dotoggle​Ruler Lib AppKitLibname Selector "toggle​Ruler:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub dounderline Lib AppKitLibname Selector "underline:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub dounscript Lib AppKitLibname Selector "unscript:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfieldEditor Lib AppKitLibname Selector "isFieldEditor" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getHorizontallyResizable Lib AppKitLibname Selector "isHorizontallyResizable" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getimportsGraphics Lib AppKitLibname Selector "importsGraphics" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmaxSize Lib AppKitLibname Selector "maxSize" (id as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getminSize Lib AppKitLibname Selector "minSize" (id as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getRichText Lib AppKitLibname Selector "isRichText" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getRulerVisible Lib AppKitLibname Selector "isRulerVisible" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getselectedRange Lib AppKitLibname Selector "selectedRange" (id as ptr) As FoundationFrameWork.NSRange
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getString Lib AppKitLibname Selector "string" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getusesFontPanel Lib AppKitLibname Selector "usesFontPanel" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getVerticallyResizable Lib AppKitLibname Selector "isVerticallyResizable" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 49676E6F726573206D69737370656C6C656420776F726473206F6E206120646F63756D656E742D62792D646F63756D656E742062617369732E2054686973206D6573736167652069732073656E7420627920746865204E535370656C6C436865636B657220696E7374616E636520746F20746865206F626A6563742077686F73652074657874206973206265696E6720636865636B65642E
		Sub IgnoreSpelling(Sender As AppleObject = nil)
		  doignoreSpelling mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleText
		  Return if (aptr= nil, nil, new AppleText(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50617374657320746578742066726F6D207468652067656E6572616C207061737465626F6172642061742074686520696E73657274696F6E20706F696E74206F72206F766572207468652073656C656374696F6E2E
		Sub Paste(Sender As AppleObject = nil)
		  doPaste mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50617374657320666F6E7420696E666F726D6174696F6E2066726F6D2074686520666F6E74207061737465626F617264206F6E746F207468652073656C65637465642074657874206F7220696E73657274696F6E20706F696E74206F66206120726963682074657874206F626A6563742C206F72206F76657220616C6C2074657874206F66206120706C61696E2074657874206F626A6563742E
		Sub PasteFont(Sender As AppleObject = nil)
		  dopasteFont mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50617374657320706172616772617068207374796C6520696E666F726D6174696F6E2066726F6D207468652072756C6572207061737465626F617264206F6E746F207468652073656C65637465642070617261677261706873206F66206120726963682074657874206F626A6563742E
		Sub PasteRuler(Sender As AppleObject = nil)
		  doPasteruler mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 417474656D70747320746F20726561642074686520525446442066696C6520617420706174682C2072657475726E696E672074686520737563636573732E
		Function ReadRTFD(RTFDFilePath As cfstringRef) As Boolean
		  return readRTFDFromFile (mid, RTFDFilePath)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function readRTFDFromFile Lib AppKitLibname Selector "readRTFDFromFile:" (id as ptr, value as cfstringRef) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub replaceCharactersInRangewithRTF Lib AppKitLibname Selector "replaceCharactersInRange:withRTF:" (id as ptr, range as FoundationFrameWork . NSRange, RTF as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub replaceCharactersInRangewithRTFD Lib AppKitLibname Selector "replaceCharactersInRange:withRTFD:" (id as ptr, range as FoundationFrameWork . NSRange, RTF as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub replaceCharactersInRangewithString Lib AppKitLibname Selector "replaceCharactersInRange:withString:" (id as ptr, range as FoundationFrameWork . NSRange, value as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5265706C6163657320746865206368617261637465727320696E2074686520676976656E2072616E6765207769746820525446207465787420696E7465727072657465642066726F6D2074686520676976656E2052544620646174612E
		Sub ReplaceWithRTF(Range As FoundationFrameWork.NSRange, RTFData as AppleData)
		  replaceCharactersInRangewithRTF mid, range, RTFData.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5265706C6163657320746865206368617261637465727320696E2074686520676976656E2072616E676520776974682052544644207465787420696E7465727072657465642066726F6D2074686520676976656E205254464420646174612E
		Sub ReplaceWithRTFD(Range As FoundationFrameWork.NSRange, RTFDData as AppleData)
		  replaceCharactersInRangewithRTFD mid, range, RTFDData.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5265706C6163657320746865206368617261637465727320696E2074686520676976656E2072616E676520776974682074686F736520696E2074686520676976656E20737472696E672E
		Sub ReplaceWithString(Range As FoundationFrameWork.NSRange, ReplacementText As Text)
		  replaceCharactersInRangewithString mid, range, ReplacementText
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E204170706C6544617461206F626A656374207468617420636F6E7461696E7320616E20525446442073747265616D20636F72726573706F6E64696E6720746F20746865206368617261637465727320616E6420617474726962757465732077697468696E206152616E67652E
		Function RTFDFromRange(Range As FoundationFrameWork.NSRange) As AppleData
		  return AppleData.MakefromPtr(RTFDFromRange (mid, Range))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function RTFDFromRange Lib AppKitLibname Selector "RTFDFromRange:" (id as ptr, range as FoundationFrameWork . NSRange) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E204170706C6544617461206F626A656374207468617420636F6E7461696E7320616E205254462073747265616D20636F72726573706F6E64696E6720746F20746865206368617261637465727320616E6420617474726962757465732077697468696E206152616E67652C206F6D697474696E6720616E79206174746163686D656E74206368617261637465727320616E6420617474726962757465732E
		Function RTFFromRange(Range As FoundationFrameWork.NSRange) As AppleData
		  return AppleData.MakefromPtr(RTFFromRange (mid, Range))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function RTFFromRange Lib AppKitLibname Selector "RTFFromRange:" (id as ptr, range as FoundationFrameWork . NSRange) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub scrollRangeToVisible Lib AppKitLibname Selector "scrollRangeToVisible:" (id as ptr, range as FoundationFrameWork . NSRange)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5363726F6C6C7320746865207465787420696E2069747320656E636C6F73696E67207363726F6C6C207669657720736F207468652066697273742063686172616374657273206F66206152616E6765206172652076697369626C652E
		Sub ScrollToRange(Range as FoundationFrameWork.NSRange)
		  scrollRangeToVisible mid, range
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53656C6563747320616C6C206F6620746865207265636569766572E280997320746578742E
		Sub SelectAll(Sender As AppleObject = nil)
		  doSelectAll mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfieldEditor Lib AppKitLibname Selector "setFieldEditor:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 536574732074686520666F6E74206F6620636861726163746572732077697468696E206152616E676520746F2061466F6E742E
		Sub setFontInRange(font As AppleFont, Range As FoundationFrameWork.NSRange)
		  setFontInRange mid, nilptr(font), range
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setFontInrange Lib AppKitLibname Selector "setFont:range:" (id as ptr, value as Ptr, range as FoundationFrameWork . NSRange)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setHorizontallyResizable Lib AppKitLibname Selector "setHorizontallyResizable:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setimportsGraphics Lib AppKitLibname Selector "setImportsGraphics:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setmaxSize Lib AppKitLibname Selector "setMaxSize:" (id as ptr, value as FoundationFrameWork . NSSize)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setminSize Lib AppKitLibname Selector "setMinSize:" (id as ptr, value as FoundationFrameWork . NSSize)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setRichText Lib AppKitLibname Selector "setRichText:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setselectedRange Lib AppKitLibname Selector "setSelectedRange:" (id as ptr, value as FoundationFrameWork . NSRange)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setString Lib AppKitLibname Selector "setString:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207465787420636F6C6F72206F6620636861726163746572732077697468696E20746865207370656369666965642072616E676520746F207468652073706563696669656420636F6C6F722E
		Sub setTextColorInRange(aColor As AppleColor, Range As FoundationFrameWork.NSRange)
		  setTextColorInrange mid, nilptr(acolor), range
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setTextColorInrange Lib AppKitLibname Selector "setTextColor:range:" (id as ptr, value as ptr, range as FoundationFrameWork . NSRange)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setusesFontPanel Lib AppKitLibname Selector "setUsesFontPanel:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setVerticallyResizable Lib AppKitLibname Selector "setVerticallyResizable:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4F70656E7320746865205370656C6C696E672070616E656C2C20616C6C6F77696E6720746865207573657220746F206D616B65206120636F7272656374696F6E20647572696E67207370656C6C20636865636B696E672E
		Sub ShowGuessPanel(Sender As AppleObject = nil)
		  doshowGuessPanel mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526573697A65732074686520636F6E74726F6C20746F206669742069747320746578742E
		Sub SizeToFit()
		  AppKitFramework.sizeToFit id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C6965732061207375627363726970742061747472696275746520746F2073656C6563746564207465787420286F7220616C6C207465787420696620746865207265636569766572206973206120706C61696E2074657874206F626A656374292C2072616973696E672069747320626173656C696E65206F6666736574206279206120707265646566696E656420616D6F756E742E
		Sub Subscript(Sender As AppleObject = nil)
		  dosubscript mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C69657320612073757065727363726970742061747472696275746520746F2073656C6563746564207465787420286F7220616C6C207465787420696620746865207265636569766572206973206120706C61696E2074657874206F626A656374292C2072616973696E672069747320626173656C696E65206F6666736574206279206120707265646566696E656420616D6F756E742E
		Sub Superscript(Sender As AppleObject = nil)
		  dosuperscript mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53686F7773206F72206869646573207468652072756C65722C2069662074686520726563656976657220697320656E636C6F73656420696E2061207363726F6C6C20766965772E
		Sub ToggleRuler(Sender As AppleObject = nil)
		  dotoggle​Ruler mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416464732074686520756E6465726C696E652061747472696275746520746F207468652073656C65637465642074657874206174747269627574657320696620616273656E743B2072656D6F76657320746865206174747269627574652069662070726573656E742E
		Sub ToggleUnderline(Sender As AppleObject = nil)
		  dounderline mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616E79207375706572736372697074696E67206F7220737562736372697074696E672066726F6D2073656C6563746564207465787420286F7220616C6C207465787420696620746865207265636569766572206973206120706C61696E2074657874206F626A656374292E
		Sub Unscript(Sender As AppleObject = nil)
		  dounscript mid, nilptr(sender)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 57726974657320746865207265636569766572E28099732074657874206173205254462077697468206174746163686D656E747320746F20612066696C65206F72206469726563746F727920617420706174682E
		Function WriteRTFD(RTFDFilePath As CFStringRef, atomically as Boolean = true) As Boolean
		  return writeRTFDToFile (mid, RTFDFilePath, atomically)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function writeRTFDToFile Lib AppKitLibname Selector "writeRTFDToFile:atomically:" (id as ptr, value as cfstringRef, atomically as Boolean) As Boolean
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		InitWithCoder cunstructor missing – no coder yet!
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520616C69676E6D656E74206F66207468652063656C6CE280997320746578742E
		#tag Getter
			Get
			  return AppKitFramework.getalignment (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setalignment mid, value
			End Set
		#tag EndSetter
		Alignment As AppleText.NSTextAlignment
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6C6F72206F66207468652074657874206F626A656374E2809973206261636B67726F756E642E
		#tag Getter
			Get
			  return applecolor.MakefromPtr(AppKitFramework.getbackgroundColor(id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setbackgroundColor id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		BackgroundColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E697469616C2077726974696E6720646972656374696F6E207573656420746F2064657465726D696E65207468652061637475616C2077726974696E6720646972656374696F6E20666F7220746578742E
		#tag Getter
			Get
			  return AppKitFramework.getbaseWritingDirection (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setbaseWritingDirection mid, value
			End Set
		#tag EndSetter
		BaseWritingDirection As AppleText.NSWritingDirection
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSText")
			  return mClassPtr
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656C6567617465206F662074686520636F6E74726F6C2E
		#tag Getter
			Get
			  return AppleObject.MakeFromPtr(FoundationFramework.GetDelegate(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFramework.setDelegate(mid, if (value = nil, nil, value.id))
			End Set
		#tag EndSetter
		DelegateObject As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206F626A656374647261777320697473206261636B67726F756E642E
		#tag Getter
			Get
			  return AppKitFramework.getdrawsBackground(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setdrawsBackground id, value
			End Set
		#tag EndSetter
		DrawsBackground As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206F626A656374206973206564697461626C652E
		#tag Getter
			Get
			  return AppKitFramework.geteditable (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.seteditable mid, value
			End Set
		#tag EndSetter
		Editable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206F626A65637420696E7465727072657473205461622C2053686966742D5461622C20616E642052657475726E2028456E74657229206173206375657320746F20656E642065646974696E6720616E6420706F737369626C7920746F206368616E67652074686520666972737420726573706F6E6465722E
		#tag Getter
			Get
			  return getfieldEditor (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setfieldEditor mid, value
			End Set
		#tag EndSetter
		FieldEditor As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F6E74207573656420746F2064726177207465787420696E20746865207265636569766572E28099732063656C6C2E
		#tag Getter
			Get
			  return AppleFont.MakeFromPtr(AppKitFramework.getfont (mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setfont mid, nilptr(value)
			End Set
		#tag EndSetter
		Font As AppleFont
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E74726F6C206368616E6765732069747320776964746820746F2066697420746865207769647468206F662069747320746578742E
		#tag Getter
			Get
			  return getHorizontallyResizable (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setHorizontallyResizable mid, value
			End Set
		#tag EndSetter
		HorizontallyResizable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206F626A65637420616C6C6F777320746865207573657220746F20696D706F72742066696C6573206279206472616767696E672E
		#tag Getter
			Get
			  return getimportsGraphics (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setimportsGraphics mid, value
			End Set
		#tag EndSetter
		ImportsGraphics As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E74726F6CE2809973206D6178696D756D2073697A652E
		#tag Getter
			Get
			  return getmaxSize (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmaxsize (mid, value)
			End Set
		#tag EndSetter
		MaxSize As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E74726F6CE2809973206D696E696D756D2073697A65
		#tag Getter
			Get
			  return getminSize (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setminsize (mid, value)
			End Set
		#tag EndSetter
		MinSize As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206F626A65637420616C6C6F777320746865207573657220746F206170706C79206174747269627574657320746F2073706563696669632072616E676573206F662074686520746578742E
		#tag Getter
			Get
			  return getRichText (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setRichText mid, value
			End Set
		#tag EndSetter
		RichText As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874E280997320656E636C6F73696E67207363726F6C6C20766965772073686F7773206974732072756C65722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getRulerVisible (mid)
			End Get
		#tag EndGetter
		RulerVisible As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206F626A656374E280997320746578742063616E2062652073656C65637465642E
		#tag Getter
			Get
			  return AppKitFramework.getSelectable (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setSelectable mid, value
			End Set
		#tag EndSetter
		Selectable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getselectedRange(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setselectedRange mid, value
			End Set
		#tag EndSetter
		SelectedRange As FoundationFrameWork.NSRAnge
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063686172616374657273206F66207468652074657874206F626A656374E280997320746578742E
		#tag Getter
			Get
			  return getString(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setString mid, value
			End Set
		#tag EndSetter
		StringRepresentation As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207465787420636F6C6F72206F6620616C6C206368617261637465727320696E207468652072656365697665722E
		#tag Getter
			Get
			  return  new applecolor( AppKitFramework.gettextColor(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setTextColor mid, nilptr(value)
			End Set
		#tag EndSetter
		TextColor As AppleColor
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652074657874206F626A65637420757365732074686520466F6E742070616E656C20616E6420466F6E74206D656E752E
		#tag Getter
			Get
			  return getusesFontPanel (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setusesFontPanel mid, value
			End Set
		#tag EndSetter
		UsesFontPanel As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E74726F6C206368616E676573206974732068656967687420746F206669742074686520686569676874206F662069747320746578742E
		#tag Getter
			Get
			  return getVerticallyResizable (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setVerticallyResizable mid, value
			End Set
		#tag EndSetter
		VerticallyResizable As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = kNSTextDidBeginEditingNotification, Type = Text, Dynamic = False, Default = \"NSTextDidBeginEditingNotification", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kNSTextDidChangeNotification, Type = Text, Dynamic = False, Default = \"NSTextDidChangeNotification", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kNSTextDidEndEditingNotification, Type = Text, Dynamic = False, Default = \"NSTextDidEndEditingNotification", Scope = Public
	#tag EndConstant


	#tag Enum, Name = NSLineBreakMode, Type = uinteger, Flags = &h0
		WordWrap = 0
		  CharacterWrap
		  Clip
		  TruncateHead
		  TruncateTail
		TruncateMiddle
	#tag EndEnum

	#tag Enum, Name = NSTextAlignment, Flags = &h0
		Left =0
		  Center = 2
		  Right = 1
		  Justified = 3
		Natural = 4
	#tag EndEnum

	#tag Enum, Name = NSWritingDirection, Type = Integer, Flags = &h0
		Natural = 1
		  LeftToRight = 0
		RightToLeft = 1
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
			Name="CanDrawinBackground"
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
			Name="Editable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FieldEditor"
			Group="Behavior"
			Type="Boolean"
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
			Name="HorizontallyResizable"
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
			Name="RichText"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RulerVisible"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selectable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StringRepresentation"
			Group="Behavior"
			Type="Text"
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
			Name="UsesFontPanel"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="VerticallyResizable"
			Group="Behavior"
			Type="Boolean"
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
