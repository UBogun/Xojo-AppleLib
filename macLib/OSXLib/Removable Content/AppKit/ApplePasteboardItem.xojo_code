#tag Class
Protected Class ApplePasteboardItem
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 52657475726E732066726F6D206120676976656E206172726179206F6620747970657320746865206669727374207479706520636F6E7461696E656420696E20746865207061737465626F617264206974656D2C206163636F7264696E6720746F20746865206F72646572696E67206F662074797065732E
		Function AvailableTypeFromArray(TypeArray as applearray) As Text
		  return getavailableTypeFromArray(mid, TypeArray.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getavailableTypeFromArray Lib AppKitLibname Selector "availableTypeFromArray:" (id as ptr, anArray as Ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettypes Lib AppKitLibname Selector "types" (id as ptr) As Ptr
	#tag EndExternalMethod


	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F662055544920737472696E6773206F6620746865206461746120747970657320737570706F72746564206279207468652072656365697665722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Return AvailableTypeFromArray(types)
			End Get
		#tag EndGetter
		AvailableType As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as ptr
			  if mClassPtr = Nil then mClassPtr = FoundationFrameWork.NSClassFromString("NSPasteboardItem")
			  Return mClassPtr
			  
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F662055544920737472696E6773206F6620746865206461746120747970657320737570706F72746564206279207468652072656365697665722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Return AppleArray.MakeFromPtr(GetTypes(mid))
			End Get
		#tag EndGetter
		Types As AppleArray
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
			Name="AvailableType"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
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
