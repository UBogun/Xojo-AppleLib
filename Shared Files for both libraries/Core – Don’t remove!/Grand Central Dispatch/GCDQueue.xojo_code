#tag Class
Protected Class GCDQueue
Inherits applecfobject
	#tag Method, Flags = &h0
		Shared Function ConcurrentQueue(label as CFStringRef) As GCDQueue
		  // Calling the overridden superclass constructor.
		  dim result as GCDQueue = new GCDQueue (dispatch_queue_create (label, Nil), true)
		  result.MHasOwnership = true
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Priority as dispatch_QOS_Class)
		  // Calling the overridden superclass constructor.
		  super.Constructor (dispatch_get_global_queue (Priority, 0))
		  MHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Priority as dispatch_queue_priority_t)
		  super.Constructor (dispatch_get_global_queue (Priority, 0))
		  MHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CurrentQueue() As GCDQueue
		  return new GCDQueue (dispatch_get_current_queue)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  
		  if mHasOwnership then
		    if LibDebug then system.DebugLog "Releasing "+me.Description+" AR: "+RetainCount.totext
		    Release
		  else
		    // system.DebugLog "Losing Handle on "+DebugDescription+" AR: "+RetainCount.totext
		  end if
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function dispatch_get_current_queue Lib libsystem () As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function dispatch_get_global_queue Lib libsystem (Identifier as dispatch_QOS_Class, flags as uint16) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function dispatch_get_global_queue Lib libsystem (Identifier as dispatch_queue_priority_t, flags as uint16) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function dispatch_get_main_queue Lib gcdpath () As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function dispatch_queue_attr_make_with_qos_class Lib libsystem (attribute as ptr, qos_class as dispatch_QOS_Class, relativePriority as Integer) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Function dispatch_queue_create Lib libsystem (label as cfstringref, attribute as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Sub dispatch_release Lib libsystem (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Declare Sub dispatch_retain Lib libsystem (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MainQueue() As GCDQueue
		  return new GCDQueue (dispatch_get_main_queue)
		  
		  // return new GCDQueue (GrandCentralDispatch.dlsym(GrandCentralDispatch.SysLib, "_dispatch_main_q"))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Release()
		  dispatch_release mCFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Retain()
		  dispatch_retain mCFTypeRef
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function SerialQueue(label as CFStringRef) As GCDQueue
		  // // Calling the overridden superclass constructor.
		  // dim result as GCDQueue = new GCDQueue (dispatch_queue_create (label, "DISPATCH_QUEUE_SERIAL"))
		  // return result
		  
		  
		  // Thi doesn't work. Anyone and idea how to read the constant above?
		End Function
	#tag EndMethod


	#tag Note, Name = Status incomplete
		
		MAny things missing. I just created the necessary features to create a queue.
	#tag EndNote


	#tag Enum, Name = dispatch_QOS_Class, Type = Integer, Flags = &h0
		userInitiated = 2
		  Default = 0
		  Utility = -8
		Background = -32768
	#tag EndEnum

	#tag Enum, Name = dispatch_queue_priority_t, Type = Integer, Flags = &h0
		High = 2
		  Default = 0
		  Low = -2
		Background = -32768
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="CFTypeDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
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
			Name="isNIL"
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
			Type="Integer"
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
			Name="TypeID"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
