#tag Class
Protected Class AppleTextInputStringTokenizer
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E206F626A65637420696E697469616C697A656420776974682074686520646F63756D656E74206F626A6563742074686174206469726563746C7920636F6D6D756E696361746573207769746820746865207465787420696E7075742073797374656D2E
		Sub Constructor(TextInput as AppleResponder)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(initWithTextInput(alloc(Classptr), TextInput.id), true)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function initWithTextInput Lib uikitlibname Selector "initWithTextInput:" (id as ptr, value as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function isPosition Lib uikitlibname Selector "isPosition:atBoundary:inDirection:" (id as ptr, pos as ptr, boundary as UITextGranularity, direction as AppleTextinputControl . UITextLayoutDirection) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320776865746865722061207465787420706F736974696F6E206973206174206120626F756E64617279206F662061207465787420756E6974206F66206120737065636966696564206772616E756C617269747920696E20612073706563696669656420646972656374696F6E2E
		Function IsPositionAtBoundary(Position as AppleTextPosition, Boundary as UITextGranularity, Direction as AppleTextinputControl.UITextLayoutDirection) As Boolean
		  return isPosition (mid, Position.id, Boundary, direction)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320776865746865722061207465787420706F736974696F6E2069732077697468696E2061207465787420756E6974206F66206120737065636966696564206772616E756C617269747920696E20612073706563696669656420646972656374696F6E2E
		Function IsPositionWithinTextUnit(Position as AppleTextPosition, TextUnit as UITextGranularity, Direction as AppleTextinputControl.UITextLayoutDirection) As Boolean
		  return ispositionwithinTextUnit (mid, Position.id, textunit, direction)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function isPositionwithinTextUnit Lib uikitlibname Selector "isPosition:withinTextUnit:inDirection:" (id as ptr, pos as ptr, boundary as UITextGranularity, direction as AppleTextinputControl . UITextLayoutDirection) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleTextInputStringTokenizer
		  return if (aptr = nil, nil, new AppleTextInputStringTokenizer(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206E657874207465787420706F736974696F6E206174206120626F756E64617279206F662061207465787420756E6974206F662074686520676976656E206772616E756C617269747920696E206120676976656E20646972656374696F6E2E
		Function Position(Position as AppleTextPosition, Boundary as UITextGranularity, Direction as AppleTextinputControl.UITextLayoutDirection) As AppleTextPosition
		  return AppleTextPosition.MakefromPtr( positionFromPosition (mid, Position.id, boundary, direction))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function positionFromPosition Lib uikitlibname Selector "positionFromPosition:toBoundary:inDirection:" (id as ptr, pos as ptr, boundary as UITextGranularity, direction as AppleTextinputControl . UITextLayoutDirection) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652072616E676520666F7220746865207465787420656E636C6F73696E672061207465787420706F736974696F6E20696E2061207465787420756E6974206F66206120676976656E206772616E756C617269747920696E206120676976656E20646972656374696F6E2E
		Function Range(Position as AppleTextPosition, Granularity as UITextGranularity, Direction as AppleTextinputControl.UITextLayoutDirection) As AppleTextRange
		  return AppleTextRange.MakefromPtr( rangeEnclosingPosition (mid, Position.id, Granularity, direction))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Attributes( hidden ) Private Declare Function rangeEnclosingPosition Lib uikitlibname Selector "rangeEnclosingPosition:withGranularity:inDirection:" (id as ptr, pos as ptr, boundary as UITextGranularity, direction as AppleTextinputControl . UITextLayoutDirection) As Ptr
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		iOS 10
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Static mclassptr as ptr
			  if mclassptr = nil then mclassptr = FoundationFrameWork.NSClassFromString("UITextInputStringTokenizer")
			  return mclassptr
			End Get
		#tag EndGetter
		Protected Shared Classptr As Ptr
	#tag EndComputedProperty


	#tag Enum, Name = UITextGranularity, Type = Integer, Flags = &h0
		Character
		  Word
		  Sentence
		  Paragraph
		  Line
		Document
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
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
