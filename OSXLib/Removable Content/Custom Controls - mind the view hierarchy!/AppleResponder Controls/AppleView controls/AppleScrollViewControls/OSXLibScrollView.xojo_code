#tag Class
Protected Class OSXLibScrollView
Inherits OSXLibView
	#tag Event , Description = 5573652074686973206576656E7420746F206372656174652043616E76617320737562636C61737365732E2052657475726E207472756520696620796F7520686176652073657420746865206D4170706C654F626A6563742070726F706572747920746F2061206E657720636F6E74726F6C20766965772E
		Function InitControl() As Boolean
		  // Yes, there is no recommend way of inserting own desktop controls via declare.
		  // The Xojo engineers always warned that messing with the view hierarchy of Xojo controls could lead to problems in the future.
		  // Instead of attaching the declared control as a subview to the Xojo canvas, I chose a more radical approach:
		  // I am kicking the Xojo canvas out of the hierarchy completely and replace it ith the declared one. 
		  // This way no interference with Xoo events should occur, but I am mighty sure the engineers won’t recommend this approach as well.
		  // Let’s hope for a desktop usercontrol soon!
		  
		  
		  if not Raiseevent InitControl then
		    mAppleObject = new AppleScrollView (AppleObject.fromControl(self).Frame) // Declaring the new Applecontrol, in this case a view.
		    mAppleObject.registercontrol self // and register this instance so it receives the events.
		    // Please note the internal events of the declared class will not fire anymore.
		    // This is to avoid confusions where an event expects a return value.
		    dim origview as new appleview(self) // now accessing the view object of the parent canvas we hijack.
		    dim controller as appleview = origview.SuperView // and jump one point higher in the ciew hierarchy, probably to the window’s content view.
		    for q as integer = 0 to controller.Subviews.Count -1 // iterating through its subviews
		      dim subview as appleview = new appleview(controller.Subviews.PtrAtIndex(q)) // fetching the subviews
		      if subview.id = origview.id then // is this our control?
		        dim mask as new AppleAutoresizingMask(self) // Yes: Copy the locks 
		        mAppleObject.AutoResizingMask = mask // … to the autoresizing mask
		        mAppleObject.TranslatesAutoresizingMaskIntoConstraints = true
		        controller.ReplaceSubview origview, mAppleObject // and kick out the canvas by replacing it with our view
		        exit 
		      end if
		    next
		    return true
		  end if
		  
		End Function
	#tag EndEvent

	#tag Event , Description = 466972657320696620746865207573657220686173207374617274656420726573697A696E672074686520766965772E
		Sub Resize()
		  
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E207468652075736572206861732066696E697368656420726573697A696E672074686520766965772E
		Sub Resized()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnviewDidEndLiveResize() As Boolean
		  return RaiseEvent Resized
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnviewWillStartLiveResize() As Boolean
		  return RaiseEvent Resize
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event InitControl() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 5468652075736572207374617274656420726573697A696E672074686520706172616E657420636F6E74726F6C2E2052657475726E207472756520746F206F76657272696465206175746F6D61746963207363726F6C6C7669657720656C656D656E747320706C6163656D656E742E
		Event Resize() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 54686520757365722066696E697368656420726573697A696E672074686520706172616E657420636F6E74726F6C2E2052657475726E207472756520746F206F76657272696465206175746F6D61746963207363726F6C6C7669657720656C656D656E747320706C6163656D656E742E
		Event Resized() As Boolean
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mAppleObject
			End Get
		#tag EndGetter
		AppleObject As AppleScrollView
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mAppleObject As AppleScrollView
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
