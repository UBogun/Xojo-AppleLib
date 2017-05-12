#tag Class
Protected Class AppleControlTextEditingDelegate
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  // Constructor(aPtr as Ptr, takeOwnership as Boolean, Retain as Boolean = false) -- From AppleObject
		  Super.Constructor(init(alloc(ClassPtr)), True)
		  RegisterIdentity(self)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Destructor()
		  if id <> nil and mHasOwnership then unregisteridentity(self)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function Identity(id as ptr) As AppleControlTextEditingDelegate
		  dim wr as xojo.Core.WeakRef = XojoIdentity.Lookup(id, Nil)
		  if wr <> nil then return AppleControlTextEditingDelegate(wr.Value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub impl_controldidFailToFormatString(pid as ptr, sel as ptr, TheControl As Ptr, TheString as CFStringRef, Error as Ptr)
		  Dim Ident as AppleControlTextEditingDelegate =Identity(pid)
		  If Ident <> Nil Then ident.informOnontroldidFailToFormatString(TheControl, TheString, Error)
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub impl_controldidFailToValidatePartialString(pid as ptr, sel as ptr, TheControl As Ptr, TheString as CFStringRef, Error as Ptr)
		  Dim Ident as AppleControlTextEditingDelegate =Identity(pid)
		  If Ident <> Nil Then ident.informOnontroldidFailToValidatePartialString(TheControl, TheString, Error)
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function impl_controlisValidObject(pid as ptr, sel as ptr, TheControl As Ptr, TheObject as Ptr) As Boolean
		  Dim Ident as AppleControlTextEditingDelegate =Identity(pid)
		  If Ident <> Nil Then Return ident.informOnControlIsValidObject(TheControl, TheObject)
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function impl_controltextShouldBeginEditing(pid as ptr, sel as ptr, TheControl As Ptr, TheText as Ptr) As Boolean
		  Dim Ident as AppleControlTextEditingDelegate =Identity(pid)
		  If Ident <> Nil Then Return ident.informOnControltextShouldBeginEditing(TheControl, TheText)
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function impl_controltextShouldEndEditing(pid as ptr, sel as ptr, TheControl As Ptr, TheText as Ptr) As Boolean
		  Dim Ident as AppleControlTextEditingDelegate =Identity(pid)
		  If Ident <> Nil Then Return ident.informOnControltextShouldEndEditing(TheControl, TheText)
		  #pragma unused sel
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnControlIsValidObject(TheControl As Ptr, TheObject as Ptr) As Boolean
		  Return Not RaiseEvent InvalidObject(Applecontrol.MakefromPtr(TheControl), AppleObject.MakeFromPtr(TheObject))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnControltextShouldBeginEditing(TheControl As Ptr, TheText as Ptr) As Boolean
		  Return Not RaiseEvent ShouldNotBeginTextEdit(Applecontrol.MakefromPtr(TheControl), AppleText.MakeFromPtr(TheText))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnControltextShouldEndEditing(TheControl As Ptr, TheText as Ptr) As Boolean
		  Return Not RaiseEvent ShouldNotEndTextEdit(Applecontrol.MakefromPtr(TheControl), AppleText.MakeFromPtr(TheText))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnontroldidFailToFormatString(TheControl As Ptr, theString as CFstringRef, Error as Ptr)
		  RaiseEvent StringFormattingFailed(Applecontrol.MakefromPtr(TheControl), TheString, AppleError.MakefromPtr(Error))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 68696464656E
		Attributes( hidden )  Sub informOnontroldidFailToValidatePartialString(TheControl As Ptr, theString as CFstringRef, Error as Ptr)
		  RaiseEvent StringValidationFailed(Applecontrol.MakefromPtr(TheControl), TheString, AppleError.MakefromPtr(Error))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5265676973746572732074686520636F6E74726F6C20697473656C662061732061205765616B52656620696E2061207368617265642044696374696F6E6172792E
		Attributes( hidden )  Sub RegisterIdentity(Identity As object)
		  XojoIdentity.Value (id) = xojo.core.WeakRef.Create(Identity)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5265676973746572732074686520636F6E74726F6C20697473656C662061732061205765616B52656620696E2061207368617265642044696374696F6E6172792E
		Attributes( hidden )  Sub UnregisterIdentity(Identity As AppleObject)
		  if XojoIdentity.HasKey(Identity.id) then XojoIdentity.Remove(Identity.id)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520696E73657274696F6E20706F696E74206C656176657320612063656C6C2062656C6F6E67696E6720746F207468652073706563696669656420636F6E74726F6C2C20627574206265666F7265207468652076616C7565206F66207468652063656C6CE2809973206F626A65637420697320646973706C617965642E2052657475726E205472756520746F2072656A65637420746865206F626A65637420616E642072657475726E2074686520637572736F7220746F2074686520636F6E74726F6CE28099732063656C6C2E
		Event InvalidObject(TheControl As AppleControl, TheObject As Appleobject) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207573657220747269657320746F20656E74657220612063686172616374657220696E20612063656C6C206F66206120636F6E74726F6C207468617420616C6C6F77732065646974696E67206F66207465787420287375636820617320612074657874206669656C64206F7220666F726D206669656C64292E2052657475726E205472756520746F2070726576656E742065646974696E672E
		Event ShouldNotBeginTextEdit(TheControl As AppleControl, TheText As AppleText) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520696E73657274696F6E20706F696E7420747269657320746F206C6561766520612063656C6C206F662074686520636F6E74726F6C207468617420686173206265656E206564697465642E2052657475726E205472756520746F2070726576656E7420746578742065646974696E6720656E642E
		Event ShouldNotEndTextEdit(TheControl As AppleControl, TheText As AppleText) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520666F726D617474657220666F72207468652063656C6C2062656C6F6E67696E6720746F207468652073706563696669656420636F6E74726F6C2063616E6E6F7420636F6E76657274206120737472696E6720746F20616E20756E6465726C79696E67206F626A6563742E
		Event StringFormattingFailed(TheControl As AppleControl, TheString As Text, Error As AppleError)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520666F726D617474657220666F72207468652063656C6C2062656C6F6E67696E6720746F20636F6E74726F6C20286F722073656C65637465642063656C6C292072656A656374732061207061727469616C20737472696E672061207573657220697320747970696E6720696E746F207468652063656C6C2E
		Event StringValidationFailed(TheControl As AppleControl, PartialString As Text, Error As AppleError)
	#tag EndHook


	#tag Note, Name = Status incomplete
		
		control:textView:completions:forPartialWordRange:indexOfSelectedItem: and 
		control:textView:doCommandBySelector:
		missing – no TextView class implemented yet.
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as ptr
			  if mClassPtr = Nil then
			    dim methods() as TargetClassMethodHelper
			    
			    // NSControlTextEditingDelegate methods
			    methods.Append new TargetClassMethodHelper("control:isValidObject:", AddressOf impl_controlisValidObject, "c@:@@")
			    methods.Append New TargetClassMethodHelper("control:didFailToValidatePartialString:errorDescription:", AddressOf impl_controldidFailToValidatePartialString, "v@:@@@")
			    methods.Append New TargetClassMethodHelper("control:didFailToFormatString:errorDescription:", AddressOf impl_controldidFailToFormatString, "v@:@@@")
			    methods.Append New TargetClassMethodHelper("control:textShouldBeginEditing:", AddressOf impl_controltextShouldBeginEditing, "c@:@@")
			    methods.Append New TargetClassMethodHelper("control:textShouldEndEditing:", AddressOf impl_controltextShouldEndEditing, "c@:@@")
			    
			    
			    mClassPtr = BuildTargetClass ("NSObject", "OSXLibControlTextEditingDelegate",methods)
			  end if
			  Return mClassPtr
			  
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static midentity as xojo.Core.Dictionary
			  if midentity = nil then midentity = new xojo.Core.Dictionary
			  return midentity
			End Get
		#tag EndGetter
		Protected Shared XojoIdentity As xojo.Core.Dictionary
	#tag EndComputedProperty


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
