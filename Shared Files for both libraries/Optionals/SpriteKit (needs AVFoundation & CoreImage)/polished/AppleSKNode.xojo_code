#tag Class
 Attributes ( incomplete ) Protected Class AppleSKNode
Inherits AppleResponder
	#tag Method, Flags = &h0, Description = 52657475726E7320616E20616374696F6E206173736F63696174656420776974682061207370656369666963206B65792E
		Function ActionForKey(Key as CFStringRef) As AppleSKAction
		  return AppleSKAction.MakeFromPtr (SpriteKitFramework.getactionForKey (mid, key))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416464732061206E6F646520746F2074686520656E64206F6620746865206E6F6465E2809973206C697374206F66206368696C64206E6F6465732E
		Sub AddChild(Child as AppleSKNode)
		  addChild mid, Child.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub addChild Lib SpriteKitLibName Selector "addChild:" (id as ptr, child as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub AddConstraint(Constraint as AppleSKConstraint)
		  dim resultarray as AppleMutableArray
		  if Constraints = nil then
		    resultarray = new AppleMutableArray (1)
		  else
		    resultarray = new AppleMutableArray (Constraints)
		  end if
		  resultarray.Addobject Constraint
		  Constraints = resultarray
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddReachConstraint(Constraint as AppleSKReachConstraints)
		  dim resultarray as AppleMutableArray
		  if reachConstraints = nil then
		    resultarray = new AppleMutableArray (1)
		  else
		    resultarray = new AppleMutableArray (reachConstraints)
		  end if
		  resultarray.Addobject Constraint
		  ReachConstraints = resultarray
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function calculateAccumulatedFrame Lib SpriteKitLibName Selector "calculateAccumulatedFrame" (id as ptr) As FoundationFrameWork.nsRect
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 536561726368657320746865206368696C6472656E206F662074686520726563656976696E67206E6F646520666F722061206E6F646520776974682061207370656369666963206E616D652E
		Function ChildNode(Name as text) As AppleSKNode
		  return AppleSKNode.MakeFromPtr ( childNodeWithName (mid, name))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E206172726179206F66206E6F6465732074686174206D6174636820746865206E616D6520706172616D657465722E0A53656520536561726368696E6720746865206E6F6465207472656520696E204170706C65E280997320646F637320666F722073656172636820737472696E6720706F73736962696C69746965732E0A68747470733A2F2F646576656C6F7065722E6170706C652E636F6D2F7265666572656E63652F7370726974656B69742F736B6E6F64652331363534343638
		Function ChildNodes(SearchString as CFStringRef) As AppleArray
		  return AppleArray.MakeFromPtr ( objectForKeyedSubscript (mid, SearchString))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function childNodeWithName Lib SpriteKitLibName Selector "childNodeWithName:" (id as ptr, child as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577206E6F64652E
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (SpriteKitFramework.node(ClassPtr))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E6577206E6F6465206279206C6F6164696E6720616E20617263686976652066696C652066726F6D207468652067616D65E2809973206D61696E2062756E646C652E2046696C656E616D65206D757374206265206120736B732066696C6520696E2074686520617070E28099732062756E646C6520776974686F757420746865202E736B7320657874656E73696F6E2E
		Sub Constructor(SKSFileName as CFStringREf)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  Super.Constructor (nodeWithFileNamed(ClassPtr, SKSFileName))
		  RetainClassObject
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C7565207468617420696E646963617465732077686574686572206120706F696E74206C69657320696E736964652074686520706172656E74E280997320636F6F7264696E6174652073797374656D2E
		Function ContainsPoint(aPoint as FoundationFramework.NSPoint) As Boolean
		  return SpriteKitFramework.containsPoint (mid, apoint)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D2074686520636F6F7264696E6174652073797374656D206F6620616E6F74686572206E6F646520696E20746865206E6F6465207472656520746F2074686520636F6F7264696E6174652073797374656D206F662074686973206E6F64652E
		Function ConvertPointFromNode(aPoint as FoundationFramework.NSPoint, aNode as AppleSKNode) As FoundationFramework.NSPoint
		  return convertPointfromNode (mid, apoint, aNode.id)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertPointfromNode Lib SpriteKitLibName Selector "convertPoint:fromNode:" (id as ptr, point as FoundationFrameWork . NSPoint, node as ptr) As FoundationFrameWork.nsPoint
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E7420696E2074686973206E6F6465E280997320636F6F7264696E6174652073797374656D20746F2074686520636F6F7264696E6174652073797374656D206F6620616E6F74686572206E6F646520696E20746865206E6F646520747265652E
		Function ConvertPointToNode(aPoint as FoundationFramework.NSPoint, aNode as AppleSKNode) As FoundationFramework.NSPoint
		  return convertPointtoNode (mid, apoint, aNode.id)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function convertPointtoNode Lib SpriteKitLibName Selector "convertPoint:toNode:" (id as ptr, point as FoundationFrameWork . NSPoint, node as ptr) As FoundationFrameWork.nsPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub enumerateChildNodesWithName Lib SpriteKitLibName Selector "enumerateChildNodesWithName:block:" (id as ptr, childname as CFStringRef, block as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 436F6D70617265732074686520706172616D65746572206E6F646520746F2074686520726563656976696E67206E6F64652E
		Function Equals(Node as AppleSKNode) As Boolean
		  return isEqualToNode (mid, node.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getblendMode Lib SpriteKitLibName Selector "blendMode" (id as ptr) As SKBlendMode
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getconstraints Lib SpriteKitLibName Selector "constraints" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlightingBitMask Lib SpriteKitLibName Selector "lightingBitMask" (id as ptr) As UInt32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getnormalTexture Lib SpriteKitLibName Selector "normalTexture" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getposition Lib SpriteKitLibName Selector "position" (id as ptr) As FoundationFrameWork.nsPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getreachConstraints Lib SpriteKitLibName Selector "reachConstraints" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshader Lib SpriteKitLibName Selector "shader" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshadowCastBitMask Lib SpriteKitLibName Selector "shadowCastBitMask" (id as ptr) As UInt32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getshadowedBitMask Lib SpriteKitLibName Selector "shadowedBitMask" (id as ptr) As UInt32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getxScale Lib SpriteKitLibName Selector "xScale" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getyScale Lib SpriteKitLibName Selector "yScale" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getzposition Lib SpriteKitLibName Selector "zPosition" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getzRotation Lib SpriteKitLibName Selector "zRotation" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C7565207468617420696E64696361746573207768657468657220746865206E6F646520697320612064657363656E64616E74206F662074686520746172676574206E6F64652E
		Function InParentHierarchy(Parent as AppleSKNode) As Boolean
		  return inParentHierarchy (mid, Parent.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function inParentHierarchy Lib SpriteKitLibName Selector "inParentHierarchy:" (id as ptr, parent as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 496E73657274732061206368696C6420696E746F206120737065636966696320706F736974696F6E20696E20746865206E6F6465E2809973206C697374206F66206368696C64206E6F6465732E
		Sub InsertChild(Child as AppleSKNode, Index as Integer)
		  InsertChild mid, Child.id, index
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub insertChild Lib SpriteKitLibName Selector "insertChild:atIndex:" (id as ptr, child as ptr, index as Integer)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C7565207468617420696E6469636174657320776865746865722074686973206E6F646520696E74657273656374732074686520737065636966696564206E6F64652E
		Function IntersectsNode(aNode as AppleSKNode) As Boolean
		  return intersectsNode (mid, aNode.id)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function intersectsNode Lib SpriteKitLibName Selector "intersectsNode:" (id as ptr, node as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function isEqualToNode Lib SpriteKitLibName Selector "isEqualToNode" (id as ptr, child as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleSKNode
		  if aptr <> nil then
		    dim result as new AppleSKNode(aptr)
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D6F76657320746865206E6F646520746F2061206E657720706172656E74206E6F646520696E20746865207363656E652E20546865206E6F6465206D61696E7461696E73206974732063757272656E7420706F736974696F6E20696E207363656E6520636F6F7264696E617465732E
		Sub MoveToParent(Parent as AppleSKNode)
		  moveToParent mid, Parent.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub moveToParent Lib SpriteKitLibName Selector "moveToParent:" (id as ptr, parent as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520646565706573742064657363656E64616E74207468617420696E7465727365637473206120706F696E742E
		Function NodeAtPoint(aPoint as FoundationFramework.NSPoint) As AppleSKNode
		  return AppleSKNode.MakeFromPtr (nodeAtPoint (mid, apoint))
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function nodeAtPoint Lib SpriteKitLibName Selector "nodeAtPoint:" (id as ptr, point as FoundationFrameWork . NSPoint) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E206172726179206F6620616C6C2064657363656E64616E7473207468617420696E74657273656374206120706F696E742E
		Function NodesAtPoint(aPoint as FoundationFramework.NSPoint) As AppleArray
		  return AppleArray.MakeFromPtr (nodesAtPoint (mid, apoint))
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function nodesAtPoint Lib SpriteKitLibName Selector "nodesAtPoint:" (id as ptr, point as FoundationFrameWork . NSPoint) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function nodeWithFileNamed Lib SpriteKitLibName Selector "nodeWithFileNamed:" (id as ptr, name as CFStringRef) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function objectForKeyedSubscript Lib SpriteKitLibName Selector "objectForKeyedSubscript:" (id as ptr, child as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616E20616374696F6E206173736F63696174656420776974682061207370656369666963206B65792E
		Sub RemoveActionForKey(Key as CFStringRef)
		  SpriteKitFramework.removeActionForKey mid, key
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E647320616E642072656D6F76657320616C6C20616374696F6E732066726F6D20746865206E6F64652E
		Sub RemoveAllActions()
		  SpriteKitFramework.removeAllActions mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616C6C206F6620746865206E6F6465E2809973206368696C6472656E2E
		Sub RemoveAllChildren()
		  SpriteKitFramework.RemoveAllChildren mid
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732061206C697374206F66206368696C6472656E2066726F6D2074686520726563656976696E67206E6F64652E
		Sub RemoveChildrenInArray(anArray as AppleArray)
		  removeChildrenInArray mid, anArray.id
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeChildrenInArray Lib SpriteKitLibName Selector "removeChildrenInArray:" (id as ptr, children as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub RemoveConstraint(Index as UInteger)
		  dim resultarray as new AppleMutableArray (Constraints)
		  resultarray.RemoveObjectAtIndex (index)
		  Constraints = resultarray
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320746865206E6F64652066726F6D2069747320706172656E742E
		Sub RemoveFromParent()
		  removeFromParent mid
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeFromParent Lib SpriteKitLibName Selector "removeFromParent" (id as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub RemoveReachConstraint(Index as UInteger)
		  dim resultarray as new AppleMutableArray (ReachConstraints)
		  resultarray.RemoveObjectAtIndex (index)
		  ReachConstraints = resultarray
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4164647320616E20616374696F6E20746F20746865206C697374206F6620616374696F6E7320657865637574656420627920746865206E6F64652E
		Sub RunAction(Action as AppleSKAction)
		  SpriteKitFramework.runAction mid, Action.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4164647320616E20616374696F6E20746F20746865206C697374206F6620616374696F6E7320657865637574656420627920746865206E6F64652E20596F757220626C6F636B2069732063616C6C6564207768656E2074686520616374696F6E20636F6D706C657465732E2054686520636F6D706C65746520626C6F636B2074616B657320616E642073656E6473206E6F20706172616D65746572732E
		Sub RunActionWithCompletionBlock(Action as AppleSKAction, block as AppleBlock)
		  SpriteKitFramework.runActionCompletion mid, Action.id, block.Handle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4164647320616E20616374696F6E20746F20746865206C697374206F6620616374696F6E7320657865637574656420627920746865206E6F646520616E64206E616D657320697420666F72206C617465722072657472696576616C2E
		Sub RunActionWithKey(Action as AppleSKAction, key as CFStringRef)
		  SpriteKitFramework.runActionWithKey mid, Action.id, key
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52756E7320746865206D6574686F647320696E636C7564656420696E206120626C6F636B206F6E206576657279206368696C642074686174206D6163746865732074686520737065636966696564206E616D652E0A536565207468652052756E426C6F636B54656D706C617465206675722075736167652E
		Sub RunBlockOnChildren(ChildName as CFStringRef, Block as AppleBlock)
		  enumerateChildNodesWithName (mid, ChildName, block.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunBlockonChildrenTemplate(Child as ptr, byref stop as boolean)
		  dim currentnode as new AppleSKNode(child)
		  
		  // perform anything you want on currentnode now and delete the following line:
		  #pragma Unused currentnode
		  #pragma Unused stop
		  
		  // if you want to stop the RundBlockonChildren method before the remaining children have been processed, set stop to true.
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub scaleToSize Lib SpriteKitLibName Selector "scaleToSize:" (id as ptr, value as FoundationFrameWork . NSSize)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setblendMode Lib SpriteKitLibName Selector "setBlendMode:" (id as ptr, value as SKBlendMode)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setconstraints Lib SpriteKitLibName Selector "setConstraints:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlightingBitMask Lib SpriteKitLibName Selector "setLightingBitMask:" (id as ptr, value as UInt32)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setnormalTexture Lib SpriteKitLibName Selector "setNormalTexture:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setposition Lib SpriteKitLibName Selector "setPosition:" (id as ptr, value as FoundationFrameWork . nsPoint)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setreachConstraints Lib SpriteKitLibName Selector "setReachConstraints:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 536574732074686520785363616C6520616E6420795363616C652070726F70657274696573206F6620746865206E6F64652E
		Sub SetScale(Factor as double)
		  setscale (mid, Factor)
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setScale Lib SpriteKitLibName Selector "setScale:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshader Lib SpriteKitLibName Selector "setShader:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshadowCastBitMask Lib SpriteKitLibName Selector "setShadowCastBitMask:" (id as ptr, value as UInt32)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setshadowedBitMask Lib SpriteKitLibName Selector "setShadowedBitMask:" (id as ptr, value as UInt32)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setXScale Lib SpriteKitLibName Selector "setXScale:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setYScale Lib SpriteKitLibName Selector "setYScale:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setzposition Lib SpriteKitLibName Selector "setZPosition:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setzRotation Lib SpriteKitLibName Selector "setZRotation:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		accessibility, valueforAttribute and GamePlayKit features missing.
		macOS 10.12 
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 412072656374616E676C6520696E2074686520706172656E74E280997320636F6F7264696E6174652073797374656D207468617420636F6E7461696E732074686520636F6E74656E74206F6620746865206E6F646520616E6420616C6C206F66206974732064657363656E64616E74732E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return calculateAccumulatedFrame (mid)
			  
			End Get
		#tag EndGetter
		AccumulatedFrame As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207472616E73706172656E63792076616C7565206170706C69656420746F20746865206E6F6465E280997320636F6E74656E74732E
		#tag Getter
			Get
			  return SpriteKitFramework.getalpha(mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setalpha mid, value
			End Set
		#tag EndSetter
		Alpha As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F6465E2809973206368696C6472656E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (SpriteKitFramework.getchildren(mid))
			End Get
		#tag EndGetter
		Children As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKNode")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C697374206F6620636F6E73747261696E747320746F206170706C7920746F20746865206E6F64652E
		#tag Getter
			Get
			  Return AppleArray.MakeFromPtr (getconstraints(mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setConstraints mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Constraints As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206E6F646520697320657865637574696E6720616374696F6E732E
		#tag Getter
			Get
			  return SpriteKitFramework.gethasActions (mid)
			  
			End Get
		#tag EndGetter
		ExecutesActions As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412072656374616E676C6520696E2074686520706172656E74E280997320636F6F7264696E6174652073797374656D207468617420636F6E7461696E7320746865206E6F6465E280997320636F6E74656E742C2069676E6F72696E6720746865206E6F6465E2809973206368696C6472656E2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return SpriteKitFramework.getFrame (mid)
			End Get
		#tag EndGetter
		Frame As FoundationFramework.NSRect
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520686569676874206F6620746865206E6F64652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return Frame.Size_.height
			End Get
		#tag EndGetter
		Height As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722061206E6F646520616E64206974732064657363656E64616E7473206172652072656E64657265642E
		#tag Getter
			Get
			  return SpriteKitFramework.getHidden (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setHidden mid,value
			End Set
		#tag EndSetter
		Hidden As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F6465E28099732061737369676E61626C65206E616D652E
		#tag Getter
			Get
			  return FoundationFrameWork.getName (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  FoundationFrameWork.setname mid, value
			End Set
		#tag EndSetter
		Name As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F6465E280997320706172656E74206E6F64652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleSKNode.MakeFromPtr (SpriteKitFramework.getparent(mid))
			End Get
		#tag EndGetter
		Parent As AppleSKNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 7768657468657220616374696F6E73206F6E20746865206E6F646520616E64206974732064657363656E64616E7473206172652070726F6365737365642E
		#tag Getter
			Get
			  Return SpriteKitFramework.getPaused (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setPaused mid, value
			End Set
		#tag EndSetter
		Paused As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207068797369637320626F6479206173736F636961746564207769746820746865206E6F64652E
		#tag Getter
			Get
			  return AppleSKPhysicsBody.MakeFromPtr (SpriteKitFramework.getphysicsBody(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setPhysicsBody mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		PhysicsBody As AppleSKPhysicsBody
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520706F736974696F6E206F6620746865206E6F646520696E2069747320706172656E74277320636F6F7264696E6174652073797374656D2E
		#tag Getter
			Get
			  return getposition (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setPosition (mid, value)
			  
			End Set
		#tag EndSetter
		Position As FoundationFramework.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726561636820636F6E73747261696E747320746F206170706C7920746F20746865206E6F6465207768656E20657865637574696E67206120726561636820616374696F6E2E
		#tag Getter
			Get
			  Return AppleArray.MakeFromPtr (getreachConstraints(mid))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setReachConstraints mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		ReachConstraints As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363656E65206E6F6465207468617420636F6E7461696E7320746865206E6F64652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleSKScene.MakeFromPtr (SpriteKitFramework.getscene(mid))
			End Get
		#tag EndGetter
		Scene As AppleSKScene
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207370656564206D6F646966696572206170706C69656420746F20616C6C20616374696F6E732065786563757465642062792061206E6F646520616E64206974732064657363656E64616E74732E
		#tag Getter
			Get
			  return SpriteKitFramework.getspeed (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setSpeed (mid, value)
			  
			End Set
		#tag EndSetter
		Speed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleMutableDictionary.MakeFromPtr (SpriteKitFramework.getuserData(mid))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setuserData mid, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		UserData As AppleMutableDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206E6F646520726563656976657320746F756368206576656E74732E
		#tag Getter
			Get
			  return SpriteKitFramework.getUserInteractionEnabled (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setuserinteractionenabled mid, value
			End Set
		#tag EndSetter
		UserInteractionEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207769647468206F6620746865206E6F64652E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return Frame.Size_.width
			End Get
		#tag EndGetter
		Width As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207363616C696E6720666163746F722074686174206D756C7469706C69657320746865207769647468206F662061206E6F646520616E6420697473206368696C6472656E2E
		#tag Getter
			Get
			  Return getxScale (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setXScale (mid, value)
			  
			End Set
		#tag EndSetter
		XScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41207363616C696E6720666163746F722074686174206D756C7469706C6965732074686520686569676874206F662061206E6F646520616E6420697473206368696C6472656E2E
		#tag Getter
			Get
			  Return getyScale (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setYScale (mid, value)
			  
			End Set
		#tag EndSetter
		YScale As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520686569676874206F6620746865206E6F64652072656C617469766520746F2069747320706172656E742E
		#tag Getter
			Get
			  return getzPosition (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setZPosition mid, value
			  
			End Set
		#tag EndSetter
		ZPosition As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652045756C657220726F746174696F6E2061626F757420746865207A20617869732028696E2072616469616E73292E
		#tag Getter
			Get
			  return getzRotation (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setZRotation mid, value
			  
			End Set
		#tag EndSetter
		ZRotation As Double
	#tag EndComputedProperty


	#tag Enum, Name = SKBlendMode, Type = Integer, Flags = &h0
		Alpha
		  Add
		  Subtract
		  Multiply
		  MultiplyX2
		  Screen
		Replace
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
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
			Name="ExecutesActions"
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
			Name="TextInputContextIdentifier"
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
