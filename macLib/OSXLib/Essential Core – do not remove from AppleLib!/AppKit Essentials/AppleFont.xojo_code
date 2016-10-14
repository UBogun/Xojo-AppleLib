#tag Class
Protected Class AppleFont
Inherits AppleObject
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function advancementForGlyph Lib AppkitLibname Selector "advancementForGlyph:" (id as ptr, glyph as uint32) As cgfloat
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206E6F6D696E616C2073706163696E6720666F722074686520676976656E20676C797068E280947468652064697374616E6365207468652063757272656E7420706F696E74206D6F7665732061667465722073686F77696E672074686520676C797068E280946163636F756E74696E6720666F7220746865207265636569766572E28099732073697A652E
		Function AdvancementForGlyph(Glyph as Uint32) As double
		  return advancementForGlyph (mid, Glyph)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E206172726179206F662074686520616476616E63656D656E747320666F72207468652073706563696669656420676C797068732072656E6465726564206279207468652072656365697665722E
		Function AdvancementsForGlyphs(Glyphs() as Uint32) As FoundationFrameWork.nssize()
		  dim count as uinteger = Glyphs.Ubound + 1
		  dim glyphmb as new xojo.Core.MutableMemoryBlock (count * 4)
		  dim subcount as UInteger = count -1
		  for q as uinteger = 0 to subcount
		    Glyphmb.UInt32Value(q + 4)= glyphs(q)
		  next
		  dim sizemb as new xojo.Core.MutableMemoryBlock(IntegerSize * count * 2)
		  dim p as ptr = sizemb.Data
		  getAdvancementsforglyphs(mid, p, Glyphmb.Data, count)
		  sizemb = new xojo.Core.MutableMemoryBlock(p, Integersize * count * 2)
		  dim result() as FoundationFrameWork.Nssize
		  for q as UInteger = 0 to subcount
		    result.Append FoundationFrameWork.NSMakeSize _
		    (sizemb.cgfloatvalue(q*Integersize*2), sizemb.cgfloatvalue(q*Integersize*2+ IntegerSize))
		  next
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520417175612073797374656D20666F6E74207573656420666F72207374616E6461726420696E74657266616365206974656D732074686174206172652072656E646572656420696E20626F6C6466616365207479706520696E20746865207370656369666965642073697A652E2055736520612073697A65206F6620E289A4203020746F206765742064656661756C742073697A652E
		Shared Function BoldSystemFont(Size As Double = -1) As AppleFont
		  return new AppleFont(boldSystemFontOfSize(classptr, size), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function boldSystemFontOfSize Lib AppkitLibname Selector "boldSystemFontOfSize:" (id as ptr, size as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520626F756E64696E672072656374616E676C6520666F72207468652073706563696669656420676C7970682C207363616C656420746F20746865207265636569766572E28099732073697A652E
		Function BoundingRectForGlyph(Glyph as Uint32) As FoundationFrameWork.NSRect
		  return getBoundingRectForGlyph (mid, Glyph)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120666F6E74206F626A65637420666F72207468652073706563696669656420666F6E74206E616D6520616E6420666F6E742073697A652E
		Sub Constructor(Fontname as CFStringRef, Size As Double)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(fontWithName(classptr, Fontname, size), true, true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520666F6E74207573656420666F722074686520636F6E74656E74206F6620636F6E74726F6C7320696E20746865207370656369666965642073697A652E2055736520612073697A65206F6620E289A4203020746F206765742064656661756C742073697A652E
		Shared Function ControlContentFont(Size As Double = -1) As AppleFont
		  return new AppleFont(controlContentFontOfSize(classptr, size), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function controlContentFontOfSize Lib AppkitLibname Selector "controlContentFontOfSize:" (id as ptr, size as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function fontWithName Lib AppkitLibname Selector "fontWithName:size:" (id as ptr, font as cfstringRef, size as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gerlabelFontSize Lib AppkitLibname Selector "labelFontSize" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub getAdvancementsforglyphs Lib AppkitLibname Selector "getAdvancements:forGlyphs:count:" (id as ptr, byref advancements as ptr, glyphs as ptr, count as uinteger)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getascender Lib AppkitLibname Selector "ascender" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getboundingRectForFont Lib AppkitLibname Selector "boundingRectForFont" (id as ptr) As FoundationFrameWork.NSrect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getboundingRectForGlyph Lib AppkitLibname Selector "boundingRectForGlyph:" (id as ptr, glyph as uint32) As FoundationFrameWork.NSrect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcapHeight Lib AppkitLibname Selector "capHeight" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdescender Lib AppkitLibname Selector "descender" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdisplayName Lib AppkitLibname Selector "displayName" (id as ptr) As cfstringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfamilyName Lib AppkitLibname Selector "familyName" (id as ptr) As cfstringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getFixedPitch Lib AppkitLibname Selector "isFixedPitch" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfontName Lib AppkitLibname Selector "fontName" (id as ptr) As cfstringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getitalicAngle Lib AppkitLibname Selector "italicAngle" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getLabelfontSize Lib AppkitLibname Selector "labelFontSize" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getleading Lib AppkitLibname Selector "leading" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmatrix Lib AppkitLibname Selector "matrix" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmaximumAdvancement Lib AppkitLibname Selector "maximumAdvancement" (id as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmonospacedDigitSystemFontOfSize Lib AppkitLibname Selector "monospacedDigitSystemFontOfSize:weight:" (id as ptr, size as cgfloat, weight as cgfloat) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmostCompatibleStringEncoding Lib AppkitLibname Selector "mostCompatibleStringEncoding" (id as ptr) As FoundationFrameWork.nsstringencoding
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnumberOfGlyphs Lib AppkitLibname Selector "numberOfGlyphs" (id as ptr) As uinteger
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpointSize Lib AppkitLibname Selector "pointSize" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getprinterFont Lib AppkitLibname Selector "printerFont" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrenderingMode Lib AppkitLibname Selector "renderingMode" (id as ptr) As NSFontRenderingMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getscreenFont Lib AppkitLibname Selector "screenFont" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsmallSystemFontSize Lib AppkitLibname Selector "smallSystemFontSize" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsystemFontSize Lib AppkitLibname Selector "systemFontSize" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsystemFontSizeForControlSize Lib AppkitLibname Selector "systemFontSizeForControlSize::" (id as ptr, size as AppleControl . NSControlSize) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getunderlinePosition Lib AppkitLibname Selector "underlinePosition" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getunderlineThickness Lib AppkitLibname Selector "underlineThickness" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getVertical Lib AppkitLibname Selector "isVertical" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getverticalFont Lib AppkitLibname Selector "verticalFont" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getxHeight Lib AppkitLibname Selector "xHeight" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206E616D656420656E636F64656420676C7970682C206F7220E28093312069662074686520726563656976657220636F6E7461696E73206E6F207375636820676C7970682E
		Function Glyph(Glyphname as cfstringref) As uint32
		  return glyphWithName (mid, Glyphname)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function glyphWithName Lib AppkitLibname Selector "glyphWithName:" (id as ptr, name as cfstringRef) As uint32
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520666F6E74207573656420666F72207374616E6461726420696E74657266616365206C6162656C7320696E20746865207370656369666965642073697A652E2055736520612073697A65206F6620E289A4203020746F206765742064656661756C742073697A652E
		Shared Function LabelFont(Size As Double = -1) As AppleFont
		  return new AppleFont(labelFontOfSize(classptr, size), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function labelFontOfSize Lib AppkitLibname Selector "labelFontOfSize:" (id as ptr, size as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleFont
		  return if (aptr = nil, nil, new AppleFont(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520506F7374536372697074207472616E73666F726D6174696F6E206D6174726978206173736F63696174656420776974682074686520666F6E742E
		Function Matrix() As Double()
		  dim mb as new xojo.Core.MemoryBlock(getmatrix(mid), 6 * IntegerSize)
		  dim result() as double
		  for q as integer = 0 to 5
		    result.Append mb.cgfloatvalue(q*IntegerSize)
		  next
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520666F6E74207573656420666F72206D656E75626172206974656D732C20696E20746865207370656369666965642073697A652E2055736520612073697A65206F6620E289A4203020746F206765742064656661756C742073697A652E
		Shared Function MenuBarFont(Size As Double = -1) As AppleFont
		  return new AppleFont(menuBarFontOfSize(classptr, size), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function menuBarFontOfSize Lib AppkitLibname Selector "menuBarFontOfSize:" (id as ptr, size as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520666F6E74207573656420666F72206D656E75206974656D732C20696E20746865207370656369666965642073697A652E2055736520612073697A65206F6620E289A4203020746F206765742064656661756C742073697A652E
		Shared Function MenuFont(Size As Double = -1) As AppleFont
		  return new AppleFont(menuFontOfSize(classptr, size), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function menuFontOfSize Lib AppkitLibname Selector "menuFontOfSize:" (id as ptr, size as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520666F6E74207573656420666F72207374616E6461726420696E74657266616365206974656D732C207375636820617320627574746F6E206C6162656C732C206D656E75206974656D732C20616E6420736F206F6E2C20696E20746865207370656369666965642073697A652E2055736520612073697A65206F6620E289A4203020746F206765742064656661756C742073697A652E
		Shared Function MessageFont(Size As Double = -1) As AppleFont
		  return new AppleFont(messageFontOfSize(classptr, size), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function messageFontOfSize Lib AppkitLibname Selector "messageFontOfSize:" (id as ptr, size as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206D6F6E6F7370616365642064696769742073797374656D20666F6E7420776974682061206365727461696E2073697A6520616E64206865696768742E20417661696C61626C652073696E6365206D61634F532031302E31312E205365652074686520466F6E7457656967687420656E756D65726174696F6E206F66204170706C65466F6E744D616E6167657220666F72207479706963616C207765696768742076616C7565732E
		Shared Function monospacedDigitSystemFontOfSize(Size As Double, weight as double) As AppleFont
		  return new AppleFont(getmonospacedDigitSystemFontOfSize (classptr, size, weight), true, true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520666F6E74207573656420666F722070616C657474652077696E646F77207469746C6520626172732C20696E20746865207370656369666965642073697A652E2055736520612073697A65206F6620E289A4203020746F206765742064656661756C742073697A652E
		Shared Function PaletteFont(Size As Double = -1) As AppleFont
		  return new AppleFont(paletteFontOfSize(classptr, size), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function paletteFontOfSize Lib AppkitLibname Selector "paletteFontOfSize:" (id as ptr, size as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732061206269746D61707065642073637265656E20666F6E742C207768656E2073656E7420746F206120666F6E74206F626A65637420726570726573656E74696E672061207363616C61626C6520506F737453637269707420666F6E742C207769746820746865207370656369666965642072656E646572696E67206D6F64652C206D61746368696E672074686520726563656976657220696E20747970656661636520616E64206D617472697820286F722073697A65292C206F72206E696C2069662073756368206120666F6E742063616EE280997420626520666F756E642E
		Function ScreenFont(RenderingMode as NSFontRenderingMode) As AppleFont
		  return AppleFont.MakeFromPtr(screenFontWithRenderingMode(mid, RenderingMode))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function screenFontWithRenderingMode Lib AppkitLibname Selector "screenFontWithRenderingMode:" (id as ptr, mode as NSFontRenderingMode) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53657473207468697320666F6E742061732074686520666F6E7420666F72207468652063757272656E7420677261706869637320636F6E746578742E
		Sub Set()
		  AppKitFramework.set(mid)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468697320666F6E742061732074686520666F6E7420666F72207468652073706563696669656420677261706869637320636F6E746578742E
		Sub SetInContext(Context as AppleGraphicsContext)
		  AppKitFramework.setInContext(mid, context.id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setUserFixedPitchFont Lib AppkitLibname Selector "setUserFixedPitchFont:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setUserFont Lib AppkitLibname Selector "setUserFont:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520417175612073797374656D20666F6E74207573656420666F72207374616E6461726420696E74657266616365206974656D732C207375636820617320627574746F6E206C6162656C732C206D656E75206974656D732C20616E6420736F206F6E2C20696E20746865207370656369666965642073697A652E2055736520612073697A65206F6620E289A4203020746F206765742064656661756C742073697A652E
		Shared Function SystemFont(Size As Double = -1) As AppleFont
		  return new AppleFont(systemFontOfSize(classptr, size), true, true)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520417175612073797374656D20666F6E74207573656420666F72207374616E6461726420696E74657266616365206974656D732C207375636820617320627574746F6E206C6162656C732C206D656E75206974656D732C20616E6420736F206F6E2C20696E20746865207370656369666965642073697A652E2055736520612073697A65206F6620E289A4203020746F206765742064656661756C742073697A652E20417661696C61626C652073696E6365204F53582031302E31312E
		Shared Function SystemFont(Size As Double, Weight As Double) As AppleFont
		  return new AppleFont(systemFontOfSizeWeight(classptr, size, weight), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function systemFontOfSize Lib AppkitLibname Selector "systemFontOfSize:" (id as ptr, size as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function systemFontOfSizeWeight Lib AppkitLibname Selector "systemFontOfSize:weight:" (id as ptr, size as CGFloat, weightz as cgfloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520666F6E742073697A65207573656420666F72207468652073706563696669656420636F6E74726F6C2073697A652E
		Shared Function SystemFontSize(size as AppleControl.NSControlSize) As CGFloat
		  return getsystemFontSizeForControlSize (classptr, size)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520666F6E74207573656420666F722077696E646F77207469746C6520626172732C20696E20746865207370656369666965642073697A652E2055736520612073697A65206F6620E289A4203020746F206765742064656661756C742073697A652E
		Shared Function TitleBarFont(Size As Double = -1) As AppleFont
		  return new AppleFont(titleBarFontOfSize(classptr, size), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function titleBarFontOfSize Lib AppkitLibname Selector "titleBarFontOfSize:" (id as ptr, size as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520666F6E74207573656420666F7220746F6F6C2074697073206C6162656C732C20696E20746865207370656369666965642073697A652E2055736520612073697A65206F6620E289A4203020746F206765742064656661756C742073697A652E
		Shared Function ToolTipsFont(Size As Double = -1) As AppleFont
		  return new AppleFont(toolTipsFontOfSize(classptr, size), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function toolTipsFontOfSize Lib AppkitLibname Selector "toolTipsFontOfSize:" (id as ptr, size as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520666F6E7420757365642062792064656661756C7420666F7220646F63756D656E747320616E64206F74686572207465787420756E646572207468652075736572E280997320636F6E74726F6C2028746861742069732C20746578742077686F736520666F6E742074686520757365722063616E206E6F726D616C6C79206368616E6765292C207768656E207468617420666F6E742073686F756C642062652066697865642D70697463682C20696E20746865207370656369666965642073697A652E2055736520612073697A65206F6620E289A4203020746F206765742064656661756C742073697A652E
		Shared Function UserFixedPitchFont(Size As Double) As AppleFont
		  return new AppleFont(userFixedPitchFontOfSize(classptr, size), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function userFixedPitchFontOfSize Lib AppkitLibname Selector "userFixedPitchFontOfSize:" (id as ptr, size as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520666F6E7420757365642062792064656661756C7420666F7220646F63756D656E747320616E64206F74686572207465787420756E646572207468652075736572E280997320636F6E74726F6C2028746861742069732C20746578742077686F736520666F6E742074686520757365722063616E206E6F726D616C6C79206368616E6765292C20696E20746865207370656369666965642073697A652E2055736520612073697A65206F6620E289A4203020746F206765742064656661756C742073697A652E
		Shared Function UserFont(Size As Double) As AppleFont
		  return new AppleFont(userFontOfSize(classptr, size), true, true)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function userFontOfSize Lib AppkitLibname Selector "userFontOfSize:" (id as ptr, size as CGFloat) As Ptr
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		macOS 10.12:
		additional constructors missing
		coveredCharacterset missing - no NSCharacterSet
		fontdescritor " - NSFontDescriptor
		getadvancementsforpackedglyphs and getboundingrects
		texttransform - NSAffineTransform
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520746F7020792D636F6F7264696E6174652C206F66667365742066726F6D2074686520626173656C696E652C206F662074686520666F6E74E2809973206C6F6E6765737420617363656E6465722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getascender (mid)
			End Get
		#tag EndGetter
		Ascender As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 2054686520666F6E74E280997320626F756E64696E672072656374616E676C652C207363616C656420746F2074686520666F6E74E28099732073697A652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getboundingRectForFont (mid)
			End Get
		#tag EndGetter
		BoundingRect As FoundationFrameWork.Nsrect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063617020686569676874206F662074686520666F6E742E2028726561642D6F6E6C792920
		#tag Getter
			Get
			  return getcapHeight (mid)
			End Get
		#tag EndGetter
		CapHeight As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFrameWork.NSClassFromString("NSFont")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared Classptr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626F74746F6D20792D636F6F7264696E6174652C206F66667365742066726F6D2074686520626173656C696E652C206F662074686520666F6E74E2809973206C6F6E676573742064657363656E6465722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getdescender (mid)
			End Get
		#tag EndGetter
		Descender As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F662074686520666F6E742C20696E636C7564696E672066616D696C7920616E642066616365206E616D65732C20746F20757365207768656E20646973706C6179696E672074686520666F6E7420696E666F726D6174696F6E20746F2074686520757365722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getdisplayName (mid)
			End Get
		#tag EndGetter
		DisplayName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066616D696C79206E616D65206F662074686520666F6E74E28094666F72206578616D706C652C20E2809C54696D6573E2809D206F7220E2809C48656C7665746963612EE2809D2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getfamilyName (mid)
			End Get
		#tag EndGetter
		FamilyName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220616C6C20676C7970687320696E2074686520666F6E742068617665207468652073616D6520616476616E63656D656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getFixedPitch (mid)
			End Get
		#tag EndGetter
		FixedPitch As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066756C6C206E616D65206F662074686520666F6E742C206173207573656420696E20506F7374536372697074206C616E677561676520636F6465E28094666F72206578616D706C652C20E2809C54696D65732D526F6D616EE2809D206F7220E2809C48656C7665746963612D4F626C697175652EE2809D2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getfontName (mid)
			End Get
		#tag EndGetter
		FontName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F66206465677265657320746861742074686520666F6E7420697320736C616E74656420636F756E746572636C6F636B776973652066726F6D2074686520766572746963616C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getitalicAngle (mid)
			End Get
		#tag EndGetter
		ItalicAngle As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F6620746865207374616E64617264206C6162656C20666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getlabelFontSize (Classptr)
			End Get
		#tag EndGetter
		Shared LabelFontSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C656164696E672076616C7565206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getleading (mid)
			End Get
		#tag EndGetter
		Leading As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C656164696E672076616C7565206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getmaximumAdvancement (mid)
			End Get
		#tag EndGetter
		MaximumAdvancement As FoundationFrameWork.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520737472696E6720656E636F64696E67207468617420776F726B73206265737420776974682074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getmostCompatibleStringEncoding (mid)
			End Get
		#tag EndGetter
		MostCompatibleStringEncoding As FoundationFrameWork.nsstringencoding
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E756D626572206F6620676C7970687320696E2074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getnumberOfGlyphs (mid)
			End Get
		#tag EndGetter
		NumberOfGlyphs As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F696E742073697A65206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getpointSize (mid)
			End Get
		#tag EndGetter
		PointSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363616C61626C6520506F737453637269707420666F6E7420636F72726573706F6E64696E6720746F2063757272656E7420666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleFont.MakeFromPtr(getprinterFont(mid))
			End Get
		#tag EndGetter
		PrinterFont As AppleFont
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072656E646572696E67206D6F6465206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getrenderingMode (mid)
			End Get
		#tag EndGetter
		RenderingMode As NSFontRenderingMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206269746D61707065642073637265656E20666F6E7420666F72207468652063757272656E7420666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleFont.MakeFromPtr(getscreenFont(mid))
			End Get
		#tag EndGetter
		ScreenFont As AppleFont
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F6620746865207374616E6461726420736D616C6C20737974656D20666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getsmallSystemFontSize (Classptr)
			End Get
		#tag EndGetter
		Shared SmallSystemFontSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652073697A65206F6620746865207374616E6461726420737974656D20666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getSystemFontSize (Classptr)
			End Get
		#tag EndGetter
		Shared SystemFontSize As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626173656C696E65206F666673657420746F20757365207768656E2064726177696E6720756E6465726C696E657320776974682074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getunderlinePosition (mid)
			End Get
		#tag EndGetter
		UnderlinePosition As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520746869636B6E65737320746F20757365207768656E2064726177696E6720756E6465726C696E657320776974682074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getunderlineThickness (mid)
			End Get
		#tag EndGetter
		UnderlineThickness As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F6E7420757365642062792064656661756C7420666F7220646F63756D656E747320616E64206F74686572207465787420756E646572207468652075736572E280997320636F6E74726F6C20746F207468652073706563696669656420666F6E742C202C207768656E207468617420666F6E742073686F756C642062652066697865642D70697463682E
		#tag Getter
			Get
			  return UserFixedPitchFont (-1)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setUserFixedPitchFont classptr, nilptr(value)
			End Set
		#tag EndSetter
		Shared UserFixedPitchFont As AppleFont
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F6E7420757365642062792064656661756C7420666F7220646F63756D656E747320616E64206F74686572207465787420756E646572207468652075736572E280997320636F6E74726F6C20746F207468652073706563696669656420666F6E742E
		#tag Getter
			Get
			  return UserFont (-1)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setUserFont classptr, nilptr(value)
			End Set
		#tag EndSetter
		Shared UserFont As AppleFont
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520666F6E74206973206120766572746963616C20666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getVertical (mid)
			End Get
		#tag EndGetter
		Vertical As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120766572746963616C2076657273696F6E206F662074686520666F6E742C2069662073756368206578697374732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleFont.MakeFromPtr(getverticalFont(mid))
			End Get
		#tag EndGetter
		VerticalFont As AppleFont
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520782D686569676874206F662074686520666F6E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getxHeight (mid)
			End Get
		#tag EndGetter
		XHeight As Double
	#tag EndComputedProperty


	#tag Constant, Name = kNSAntialiasThresholdChangedNotification, Type = Text, Dynamic = False, Default = \"NSAntialiasThresholdChangedNotification", Scope = Public, Description = 546865206E6F74696669636174696F6E206E616D6520706F7374656420616674657220746865207468726573686F6C6420666F7220616E74692D616C696173696E67206368616E6765732E
	#tag EndConstant

	#tag Constant, Name = kNSFontSetChangedNotification, Type = Text, Dynamic = False, Default = \"NSFontSetChangedNotification", Scope = Public, Description = 546865206E6F74696669636174696F6E206E616D6520706F7374656420616674657220746865207468652063757272656E746C792D73657420666F6E74206368616E6765732E
	#tag EndConstant


	#tag Enum, Name = NSFontRenderingMode, Type = Integer, Flags = &h0
		Default = 0
		  Antialiased
		  IntegerAdvancements
		AntialiasedIntegerAdvancements
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Ascender"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CapHeight"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Descender"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FamilyName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FixedPitch"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontName"
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
			Name="ItalicAngle"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Leading"
			Group="Behavior"
			Type="Double"
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
			Name="MostCompatibleStringEncoding"
			Group="Behavior"
			Type="FoundationFrameWork.nsstringencoding"
			EditorType="Enum"
			#tag EnumValues
				"1 - ASCII"
				"2 - NEXTSTEP"
				"3 - JapaneseEUC"
				"4 - UTF8"
				"5 - ISOLatin1"
				"6 - Symbol"
				"7 - NonLossyASCII"
				"8 - ShiftJIS"
				"9 - ISOLatin2"
				"10 - Unicode"
				"11 - WindowsCyrillic"
				"12 - WindowsLatin1"
				"13 - WindowsGreek"
				"14 - WindowsTurkish"
				"15 - WindowsLatin2"
				"21 - ISO2022JP"
				"30 - MacOSRoman"
				"0 - UTF16"
				"-1879047936 - UTF16BigEndian"
				"-1811939072 - UTF16LittleEndian"
				"-1946156800 - UTF32"
				"-1744830208 - UTF32BigEndian"
				"-1677721344 - UTF32LittleEndian"
				"65536 - Proprietary"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumberOfGlyphs"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PointSize"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RenderingMode"
			Group="Behavior"
			Type="NSFontRenderingMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Antialiased"
				"2 - IntegerAdvancements"
				"3 - AntialiasedIntegerAdvancements"
			#tag EndEnumValues
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
		#tag ViewProperty
			Name="UnderlinePosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UnderlineThickness"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XHeight"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
