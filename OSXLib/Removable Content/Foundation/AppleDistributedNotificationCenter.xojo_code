#tag Class
Protected Class AppleDistributedNotificationCenter
Inherits AppleNotificationCenter
	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Sub addObserverSelector Lib foundationlibname Selector "addObserver:selector:name:object:" (id as ptr, observer as ptr, sel as ptr, name as CFStringRef, obj as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h0
		Attributes( hidden ) Declare Function getnotificationCenterForType Lib foundationlibname Selector "notificationCenterForType:" (id as ptr, type as cfstringref) As Ptr
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSDistributedNotificationCenter")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207368617265642073696E676C65746F6E20696E7374616E63652074686174206973207573656420666F7220617474616368696E6720616E642072656D6F76696E67206E6F74696669636174696F6E206C696E6B732E
		#tag Getter
			Get
			  static mdefaultcenter as AppleDistributedNotificationCenter =new AppleDistributedNotificationCenter (getdefaultCenter(ClassPtr))
			  return mdefaultcenter
			End Get
		#tag EndGetter
		Shared DefaultCenter As AppleDistributedNotificationCenter
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206469737472696275746564206E6F74696669636174696F6E2063656E74657220666F72206120706172746963756C6172206E6F74696669636174696F6E2063656E74657220747970652C2077686963682063757272656E746C79206973206F6E6C792074797065206C6F63616C2E
		#tag Getter
			Get
			  static mlocalcenter as AppleDistributedNotificationCenter =new AppleDistributedNotificationCenter (getnotificationCenterForType(ClassPtr, kNSLocalNotificationCenterType))
			  return mlocalcenter
			End Get
		#tag EndGetter
		Shared LocalNotificationCenter As AppleDistributedNotificationCenter
	#tag EndComputedProperty


	#tag Constant, Name = kNSLocalNotificationCenterType, Type = Text, Dynamic = False, Default = \"NSLocalNotificationCenterType", Scope = Private
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
