#tag Module
Protected Module AppKitFramework
	#tag ExternalMethod, Flags = &h1
		Protected Declare Function drawingRectForBounds Lib appkitlibname Selector "drawingRectForBounds:" (id as ptr, bounds as FoundationFrameWork . NSRect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub drawInRect Lib appkitlibname Selector "drawInRect:" (id as ptr, Rect as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub drawInteriorWithFrameInView Lib appkitlibname Selector "drawInteriorWithFrame:inView:" (id as ptr, frame as FoundationFrameWork . NSRect, view as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub drawWithExpansionFrame Lib appkitlibname Selector "drawWithExpansionFrame:inView:" (id as ptr, frame as FoundationFrameWork . NSRect, view as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub drawWithFrameinView Lib appkitlibname Selector "drawWithFrame:inView:" (id as ptr, frame as FoundationFrameWork . NSRect, view as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getaccessoryView Lib appkitlibname Selector "accessoryView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getAction Lib appkitlibname Selector "action" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getalignment Lib appkitlibname Selector "alignment" (id as ptr) As AppleText.NSTextAlignment
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsCutCopyPaste Lib appkitlibname Selector "allowsCutCopyPaste" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsEditingTextAttributes Lib appkitlibname Selector "allowsEditingTextAttributes" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsMixedState Lib appkitlibname Selector "allowsMixedState" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsUndo Lib appkitlibname Selector "allowsUndo" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getanimates Lib appkitlibname Selector "animates" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getappearance Lib appkitlibname Selector "appearance" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getattributedStringValue Lib foundationlibname Selector "attributedStringValue" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getattributedTitle Lib appkitlibname Selector "attributedTitle" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getattributes Lib appkitlibname Selector "attributes" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getautomaticallyAdjustsContentInsets Lib appkitlibname Selector "automaticallyAdjustsContentInsets" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbackgroundColor Lib appkitlibname Selector "backgroundColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getBackgroundStyle Lib appkitlibname Selector "backgroundStyle" (id as Ptr) As AppleCell.NSBackgroundStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbaseWritingDirection Lib appkitlibname Selector "baseWritingDirection" (id as ptr) As AppleText.NSWritingDirection
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getBezeled Lib appkitlibname Selector "isBezeled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getBordered Lib appkitlibname Selector "isBordered" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbottomAnchor Lib appkitlibname Selector "bottomAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getbounds Lib appkitlibname Selector "bounds" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcenterXAnchor Lib appkitlibname Selector "centerXAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcenterYAnchor Lib appkitlibname Selector "centerYAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcolorRenderingIntent Lib appkitlibname Selector "colorRenderingIntent" (id as ptr) As NSColorRenderingIntent
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcompositingOperation Lib appkitlibname Selector "compositingOperation" (id as ptr) As NSCompositingOperation
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontentInsets Lib appkitlibname Selector "contentInsets" (id as ptr) As Appkitframework.NSEdgeInsets
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getContinuous Lib appkitlibname Selector "isContinuous" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontrolSize Lib foundationlibname Selector "controlSize" (id as ptr) As applecontrol.NSControlSize
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontrolTint Lib appkitlibname Selector "controlTint" (id as ptr) As AppleCell.NSControlTint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontrolView Lib appkitlibname Selector "controlView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdefaultFocusRingType Lib appkitlibname Selector "defaultFocusRingType" (id as ptr) As AppKitframework.NSFocusRingType
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdefaultMenu Lib appkitlibname Selector "defaultMenu" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdrawsBackground Lib appkitlibname Selector "drawsBackground" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getEditable Lib appkitlibname Selector "isEditable" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function geteffectiveAppearance Lib appkitlibname Selector "effectiveAppearance" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getenabled Lib appkitlibname Selector "isEnabled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getexpansionFrameWithFrame Lib appkitlibname Selector "expansionFrameWithFrame:inView:" (id as ptr, frame as FoundationFrameWork . NSRect, view as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getFlipped Lib appkitlibname Selector "isFlipped" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfocusRingType Lib appkitlibname Selector "focusRingType" (id as ptr) As AppKitframework.NSFocusRingType
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getframe Lib appkitlibname Selector "frame" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getheightAnchor Lib appkitlibname Selector "heightAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getHidden Lib appkitlibname Selector "isHidden" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethighlightColorWithFrame Lib appkitlibname Selector "highlightColorWithFrame:inView:" (id as ptr, frame as FoundationFrameWork . NSRect, view as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getHighlighted Lib appkitlibname Selector "isHighlighted" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getidentifier Lib appkitlibname Selector "identifier" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getImage Lib appkitlibname Selector "image" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getimageAlignment Lib appkitlibname Selector "imageAlignment" (id as ptr) As NSImageAlignment
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getimageFrameStyle Lib appkitlibname Selector "imageFrameStyle" (id as ptr) As NSImageFrameStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getimageInterpolation Lib appkitlibname Selector "imageInterpolation" (id as ptr) As NSImageInterpolation
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getimageScaling Lib appkitlibname Selector "imageScaling" (id as ptr) As NSImageScaling
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getimageView Lib appkitlibname Selector "imageView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getimportsGraphics Lib appkitlibname Selector "importsGraphics" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getinteriorBackgroundStyle Lib appkitlibname Selector "interiorBackgroundStyle" (id as Ptr) As AppleCell.NSBackgroundStyle
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getisHiddenOrHasHiddenAncestor Lib appkitlibname Selector "isHiddenOrHasHiddenAncestor" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getkeyEquivalent Lib appkitlibname Selector "keyEquivalent" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getleadingAnchor Lib appkitlibname Selector "leadingAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getleftAnchor Lib appkitlibname Selector "leftAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlineBreakMode Lib appkitlibname Selector "lineBreakMode" (id as ptr) As AppleText.NSLineBreakMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getLineCap Lib appkitlibname Selector "lineCap" (id as ptr) As coregraphicsframework.CGLineCap
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlineJoin Lib appkitlibname Selector "lineJoin" (id as ptr) As coregraphicsframework.CGLineJoin
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlineLength Lib appkitlibname Selector "lineLength" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlocalizedName Lib appkitlibname Selector "localizedName" (id as ptr) As cfstringref
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getmagnification Lib foundationlibname Selector "magnification" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getmaxWidth Lib appkitlibname Selector "maxWidth" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmenu Lib appkitlibname Selector "menu" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getminWidth Lib appkitlibname Selector "minWidth" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmiterLimit Lib appkitlibname Selector "miterLimit" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getobjectValue Lib foundationlibname Selector "objectValue" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getopaque Lib appkitlibname Selector "isOpaque" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getowningView Lib appkitlibname Selector "owningView" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpatternPhase Lib appkitlibname Selector "patternPhase" (id as ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrefusesFirstResponder Lib foundationlibname Selector "refusesFirstResponder" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrepresentedObject Lib appkitlibname Selector "representedObject" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrightAnchor Lib appkitlibname Selector "rightAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getScrollable Lib appkitlibname Selector "isScrollable" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getSelectable Lib appkitlibname Selector "isSelectable" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshouldAntialias Lib appkitlibname Selector "shouldAntialias" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshowsFirstResponder Lib appkitlibname Selector "showsFirstResponder" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getState Lib appkitlibname Selector "state" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getTag Lib appkitlibname Selector "tag" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getTarget Lib appkitlibname Selector "target" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettextColor Lib appkitlibname Selector "textColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettextField Lib appkitlibname Selector "textField" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getTitle Lib appkitlibname Selector "title" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettoolTip Lib appkitlibname Selector "toolTip" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettopAnchor Lib appkitlibname Selector "topAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettrailingAnchor Lib appkitlibname Selector "trailingAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettruncatesLastVisibleLine Lib appkitlibname Selector "truncatesLastVisibleLine" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getuserInterfaceLayoutDirection Lib appkitlibname Selector "userInterfaceLayoutDirection" (id as ptr) As Appkitframework.NSUserInterfaceLayoutdirection
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getView Lib appkitlibname Selector "view" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Function getWidth Lib foundationlibname Selector "width" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getwidthAnchor Lib appkitlibname Selector "widthAnchor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getwindow Lib appkitlibname Selector "window" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getwindowNumber Lib appkitlibname Selector "windowNumber" (id as ptr) As Integer
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getwraps Lib appkitlibname Selector "wraps" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub highlightWithFrameinView Lib appkitlibname Selector "highlight:withFrame:inView:" (id as ptr, highlight as boolean, frame as FoundationFrameWork . NSRect, view as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function imageRectForBounds Lib appkitlibname Selector "imageRectForBounds:" (id as ptr, bounds as FoundationFrameWork . NSRect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function initWithFrame Lib appkitlibname Selector "initWithFrame:" (id as ptr, frame as foundationframework . nsrect) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithSize Lib appkitlibname Selector "initWithSize:" (id as ptr, size as FoundationFrameWork . NSSize) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub lockFocus Lib appkitlibname Selector "lockFocus" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub lockFocusFlipped Lib appkitlibname Selector "lockFocusFlipped:" (id as ptr, flipped as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub performClick Lib appkitlibname Selector "performClick:" (id as ptr, sender as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sendActionOn Lib foundationlibname Selector "sendActionOn:" (id as ptr, mask as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sendActionTo Lib appkitlibname Selector "sendAction:to:" (id as ptr, action as ptr, target as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub set Lib appkitlibname Selector "set" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setaccessoryView Lib appkitlibname Selector "setAccessoryView:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setAction Lib appkitlibname Selector "setAction:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setalignment Lib appkitlibname Selector "setAlignment:" (id as ptr, value as AppleText . NSTextAlignment)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsCutCopyPaste Lib appkitlibname Selector "setAllowsCutCopyPaste:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsEditingTextAttributes Lib appkitlibname Selector "setAllowsEditingTextAttributes:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsMixedState Lib appkitlibname Selector "setAllowsMixedState:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsUndo Lib appkitlibname Selector "setAllowsUndo:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setanimates Lib appkitlibname Selector "setAnimates:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setappearance Lib appkitlibname Selector "setAppearance:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setattributedStringValue Lib foundationlibname Selector "setAttributedStringValue:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setattributedTitle Lib appkitlibname Selector "setAttributedTitle:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setautomaticallyAdjustsContentInsets Lib appkitlibname Selector "setAutomaticallyAdjustsContentInsets:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbackgroundColor Lib appkitlibname Selector "setBackgroundColor:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setBackgroundStyle Lib appkitlibname Selector "setBackgroundStyle:" (id as Ptr, value as applecell . NSBackgroundStyle)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbaseWritingDirection Lib appkitlibname Selector "setBaseWritingDirection:" (id as ptr, value as AppleText . NSWritingDirection)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setBezeled Lib appkitlibname Selector "setBezeled:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setBordered Lib appkitlibname Selector "setBordered:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setbounds Lib appkitlibname Selector "setBounds:" (id as ptr, value as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcolorRenderingIntent Lib appkitlibname Selector "setColorRenderingIntent:" (id as ptr, value as NSColorRenderingIntent)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcompositingOperation Lib appkitlibname Selector "setCompositingOperation:" (id as ptr, value as NSCompositingOperation)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontentInsets Lib appkitlibname Selector "setContentInsets:" (id as ptr, value as AppkitFramework . NSEdgeInsets)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setContinuous Lib appkitlibname Selector "setContinuous:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontrolSize Lib foundationlibname Selector "setControlSize:" (id as ptr, value as applecontrol . NSControlSize)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontrolTint Lib appkitlibname Selector "setControlTint:" (id as ptr, value as AppleCell . NSControlTint)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setControlView Lib appkitlibname Selector "setControlView:" (id as ptr, view as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdrawsBackground Lib appkitlibname Selector "setDrawsBackground:" (id as ptr, value as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setEditable Lib appkitlibname Selector "setEditable:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setenabled Lib appkitlibname Selector "setEnabled:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setFill Lib appkitlibname Selector "setFill" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setfloatvalue Lib foundationlibname Selector "setFloatValue:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfocusRingType Lib appkitlibname Selector "setFocusRingType:" (id as ptr, value as AppKitframework . NSFocusRingType)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setframe Lib appkitlibname Selector "setFrame:" (id as ptr, value as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setHidden Lib appkitlibname Selector "setHidden:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setHighlighted Lib appkitlibname Selector "setHighlighted:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setidentifier Lib appkitlibname Selector "setIdentifier:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setImage Lib appkitlibname Selector "setImage:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setimageAlignment Lib appkitlibname Selector "setImageAlignment:" (id as ptr, value as NSImageAlignment)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setimageFrameStyle Lib appkitlibname Selector "setImageFrameStyle:" (id as ptr, value as NSImageFrameStyle)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setimageInterpolation Lib appkitlibname Selector "setImageInterpolation:" (id as ptr, value as NSImageInterpolation)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setimageScaling Lib appkitlibname Selector "setImageScaling:" (id as ptr, value as NSImageScaling)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setImageView Lib appkitlibname Selector "setImageView:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setimportsGraphics Lib appkitlibname Selector "setImportsGraphics:" (id as ptr, value as boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setInContext Lib appkitlibname Selector "setInContext:" (id as ptr, context as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setIntegerValue Lib foundationlibname Selector "setIntegerValue:" (id as ptr, value as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setIntValue Lib foundationlibname Selector "setIntValue:" (id as ptr, value as int32)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setkeyEquivalent Lib appkitlibname Selector "setKeyEquivalent:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlineBreakMode Lib appkitlibname Selector "setLineBreakMode:" (id as ptr, value as AppleText . NSLineBreakMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setLineCap Lib appkitlibname Selector "setLineCap:" (id as ptr, value as coregraphicsframework . CGLineCap)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlineJoin Lib appkitlibname Selector "setLineJoin:" (id as ptr, value as coregraphicsframework . CGLineJoin)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlineLength Lib appkitlibname Selector "setLineLength:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setmagnification Lib foundationlibname Selector "setMagnification:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setMaxWidth Lib appkitlibname Selector "setMaxWidth:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setMenu Lib appkitlibname Selector "setMenu:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setMinWidth Lib appkitlibname Selector "setMinWidth:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setmiterLimit Lib foundationlibname Selector "setMiterLimit:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setobjectValue Lib foundationlibname Selector "setObjectValue:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setopaque Lib appkitlibname Selector "setOpaque:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setowningView Lib appkitlibname Selector "setOwningView:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setpatternPhase Lib appkitlibname Selector "setPatternPhase:" (id as ptr, value as FoundationFrameWork . NSPoint)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrefusesFirstResponder Lib foundationlibname Selector "setRefusesFirstResponder:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrepresentedObject Lib appkitlibname Selector "setRepresentedObject:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setScrollable Lib appkitlibname Selector "setScrollable:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setSelectable Lib appkitlibname Selector "setSelectable:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshouldAntialias Lib appkitlibname Selector "setShouldAntialias:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshowsFirstResponder Lib appkitlibname Selector "setShowsFirstResponder:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setState Lib appkitlibname Selector "setState:" (id as ptr, value as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setstringValue Lib foundationlibname Selector "setStringValue:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setStroke Lib appkitlibname Selector "setStroke" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setTag Lib appkitlibname Selector "setTag:" (id as ptr, value as Integer)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setTarget Lib appkitlibname Selector "setTarget:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setTextColor Lib appkitlibname Selector "setTextColor:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settextField Lib appkitlibname Selector "setTextField:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setTitle Lib appkitlibname Selector "setTitle:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setToolTip Lib appkitlibname Selector "setToolTip:" (id as ptr, value as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settruncatesLastVisibleLine Lib appkitlibname Selector "setTruncatesLastVisibleLine:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function setUpFieldEditorAttributes Lib appkitlibname Selector "setUpFieldEditorAttributes:" (id as ptr, edtitor as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setuserInterfaceLayoutDirection Lib appkitlibname Selector "setUserInterfaceLayoutDirection:" (id as ptr, value as Appkitframework . NSUserInterfaceLayoutdirection)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setView Lib appkitlibname Selector "setView:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, Description = 416C6C6F6361746573206D656D6F727920666F7220616E206F626A6563742E2043617374206F6E206120436C6173735074722E
		Protected Declare Sub setWidth Lib foundationlibname Selector "setWidth:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setWraps Lib appkitlibname Selector "setWraps:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub sizeToFit Lib appkitlibname Selector "sizeToFit" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub takeDoubleValueFrom Lib appkitlibname Selector "takeDoubleValueFrom:" (id as ptr, obj as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub takeFloatValueFrom Lib appkitlibname Selector "takeFloatValueFrom:" (id as ptr, obj as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub takeIntegerValueFrom Lib appkitlibname Selector "takeIntegerValueFrom:" (id as ptr, obj as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub takeIntValueFrom Lib appkitlibname Selector "takeIntValueFrom:" (id as ptr, obj as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub takeObjectValueFrom Lib appkitlibname Selector "takeObjectValueFrom:" (id as ptr, obj as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub takeStringValueFrom Lib appkitlibname Selector "takeStringValueFrom:" (id as ptr, obj as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub tile Lib appkitlibname Selector "tile" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function titleRectForBounds Lib appkitlibname Selector "titleRectForBounds:" (id as ptr, bounds as FoundationFrameWork . NSRect) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub unlockFocus Lib appkitlibname Selector "unlockFocus" (id as ptr)
	#tag EndExternalMethod


	#tag Constant, Name = AppKitLibName, Type = Text, Dynamic = False, Default = \"Appkit.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = AppKitPath, Type = Text, Dynamic = False, Default = \"com.apple.AppKit", Scope = Public
	#tag EndConstant


	#tag Structure, Name = NSEdgeInsets, Flags = &h1
		top as CGFloat
		  left as CGFloat
		  bottom as CGFloat
		right As CGFloat
	#tag EndStructure


	#tag Enum, Name = NSColorRenderingIntent, Type = Integer, Flags = &h1
		Default
		  AbsoluteColorimetric
		  RelativeColorimetric
		  Perceptual
		Saturation
	#tag EndEnum

	#tag Enum, Name = NSCompositingOperation, Type = Integer, Flags = &h1
		Clear
		  Copy
		  SourceOver
		  SourceIn
		  SourceOut
		  SourceAtop
		  DesitinationOver
		  DesitinationIn
		  DestinationOut
		  DestinationAtop
		  ExclusiveOR
		  PlusDarker
		  Highlight
		  PlusLighter
		OperationHlliight
	#tag EndEnum

	#tag Enum, Name = NSFocusRingType, Type = UInteger, Flags = &h1
		Default = 0
		  None = 1
		Exterior = 2
	#tag EndEnum

	#tag Enum, Name = NSImageAlignment, Type = UInteger, Flags = &h1
		Center = 0
		  Top
		  TopLeft
		  TopRight
		  Left
		  Bottom
		  BottomLeft
		  BottomRight
		Right
	#tag EndEnum

	#tag Enum, Name = NSImageFrameStyle, Type = UInteger, Flags = &h1
		None = 0
		  Photo
		  GrayBezel
		  Groove
		Button
	#tag EndEnum

	#tag Enum, Name = NSImageInterpolation, Type = Integer, Flags = &h1
		Default = 0
		  None = 1
		  Low = 2
		  Medium = 4
		High = 3
	#tag EndEnum

	#tag Enum, Name = NSImageLayoutDirection, Type = Integer, Flags = &h1
		LeftToRight = 2
		  RightToLeft = 3
		Undefined = -1
	#tag EndEnum

	#tag Enum, Name = NSImageScaling, Type = UInteger, Flags = &h1
		ProportionallyDown = 0
		  AxesIndependently
		  None
		ProportionallyUpOrDown
	#tag EndEnum

	#tag Enum, Name = NSUserInterfaceLayoutDirection, Type = Integer, Flags = &h1
		LeftToRight
		RightToLeft
	#tag EndEnum


	#tag ViewBehavior
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
End Module
#tag EndModule
