#tag Class
Protected Class AppleAttributedString
Inherits AppleObject
	#tag Method, Flags = &h0
		Function AttributesAtIndex(index as UInteger) As AppleDictionary
		  declare function attributesAtIndex lib FoundationLibName  selector "attributesAtIndex:effectiveRange:" (id as ptr,  rangeptr as ptr) as Ptr
		  dim result as ptr = attributesAtIndex(id, nil)
		  return AppleDictionary.MakeFromPtr (result)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(astring as AppleAttributedString)
		  declare function initWithAttributedString lib FoundationLibName  selector "initWithAttributedString:" (id as ptr, astring as Ptr) as ptr
		  super.Constructor (initWithAttributedString (alloc(classptr), astring.id))
		  mHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(astring as CFStringRef)
		  declare function initWithString lib FoundationLibName  selector "initWithString:" (id as ptr, astring as CFStringRef) as ptr
		  super.Constructor (initWithString (alloc(classptr), astring))
		  mHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(astring as cfstringref, Fontname as CFStringRef)
		  declare function initWithStringattributes lib FoundationLibName  selector "initWithString:attributes:" (id as ptr, astring as CFStringRef, attDict as ptr) as ptr
		  dim AttDict as new AppleMutableDictionary (1)
		  dim offset as double = 0.3
		  AttDict.ObjectForKey (StringAttributes.Value(BasellneOffset).StringValue) = new AppleNumber (offset)
		  super.Constructor (initWithStringattributes (alloc(classptr), astring, AttDict.id))
		  mHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Draw(aPoint as FoundationFramework.NSPoint)
		  declare Sub drawAtPoint lib FoundationLibName  selector "drawAtPoint:" (id as ptr, value as FoundationFramework.NSPoint)
		  drawAtPoint (id, aPoint)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Draw(ARect as FoundationFramework.NSRect)
		  // iOSLibCGContext.UIGraphicsBeginImageContext (arect.Size_)
		  declare Sub drawInRect lib FoundationLibName  selector "drawInRect:" (id as ptr, value  as FoundationFramework.NSRect)
		  drawInRect (id, aRect)
		  
		  // iOSLibCGContext.UIGraphicsEndImageContext
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Draw(ARect as FoundationFramework.NSRect, options as AppleStringDrawingOptions, byref context as AppleStringDrawingContext)
		  declare Sub drawWithRect lib FoundationLibName  selector "drawWithRect:options:context:" (id as ptr, value  as FoundationFramework.NSRect, options as integer, context as ptr)
		  drawWithRect (id, aRect, options.id, context.id)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getSize Lib foundationlibname Selector "size" (id as ptr) As FoundationFrameWork.NSSize
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		 Shared Function MakeFromPtr(aPtr as Ptr) As AppleAttributedString
		  return if (aptr = nil, nil, new AppleAttributedString (aptr))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSAttributedString")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function length lib FoundationLibName  selector "length" (id as ptr) as UInteger
			  return length (id)
			End Get
		#tag EndGetter
		Length As UInteger
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return getSize (id)
			End Get
		#tag EndGetter
		Size_ As FoundationFramework.NSSize
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mStringAttributes as Dictionary
			  if mStringAttributes = nil then
			    mStringAttributes = new Dictionary
			    mStringAttributes.Value (FontName) = SystemConstantName ("NSFontAttributeName", FoundationPath)
			    mStringAttributes.value (BasellneOffset) = SystemConstantName ("NSBaselineOffsetAttributeName", FoundationPath)
			  end if
			  return mStringAttributes
			End Get
		#tag EndGetter
		Shared StringAttributes As Dictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function string_ lib FoundationLibName  selector "string" (id as ptr) as CFStringRef
			  return string_ (id)
			End Get
		#tag EndGetter
		toText As Text
	#tag EndComputedProperty


	#tag Constant, Name = BasellneOffset, Type = Text, Dynamic = False, Default = \"BaselineOffset", Scope = Public
	#tag EndConstant

	#tag Constant, Name = FontName, Type = Text, Dynamic = False, Default = \"Font", Scope = Public
	#tag EndConstant


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
			Name="Length"
			Group="Behavior"
			Type="UInteger"
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
		#tag ViewProperty
			Name="toText"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
