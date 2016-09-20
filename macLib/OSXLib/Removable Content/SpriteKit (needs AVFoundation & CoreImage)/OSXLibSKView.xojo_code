#tag Class
Protected Class OSXLibSKView
Inherits OSXLibView
	#tag Event , Description = 4669726573207768656E206120737562766965772077617320616464656420746F2074686520766965772E
		Sub AddedSubview(Subview as AppleView)
		  #pragma unused Subview
		End Sub
	#tag EndEvent

	#tag Event
		Sub Close()
		  mAppleObject = nil
		  RaiseEvent Close
		End Sub
	#tag EndEvent

	#tag Event , Description = 5573652074686973206576656E7420746F206372656174652043616E76617320737562636C61737365732E2052657475726E207472756520696620796F7520686176652073657420746865206D4170706C654F626A6563742070726F706572747920746F2061206E657720636F6E74726F6C20766965772E
		Function InitControl() As Boolean
		  // Yes, there is no recommend way of inserting own desktop controls via declare.
		  // The Xojo engineers always warned that messing with the view hierarchy of Xojo controls could lead to problems in the future.
		  // Instead of attaching the declared control as a subview to the Xojo canvas, I chose a more radical approach:
		  // I am kicking the Xojo canvas out of the hierarchy completely and replace it ith the declared one. 
		  // This way no interference with Xojo events should occur, but I am mighty sure the engineers won’t recommend this approach as well.
		  // Let’s hope for a desktop usercontrol soon!
		  self.LockLeft = false
		  self.LockRight = false
		  self.LockBottom = false
		  self.LockTop = false
		  
		  mAppleObject = new AppleSKView (AppleObject.fromControl(self).Frame) // Declaring the new Applecontrol, in this case a SKview.
		  // Please note the internal events of the declared class will not fire anymore.
		  mAppleObject.Registercontrol self
		  // This is to avoid confusions where an event expects a return value.
		  // mAppleObject.WantsLayer = true // This is the layered version of a canvas where you can use the layer fully but have no paint event available.
		  // Its subclass ApplePaintView will follow soon!
		  dim origview as new appleview(self) // now accessing the view object of the parent canvas we hijack.
		  dim controller as appleview = origview.SuperView // and jump one point higher in the ciew hierarchy, probably to the window’s content view.
		  for q as integer = 0 to controller.Subviews.Count -1 // iterating through its subviews
		    dim subview as appleview = new appleview(controller.Subviews.PtrAtIndex(q)) // fetching the subviews
		    if subview.id = origview.id then // is this our control?
		      mAppleObject.AutoResizingMask = AppleAutoresizingMask.FullResize // … to the autoresizing mask
		      controller.ReplaceSubview origview, mAppleObject // and kick out the canvas by replacing it with our view
		      exit 
		    end if
		  next
		  attachHandlers
		  return true
		End Function
	#tag EndEvent

	#tag Event , Description = 52657475726E207472756520746F20696E646963617465207468617420796F757220636F6E74656E7420636F76657273207468652077686F6C652076696577206672616D6520776974686F7574207472616E73706172656E636965732E
		Function Opaque() As Boolean
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Paint(g as applecgcontext, Rect as FoundationFrameWork.NSRect)
		  #pragma unused rect
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Sub WillRemoveSubview(SubView as AppleView)
		  #pragma Unused SubView
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AttachHandlers()
		  AddHandler AppleObject.UpdateScene, Addressof InformOnSceneUpdate
		  AddHandler AppleObject.DidEvaluateActions, Addressof informOnDidEvaluateActions
		  AddHandler AppleObject.DidSimulatePhysics, Addressof informOnDidSimulatePhysics
		  AddHandler AppleObject.didApplyConstraints, Addressof informondidApplyConstraints
		  AddHandler AppleObject.FinishedSceneUpdate, Addressof informondidFinishUpdateForScene
		  AddHandler AppleObject.SceneSizeChanged, Addressof InformOnSceneSizeChange
		  AddHandler appleObject.SceneDidLoad, Addressof informonSceneDidLoad
		  AddHandler AppleObject.SceneWillMoveFromView, Addressof informonSceneWillMoveFromView
		  AddHandler AppleObject.SceneDidMoveToView, addressof informOnSceneWillMoveToView
		  
		  AddHandler AppleObject.ContactBegan, addressOf informOnDidBeginContact
		  AddHandler AppleObject.ContactEnded, addressOf informOnDidEndContact
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informondidApplyConstraints(view as AppleSKView, scene as appleskscene)
		  RaiseEvent DidApplyConstraints (scene)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informOnDidBeginContact(view as AppleSKView, contact as AppleSKPhysicsContact)
		  RaiseEvent ContactBegan (contact)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informOnDidEndContact(view as AppleSKView, contact as AppleSKPhysicsContact)
		  RaiseEvent ContactEnded (contact)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informOnDidEvaluateActions(view as AppleSKView, scene as appleskscene)
		  RaiseEvent DidEvaluateActions (scene)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informondidFinishUpdateForScene(view as AppleSKView, scene as appleskscene)
		  RaiseEvent FinishedSceneUpdate (scene)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informOnDidSimulatePhysics(view as AppleSKView, scene as appleskscene)
		  RaiseEvent DidSimulatePhysics (scene)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informonSceneDidLoad(view as AppleSKView, scene as appleskscene)
		  RaiseEvent SceneDidLoad (scene)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InformOnSceneSizeChange(view as AppleSKView, scene as appleskscene, oldsize as FoundationFrameWork.NSSize)
		  RaiseEvent SceneSizeChanged (scene, oldsize)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InformOnSceneUpdate(view as AppleSKView, scene as appleskscene, updatetime as double)
		  RaiseEvent UpdateScene (scene, UpdateTime)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informonSceneWillMoveFromView(view as AppleSKView, scene as appleskscene)
		  RaiseEvent SceneWillMoveFromView (scene)
		  #Pragma unused view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub informonSceneWillMoveToView(view as AppleSKView, scene as appleskscene)
		  RaiseEvent SceneDidMoveToView (scene)
		  #Pragma unused view
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ContactBegan(Contact As AppleSKPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ContactEnded(Contact As AppleSKPhysicsContact)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event DidApplyConstraints(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event DidEvaluateActions(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event DidSimulatePhysics(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event FinishedSceneUpdate(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event SceneDidLoad(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event SceneDidMoveToView(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event SceneSizeChanged(Scene as AppleSKScene, OldSize as FoundationFrameWork.NSSize)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event SceneWillMoveFromView(Scene as AppleSKScene)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 46697265732061742074686520626567696E6E696E67206F66207468652070726573656E746564207363656E6520757064617465206379636C652E
		Event UpdateScene(Scene as AppleSKScene, CurrentTime as Double)
	#tag EndHook


	#tag Note, Name = ReadMe - create your own controls!
		
		If you want to contribute to OSXLib with your own declared controls, please do so!
		But please, if ever possible, try to do this in alignment with my programming style so it’s easier to integrate fully:
		
		 – Create a subclass of AppleObject or the superclass that is the super for your control.
		– make sure it inherits the OSXLibControlledObject interface.
		– Overwrite the Parentcontrol method so it works with your class.
		 – Use external declares for its features and computed properties wherever possible.
		– Try to make it as complete as possible.
		– Inherit the necessary AppleResponder and AppleView / ApplePaintView methods via a custom classptr if necessary.
		– If your control uses a delegate, complete the classptr like I did in the AppleView class. Add impl_methods and forwarders.
		  The latter may not be elegant and one central event notification method would be much better style, but I rather go for execution speed.
		
		– Then, create a subclass of OSXLibControl or OSXLibCanvas
		– Give it the properties AppleObject and mAppleObject like in this class, but as kind of your AppleClass.
		– Follow the open event handler of this class, adjusting it to the constructor and type of your control.
		   Don’t forget to set the mAppleObject property to your new instance.
		
		– And then, start adding inform_Forward methods and event definitions for them, and create Convenience methods that convert from and into Xojo datatypes and classes wherever appropriate.
		
		 When you’re done and all tested well:
		– If there is a native Xojo control of your class with an accessible handle, locate the datatypes extensions folder and add a module for the native class.
		– Copy the AppleObject method of one of the exiting modules and tweak it so it matches the Xojo class. 
		  Don’t forget to put the converter into #Pragma IfTargetMacOS brackets!
		
		And then, please make a merge request by uploading your content to the repository.
		
		Thanks a lot!
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mAppleObject
			End Get
		#tag EndGetter
		AppleObject As AppleSKView
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mAppleObject As AppleSKView
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared XojoControls As xojo.Core.Dictionary
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptFocus"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EraseBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Group="Position"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
