#tag Class
Protected Class AppleNotificationCenter
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 4164647320616E20656E74727920746F20746865204E6F74696669636174696F6E43656E746572E2809973206469737061746368207461626C6520776974682061206E6F74696669636174696F6E20717565756520616E64206120626C6F636B20746861742077696C6C2062652063616C6C6564207768656E20746865206E6F74696669636174696F6E206F63637572732C20616E64206F7074696F6E616C2063726974657269613A206E6F74696669636174696F6E206E616D6520616E642073656E6465722E0A496620796F7520646F6E277420646566696E652061206E6F74696669636174696F6E206E616D652C20616C6C206E6F74696669636174696F6E732066726F6D206F626A2077696C6C206265207573656420746F20666972652074686520626C6F636B2E20596F752063616E2070617373206E696C20696E7374656164206F66206120717565756520746F2075736520746865206D61696E2071756575652E
		 Shared Function AddObserver(NotificationName as CFStringRef, Obj as appleobject, queue as AppleOperationQueue, block as appleblock) As AppleNotificationObject
		  return addObserver(NotificationName, if (obj =nil, nil, obj.id),  Queue, block.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function addObserver(NotificationName as CFStringRef, Obj as ptr, queue as AppleOperationQueue, block as ptr) As AppleNotificationObject
		  // declare function addObserverForName lib FoundationLibName  selector "addObserverForName:object:queue:usingBlock:" _
		  // (id as ptr, NotificationName as CFStringRef, Obj as Ptr, queue as ptr, block as ptr) as ptr
		  #If TargetMacOS then
		    return new AppleNotificationObject (addObserverForName (DefaultCenter.id, NotificationName, obj, if (queue = nil, nil, Queue.id), block))
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4164647320616E20656E74727920746F20746865204E6F74696669636174696F6E43656E746572E2809973206469737061746368207461626C65207769746820616E206F627365727665722C2061206E6F74696669636174696F6E2073656C6563746F7220616E64206F7074696F6E616C2063726974657269613A206E6F74696669636174696F6E206E616D6520616E642073656E6465722E0A496620796F7520646F6EE280997420646566696E652061206E6F74696669636174696F6E206E616D652C20616C6C206E6F74696669636174696F6E2072656365697665642066726F6D204F626A2077696C6C20626520666F727761726465642E20496620796F7520646F6E277420646566696E6520616E206F626A6563742C20616C6C206E6F74696669636174696F6E73206F6620746865206E616D652077696C6C20626520666F727761726465642E0A54686973206D6574686F642072657475726E73206E6F2076616C7565206265636175736520746865206F626A6563742072656769737465727320697473656C662E20466F727761726420746865206F626A65637420746F207468652052656D6F76654F62736572766572204D6574686F64206F6E206465636F6E737472756374696F6E2E
		 Shared Sub AddObserver(selector as ptr, NotificationName as CFStringRef, Obj as appleobject)
		  // declare sub addObserverForSelector lib FoundationLibName  selector "addObserver:selector:name:object:" _
		  // (id as ptr, selector as ptr, NotificationName as CFStringRef, Obj as Ptr)
		  #If TargetMacOS then
		    addObserverForSelector (DefaultCenter.id, selector, NotificationName, if (obj = nil, nil, obj.id))
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function addObserverForName Lib foundationlibname Selector "addObserverForName:object:queue:usingBlock:" (id as ptr, NotificationName as CFStringRef, Obj as Ptr, queue as ptr, block as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub addObserverForSelector Lib foundationlibname Selector "addObserver:selector:name:object:" (id as ptr, selector as ptr, NotificationName as CFStringRef, Obj as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  xojo.core.timer.CallLater 0, Addressof RaiseOpen
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Destructor()
		  RaiseEvent Close
		  removeObserver self
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getdefaultCenter Lib foundationlibname Selector "defaultCenter" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub NotificationHandlerBlock(notification as ptr)
		  #pragma StackOverflowChecking false
		  #Pragma unused notification
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506F73747320616E204170706C654E6F74696669636174696F6E20746F2074686520726567697374657265642072656365697665722E
		 Shared Sub PostNotification(notification as AppleNotification)
		  #If TargetMacOS then
		    declare sub postNotification lib FoundationLibName  selector "postNotification:" (id as ptr, notification as ptr)
		    postNotification DefaultCenter.Id, notification.id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6F74696669636174696F6E2077697468206120676976656E206E616D652C2075736572496E666F44696374696F6E61727920616E642073656E64657220616E6420706F73747320697420746F207468652072656365697665722E
		 Shared Sub PostNotification(notificationName as CFStringRef, userInfo as AppleDictionary, sender as appleobject = nil)
		  #If TargetMacOS then
		    declare sub postNotificationNameInfo lib FoundationLibName  selector "postNotificationName:object:userInfo:" (id as ptr, notificationname as CFStringRef, obj as ptr, userinfo as Ptr)
		    postNotificationNameInfo DefaultCenter.Id, notificationname, if (sender = nil, nil, sender.id), userinfo.id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E6F74696669636174696F6E2077697468206120676976656E206E616D6520616E642073656E64657220616E6420706F73747320697420746F207468652072656365697665722E
		 Shared Sub PostNotification(notificationName as CFStringRef, sender as appleobject = nil)
		  #If TargetMacOS then
		    declare sub postNotificationName lib FoundationLibName  selector "postNotificationName:object:" (id as ptr, notificationname as CFStringRef, obj as ptr)
		    postNotificationname DefaultCenter.Id, notificationname, if (sender = nil, nil, sender.id)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub RaiseOpen()
		  RaiseEvent open
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616C6C2074686973206D6574686F6420746F2072656D6F766520616E204F62736572766572202865697468657220616E20694F534C69624E6F74696669636174696F6E4F62736572766572206F722061204F626A656374207468617420616464656420697473656C6620666F7220612073656C6563746F72292066726F6D20746865204E6F74696669636174696F6E2063656E746572E2809973206469737061746368206C6973742E
		 Shared Sub RemoveObserver(observer as AppleNotificationObject)
		  #If TargetMacOS then
		    removeObserver DefaultCenter.Id, observer.Id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616C6C2074686973206D6574686F6420746F2072656D6F766520616E204F62736572766572202865697468657220616E20694F534C69624E6F74696669636174696F6E4F62736572766572206F722061204F626A656374207468617420616464656420697473656C6620666F7220612073656C6563746F72292066726F6D20746865204E6F74696669636174696F6E2063656E746572E2809973206469737061746368206C6973742E
		 Shared Sub RemoveObserver(observer as AppleNotificationObject, notificationName as cfstringRef, Sender As AppleObject)
		  #If TargetMacOS then
		    removeObservername DefaultCenter.Id, observer.id, notificationName, if (sender = nil, nil, sender.id)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616C6C2074686973206D6574686F6420746F2072656D6F766520616E204F62736572766572202865697468657220616E20694F534C69624E6F74696669636174696F6E4F62736572766572206F722061204F626A656374207468617420616464656420697473656C6620666F7220612073656C6563746F72292066726F6D20746865204E6F74696669636174696F6E2063656E746572E2809973206469737061746368206C6973742E
		 Shared Sub RemoveObserver(observer as AppleObject)
		  #If TargetMacOS then
		    removeObserver DefaultCenter.Id, observer.id
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616C6C2074686973206D6574686F6420746F2072656D6F766520616E204F62736572766572202865697468657220616E20694F534C69624E6F74696669636174696F6E4F62736572766572206F722061204F626A656374207468617420616464656420697473656C6620666F7220612073656C6563746F72292066726F6D20746865204E6F74696669636174696F6E2063656E746572E2809973206469737061746368206C6973742E
		 Shared Sub RemoveObserver(observer as AppleObject, notificationName as cfstringRef, Sender As AppleObject)
		  #If TargetMacOS then
		    removeObservername DefaultCenter.Id, observer.id, notificationName, if (sender = nil, nil, sender.id)
		  #endif
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub removeObserver Lib foundationlibname Selector "removeObserver:" (id as ptr, observer as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub removeObserverName Lib foundationlibname Selector "removeObserver:name:object:" (id as ptr, observer as ptr, name as CFStringRef, sender as ptr)
	#tag EndExternalMethod


	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag Note, Name = Status complete & documented
		OS X 10.11.5
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSNotificationCenter")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207368617265642073696E676C65746F6E20696E7374616E63652074686174206973207573656420666F7220617474616368696E6720616E642072656D6F76696E67206E6F74696669636174696F6E206C696E6B732E
		#tag Getter
			Get
			  #If TargetMacOS then
			    static mdefaultcenter as AppleNotificationCenter =new AppleNotificationCenter (getdefaultCenter(ClassPtr))
			    return mdefaultcenter
			  #endif
			End Get
		#tag EndGetter
		Shared DefaultCenter As AppleNotificationCenter
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
