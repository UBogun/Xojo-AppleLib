#tag Module
Protected Module iOSViewExtension
	#tag Method, Flags = &h0
		Function AppleView(extends c as iOSView) As AppleView
		  return appleview.makefromptr (c.ViewHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AppleViewController(extends c as iOSView) As AppleViewcontroller
		  return new AppleViewController (c.handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dismiss(extends v as iOSView, animated as boolean = false)
		  v.AppleViewController.Dismiss  animated
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PresentationStyle(extends v as iOSView) As UIViewModalPresentationStyle
		  return UIViewModalPresentationStyle(integer(v.AppleViewController.ModalPresentationStyle))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PresentationStyle(extends v as iOSView, assigns value as UIViewModalPresentationStyle)
		  v.AppleViewController.ModalPresentationStyle = appleview.UIViewModalPresentationStyle(integer(value))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PushToCover(extends v as iOSView, newview as iosview)
		  dim newController as new AppleViewController (newview.Handle)
		  newController.ModalTransitonStyle = UIKitFramework.UIModalTransitionStyle.CoverVertical
		  v.AppleViewController.Present newController, true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PushToCurl(extends v as iOSView, newview as iosview)
		  dim newController as new AppleViewController (newview.Handle)
		  newController.ModalTransitonStyle = UIKitFramework.UIModalTransitionStyle.PartialCurl
		  v.AppleViewController.Present newController, true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PushToDissolve(extends v as iOSView, newview as iosview)
		  dim newController as new AppleViewController (newview.Handle)
		  newController.ModalTransitonStyle = UIKitFramework.UIModalTransitionStyle.CrossDissolve
		  v.AppleViewController.Present newController, true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PushToSlide(extends v as iOSView, newview as iosview)
		  dim newController as new AppleViewController (newview.Handle)
		  newController.ModalTransitonStyle = UIKitFramework.UIModalTransitionStyle.FlipHorizontal
		  v.AppleViewController.Present newController, true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ViewHandle(extends v as iOSView) As Ptr
		  return UIKitFramework.getview (v.Handle)
		End Function
	#tag EndMethod


	#tag Enum, Name = UIViewModalPresentationStyle, Type = Integer, Flags = &h1
		FullScreen = 0
		  PageSheet
		  FormSheet
		  CurrentContext
		  Custom
		  OverFullScreen
		  OverCurrentContext
		  PopOver
		None = -1
	#tag EndEnum


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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
