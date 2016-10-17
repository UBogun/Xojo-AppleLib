#tag Class
Protected Class AppleTextinputControl
Inherits AppleControl
	#tag Method, Flags = &h0, Description = 52657475726E732074686520626173652077726974696E6720646972656374696F6E20666F72206120706F736974696F6E20696E20746865207465787420676F696E6720696E2061206365727461696E20646972656374696F6E2E
		Function BaseWritingDirection(Position As AppleTextPosition, direction as UITextLayoutDirection) As UITextWritingDirection
		  return baseWritingDirectionForPosition (mid, position.id, direction)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365742074686520626173652077726974696E6720646972656374696F6E20666F72206120676976656E2072616E6765206F66207465787420696E206120646F63756D656E742E
		Sub BaseWritingDirection(Range As AppleTextRange, assigns value as UITextWritingDirection)
		  setBaseWritingDirection (mid, value, range.id)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function baseWritingDirectionForPosition Lib uikitlibname Selector "baseWritingDirectionForPosition:inDirection:" (id as Ptr, pos as ptr, direction as UITextLayoutDirection) As UITextWritingDirection
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Sub beginFloatingCursorAtPoint Lib uikitlibname Selector "beginFloatingCursorAtPoint:" (id as Ptr, point as FoundationFrameWork . NSPoint)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320612072656374616E676C65207573656420746F206472617720746865206361726574206174206120676976656E20696E73657274696F6E20706F696E742E
		Function CaretRect(Position as AppleTextPosition) As FoundationFrameWork.NSRect
		  return caretRectForPosition (mid, position.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function caretRectForPosition Lib uikitlibname Selector "caretRectForPosition:" (id as Ptr, pos as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520636861726163746572206F6666736574206F66206120706F736974696F6E20696E206120646F63756D656E74E2809973207465787420746861742066616C6C732077697468696E206120676976656E2072616E67652E
		Function CharacterOffset(Position as AppleTextPosition, Range as AppleTextRange) As integer
		  return characterOffsetOfPosition (mid, Position.id, Range.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function characterOffsetOfPosition Lib uikitlibname Selector "characterOffsetOfPosition:withinRange:" (id as Ptr, pos as ptr, range as ptr) As Integer
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520636861726163746572206F722072616E6765206F6620636861726163746572732074686174206973206174206120676976656E20706F696E7420696E206120646F63756D656E742E
		Function CharacterRange(Point as FoundationFrameWork.NSPoint) As AppleTextPosition
		  return AppleTextPosition.MakefromPtr ( characterRangeAtPoint (mid, point))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function characterRangeAtPoint Lib uikitlibname Selector "characterRangeAtPoint:" (id as Ptr, point as FoundationFrameWork . NSPoint) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function characterRangeByExtendingPosition Lib uikitlibname Selector "characterRangeByExtendingPosition:inDirection:" (id as ptr, range as ptr, direction as UITextLayoutDirection) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520706F736974696F6E20696E206120646F63756D656E74207468617420697320636C6F7365737420746F20612073706563696669656420706F696E742E
		Function ClosestPosition(Point as FoundationFrameWork.NSPoint) As AppleTextPosition
		  return AppleTextPosition.MakefromPtr ( closestPositionToPoint (mid, point))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function closestPositionToPoint Lib uikitlibname Selector "closestPositionToPoint:" (id as Ptr, point as FoundationFrameWork . NSPoint) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function closestPositionToPointwithinRange Lib uikitlibname Selector "closestPositionToPoint:withinRange:" (id as Ptr, point as FoundationFrameWork . NSPoint, range as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520706F736974696F6E20696E206120646F63756D656E74207468617420697320636C6F7365737420746F20612073706563696669656420706F696E7420696E206120676976656E2072616E67652E
		Function ClosestPositionWithinRange(Point as FoundationFrameWork.NSPoint, Range as AppleTextRange) As AppleTextPosition
		  return AppleTextPosition.MakefromPtr ( ClosestPositiontoPointWithinRange (mid, point, range.Id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function comparePosition Lib uikitlibname Selector "comparePosition:toPosition:" (id as Ptr, pos as ptr, topos as ptr) As FoundationFrameWork.NSComparisonResult
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320686F77206F6E65207465787420706F736974696F6E20636F6D706172657320746F20616E6F74686572207465787420706F736974696F6E2E
		Function ComparePositions(Position as AppleTextPosition, OtherPosition as Appletextposition) As FoundationFrameWork.NSComparisonResult
		  return ComparePosition (mid, Position.id, OtherPosition.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Sub endFloatingCursor Lib uikitlibname Selector "endFloatingCursor" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120746578742072616E67652066726F6D206120676976656E207465787420706F736974696F6E20746F2069747320666172746865737420657874656E7420696E2061206365727461696E20646972656374696F6E206F66206C61796F75742E
		Function ExtendRange(Range As AppleTextRange, direction as UITextLayoutDirection) As AppleTextPosition
		  return AppleTextPosition.MakefromPtr(characterRangeByExtendingPosition(mid, range.id, direction))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652066697273742072656374616E676C65207468617420656E636C6F73657320612072616E6765206F66207465787420696E206120646F63756D656E742E
		Function FirstRect(Range As AppleTextRange) As FoundationFrameWork.NSRect
		  return firstRectForRange (mid, range.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function firstRectForRange Lib uikitlibname Selector "firstRectForRange:" (id as ptr, range as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function getbeginningOfDocument Lib uikitlibname Selector "beginningOfDocument" (id as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function getendOfDocument Lib uikitlibname Selector "endOfDocument" (id as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function getinputDelegate Lib uikitlibname Selector "inputDelegate" (id as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function getmarkedTextRange Lib uikitlibname Selector "markedTextRange" (id as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function getmarkedTextStyle Lib uikitlibname Selector "markedTextStyle" (id as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function getselectedTextRange Lib uikitlibname Selector "selectedTextRange" (id as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function getselectionAffinity Lib uikitlibname Selector "selectionAffinity" (id as Ptr) As UITextStorageDirection
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function gettextInputView Lib uikitlibname Selector "textInputView" (id as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function gettextInRange Lib uikitlibname Selector "textInRange:" (id as ptr, range as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function gettokenizer Lib uikitlibname Selector "tokenizer" (id as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 48696465732074686520637572736F722E20417661696C61626C652073696E636520694F5320392E302E
		Sub HideCursor()
		  if RespondsToSelector("endFloatingCursor", classptr) then endFloatingCursor mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E73657274207468652070726F7669646564207465787420616E64206D61726B7320697420746F20696E64696361746520746861742069742069732070617274206F6620616E2061637469766520696E7075742073657373696F6E2E
		Function MarkedText(Range As FoundationFrameWork.NSRange, assigns value as cfstringRef) As Text
		  setMarkedText mid, value, range
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D6F7665732074686520637572736F7220746F20612073706563696669656420706F696E742E20417661696C61626C652073696E636520694F5320392E302E
		Sub MoveCursor(Point as FoundationFrameWork.NSPoint)
		  if RespondsToSelector("updateFloatingCursorAtPoint:", classptr) then updateFloatingCursorAtPoint mid, point
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206E756D626572206F662076697369626C652063686172616374657273206265747765656E206F6E65207465787420706F736974696F6E20616E6420616E6F74686572207465787420706F736974696F6E2E
		Function OffsetBetweenPositions(Position as AppleTextPosition, OtherPosition as Appletextposition) As integer
		  return offsetFromPosition (mid, Position.id, OtherPosition.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function offsetFromPosition Lib uikitlibname Selector "offsetFromPosition:toPosition:" (id as Ptr, pos as ptr, topos as ptr) As integer
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207465787420706F736974696F6E206174206120676976656E206F66667365742066726F6D20616E6F74686572207465787420706F736974696F6E2E
		Function Position(FromPosition as AppleTextPosition, Offset as integer) As AppleTextRange
		  return AppleTextRange.MakefromPtr(positionFromPosition(mid, FromPosition.Id, offset))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function positionFromPosition Lib uikitlibname Selector "positionFromPosition:offset:" (id as Ptr, pos as ptr, offset as integer) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function positionFromPositioninDirection Lib uikitlibname Selector "positionFromPosition:inDirection:offset:" (id as Ptr, pos as ptr, direction as UITextLayoutDirection, offset as Integer) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207465787420706F736974696F6E206174206120676976656E206F666673657420696E20612073706563696669656420646972656374696F6E2066726F6D20616E6F74686572207465787420706F736974696F6E2E
		Function PositioninDirection(FromPosition as AppleTextPosition, direction as uitextLayoutDirection, Offset as integer) As AppleTextRange
		  return AppleTextRange.MakefromPtr(positionFromPositioninDirection (mid, FromPosition.Id, direction, offset))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E20746865207465787420706F736974696F6E20746861742069732061742074686520666172746865737420657874656E7420696E206120676976656E206C61796F757420646972656374696F6E2077697468696E20612072616E6765206F6620746578742E
		Function PositionWithinRange(Range As AppleTextRange, direction as UITextLayoutDirection) As AppleTextPosition
		  return AppleTextPosition.MakefromPtr(PositionWithinRange(mid, range.id, direction))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function positionWithinRange Lib uikitlibname Selector "positionWithinRange:farthestInDirection:" (id as ptr, range as ptr, direction as UITextLayoutDirection) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520706F736974696F6E2077697468696E20612072616E6765206F66206120646F63756D656E74E28099732074657874207468617420636F72726573706F6E647320746F2074686520636861726163746572206F66667365742066726F6D20746865207374617274206F6620746861742072616E67652E
		Function PositionWithinRangeAtOffset(Range As AppleTextRange, Offset as integer) As AppleTextPosition
		  return AppleTextPosition.MakefromPtr(PositionWithinRangeatOffset(mid, range.id, offset))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function positionWithinRangeatOffset Lib uikitlibname Selector "positionWithinRange:atCharacterOffset:" (id as ptr, range as ptr, offset as integer) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5265706C61636520746865207465787420696E206120646F63756D656E74207468617420697320696E20746865207370656369666965642072616E67652E
		Sub Replace(Range As AppleTextRange, assigns value as cfstringRef)
		  replaceRange mid, range.id, value
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Sub replaceRange Lib uikitlibname Selector "replaceRange:withText:" (id as ptr, range as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E206172726179206F662073656C656374696F6E20726563747320636F72726573706F6E64696E6720746F207468652072616E6765206F6620746578742E
		Function SelectionRects(Range As AppleTextRange) As AppleArray
		  return AppleArray.MakeFromPtr (selectionRectsForRange (mid, range.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function selectionRectsForRange Lib uikitlibname Selector "selectionRectsForRange:" (id as ptr, range as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Sub setBaseWritingDirection Lib uikitlibname Selector "setBaseWritingDirection:forRange:" (id as Ptr, direction as UITextWritingDirection, range as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Sub setinputDelegate Lib uikitlibname Selector "setInputDelegate:" (id as Ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Sub setMarkedText Lib uikitlibname Selector "setMarkedText:selectedRange:" (id as ptr, value as cfstringRef, Range as FoundationFrameWork . NSRange)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Sub setmarkedTextRange Lib uikitlibname Selector "setMarkedTextRange:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Sub setmarkedTextStyle Lib uikitlibname Selector "setMarkedTextStyle:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Sub setselectedTextRange Lib uikitlibname Selector "setSelectedTextRange:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Sub setselectionAffinity Lib uikitlibname Selector "setSelectionAffinity:" (id as Ptr, value as UITextStorageDirection)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 53686F77732074686520637572736F72206174206120736C656374656420706F696E742E20417661696C61626C652073696E636520694F5320392E302E
		Sub ShowCursor(Point as FoundationFrameWork.NSPoint)
		  if RespondsToSelector("beginFloatingCursorAtPoint:", classptr) then beginFloatingCursorAtPoint mid, point
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207465787420696E20746865207370656369666965642072616E67652E
		Function TextInRange(Range As AppleTextRange) As Text
		  Return gettextInRange(mid, range.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E207468652072616E6765206265747765656E2074776F207465787420706F736974696F6E732E
		Function TextRange(FromPosition as AppleTextPosition, toPosition as AppleTextPosition) As AppleTextRange
		  return AppleTextRange.MakefromPtr(textRangeFromPosition(mid, FromPosition.Id, toPosition.id))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function textRangeFromPosition Lib uikitlibname Selector "textRangeFromPosition:toPosition:" (id as Ptr, pos1 as ptr, pos2 as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320612064696374696F6E61727920776974682070726F706572746965732074686174207370656369667920686F77207465787420697320746F206265207374796C652061742061206365727461696E206C6F636174696F6E20696E206120646F63756D656E742E
		Function TextStyling(Position As AppleTextPosition, direction as UITextLayoutDirection) As AppleDictionary
		  return AppleDictionary.MakeFromPtr (textStylingAtPosition (mid, position.id, direction))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function textStylingAtPosition Lib uikitlibname Selector "textStylingAtPosition:inDirection:" (id as Ptr, pos as ptr, direction as UITextLayoutDirection) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 556E6D61726B207468652063757272656E746C79206D61726B656420746578742E
		Sub UnmarkText()
		  unmarkText mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Sub unmarkText Lib uikitlibname Selector "unmarkText" (id as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Sub updateFloatingCursorAtPoint Lib uikitlibname Selector "updateFloatingCursorAtPoint:" (id as Ptr, point as FoundationFrameWork . NSPoint)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		Dictation methods and delegate methods missing.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 546865207465787420706F736974696F6E20666F722074686520626567696E6E696E67206F66206120646F63756D656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleTextPosition.MakefromPtr(getBeginningOfDocument(mid))
			End Get
		#tag EndGetter
		BeginningOfDocument As AppleTextPosition
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207465787420706F736974696F6E20666F722074686520656E64206F66206120646F63756D656E742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleTextPosition.MakefromPtr(getEndOfDocument(mid))
			End Get
		#tag EndGetter
		EndOfDocument As AppleTextPosition
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20696E7075742064656C65676174652074686174206973206E6F746966696564207768656E2074657874206368616E676573206F72207768656E207468652073656C656374696F6E206368616E6765732E204175746F6D61746963616C6C792061737369676E6564206279207468652073797374656D2061742072756E74696D652E
		#tag Getter
			Get
			  return AppleObject.MakefromPtr (getinputDelegate (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setInputdelegate mid, NilPtr(value)
			End Set
		#tag EndSetter
		InputDelegate As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F66207465787420746861742069732063757272656E746C79206D61726B656420696E206120646F63756D656E742E
		#tag Getter
			Get
			  return AppleTextRange.MakefromPtr (getmarkedTextRange (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmarkedTextRange mid, NilPtr(value)
			End Set
		#tag EndSetter
		MarkedTextRange As AppleTextRange
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E617279206F66206174747269627574657320746861742064657363726962657320686F77206D61726B656420746578742073686F756C6420626520647261776E2E
		#tag Getter
			Get
			  return AppleDictionary.MakefromPtr (getmarkedTextStyle (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setmarkedTextStyle mid, NilPtr(value)
			End Set
		#tag EndSetter
		MarkedTextStyle As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652072616E6765206F662073656C6563746564207465787420696E206120646F63756D656E742E
		#tag Getter
			Get
			  return appletextrange.MakefromPtr(getselectedTextRange (mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setselectedTextRange mid, NilPtr(value)
			End Set
		#tag EndSetter
		SelectedTextRange As AppleTextRange
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064657369726564206C6F636174696F6E20666F722074686520696E73657274696F6E20706F696E742E
		#tag Getter
			Get
			  return getselectionAffinity (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setselectionAffinity mid, value
			End Set
		#tag EndSetter
		SelectionAffinity As UITextStorageDirection
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20616666696C6961746564207669657720746861742070726F7669646573206120636F6F7264696E6174652073797374656D20666F7220616C6C2067656F6D65747269632076616C75657320696E20746869732070726F746F636F6C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return appleview.MakefromPtr (gettextInputView (mid))
			End Get
		#tag EndGetter
		TextInputView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20696E70757420746F6B656E697A657220746861742070726F766964657320696E666F726D6174696F6E2061626F757420746865206772616E756C6172697479206F66207465787420756E6974732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleTextInputStringTokenizer.MakefromPtr (gettokenizer (mid))
			End Get
		#tag EndGetter
		Tokenizer As AppleTextInputStringTokenizer
	#tag EndComputedProperty


	#tag Enum, Name = UITextLayoutDirection, Type = Integer, Flags = &h0
		Right = 2
		  Left
		  Up
		Down
	#tag EndEnum

	#tag Enum, Name = UITextStorageDirection, Type = Integer, Flags = &h0
		Forward = 0
		Backward
	#tag EndEnum

	#tag Enum, Name = UITextWritingDirection, Type = Integer, Flags = &h0
		Natural = -1
		  LeftToRight = 0
		RightToLeft
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
			Name="CanBecomeFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFocused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanResignFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearsContextBeforeDrawing"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClipsToBounds"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CollisionBoundsType"
			Group="Behavior"
			Type="UIDynamicItemCollisionBoundsType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Rectangle"
				"1 - Ellipse"
				"2 - Path"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentHorizontalAlignment"
			Group="Behavior"
			Type="UIControlContentHorizontalAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Left"
				"2 - Right"
				"3 - Fill"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentMode"
			Group="Behavior"
			Type="UIViewContentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleToFill"
				"1 - ScaleAspectFit"
				"2 - ScaleAspectFill"
				"3 - Redraw"
				"4 - Center"
				"5 - Top"
				"6 - Bottom"
				"7 - Left"
				"8 - Right"
				"9 - TopLeft"
				"10 - TopRight"
				"11 - BottomLeft"
				"12 - BottomRight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentScaleFactor"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContentVerticalAlignment"
			Group="Behavior"
			Type="UIControlContentVerticalAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Top"
				"2 - Bottom"
				"3 - Fill"
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
			Name="ExclusiveTouch"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Focused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hasInited"
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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsFirstResponder"
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
			Name="MultipleTouchEnabled"
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
			Name="Opaque"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreservesSuperviewLayoutMargins"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RestorationIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selected"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectionAffinity"
			Group="Behavior"
			Type="UITextStorageDirection"
			EditorType="Enum"
			#tag EnumValues
				"0 - Forward"
				"1 - Backward"
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
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintAdjustmentMode"
			Group="Behavior"
			Type="UIViewTintAdjustmentMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - Normal"
				"2 - Dimmed"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TouchInside"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tracking"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
