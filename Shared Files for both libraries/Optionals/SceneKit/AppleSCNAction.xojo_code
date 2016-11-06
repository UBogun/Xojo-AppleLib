#tag Class
Protected Class AppleSCNAction
Inherits AppleObject
	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206578656375746573206120626C6F636B20706572696F646963616C6C79206F766572206120737065636966696564206475726174696F6E2E205365652074686520437573746F6D416374696F6E426C6F636B54656D706C617465206D6574686F6420666F722074686520626C6F636B207374727563747572652E
		Shared Function CustomAction(Block as AppleBlock, duration as double) As AppleSCNAction
		  dim result as new AppleSCNAction (customActionWithDuration(classptr,duration, block.Handle))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CustomActionBlockTemplate(node as ptr, elapsedTime as Double)
		  // This is a template for a SCNAction CustomAction block
		  // Use the node 
		  
		  Dim myNode as new AppleSCNNode(node)
		  
		  // handle it (if you need to, examine the elapsedTime too) and remove the following lines as appropriate:
		  #pragma Unused myNode
		  #pragma Unused elapsedTime
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function customActionWithDuration Lib SceneKitLibname Selector "customActionWithDuration:actionBlock:" (id as ptr, duration as double, block as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742061646A7573747320746865206F706163697479206F662061206E6F646520627920612072656C61746976652076616C75652E
		Shared Function FadeBy(opacity as double, Duration as Double) As AppleSCNAction
		  dim result as  new AppleSCNAction (fadeOpacityBy(classptr,opacity, Duration))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320746865206F706163697479206F6620746865206E6F646520746F20312E302E
		Shared Function FadeIn(Duration as Double) As AppleSCNAction
		  dim result as  new AppleSCNAction (fadeInWithDuration(classptr,Duration))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function fadeInWithDuration Lib SceneKitLibname Selector "fadeInWithDuration:" (id as ptr, duration as double) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function fadeOpacityBy Lib SceneKitLibname Selector "fadeOpacityBy:duration:" (id as ptr, opacity as cgfloat, duration as double) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function fadeOpacityTo Lib SceneKitLibname Selector "fadeOpacityTo:duration:" (id as ptr, opacity as cgfloat, duration as double) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320746865206F706163697479206F6620746865206E6F646520746F20302E302E
		Shared Function FadeOut(Duration as Double) As AppleSCNAction
		  dim result as  new AppleSCNAction (fadeOutWithDuration(classptr,Duration))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function fadeOutWithDuration Lib SceneKitLibname Selector "fadeOutWithDuration:" (id as ptr, duration as double) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742061646A7573747320746865206F706163697479206F662061206E6F646520746F2061206E65772076616C75652E
		Shared Function FadeTo(opacity as double, Duration as Double) As AppleSCNAction
		  dim result as  new AppleSCNAction (fadeOpacityTo(classptr,opacity, Duration))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function gettimingMode Lib SceneKitLibname Selector "timingMode" (id as ptr) As SCNActionTimingMode
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742072756E73206120636F6C6C656374696F6E206F6620616374696F6E7320696E20706172616C6C656C2E
		Shared Function Group(GroupArray as AppleArray) As AppleSCNAction
		  dim result as  new AppleSCNAction (group_(classptr,GroupArray.id))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742072756E73206120636F6C6C656374696F6E206F6620616374696F6E7320696E20706172616C6C656C2E
		Shared Function Group(Paramarray Grouparray as AppleSCNACtion) As AppleSCNAction
		  return group(AppleMutableArray.fromAppleObjects(grouparray))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function group_ Lib SceneKitLibname Selector "group:" (id as ptr, groupID as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742068696465732061206E6F64652E20417661696C61626C6520696E20694F5320392E3020616E64206C617465722E
		Shared Function Hide() As AppleSCNAction
		  if RespondsToSelector( "hide", classptr) then
		    return  new AppleSCNAction (hide(classptr), true, true)
		  end if
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function hide Lib SceneKitLibname Selector "hide" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742065786563757465732061204A6176615363726970742073637269707420706572696F646963616C6C79206F766572206120737065636966696564206475726174696F6E2E
		Shared Function JavaScriptAction(JavaScript as text, duration as double) As AppleSCNAction
		  dim result as new AppleSCNAction (javaScriptActionWithScript(classptr,JavaScript,duration))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function javaScriptActionWithScript Lib SceneKitLibname Selector "javaScriptActionWithScript:duration:" (id as ptr, script as cfstringref, duration as double) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNAction
		  return if (aptr = nil, nil, new AppleSCNAction(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206D6F7665732061206E6F64652072656C617469766520746F206974732063757272656E7420706F736974696F6E2E
		Shared Function MoveBy(DeltaX as Double, DeltaY as Double, DeltaZ aS Double, Duration as Double) As AppleSCNAction
		  dim result as new AppleSCNAction (MoveByX(classptr, DeltaX, DeltaY, DeltaZ, Duration))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206D6F7665732061206E6F64652072656C617469766520746F206974732063757272656E7420706F736974696F6E2E
		Shared Function MoveBy(Delta as SCNVEctor3, Duration as Double) As AppleSCNAction
		  return new AppleSCNAction (moveByDelta(classptr, Delta, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function moveByDelta Lib SceneKitLibname Selector "moveBy:duration:" (id as ptr, Delta as SCNVector3, duration as double) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function moveByX Lib SceneKitLibname Selector "moveByX:y:z:duration:" (id as ptr, x as cgfloat, y as cgfloat, z as cgfloat, duration as double) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206D6F7665732061206E6F646520746F2061206E657720706F736974696F6E2E
		Shared Function MoveTo(Location as SCNVEctor3, Duration as Double) As AppleSCNAction
		  return new AppleSCNAction (moveToPos(classptr, Location, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function moveToPos Lib SceneKitLibname Selector "moveTo:duration:" (id as ptr, Location as SCNVector3, duration as double) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420706C61797320616E20617564696F20736F7572636520616E642072657475726E732065697468657220696D6D6564696174656C79206F722061667465722074686520736F756E64206861732066696E69736865642E
		Shared Function PlayAudioSource(AudioSource as AppleSCNAudioSource, WaitForCompletion As Boolean = false) As AppleSCNAction
		  dim result as  new AppleSCNAction (playAudioSource(classptr,AudioSource.id, WaitForCompletion))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function playAudioSource Lib SceneKitLibname Selector "playAudioSource:waitForCompletion:" (id as ptr, source as ptr, Waitforcompletion as Boolean) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742072656D6F76657320746865206E6F64652066726F6D2069747320706172656E742E
		Shared Function RemoveFromParentNode() As AppleSCNAction
		  dim result as  new AppleSCNAction (removeFromParentNode(classptr))
		  result.retainclassobject
		  return result
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function removeFromParentNode Lib SceneKitLibname Selector "removeFromParentNode" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174207265706561747320616E6F7468657220616374696F6E206120737065636966696564206E756D626572206F662074696D65732E
		Shared Function Repeat(Action as AppleSCNAction, count as UInteger) As AppleSCNAction
		  dim result as  new AppleSCNAction (repeatAction(classptr,action.id, count))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function repeatAction Lib SceneKitLibname Selector "repeatAction:count:" (id as ptr, action as ptr, count as uinteger) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function repeatActionForever Lib SceneKitLibname Selector "repeatActionForever:" (id as ptr, action as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174207265706561747320616E6F7468657220616374696F6E20666F72657665722E
		Shared Function RepeatForever(Action as AppleSCNAction) As AppleSCNAction
		  dim result as  new AppleSCNAction (repeatActionForever(classptr,action.id))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420726576657273657320746865206265686176696F72206F66207468652063757272656E7420616374696F6E20696620706F737369626C652E
		Function ReversedAction() As AppleSCNAction
		  dim result as  new AppleSCNAction (reversedAction(id))
		  result.mhasownership = true
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function reversedAction Lib SceneKitLibname Selector "reversedAction" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420726F746174657320746865206E6F646520696E2065616368206F6620746865207468726565207072696E636970616C206178657320627920616E676C65732072656C617469766520746F206974732063757272656E74206F7269656E746174696F6E2E
		Shared Function RotateBy(DeltaX as Double, DeltaY as Double, DeltaZ aS Double, Duration as Double) As AppleSCNAction
		  dim result as new AppleSCNAction (rotateByX(classptr, DeltaX, DeltaY, DeltaZ, Duration))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420726F746174657320746865206E6F646520627920616E20616E676C652061726F756E642061207370656369666965642061786973
		Shared Function RotateBy(Angle as Double, AroundAxis As SCNVector3, Duration as Double) As AppleSCNAction
		  return new AppleSCNAction (rotateByAngle(classptr, angle, AroundAxis, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function rotateByAngle Lib SceneKitLibname Selector "rotateByAngle:aroundAxis:duration:" (id as ptr, angle as double, aroundAxis as SCNVEctor3, duration as double) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function rotateByX Lib SceneKitLibname Selector "rotateByX:y:z:duration:" (id as ptr, x as cgfloat, y as cgfloat, z as cgfloat, duration as double) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420726F746174657320746865206E6F646520746F206162736F6C75746520616E676C657320696E2065616368206F6620746865207468726565207072696E636970616C20617865732E0A49662073686F7274657374556E69744172632069732046616C736520287468652064656661756C74292C2074686520616E696D6174696F6E20696E746572706F6C61746573206561636820636F6D706F6E656E74206F6620746865206E6F6465E280997320726F746174696F6E206265747765656E206974732063757272656E742076616C756520616E6420746865206E65772076616C75652E20496620547275652C2074686520616E696D6174696F6E206D616B657320746865206D6F73742064697265637420726F746174696F6E20706F737369626C652066726F6D20746865206E6F6465E28099732063757272656E74206F7269656E746174696F6E20746F20746865206E6577206F7269656E746174696F6E2E
		Shared Function RotateTo(X as Double, Y as Double, Z aS Double, Duration as Double, shortestUnitArc as Boolean = false) As AppleSCNAction
		  dim result as new AppleSCNAction (rotateToX(classptr, X, Y, Z, Duration, shortestUnitArc))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420726F746174657320746865206E6F646520746F20616E206162736F6C75746520616E676C652061726F756E6420612073706563696669656420617869732E
		Shared Function RotateTo(AxisAngle as SCNVector4, Duration as Double) As AppleSCNAction
		  return new AppleSCNAction (rotateToAxis(classptr, AxisAngle, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function rotateToAxis Lib SceneKitLibname Selector "rotateToAxisAngle:duration:" (id as ptr, axisAngle as SCNVector4, duration as double) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function rotateToX Lib SceneKitLibname Selector "rotateToX:y:z:duration:shortestUnitArc:" (id as ptr, x as cgfloat, y as cgfloat, z as cgfloat, duration as double, shortestUnitArc as Boolean) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206578656375746573206120626C6F636B2E20536565207468652052756E426C6F636B54656D706C617465206D6574686F6420666F722074686520626C6F636B207374727563747572652E
		Shared Function RunBlock(Block as AppleBlock) As AppleSCNAction
		  dim result as new AppleSCNAction (runBlock(classptr, block.Handle))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206578656375746573206120626C6F636B206F6E20612073706563696669632064697370617463682071756575652E20536565207468652052756E426C6F636B54656D706C617465206D6574686F6420666F722074686520626C6F636B207374727563747572652E0A506C65617365206E6F746520474344206973206E6F74207265616C6C79207365742D757020696E20694F534C69622C207468657265666F7265206A75737420612070747220666F72207468652071756575652069732065787065637465642E
		Shared Function RunBlock(Block as AppleBlock, Dispatch_queue as ptr) As AppleSCNAction
		  dim result as new AppleSCNAction (runBlockOnQueue(classptr, block.Handle, Dispatch_queue))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function runBlock Lib SceneKitLibname Selector "runBlock:" (id as ptr, block as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function runBlockOnQueue Lib SceneKitLibname Selector "runBlock:queue:" (id as ptr, block as ptr, dispatch_queue as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Sub RunBlockTemplate(node as ptr)
		  // This is a template for a SCNACtion RunBlock block
		  // Use the node 
		  
		  Dim myNode as new AppleSCNNode(node)
		  
		  // handle it and remove the following line:
		  #pragma Unused myNode
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420756E69666F726D6C79206368616E67657320746865207363616C6520666163746F72206F662061206E6F646520627920612072656C61746976652076616C75652E
		Shared Function ScaleBy(ScaleFactor as Double, Duration as Double) As AppleSCNAction
		  dim result as new AppleSCNAction (scaleBy(classptr, ScaleFactor, Duration))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function scaleBy Lib SceneKitLibname Selector "scaleBy:duration:" (id as ptr, scale as cgfloat, duration as double) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420756E69666F726D6C79206368616E67657320746865207363616C6520666163746F72206F662061206E6F646520746F20616E206162736F6C7574652076616C75652E
		Shared Function ScaleTo(ScaleFactor as Double, Duration as Double) As AppleSCNAction
		  dim result as new AppleSCNAction (scaleTo(classptr, ScaleFactor, Duration))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function scaleTo Lib SceneKitLibname Selector "scaleTo:duration:" (id as ptr, scale as cgfloat, duration as double) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742072756E73206120636F6C6C656374696F6E206F6620616374696F6E732073657175656E7469616C6C792E
		Shared Function Sequence(ActionArray as AppleArray) As AppleSCNAction
		  dim result as  new AppleSCNAction (sequence_(classptr, ActionArray.id))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742072756E73206120636F6C6C656374696F6E206F6620616374696F6E732073657175656E7469616C6C792E
		Shared Function Sequence(Paramarray ActionArray as AppleSCNAction) As AppleSCNAction
		  return Sequence(AppleMutableArray.fromAppleObjects(ActionArray))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function sequence_ Lib SceneKitLibname Selector "sequence:" (id as ptr, groupID as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Sub settimingFunction Lib SceneKitLibname Selector "setTimingFunction:" (id as ptr, block as ptr)
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 476976657320612077617920746F20616464206120626C6F636B2074686174205363656E654B69742063616C6C7320746F2064657465726D696E652074686520616374696F6EE280997320616E696D6174696F6E2074696D696E672E20536565207468652054696D696E6746756E6374696F6E426C6F636B54656D706C617465206D6574686F6420666F7220697473207374727563747572652E
		Sub SetTimingFunctionBlock(block as AppleBlock)
		  settimingFunction (id, block.handle)
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Sub settimingMode Lib SceneKitLibname Selector "setTimingMode:" (id as ptr, value as SCNActionTimingMode)
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Function TimingFunctionBlockTemplate(Time as single) As single
		  // This is a template for a SetTimingFunction  block
		  // Use it to customize the timeMode: Read the animation value from 0.0 to 1.0 as time property  and return a custm value for it.
		  
		  
		  // remove the following line:
		  #pragma Unused Time
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420656E73757265732061206E6F6465206973206E6F742068696464656E2E20417661696C61626C6520696E20694F5320392E3020616E64206C617465722E
		Shared Function Unhide() As AppleSCNAction
		  if RespondsToSelector( "unhide", classptr ) then
		    return  new AppleSCNAction (unhide(classptr), true, true)
		  end if
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function unhide Lib SceneKitLibname Selector "unhide" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742069646C657320666F7220612073706563696669656420706572696F64206F662074696D652E
		Shared Function Wait(Duration as Double) As AppleSCNAction
		  dim result as  new AppleSCNAction (waitForDuration(classptr, Duration))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742069646C657320666F7220612072616E646F6D697A656420706572696F64206F662074696D652E
		Shared Function Wait(Duration as Double, DurationRange as double) As AppleSCNAction
		  dim result as  new AppleSCNAction (waitForDurationwithRange(classptr, Duration, DurationRange))
		  result.retainclassobject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function waitForDuration Lib SceneKitLibname Selector "waitForDuration:" (id as ptr, duration as double) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h21, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Private Declare Function waitForDurationwithRange Lib SceneKitLibname Selector "waitForDuration:withRange:" (id as ptr, duration as double, durationRange as double) As ptr
	#tag EndExternalMethod


	#tag Note, Name = Status complete & documented
		
		iOS 9.2
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr 
			  if mClassPtr = nil then mClassPtr= FoundationFramework.NSClassFromString ("SCNAction")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206475726174696F6E20726571756972656420746F20636F6D706C6574652074686520616374696F6E2E
		#tag Getter
			Get
			  return SceneKitFrameWork.getduration (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setduration (id, value)
			End Set
		#tag EndSetter
		Duration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120737065656420666163746F722074686174206D6F64696669657320686F77206661737420616E20616374696F6E2072756E732E
		#tag Getter
			Get
			  return SceneKitFrameWork.getspeed (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SceneKitFrameWork.setspeed (id, value)
			End Set
		#tag EndSetter
		Speed As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D696E67206D6F6465207573656420746F206578656375746520616E20616374696F6E2E
		#tag Getter
			Get
			  return gettimingMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  settimingMode id, value
			End Set
		#tag EndSetter
		TimingMode As SCNActionTimingMode
	#tag EndComputedProperty


	#tag Enum, Name = SCNActionTimingMode, Type = Integer, Flags = &h0
		Linear
		  EaseIn
		  EaseOut
		EaseInEaseOut
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
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
			Name="TimingMode"
			Group="Behavior"
			Type="SCNActionTimingMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - EaseIn"
				"2 - EaseOut"
				"3 - EaseInEaseOut"
			#tag EndEnumValues
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
