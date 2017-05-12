#tag Class
Protected Class AppleSCNAnimatableObject
Inherits AppleSCNObject
	#tag Method, Flags = &h0, Description = 4164647320616E20616E696D6174696F6E206F626A65637420666F722074686520737065636966696564206B65792E
		Sub AddAnimation(Animation as AppleCAAnimation, Key as Text)
		  SceneKitFrameWork.addAnimation id, Animation.id, Key
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520616E696D6174696F6E20776974682074686520737065636966696564206B65792E
		Function Animation(Key as Text) As AppleCAAnimation
		  return AppleCAAnimation.MakeFromPtr(SceneKitFrameWork.getanimationForKey(id, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C756520696E6469636174696E6720776865746865722074686520616E696D6174696F6E20617474616368656420746F20746865206F626A65637420776974682074686520737065636966696564206B6579206973207061757365642E
		Function AnimationPaused(Key As Text) As Boolean
		  return SceneKitFrameWork.getisAnimationForKeyPaused(id, key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577206D6174657269616C2070726F7065727479206F626A6563742077697468207468652073706563696669656420636F6E74656E74732E20436F6E74656E74732063616E206265206F6E65206F662074686520666F6C6C6F77696E67206F626A656374733A0A2A204120636F6C6F7220284E53436F6C6F722F5549436F6C6F72206F72204347436F6C6F72526566292C2073706563696679696E67206120636F6E7374616E7420636F6C6F72206163726F737320746865206D6174657269616CE280997320737572666163650A2A20416E20696D61676520284E53496D6167652F5549496D616765206F72204347496D616765526566292C2073706563696679696E672061207465787475726520746F206265206D6170706564206163726F737320746865206D6174657269616CE280997320737572666163650A2A20416E204E53537472696E67206F72204E5355524C206F626A6563742073706563696679696E6720746865206C6F636174696F6E206F6620616E20696D6167652066696C650A2A20416E206172726179206F662073697820696D6167657320284E534172726179292C2073706563696679696E6720746865206661636573206F6620612063756265206D61700A2A204120436F726520416E696D6174696F6E206C61796572202843414C61796572290A2A204120746578747572652028534B546578747572652C204D444C546578747572652C204D544C546578747572652C206F7220474C4B54657874757265496E666F290A2A204120537072697465204B6974207363656E652028534B5363656E6529
		Sub Constructor(Contents as AppleGeneralObject)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (materialPropertyWithContents(ClassPtr,Contents.GeneralID), true, true)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function materialPropertyWithContents Lib SceneKitLibname Selector "materialPropertyWithContents:" (id as ptr, contents as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 5061757365732074686520616E696D6174696F6E20617474616368656420746F20746865206F626A65637420776974682074686520737065636966696564206B65792E
		Sub PauseAnimation(Key As Text)
		  SceneKitFrameWork.pauseAnimationForKey(id, key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616C6C2074686520616E696D6174696F6E732063757272656E746C7920617474616368656420746F20746865206F626A6563742E
		Sub RemoveAllAnimations()
		  SceneKitFrameWork.removeAllAnimations(id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732074686520616E696D6174696F6E20617474616368656420746F20746865206F626A65637420776974682074686520737065636966696564206B65792E
		Sub RemoveAnimation(Key As Text)
		  SceneKitFrameWork.removeAnimationForKey(id, key)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526573756D657320612070726576696F75736C792070617573656420616E696D6174696F6E20617474616368656420746F20746865206F626A65637420776974682074686520737065636966696564206B65792E
		Sub ResumeAnimation(Key As Text)
		  SceneKitFrameWork.resumeAnimationForKey(id, key)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 416E20617272617920636F6E7461696E696E6720746865206B657973206F6620616C6C20616E696D6174696F6E732063757272656E746C7920617474616368656420746F20746865206F626A6563742E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr(SceneKitFrameWork.getanimationKeys(mid))
			End Get
		#tag EndGetter
		AnimationKeys As AppleArray
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
