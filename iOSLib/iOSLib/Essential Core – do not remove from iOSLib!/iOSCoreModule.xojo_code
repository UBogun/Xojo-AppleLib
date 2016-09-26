#tag Module
Protected Module iOSCoreModule
	#tag Method, Flags = &h0
		Sub MakeException(ErrorText as CFStringRef)
		  dim err as new xojo.Core.ErrorException
		  err.Reason = ErrorText
		  raise Err
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NilPtr(anObject as AppleObject) As Ptr
		  return if (anObject = nil, nil, anObject.id)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		LibDebug As Boolean = false
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function scale Lib "Foundation" Selector "scale" (classRef As Ptr) As CGFloat
			  Declare Function mainScreen Lib "Foundation" Selector "mainScreen" (classRef As Ptr) As Ptr
			  
			  Return scale(mainScreen(FoundationFramework.NSClassFromString("UIScreen")))
			  
			End Get
		#tag EndGetter
		ScreenResolution As double
	#tag EndComputedProperty


	#tag Constant, Name = kClassNotAvailable, Type = Text, Dynamic = False, Default = \"This class does not exist on this system.", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kMethodNotavailable, Type = Text, Dynamic = False, Default = \"Method is not available on this system.", Scope = Protected
	#tag EndConstant


	#tag ViewBehavior
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
			Name="LibDebug"
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScreenResolution"
			Group="Behavior"
			Type="double"
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
End Module
#tag EndModule
