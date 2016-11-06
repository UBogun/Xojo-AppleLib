#tag Class
Protected Class OSXLibNotificationCenter
Inherits AppleNotificationCenter
	#tag Event
		Sub Close()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  NotificationObjects = new xojo.Core.Dictionary
		  dim AppleOwnerwindow as  AppleWindow = me.OwnerAppleWindow
		  if AppleOwnerwindow <> nil then
		    dim notificObj as AppleNotificationObject = AppleNotificationCenter.AddObserver (AppleWindow.kNSWindowWillCloseNotification, AppleOwnerwindow, _
		    AppleOperationQueue.MainQueue, new appleblock (Addressof informonWindowWillClose))
		    NotificationObjects.value(notificObj) = AppleWindow.kNSWindowWillCloseNotification
		  end if
		  
		  RaiseEvent open
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informonWindowWillClose()
		  RaiseEvent Close
		  for each e as xojo.Core.DictionaryEntry in NotificationObjects
		    dim obj as AppleNotificationObject = e.Key
		    dim t as text = e.Value
		    if t.Empty then
		      RemoveObserver obj
		    else
		      RemoveObserver obj, t, nil
		    end if
		  next
		  NotificationObjects = nil
		End Sub
	#tag EndMethod

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

	#tag ComputedProperty, Flags = &h0, Description = 412074656D706F7261727920776F726B61726F756E6420666F7220746865206D697373696E67204F776E657257696E646F772070726F7065727479206F6620636F6E74726F6C7320776974686F7574206F70746963616C20726570726573656E746174696F6E2076696120496E74726F737065636F74696F6E
		#tag Getter
			Get
			  using xojo.Introspection
			  Dim info As TypeInfo = GetType(me)
			  Dim props() As PropertyInfo = info.Properties
			  for q as integer =props.Ubound downto 0
			    dim p as PropertyInfo = props(q)
			    System.DebugLog q.totext
			    if p.Name = AppleResponder.kownerWindow then
			      dim wr as weakref = p.Value(me)
			      if wr <> nil and wr.value <> nil  then
			        return new AppleWindow(window(wr.Value))
			      end if
			    end if
			  next
			  
			End Get
		#tag EndGetter
		OwnerAppleWindow As AppleWindow
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
