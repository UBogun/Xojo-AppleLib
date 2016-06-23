#tag Class
Protected Class OSXLibView
Inherits OSXLibResponder
	#tag Event
		Sub Close()
		  mAppleObject = nil
		  RaiseEvent Close
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  // Yes, there is no recommend way of inserting own desktop controls via declare.
		  // The Xojo engineers always warned that messing with the view hierarchy of Xojo controls could lead to problems in the future.
		  // Instead of attaching the declared control as a subview to the Xojo canvas, I chose a more radical approach:
		  // I am kicking the Xojo canvas out of the hierarchy completely and replace it ith the declared one. 
		  // This way no interference with Xoo events should occur, but I am mighty sure the engineers won’t recommend this approach as well.
		  // Let’s hope for a desktop usercontrol soon!
		  #If TargetMacOS then
		    
		    if not RaiseEvent InitControl then // already initialized a subclass?
		      
		      mAppleObject = new appleview (AppleObject.fromControl(self).Frame) // Declaring the new Applecontrol, in this case a view.
		      mAppleObject.registercontrol self // and register this instance so it receives the events.
		      // Please note the internal events of the declared class will not fire anymore.
		      // This is to avoid confusions where an event expects a return value.
		      mAppleObject.WantsLayer = true // This is the layered version of a canvas where you can use the layer fully but have no paint event available.
		      // Its subclass ApplePaintView will follow soon!
		      dim origview as new appleview(self) // now accessing the view object of the parent canvas we hijack.
		      dim controller as appleview = origview.SuperView // and jump one point higher in the ciew hierarchy, probably to the window’s content view.
		      for q as integer = 0 to controller.Subviews.Count -1 // iterating through its subviews
		        dim subview as appleview = new appleview(controller.Subviews.PtrAtIndex(q)) // fetching the subviews
		        if subview.id = origview.id then // is this our control?
		          dim mask as new AppleAutoresizingMask(self) // Yes: Copy the locks 
		          mAppleObject.AutoResizingMask = mask // … to the autoresizing mask
		          controller.ReplaceSubview origview, mAppleObject // and kick of the canvas by replacing it with our view
		          exit 
		        end if
		      next
		    end if
		    RaiseEvent open
		  #endif
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #pragma unused g
		  #pragma unused areas
		End Sub
	#tag EndEvent

	#tag Event
		Sub ScaleFactorChanged()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnAcceptsTouchEvents() As Boolean
		  return RaiseEvent AcceptsTouchEvents
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnAllowsVibrancy() As Boolean
		  return RaiseEvent AllowsVibrancy ()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOndidAddSubview(Subview as appleview)
		  RaiseEvent AddedSubview (subview)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnDrawRect(Rect as FoundationFrameWork.NSrect)
		  RaiseEvent Paint (Rect)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnmenuForEvent(AnEvent As AppleNSEvent) As AppleMenu
		  return RaiseEvent MenuForEvent (AnEvent)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnopaque() As Boolean
		  return RaiseEvent Opaque ()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnViewDidEndLiveResize()
		  RaiseEvent Resized
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnViewDidhide()
		  RaiseEvent Hidden
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnviewDidMoveToWindow()
		  RaiseEvent Shown
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnViewDidUnhide()
		  RaiseEvent Unhidden
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnviewidMoveToSuperview()
		  RaiseEvent BecameSubview
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnviewWillMoveToSuperview(SuperView as appleview)
		  RaiseEvent WillBecomeSubview (SuperView)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnviewWillMoveToWindow(Window as AppleWindow)
		  RaiseEvent WillShow (Window)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnviewWillStartLiveResize()
		  RaiseEvent Resize
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnwillOpenMenu(Menu as AppleMenu, AnEvent As AppleNSEvent)
		  RaiseEvent WillOpenMenuForEvent (Menu, AnEvent)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnwillRemoveSubview(SubView as appleview)
		  RaiseEvent WillRemoveSubview (SubView)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AcceptsTouchEvents() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E206120737562766965772077617320616464656420746F2074686520766965772E
		Event AddedSubview(Subview as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E207472756520746F20616C6C6F772076696272616E63792063616C63756C6174696F6E7320666F7220796F757220766965772E
		Event AllowsVibrancy() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Event BecameSubview()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772069732068696464656E2C20656974686572206469726563746C792C206F7220696E20726573706F6E736520746F20616E20616E636573746F72206265696E672068696464656E2E
		Event Hidden()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 5573652074686973206576656E7420746F206372656174652043616E76617320737562636C61737365732E2052657475726E207472756520696620796F7520686176652073657420746865206D4170706C654F626A6563742070726F706572747920746F2061206E657720636F6E74726F6C20766965772E
		Event InitControl() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 5573652074686973206576656E7420746F2063726561746520637573746F6D204D656E757320666F7220646966666572656E74206B696E64206F66206576656E74732E
		Event MenuForEvent(AnEvent As AppleNSEvent) As AppleMenu
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E207472756520746F20696E646963617465207468617420796F757220636F6E74656E7420636F76657273207468652077686F6C652076696577206672616D6520776974686F7574207472616E73706172656E636965732E
		Event Opaque() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Paint(Rect as FoundationFrameWork.NSRect)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 466972657320696620746865207573657220686173207374617274656420726573697A696E672074686520766965772E
		Event Resize()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E207468652075736572206861732066696E697368656420726573697A696E672074686520766965772E
		Event Resized()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Shown()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E20746865207669657720697320756E68696464656E2C20656974686572206469726563746C792C206F7220696E20726573706F6E736520746F20616E20616E636573746F72206265696E6720756E68696464656E2E
		Event Unhidden()
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Event WillBecomeSubview(SuperView as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573206265666F7265206120636F6E7465787475616C206D656E7520697320646973706C617965642E205573652074686973206576656E7420746F206D6F6466792069742E
		Event WillOpenMenuForEvent(Menu As AppleMenu, AnEvent As AppleNSEvent)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Event WillRemoveSubview(SubView as AppleView)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4669726573207768656E2074686520766965772077617320616464656420617320612073756276696520746F20616E6F7468657220766965772E
		Event WillShow(Window As Applewindow)
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
		AppleObject As AppleView
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mAppleObject As AppleView
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
