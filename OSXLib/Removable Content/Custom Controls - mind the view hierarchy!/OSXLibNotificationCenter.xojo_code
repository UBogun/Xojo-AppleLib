#tag Class
Protected Class OSXLibNotificationCenter
Inherits AppleNotificationCenter
	#tag Event
		Sub Close()
		  for each e as xojo.Core.DictionaryEntry in NotificationObjects
		    dim obj as AppleNotificationObject = e.Key
		    dim t as text = e.Value
		    if t.Empty then
		      RemoveObserver obj
		    else
		      RemoveObserver obj, t, nil
		    end if
		  next
		  RaiseEvent Close
		  NotificationObjects = Nil
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  NotificationObjects = new xojo.Core.Dictionary
		  RaiseEvent open
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub NotificationHandlerBlock(notification as ptr)
		  #pragma StackOverflowChecking false
		  #pragma BreakOnExceptions false
		  try 
		    RaiseEvent Notification (AppleNotification.MakefromPtr(notification))
		  catch
		    
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterNotification(NotificationName As text)
		  dim NotObject as  AppleNotificationObject = AddObserver (NotificationName, nil, nil, new AppleBlock(addressof NotificationHandlerBlock))
		  NotificationObjects.Value(NotObject) = NotificationName
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Notification(Notification as AppleNotification)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag Property, Flags = &h0
		NotificationObjects As xojo.Core.Dictionary
	#tag EndProperty


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
