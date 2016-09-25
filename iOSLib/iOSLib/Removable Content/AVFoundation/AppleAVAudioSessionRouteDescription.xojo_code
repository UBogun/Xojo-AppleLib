#tag Class
Protected Class AppleAVAudioSessionRouteDescription
Inherits appleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getinputs Lib AVFoundationLibname Selector "inputs" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21
		Attributes( hidden ) Private Declare Function getoutputs Lib AVFoundationLibname Selector "outputs" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleAVAudioSessionRouteDescription
		  return if (aptr = nil, nil, new AppleAVAudioSessionRouteDescription (aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status
		
		completed, tested
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as ptr = FoundationFramework.NSClassFromString ("AVAudioSessionRouteDescription")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return applearray.MakeFromPtr(getinputs (id))
			  
			End Get
		#tag EndGetter
		Inputs As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return applearray.MakeFromPtr(getoutputs (id))
			  
			End Get
		#tag EndGetter
		Outputs As AppleArray
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
