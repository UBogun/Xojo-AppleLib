#tag Class
Protected Class AppleViewController
Inherits AppleResponder
	#tag Method, Flags = &h0
		Shared Sub AttemptRotationToDeviceOrientation()
		  Declare Sub attemptRotationToDeviceOrientation lib UIKitLibname selector "attemptRotationToDeviceOrientation" (id as ptr)
		  attemptRotationToDeviceOrientation classptr
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Dismiss(animated as boolean = false)
		  declare sub dismissViewControllerAnimated lib UIKitLibname selector "dismissViewControllerAnimated:completion:" _
		  (id as ptr, animated as Boolean, completion as ptr)
		  dim completion as new AppleBlock (AddressOf DismissCompletionBlock)
		  dismissViewControllerAnimated id, animated, completion.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DismissCompletionBlock()
		  if self <> NIL then RaiseEvent DismissViewAnimationFinished
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadView()
		  declare sub loadView lib UIKitLibname selector "loadView:" (id as ptr)
		  loadview id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleViewController
		  return if (aptr= nil, nil, new AppleViewController(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Present(newView as AppleViewcontroller, animated as boolean = false)
		  declare sub presentViewController lib UIKitLibname selector "presentViewController:animated:completion:" _
		  (id as ptr, newview as ptr, animated as Boolean, completion as ptr)
		  dim completion as new AppleBlock (AddressOf PresentCompletionBlock)
		  presentViewController id, newview.id, animated, completion.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PresentCompletionBlock()
		  if self <> NIL then RaiseEvent PresentViewAnimationFinished
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DismissViewAnimationFinished()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PresentViewAnimationFinished()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleView.MakeFromPtr(UIKitFramework.getview(id))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub setView lib UIKitLibname selector "setView:" (id as ptr, value as ptr)
			  setView id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		AppleView As AppleView
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function automaticallyAdjustsScrollViewInsets lib UIKitLibname selector "automaticallyAdjustsScrollViewInsets" (id as ptr) as Boolean
			  return automaticallyAdjustsScrollViewInsets (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setAutomaticallyAdjustsScrollViewInsets lib UIKitLibname selector "setAutomaticallyAdjustsScrollViewInsets:" (id as ptr, value as Boolean)
			  setAutomaticallyAdjustsScrollViewInsets id, value
			End Set
		#tag EndSetter
		AutomaticallyAdjustsScrollViewInsets As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function shouldAutorotate lib UIKitLibname selector "shouldAutorotate" (id as ptr) as Boolean
			  return shouldAutorotate (id)
			End Get
		#tag EndGetter
		AutoRotate As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIViewController")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function edgesForExtendedLayout lib UIKitLibname selector "edgesForExtendedLayout" (id as ptr) as uinteger
			  return new UIRectEdge (edgesForExtendedLayout (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setEdgesForExtendedLayout lib UIKitLibname selector "setEdgesForExtendedLayout:" (id as ptr, value as uinteger)
			  setEdgesForExtendedLayout id, value.id
			End Set
		#tag EndSetter
		EdgesForExtendedLayout As UIRectEdge
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function extendedLayoutIncludesOpaqueBars lib UIKitLibname selector "extendedLayoutIncludesOpaqueBars" (id as ptr) as Boolean
			  return extendedLayoutIncludesOpaqueBars (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setExtendedLayoutIncludesOpaqueBars lib UIKitLibname selector "setExtendedLayoutIncludesOpaqueBars:" (id as ptr, value as Boolean)
			  setExtendedLayoutIncludesOpaqueBars id, value
			End Set
		#tag EndSetter
		ExtendedLayoutIncludesOpaqueBars As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function isModalInPopover lib UIKitLibname selector "isModalInPopover" (id as ptr) as Boolean
			  return isModalInPopover (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare sub setModalInPopover lib UIKitLibname selector "setModalInPopover:" (id as ptr, value as Boolean)
			  setModalInPopover id, value
			End Set
		#tag EndSetter
		ModalInPopover As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function modalPresentationStyle lib UIKitLibname selector "modalPresentationStyle" (id as ptr) as appleview.UIViewModalPresentationStyle
			  Return modalPresentationStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setModalPresentationStyle lib UIKitLibname selector "setModalPresentationStyle:" (id as ptr, value as appleview.UIViewModalPresentationStyle)
			  setModalPresentationStyle id, value
			End Set
		#tag EndSetter
		ModalPresentationStyle As appleview.UIViewModalPresentationStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function modalTransitionStyle lib UIKitLibname selector "modalTransitionStyle" (id as ptr) as UIModalTransitionStyle
			  Return modalTransitionStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setModalTransitionStyle lib UIKitLibname selector "setModalTransitionStyle:" (id as ptr, value as UIModalTransitionStyle)
			  setModalTransitionStyle id, value
			End Set
		#tag EndSetter
		ModalTransitonStyle As UIModalTransitionStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function navigationController lib UIKitLibname selector "navigationController" (id as ptr) as ptr
			  return navigationController (id)
			End Get
		#tag EndGetter
		NavigationController As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function nibBundle lib UIKitLibname selector "nibBundle" (id as ptr) as Ptr
			  return AppleCFBundle.MakeFromCFTypeRef (nibBundle(id))
			End Get
		#tag EndGetter
		NibBundle As AppleCFBundle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function nibName lib UIKitLibname selector "nibName" (id as ptr) as CFStringRef
			  return nibName (id)
			End Get
		#tag EndGetter
		NibName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function parentViewController lib UIKitLibname selector "parentViewController" (id as ptr) as ptr
			  return appleviewcontroller.MakeFromPtr (parentViewController (id))
			End Get
		#tag EndGetter
		ParentViewController As AppleViewController
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function popoverPresentationController lib UIKitLibname selector "popoverPresentationController" (id as ptr) as ptr
			  return popoverPresentationController (id)
			End Get
		#tag EndGetter
		PopOverPresentationController As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function presentationController lib UIKitLibname selector "presentationController" (id as ptr) as ptr
			  return presentationController (id)
			End Get
		#tag EndGetter
		PresentationController As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function presentedViewController lib UIKitLibname selector "presentedViewController" (id as ptr) as ptr
			  return appleviewcontroller.MakeFromPtr (presentedViewController (id))
			End Get
		#tag EndGetter
		PresentedViewController As AppleViewController
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function presentingViewController lib UIKitLibname selector "presentingViewController" (id as ptr) as ptr
			  return appleviewcontroller.MakeFromPtr (presentingViewController (id))
			End Get
		#tag EndGetter
		PresentingViewController As AppleViewController
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function splitViewController lib UIKitLibname selector "splitViewController" (id as ptr) as ptr
			  return splitViewController (id)
			End Get
		#tag EndGetter
		SplitViewController As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function supportedInterfaceOrientations lib UIKitLibname selector "supportedInterfaceOrientations" (id as ptr) as UInteger
			  Return new AppleInterfaceOrientationMask (supportedInterfaceOrientations(id))
			End Get
		#tag EndGetter
		SupportedOrientations As AppleInterfaceOrientationMask
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function tabBarController lib UIKitLibname selector "tabBarController" (id as ptr) as ptr
			  return tabBarController (id)
			End Get
		#tag EndGetter
		TabBarController As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return UIKitFramework.getTitle(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setTitle mid, value
			End Set
		#tag EndSetter
		Title As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare function isViewLoaded lib UIKitLibname selector "isViewLoaded" (id as ptr) as Boolean
			  return isViewLoaded (id)
			End Get
		#tag EndGetter
		ViewIsLoaded As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AutomaticallyAdjustsScrollViewInsets"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoRotate"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanBecomeFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanResignFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExtendedLayoutIncludesOpaqueBars"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hasInited"
			Group="Behavior"
			Type="Boolean"
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
			Name="IsFirstResponder"
			Group="Behavior"
			Type="Boolean"
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
			Name="ModalInPopover"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ModalPresentationStyle"
			Group="Behavior"
			Type="appleview.UIViewModalPresentationStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - FullScreen"
				"1 - PageSheet"
				"2 - FormSheet"
				"3 - CurrentContext"
				"4 - Custom"
				"5 - OverFullScreen"
				"6 - OverCurrentContext"
				"7 - PopOver"
				"-1 - None"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ModalTransitonStyle"
			Group="Behavior"
			Type="UIModalTransitionStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - CoverVertical"
				"1 - FlipHorizontal"
				"2 - CrossDissolve"
				"3 - PartialCurl"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NibName"
			Group="Behavior"
			Type="Text"
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
			Name="TextInputContextIdentifier"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ViewIsLoaded"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
