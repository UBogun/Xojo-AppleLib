#tag Class
Protected Class AppleNotification
Inherits AppleObject
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 52657475726E732061206E6577206E6F74696669636174696F6E206F626A6563742077697468206120737065636966696564206E616D6520616E64206F626A6563742E
		Sub Constructor(Name As CFStringRef, SourceObject as AppleObject)
		  declare function notificationWithName lib FoundationLibName  selector "notificationWithName:object:" (id as ptr, name as CFStringRef, Sourceobject as Ptr) As Ptr
		  super.Constructor (notificationWithName(ClassPtr, name, if (SourceObject = nil, nil, SourceObject.Id)))
		  Retainclassobject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 52657475726E732061206E6577206E6F74696669636174696F6E206F626A6563742077697468206120737065636966696564206E616D652C206F626A65637420616E64207573657244696374696F6E6172792E20
		Sub Constructor(Name As CFStringRef, SourceObject as AppleObject, userInfo As Appledictionary)
		  declare function initWithName lib FoundationLibName  selector "initWithName:object:userInfo:" (id as ptr, name as CFStringRef, Sourceobject as Ptr, userinfo as Ptr) As Ptr
		  super.Constructor (initWithName(alloc(ClassPtr), name, SourceObject.Id, Userinfo.id))
		  MHasOwnership = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function MakefromPtr(aPtr as Ptr) As AppleNotification
		  return if (aptr = nil, nil, new AppleNotification(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 73656E647320746865206E6F74696669636174696F6E20746F206974732072656769737465726564207265636569766572732E
		Sub Post()
		  AppleNotificationCenter.PostNotification me
		End Sub
	#tag EndMethod


	#tag Note, Name = Status completed & documented
		
		iOS 9.2
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSNotification")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return FoundationFrameWork.getname (id)
			End Get
		#tag EndGetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206F626A656374206173736F636961746564207769746820746865206E6F74696669636174696F6E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function object_ lib FoundationLibName  selector "object" (id as ptr) as ptr
			  return new AppleObject (object_ (id))
			End Get
		#tag EndGetter
		NotificationObject As AppleObject
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207573657220696E666F726D6174696F6E2064696374696F6E617279206173736F6369617465642077697468207468652072656365697665722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleDictionary.MakeFromPtr (foundationframework.getuserinfo(id))
			End Get
		#tag EndGetter
		UserInfo As AppleDictionary
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
