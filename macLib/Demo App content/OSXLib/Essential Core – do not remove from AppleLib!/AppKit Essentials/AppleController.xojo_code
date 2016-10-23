#tag Class
Protected Class AppleController
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 4361757365732074686520436F6E74726F6C6C657220746F20617474656D707420746F20636F6D6D697420616E792070656E64696E672065646974732C2072657475726E696E672054727565206966207375636365737366756C206F72206E6F20656469747320776572652070656E64696E672E
		Function CommitEdit() As Boolean
		  return commitEditing (mid)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function commitEditing Lib AppkitLibName Selector "commitEditing" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub commitEditingWithDelegate Lib AppkitLibName Selector "commitEditingWithDelegate:didCommitSelector:contextInfo:" (id as ptr, del as ptr, didcommitsel as ptr, context as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Sub Destructor()
		  if mhasownership and XojoIdentity.HasKey(mid) then XojoIdentity.Remove(mid)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 446973636172647320616E792070656E64696E67206368616E676573206279207265676973746572656420656469746F72732E
		Sub DiscardEdit()
		  discardEditing (mid)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub discardEditing Lib AppkitLibName Selector "discardEditing" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getEditing Lib AppkitLibName Selector "isEditing" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h1
		Protected Shared Function Identity(id as ptr) As AppleController
		  dim wr as xojo.Core.WeakRef = XojoIdentity.Lookup(id, Nil)
		  if wr <> nil then return AppleController(wr.Value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_objectDidBeginEditing(pid as ptr, sel as ptr, obj as ptr)
		  dim controller as AppleController = AppleController.InformInstance(pid)
		  if controller <> nil then 
		    controller.informOnObjectDidBeginEditing(AppleObject.MakefromPtr(obj))
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( hidden ) Protected Shared Sub impl_objectDidEndEditing(pid as ptr, sel as ptr, obj as ptr)
		  dim controller as AppleController = AppleController.InformInstance(pid)
		  if controller <> nil then 
		    controller.informOnObjectDidEndEditing(AppleObject.MakefromPtr(obj))
		  end if
		  #pragma unused sel
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function InformInstance(id as ptr) As AppleController
		  dim ident as AppleController = AppleController(Identity(id))
		  return if (ident = nil, AppleController.MakeFromPtr (id), ident)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub informOnObjectDidBeginEditing(Obj as AppleObject)
		  RaiseEvent EditBegin (Obj)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub informOnObjectDidEndEditing(Obj as AppleObject)
		  RaiseEvent EditEnd(Obj)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleController
		  return if (aptr = nil, nil, new AppleController(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5265676973746572732074686520636F6E74726F6C20697473656C662061732061205765616B52656620696E2061207368617265642044696374696F6E6172792E
		Attributes( hidden )  Sub RegisterIdentity(Identity As object)
		  XojoIdentity.Value (id) = xojo.core.WeakRef.Create(Identity)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 4669726573207768656E20656469746F722068617320756E636F6D6D6974746564206368616E67657320746861742063616E20616666656374207468652072656365697665722E
		Event EditBegin(Editor As AppleObject)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20656469746F722068617320636F6D6D6974746564206F722064697363617264656420697473206368616E6765732E
		Event EditEnd(Editor As AppleObject)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // NSController is an abstract class. You would not use a Controller directly, therefore this classptr is just a template for subclasses:
			  
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    dim methods() as TargetClassMethodHelper
			    methods.Append new TargetClassMethodHelper ("objectDidBeginEditing:", Addressof impl_objectDidBeginEditing, "v@:@")
			    methods.Append new TargetClassMethodHelper ("objectDidEndEditing:", Addressof impl_objectDidEndEditing, "v@:@")
			    // methods.Append new TargetClassMethodHelper ("commitEditing", Addressof impl_commitEditing, "c@:")
			    
			    mClassPtr = BuildTargetClass ("NSController", "OSXLibController", methods)
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220616E7920656469746F727320617265207265676973746572656420776974682074686520636F6E74726F6C6C65722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getEditing (mid)
			End Get
		#tag EndGetter
		Editing As Boolean
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
			Name="Editing"
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
