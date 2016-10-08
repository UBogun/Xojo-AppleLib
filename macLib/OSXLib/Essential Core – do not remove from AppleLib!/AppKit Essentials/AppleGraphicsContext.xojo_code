#tag Class
Protected Class AppleGraphicsContext
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120436F6E746578742066726F6E2061204347436F6E7465787468616E646C652C206F7074696F6E616C6C7920666C697070696E67206974
		Sub Constructor(CGGraphicsHandle as Integer, Flipped as Boolean)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(graphicsContextWithCGContext(classptr, ptr(CGGraphicsHandle), flipped), true, true)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7374616E74696174657320616E642072657475726E7320616E20696E7374616E6365206F66204E534772617068696373436F6E74657874207573696E67207468652073706563696669656420617474726962757465732E
		Shared Function ContextWithAttributes(AttributeDict As AppleDictionary) As AppleGraphicsContext
		  dim result as AppleGraphicsContext = AppleGraphicsContext.MakefromPtr (graphicsContextWithAttributes(classptr, AttributeDict.id))
		  if result <> nil then result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720677261706869637320636F6E746578742066726F6D207468652073706563696669656420436F726520477261706869637320636F6E7465787420616E642074686520696E697469616C20666C69707065642073746174652E
		Shared Function ContextWithCGContext(Context as AppleCGContext, flipped as boolean = false) As AppleGraphicsContext
		  return new AppleGraphicsContext (graphicsContextWithCGContext(classptr, Context.CFTypeRef, flipped), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E732061206E657720677261706869637320636F6E7465787420666F722064726177696E6720696E746F20612077696E646F772E
		Shared Function ContextWithWindow(Win As AppleWindow) As AppleGraphicsContext
		  return new AppleGraphicsContext (graphicsContextWithWindow(classptr, win.id), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 466F7263657320616E79206275666665726564206F7065726174696F6E73206F72206461746120746F2062652073656E7420746F2074686520636F6E74657874E28099732064657374696E6174696F6E2E
		Sub Flush()
		  flushGraphics mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub flushGraphics Lib appkitlibname Selector "flushGraphics" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getCGContext Lib appkitlibname Selector "CGContext" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcurrentContext Lib appkitlibname Selector "currentContext" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcurrentContextDrawingToScreen Lib appkitlibname Selector "currentContextDrawingToScreen" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getDrawingToScreen Lib appkitlibname Selector "isDrawingToScreen" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function graphicsContextWithAttributes Lib appkitlibname Selector "graphicsContextWithAttributes:" (id as ptr, attr as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function graphicsContextWithCGContext Lib appkitlibname Selector "graphicsContextWithCGContext:flipped:" (id as ptr, cgContext as ptr, flipped as Boolean) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function graphicsContextWithWindow Lib appkitlibname Selector "graphicsContextWithWindow:" (id as ptr, win as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleGraphicsContext
		  return if (aptr = nil, nil, new AppleGraphicsContext(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506F7073206120677261706869637320636F6E746578742066726F6D20746865207065722D74687265616420737461636B2C206D616B65732069742063757272656E742C20616E642073656E64732074686520636F6E74657874206120726573746F726547726170686963735374617465206D6573736167652E
		Shared Sub RestoreCurrentGraphicsState()
		  restoreGraphicsState classptr
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732074686520636F6E74657874E28099732067726170686963732073746174652066726F6D2074686520746F70206F662074686520677261706869637320737461746520737461636B20616E64206D616B657320746865206E657874206772617068696373207374617465207468652063757272656E742067726170686963732073746174652E
		Sub RestoreGraphicsState()
		  restoreGraphicsState mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub restoreGraphicsState Lib appkitlibname Selector "restoreGraphicsState" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 536176657320746865206772617068696373207374617465206F66207468652063757272656E7420677261706869637320636F6E746578742E
		Shared Sub SaveCurrentGraphicsState()
		  saveGraphicsState classptr
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5361766573207468652063757272656E7420677261706869637320737461746520616E6420637265617465732061206E6577206772617068696373207374617465206F6E2074686520746F70206F662074686520737461636B2E
		Sub SaveGraphicsState()
		  saveGraphicsState mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub saveGraphicsState Lib appkitlibname Selector "saveGraphicsState" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setCurrentContext Lib appkitlibname Selector "setCurrentContext:" (id as ptr, value as ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		missing:
		 graphicsContextWithBitmapImageRep 
		CGContext
		CICOntext
		Dictionary KEys could be added, or a specialized contextAttributeDictionary
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E74657874207573657320616E7469616C696173696E672E
		#tag Getter
			Get
			  return AppKitFramework.getshouldAntialias (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setshouldAntialias mid, value
			End Set
		#tag EndSetter
		Antialias As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865204347436F6E7465787420726570726573656E746174696F6E206F662074686520636F6E746578742028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleCGContext.MakeFromCFTypeRef (getCGContext (mid))
			End Get
		#tag EndGetter
		CGContext As AppleCGContext
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("NSGraphicsContext")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E742072656E646572696E6720696E74656E7420696E2074686520636F6E74657874E28099732067726170686963732073746174652E
		#tag Getter
			Get
			  return AppKitFramework.getcolorRenderingIntent (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setcolorRenderingIntent mid, value
			End Set
		#tag EndSetter
		ColorRenderingIntent As Appkitframework.NSColorRenderingIntent
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E74657874E280997320676C6F62616C20636F6D706F736974696E67206F7065726174696F6E2073657474696E672E
		#tag Getter
			Get
			  return AppKitFramework.getCompositingOperation (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setCompositingOperation mid, value
			End Set
		#tag EndSetter
		CompositingOperation As AppkitFRamework.NSCompositingOperation
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652061747472696275746573207573656420746F20637265617465207468697320696E7374616E63652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleDictionary.MakeFromPtr (AppKitFramework.getattributes (mid))
			End Get
		#tag EndGetter
		ContextAttributes As AppleDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652063757272656E7420677261706869637320636F6E74657874206F66207468652063757272656E74207468726561642E
		#tag Getter
			Get
			  return new AppleGraphicsContext (getcurrentContext(classptr), true, true)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setCurrentContext classptr, value.id
			End Set
		#tag EndSetter
		Shared CurrentContext As AppleGraphicsContext
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 57686574686572207468652063757272656E7420636F6E746578742069732064726177696E6720746F207468652073637265656E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getcurrentContextDrawingToScreen (classptr)
			End Get
		#tag EndGetter
		Shared CurrentContextDrawingToScreen As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getDrawingToScreen (mid)
			End Get
		#tag EndGetter
		DrawingToScreen As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520636F6E7465787420697320666C697070656420766572746963616C6C792028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppKitFramework.getflipped (mid)
			End Get
		#tag EndGetter
		Flipped As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636F6E74657874E280997320696E746572706F6C6174696F6E2028696D61676520736D6F6F7468696E6729206265686176696F722E0A4E6F742070617274206F6620746865206772617068636973207374617465202863616E6E6F74206265207265736574207573696E6720526573746F726529
		#tag Getter
			Get
			  return AppKitFramework.getimageInterpolation (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setimageInterpolation mid, value
			End Set
		#tag EndSetter
		ImageInterpolation As Appkitframework.NSImageInterpolation
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616D6F756E7420746F206F666673657420746865207061747465726E20636F6C6F72207768656E2066696C6C696E672074686520636F6E746578742E0A
		#tag Getter
			Get
			  return AppKitFramework.getpatternPhase (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setpatternPhase mid, value
			End Set
		#tag EndSetter
		PatternPhase As FoundationFrameWork.NSPoint
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Antialias"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColorRenderingIntent"
			Group="Behavior"
			Type="Appkitframework.NSColorRenderingIntent"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - AbsoluteColorimetric"
				"2 - RelativeColorimetric"
				"3 - Perceptual"
				"4 - Saturation"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="CompositingOperation"
			Group="Behavior"
			Type="AppkitFRamework.NSCompositingOperation"
			EditorType="Enum"
			#tag EnumValues
				"0 - Clear"
				"1 - Copy"
				"2 - SourceOver"
				"3 - SourceIn"
				"4 - SourceOut"
				"5 - SourceAtop"
				"6 - DesitinationOver"
				"7 - DesitinationIn"
				"8 - DestinationOut"
				"9 - DestinationAtop"
				"10 - ExclusiveOR"
				"11 - PlusDarker"
				"12 - Highlight"
				"13 - PlusLighter"
				"14 - OperationHlliight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DrawingToScreen"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Flipped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageInterpolation"
			Group="Behavior"
			Type="Appkitframework.NSImageInterpolation"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - Low"
				"4 - Medium"
				"3 - High"
			#tag EndEnumValues
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
