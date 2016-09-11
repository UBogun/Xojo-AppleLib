#tag Class
Protected Class AppleSKVideoNode
Inherits AppleSKNode
	#tag Method, Flags = &h1000, Description = 496E697469616C697A6573206120766964656F206E6F6465207573696E6720616E206578697374696E67204156506C61796572206F626A6563742E
		Sub Constructor(Player as AppleAVPlayer)
		  super.Constructor (initWithAVPlayer (alloc(ClassPtr), player.id))
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A6573206120766964656F206E6F6465207573696E6720612055524C2E
		Sub Constructor(VIdeoURL as AppleURL)
		  if RespondsToSelector("initWithURL:", classptr) then
		    super.Constructor (AVFoundationFramework.initWithURL (alloc(ClassPtr), VIdeoURL.id))
		  else
		    super.Constructor (initWithVideoURL (alloc(ClassPtr), VIdeoURL.id))
		  end if
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A6573206120766964656F206E6F6465207573696E67206120766964656F2066696C652073746F72656420696E20746865206170702062756E646C652E
		Sub Constructor(VideoFileName as CFStringRef)
		  if RespondsToSelector("initWithFileNamed:", classptr) then
		    super.Constructor (SpriteKitFramework.initWithFileNamed (alloc(ClassPtr), VideoFileName))
		  else
		    super.Constructor (initWithVideoFileNamed(alloc(classptr), VideoFileName))
		  end if
		  MHasOwnership = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 496E697469616C697A6573206120766964656F206E6F6465207573696E6720612055524C2E
		Sub Constructor(VIdeoURL as Folderitem)
		  Constructor (new AppleURL(VIdeoURL))
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithAVPlayer Lib SpriteKitLibName Selector "initWithAVPlayer:" (id as ptr, player as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithVideoFileNamed Lib SpriteKitLibName Selector "initWithVideoFileNamed:" (id as ptr, filename as CFStringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function initWithVideoURL Lib SpriteKitLibName Selector "initWithVideoURL:" (id as ptr, URL as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 50617573657320766964656F20706C61796261636B2E
		Sub Pause()
		  SpriteKitFramework.pause mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53746172747320766964656F20706C61796261636B2E
		Sub Play()
		  play mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub play Lib SpriteKitLibName Selector "play" (id as ptr)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 446566696E65732074686520706F696E7420696E2074686520737072697465207468617420636F72726573706F6E647320746F20746865206E6F6465E280997320706F736974696F6E2E
		#tag Getter
			Get
			  return SpriteKitFramework.getanchorPoint (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setanchorPoint mid,value
			End Set
		#tag EndSetter
		AnchorPoint As FoundationFrameWork.NSpoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKVideoNode")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064696D656E73696F6E73206F662074686520766964656F206E6F64652C20696E20706F696E74732E
		#tag Getter
			Get
			  return FoundationFrameWork.getSize(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFrameWork.setsize mid,value
			End Set
		#tag EndSetter
		Size As FoundationFrameWork.NSSize
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecutesActions"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
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
			Name="Paused"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Double"
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
			Name="UserInteractionEnabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="XScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YScale"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZPosition"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ZRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
