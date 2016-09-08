#tag Class
 Attributes ( incomplete ) Protected Class AppleSKAction
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E206F662074686520676976656E206E616D652066726F6D20616E20616374696F6E2066696C652E20417661696C61626C652073696E6365204F5320582031302E31312E
		Shared Function Action(ActionName As CFStringRef) As AppleSKAction
		  return  new AppleSKAction (actionNamed (classptr, ActionName), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionBlockTemplate(node as ptr, elapsedTime As CGFloat)
		  // This is a template for a block that can be used with the ActionFromBlock shared constructur method.
		  // Use it with dim ActionNode As new AppleSKNode(node) (and do something with his node)
		  // Delete the pragmas:
		  
		  #Pragma unused node
		  #Pragma unused elapsedTime
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206578656375746573206120626C6F636B2E
		Shared Function ActionFromBlock(Block As AppleBlock) As AppleSKAction
		  return  new AppleSKAction (RunBlock (classptr, block.Handle), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206578656375746573206120626C6F636B206F6E20612073706563696669632064697370617463682071756575652E2054686973206973206120636F6D706C6574656C7920756E737570706F72746564206665617475726520696E20586F6A6F2E20596F75206E65656420746F2073746172742074686520626C6F636B20776974682074686520707261676D6173206261636B67726F756E64746872656164732066616C73652C206E696C6F626A656374636865636B696E672066616C736520616E6420737461636B6F766572666C6F77636865636B696E672066616C736520616E64206D757374206E6F7420616464726573732065787465726E616C20696E7374616E6365732066726F6D20696E736964652069742E
		Shared Function ActionFromBlockOnQueue(Block As AppleBlock, queue as ptr) As AppleSKAction
		  return  new AppleSKAction (runBlockonQueue (classptr, block.Handle, queue), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206578656375746573206120626C6F636B206F7665722061206475726174696F6E2E
		Shared Function ActionFromBlockWithDuration(Block As AppleBlock, duration As Double) As AppleSKAction
		  return  new AppleSKAction (customActionWithDuration (classptr, duration, block.Handle), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E206F662074686520676976656E206E616D652066726F6D20616E20616374696F6E2066696C652E20417661696C61626C652073696E6365204F5320582031302E31312E
		Shared Function ActionFromURL(ActionName As CFStringRef, URL As AppleURL) As AppleSKAction
		  return  new AppleSKAction (actionNamedFromURL (classptr, ActionName, url.id), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E206F662074686520676976656E206E616D652066726F6D20616E20616374696F6E2066696C6520776974682061206E6577206475726174696F6E2E20417661696C61626C652073696E6365204F53582031302E31312E
		Shared Function ActionFromURLWithDuration(ActionName As CFStringRef, URL As AppleURL, duration as Double) As AppleSKAction
		  return  new AppleSKAction (actionNamedFromURLDuration (classptr, ActionName, url.id, duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function actionNamed Lib SpriteKitLibName Selector "actionNamed:" (id as ptr, action as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function actionNamedDuration Lib SpriteKitLibName Selector "actionNamed:duration:" (id as ptr, action as cfstringRef, duration As Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function actionNamedFromURL Lib SpriteKitLibName Selector "actionNamed:fromURL:" (id as ptr, action as cfstringRef, url as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function actionNamedFromURLDuration Lib SpriteKitLibName Selector "actionNamed:fromURL:duration:" (id as ptr, action as cfstringRef, url as ptr, duration as double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E206F662074686520676976656E206E616D652066726F6D20616E20616374696F6E2066696C6520776974682061206E6577206475726174696F6E2E20417661696C61626C652073696E6365204F53582031302E31312E
		Shared Function ActionWithDuration(ActionName As CFStringRef, Duration As Double) As AppleSKAction
		  return  new AppleSKAction (actionNamedDuration (classptr, ActionName, duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420616E696D61746573206368616E67657320746F206120737072697465E280997320746578747572652C20706F737369626C7920726573697A696E67207468652073707269746520616E64206F7074696F6E616C6C7920726573746F72696E6720746865206F726967696E616C207465787475726520616674657220636F6D706C6574696F6E2E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Function AnimateWithNormalTextures(textures as AppleArray, timeperframe as Double, resize as boolean = false, restore as boolean = false) As AppleSKAction
		  return  new AppleSKAction (AnimateWithTextures (classptr, textures.id, timeperframe, resize, restore), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function animateWithNormalTextures Lib SpriteKitLibName Selector "animateWithNormalTextures:timePerFrame:resize:restore:" (id as ptr, x as ptr, tpf as double, resize as boolean, restore as Boolean) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420616E696D61746573206368616E67657320746F206120737072697465E280997320746578747572652C20706F737369626C7920726573697A696E67207468652073707269746520616E64206F7074696F6E616C6C7920726573746F72696E6720746865206F726967696E616C207465787475726520616674657220636F6D706C6574696F6E2E
		Shared Function AnimateWithTextures(textures as AppleArray, timeperframe as Double, resize as boolean = false, restore as boolean = false) As AppleSKAction
		  dim result as  new AppleSKAction (AnimateWithTextures (classptr, textures.id, timeperframe, resize, restore))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function animateWithTextures Lib SpriteKitLibName Selector "animateWithTextures:timePerFrame:resize:restore:" (id as ptr, x as ptr, tpf as double, resize as boolean, restore as Boolean) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206170706C69657320616E20616E67756C617220696D70756C736520746F2061206E6F6465E2809973207068797369637320626F64792E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Function ApplyAngularImpulse(Impulse as Double, Duration As Double) As AppleSKAction
		  return new AppleSKAction(applyAngularImpulse(classptr, Impulse, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function applyAngularImpulse Lib SpriteKitLibName Selector "applyAngularImpulse:duration:" (id as ptr, x as CGFloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206170706C696573206120666F72636520746F207468652063656E746572206F662067726176697479206F662061206E6F6465E2809973207068797369637320626F64792E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Function ApplyForce(Force as Double, Duration As Double) As AppleSKAction
		  return new AppleSKAction(applyForce(classptr, force, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function applyForce Lib SpriteKitLibName Selector "applyForce:duration:" (id as ptr, x as CGFloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206170706C69657320616E20666F72636520746F206120737065636966696320706F696E74206F6E2061206E6F6465E2809973207068797369637320626F64792E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Function ApplyForceAtPoint(Force as Double, Point As FoundationFramework.NSPoint, Duration As Double) As AppleSKAction
		  return new AppleSKAction(applyForceatPoint(classptr, force, point, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function applyForceatPoint Lib SpriteKitLibName Selector "applyForce:atPoint:duration:" (id as ptr, x as CGFloat, p as foundationFramework . NSPoint, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206170706C69657320616E20696D70756C736520746F207468652063656E746572206F662067726176697479206F662061207068797369637320626F64792E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Function ApplyImpulse(Impulse As FoundationFramework.CGVector, Duration As Double) As AppleSKAction
		  return new AppleSKAction(applyImpulse(classptr, Impulse, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function applyImpulse Lib SpriteKitLibName Selector "applyImpulse:duration:" (id as ptr, x as foundationFramework . CGVector, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206170706C69657320616E20696D70756C736520746F206120737065636966696320706F696E74206F662061206E6F6465E2809973207068797369637320626F64792E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Function ApplyImpulseatPoint(Impulse As FoundationFramework.CGVector, Point As FoundationFramework.NSPoint, Duration As Double) As AppleSKAction
		  return new AppleSKAction(applyImpulseatPoint(classptr, Impulse, Point, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function applyImpulseatPoint Lib SpriteKitLibName Selector "applyImpulse:atPoint:duration:" (id as ptr, x as foundationFramework . CGVector, p as foundationframework . NSPoint, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206170706C696573206120746F7271756520746F20616E206E6F6465E2809973207068797369637320626F64792E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Function ApplyTorque(Torque as Double, Duration As Double) As AppleSKAction
		  return new AppleSKAction(applyTorque(classptr, Torque, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function applyTorque Lib SpriteKitLibName Selector "applyTorque:duration:" (id as ptr, x as CGFloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function changeChargeBy Lib SpriteKitLibName Selector "changeChargeBy:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E6765732074686520636861726765206F662061206E6F6465E2809973207068797369637320626F647920627920612072656C61746976652076616C75652E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Function ChangeChargeBy(Charge as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(changeChargeBy(classptr, charge, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function changeChargeTo Lib SpriteKitLibName Selector "changeChargeTo:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E6765732074686520636861726765206F662061206E6F6465E2809973207068797369637320626F647920746F2061206E65772076616C75652E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Function ChangeChargeTo(Charge as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(changeChargeTo(classptr, charge, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420616E696D617465732061206368616E6765206F6620612070687973696373206669656C64E28099732066616C6C6F666620746F20612076616C75652072656C617469766520746F20746865206578697374696E672076616C75652E
		Shared Function ChangeFalloffBy(FallOff as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(falloffBy(classptr, FallOff, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420616E696D617465732061206368616E6765206F6620612070687973696373206669656C64E28099732066616C6C6F66662E
		Shared Function ChangeFalloffTo(FallOff as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(falloffTo(classptr, FallOff, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function changeMassBy Lib SpriteKitLibName Selector "changeMassBy:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320746865206D617373206F662061206E6F6465E2809973207068797369637320626F647920627920612072656C61746976652076616C75652E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Function ChangeMassBy(Mass as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(changeMassBy(classptr, mass, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function changeMassTo Lib SpriteKitLibName Selector "changeMassTo:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320746865206D617373206F662061206E6F6465E2809973207068797369637320626F647920746F2061206E65772076616C75652E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Function ChangeMassTo(Mass as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(changeMassTo(classptr, mass, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function changeObstructionBy Lib SpriteKitLibName Selector "changeObstructionBy:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320616E20617564696F206E6F6465E2809973206F62737472756374696F6E20627920612072656C61746976652076616C75652E20417661696C61626C652073696E6365204F5320582031302E31312E
		Shared Function ChangeObstructionBy(Obstruction as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(changeObstructionBy(classptr, Obstruction, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function changeObstructionTo Lib SpriteKitLibName Selector "changeObstructionTo:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320616E20617564696F206E6F6465E2809973206F62737472756374696F6E20746F2061206E65772076616C75652E20417661696C61626C652073696E6365204F5320582031302E31312E
		Shared Function ChangeObstructionTo(Obstruction as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(changeObstructionTo(classptr, Obstruction, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function changeOcclusionBy Lib SpriteKitLibName Selector "changeOcclusionBy:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320616E20617564696F206E6F6465E2809973206F63636C7573696F6E20627920612072656C61746976652076616C75652E20417661696C61626C652073696E6365204F5320582031302E31312E
		Shared Function changeOcclusionBy(Occlusion as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(changeOcclusionBy(classptr, Occlusion, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function changeOcclusionTo Lib SpriteKitLibName Selector "changeOcclusionTo:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320616E20617564696F206E6F6465E2809973206F63636C7573696F6E20746F2061206E65772076616C75652E20417661696C61626C652073696E6365204F5320582031302E31312E
		Shared Function changeOcclusionTo(Occlusion as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(changeOcclusionTo(classptr, Occlusion, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function changePlaybackRateBy Lib SpriteKitLibName Selector "changePlaybackRateBy:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320616E20617564696F206E6F6465E280997320706C61796261636B207261746520627920612072656C617469766520616D6F756E742E20417661696C61626C652073696E6365204F5320582031302E31312E
		Shared Function ChangePlaybackRateBy(Rate as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(changePlaybackRateBy(classptr, rate, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function changePlaybackRateTo Lib SpriteKitLibName Selector "changePlaybackRateTo:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320616E20617564696F206E6F6465E280997320706C61796261636B207261746520746F2061206E65772076616C75652E0A417661696C61626C652073696E6365204F5320582031302E31312E
		Shared Function ChangePlaybackRateTo(Rate as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(changePlaybackRateTo(classptr, rate, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function changeReverbBy Lib SpriteKitLibName Selector "changeReverbBy:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320616E20617564696F206E6F6465E28099732072657665726220627920612072656C61746976652076616C75652E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Function ChangeReverbBy(Reverb as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(changeReverbBy(classptr, Reverb, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function changeReverbTo Lib SpriteKitLibName Selector "changeReverbTo:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320616E20617564696F206E6F6465E28099732072657665726220746F2061206E65772076616C75652E2E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Function ChangeReverbTo(Reverb as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(changeReverbTo(classptr, Reverb, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320616E20617564696F206E6F6465E28099732073746572656F2070616E6E696E6720627920612072656C61746976652076616C75652E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Function ChangeStereoPanBy(Pan as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(stereoPanBy(classptr, Pan, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320616E20617564696F206E6F6465E28099732073746572656F2070616E6E696E6720746F2061206E65772076616C75652E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Function ChangeStereoPanTo(Pan as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(stereoPanTo(classptr, Pan, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420616E696D617465732061206368616E6765206F6620612070687973696373206669656C64E280997320737472656E67746820746F20612076616C75652072656C617469766520746F20746865206578697374696E672076616C75652E
		Shared Function ChangeStrengthBy(Strength as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(StrengthBy(classptr, Strength, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420616E696D617465732061206368616E6765206F6620612070687973696373206669656C64E280997320737472656E6774682E20
		Shared Function ChangeStrengthTo(Strength as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(strengthTo(classptr, Strength, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function changeVolumeBy Lib SpriteKitLibName Selector "changeVolumeBy:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320616E20617564696F206E6F6465E280997320766F6C756D6520627920612072656C61746976652076616C75652E20417661696C61626C652073696E6365204F5320582031302E31312E
		Shared Function ChangeVolumeBy(volume as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(changeVolumeBy(classptr,volume, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function changeVolumeTo Lib SpriteKitLibName Selector "changeVolumeTo:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320616E20617564696F206E6F6465E280997320766F6C756D6520746F2061206E65772076616C75652E20417661696C61626C652073696E6365204F5320582031302E31312E
		Shared Function ChangeVolumeTo(volume as Single, Duration As Double) As AppleSKAction
		  return new AppleSKAction(changeVolumeTo(classptr,volume, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616E696D6174696F6E207468617420616E696D61746573206120737072697465E280997320636F6C6F7220616E6420626C656E6420666163746F722E
		Shared Function Colorize(aColor as AppleColor, Blendfactor as Double, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (colorizeWithColor (classptr, acolor.id, Blendfactor, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420616E696D61746573206120737072697465E280997320626C656E6420666163746F722E
		Shared Function ColorizeWithBlendfactor(Blendfactor as Double, Duration As Double) As AppleSKAction
		  dim result as  new AppleSKAction (colorizeWithColorBlendFactor (classptr,  Blendfactor, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function colorizeWithColor Lib SpriteKitLibName Selector "colorizeWithColor:colorBlendFactor:duration:" (id as ptr, color as Ptr, blendfactor as cgfloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function colorizeWithColorBlendFactor Lib SpriteKitLibName Selector "colorizeWithColorBlendFactor:duration:" (id as ptr, blendfactor as cgfloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function customActionWithDuration Lib SpriteKitLibName Selector "customActionWithDuration:actionBlock:" (id as ptr, duration as Double, block as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742061646A757374732074686520616C7068612076616C7565206F662061206E6F646520627920612072656C61746976652076616C75652E
		Shared Function FadeAlphaBy(factor as Double, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (fadeAlphaBy (classptr, factor, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function fadeAlphaBy Lib SpriteKitLibName Selector "fadeAlphaBy:duration:" (id as ptr, x as CGFloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742061646A757374732074686520616C7068612076616C7565206F662061206E6F646520746F2061206E65772076616C75652E
		Shared Function FadeAlphaTo(factor as Double, Duration As Double) As AppleSKAction
		  dim result as new  AppleSKAction (fadeAlphaTo (classptr, factor, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function fadeAlphaTo Lib SpriteKitLibName Selector "fadeAlphaTo:duration:" (id as ptr, x as CGFloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E6765732074686520616C7068612076616C7565206F6620746865206E6F646520746F20312E302E
		Shared Function FadeIn(duration as Double) As AppleSKAction
		  dim result as  new AppleSKAction (fadeInWithDuration (classptr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function fadeInWithDuration Lib SpriteKitLibName Selector "fadeInWithDuration:" (id as ptr, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E6765732074686520616C7068612076616C7565206F6620746865206E6F646520746F20302E302E
		Shared Function FadeOut(duration as Double) As AppleSKAction
		  dim result as  new AppleSKAction (fadeOutWithDuration (classptr, duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function fadeOutWithDuration Lib SpriteKitLibName Selector "fadeOutWithDuration:" (id as ptr, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function falloffBy Lib SpriteKitLibName Selector "falloffBy:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function falloffTo Lib SpriteKitLibName Selector "falloffTo:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206D6F76657320746865206E6F646520616C6F6E6720612072656C617469766520706174682C206F7269656E74696E6720746865206E6F646520746F2074686520706174682E
		Shared Function FollowPath(aPath as AppleCGPath, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (followPath (classptr, apath.CFTypeRef, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function followPath Lib SpriteKitLibName Selector "followPath:duration:" (id as ptr, path as Ptr, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206D6F76657320746865206E6F646520616C6F6E67206120706174682E0A49662061734F666673657420697320547275652C2074686520706F696E747320696E207468652070617468206172652072656C6174697665206F66667365747320746F20746865206E6F6465E2809973207374617274696E6720706F736974696F6E2E2049662069742069732046616C73652C2074686520706F696E747320696E20746865206E6F646520617265206162736F6C75746520636F6F7264696E6174652076616C7565732E0A6F7269656E74090A4966206F7269656E74746F5061746820697320547275652C20746865206E6F6465E2809973207A526F746174696F6E2070726F706572747920616E696D6174657320736F207468617420746865206E6F6465207475726E7320746F20666F6C6C6F772074686520706174682E204966206E6F742C20746865207A526F746174696F6E2070726F7065727479206F6620746865206E6F646520697320756E6368616E6765642E
		Shared Function FollowPathOriented(aPath as AppleCGPath, asOffset as Boolean, orientToPath as Boolean, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (FollowPathOriented (classptr,apath.CFTypeRef, asOffset, orientToPath, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function followPathOriented Lib SpriteKitLibName Selector "followPath:asOffset:orientToPath:duration:" (id as ptr, path as Ptr, offset as boolean, orient as Boolean, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function followPathOrientedSpeed Lib SpriteKitLibName Selector "followPath:asOffset:orientToPath:speed:" (id as ptr, path as Ptr, offset as boolean, orient as Boolean, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206D6F76657320746865206E6F646520617420612073706563696669656420737065656420616C6F6E67206120706174682E0A49662061734F666673657420697320547275652C2074686520706F696E747320696E207468652070617468206172652072656C6174697665206F66667365747320746F20746865206E6F6465E2809973207374617274696E6720706F736974696F6E2E2049662069742069732046616C73652C2074686520706F696E747320696E20746865206E6F646520617265206162736F6C75746520636F6F7264696E6174652076616C7565732E0A6F7269656E74090A4966206F7269656E74746F5061746820697320547275652C20746865206E6F6465E2809973207A526F746174696F6E2070726F706572747920616E696D6174657320736F207468617420746865206E6F6465207475726E7320746F20666F6C6C6F772074686520706174682E204966206E6F742C20746865207A526F746174696F6E2070726F7065727479206F6620746865206E6F646520697320756E6368616E6765642E
		Shared Function FollowPathOrientedWithSpeed(aPath as AppleCGPath, asOffset as Boolean, orientToPath as Boolean, Speed As Double) As AppleSKAction
		  dim result as new AppleSKAction (FollowPathOrientedSpeed (classptr, apath.CFTypeRef, asOffset, orientToPath, speed))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206D6F76657320746865206E6F646520616C6F6E6720612072656C617469766520706174682061742061207370656369666965642073706565642C206F7269656E74696E6720746865206E6F646520746F207468652070617468
		Shared Function FollowPathWithSpeed(aPath as AppleCGPath, Speed As Double) As AppleSKAction
		  dim result as new AppleSKAction (FollowPathWithSpeed (classptr, apath.CFTypeRef, speed))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function followPathWithSpeed Lib SpriteKitLibName Selector "followPath:speed:" (id as ptr, path as Ptr, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742072756E73206120636F6C6C656374696F6E206F6620616374696F6E7320696E20706172616C6C656C2E
		Shared Function Group(ActionGroup as AppleArray) As AppleSKAction
		  return new AppleSKAction (group (classptr, ActionGroup.id), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Group(paramarray ActionGroup() as AppleSKAction) As AppleSKAction
		  return Group (AppleMutableArray.fromAppleObjects (ActionGroup))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function group Lib SpriteKitLibName Selector "group:" (id as ptr, x as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742068696465732061206E6F646520696E7374616E74656E65756F736C792E
		Shared Function Hide() As AppleSKAction
		  dim result as new AppleSKAction (hide (classptr))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function hide Lib SpriteKitLibName Selector "hide" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleSKAction
		  Return if (aptr = NIL, NIL, new AppleSKAction (aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206D6F7665732061206E6F64652072656C617469766520746F206974732063757272656E7420706F736974696F6E2E
		Shared Function MoveBy(Delta As FoundationFramework.CGVector, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (moveBy(classptr, Delta, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function moveBy Lib SpriteKitLibName Selector "moveBy:duration:" (id as ptr, delta as foundationframework . CGVector, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function moveByX Lib SpriteKitLibName Selector "moveByX:y:duration:" (id as ptr, x as CGFloat, y as CGFloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206D6F7665732061206E6F64652072656C617469766520746F206974732063757272656E7420706F736974696F6E2E
		Shared Function MoveByXY(x as Double, y as Double, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (Movebyx (classptr, x, y, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206D6F7665732061206E6F646520746F2061206E657720706F736974696F6E2E
		Shared Function MoveTo(aPoint as FoundationFramework.NSPoint, Duration As Double) As AppleSKAction
		  dim result as AppleSKAction
		  result = new AppleSKAction (MoveTo (classptr, aPoint, Duration))
		  result.RetainClassObject
		  return result
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function moveTo Lib SpriteKitLibName Selector "moveTo:duration:" (id as ptr, point as foundationframework . NSPoint, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MoveToX(X as Double, Duration As Double) As AppleSKAction
		  dim result as AppleSKAction
		  result = new AppleSKAction (MoveTox (classptr, x, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function moveToX Lib SpriteKitLibName Selector "moveToX:duration:" (id as ptr, x as CGFloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206D6F7665732061206E6F646520766572746963616C6C792E
		Shared Function MoveToY(Y as Double, Duration As Double) As AppleSKAction
		  dim result as AppleSKAction
		  result = new AppleSKAction (MoveToy (classptr, y, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function moveToY Lib SpriteKitLibName Selector "moveToY:duration:" (id as ptr, y as CGFloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742074656C6C7320616E20617564696F206E6F646520746F20706175736520706C61796261636B2E20417661696C61626C652073696E6365204F53582031302E31312E
		Shared Function Pause() As AppleSKAction
		  return new AppleSKAction (pause (classptr), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function pause Lib SpriteKitLibName Selector "pause" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742063616C6C732061206D6574686F64206F6E20616E206F626A6563742C206F6E204F532D4C6576656C2E20596F752063726561746520612073656C6563746F722062792073656E64696E6720746865204F626A43206E616D6520746F20466F756E646174696F6E4672616D65776F726B2E4E5353656C6563746F7246726F6D537472696E672E
		Shared Function PerformSelector(SEL as Ptr, Target as AppleObject) As AppleSKAction
		  return new AppleSKAction (performSelector (classptr, sel, Target.id), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function performSelector Lib SpriteKitLibName Selector "performSelector:onTarget:" (id as ptr, sel as ptr, target as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742074656C6C7320616E20617564696F206E6F646520746F20737461727420706C61796261636B2E20417661696C61626C652073696E6365204F53582031302E31312E
		Shared Function Play() As AppleSKAction
		  return new AppleSKAction (play (classptr), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function play Lib SpriteKitLibName Selector "play" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420706C617973206120736F756E642C206F7074696F6E616C6C792077616974696E6720666F722069747320636F6D706C6574696F6E2E
		Shared Function PlaySound(soundname as cfstringref, WaitForCompletion as Boolean = False) As AppleSKAction
		  return new AppleSKAction (playSoundFileNamed (classptr, soundname, waitForCompletion), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function playSoundFileNamed Lib SpriteKitLibName Selector "playSoundFileNamed:waitForCompletion:" (id as ptr, soundfile as cfStringRef, wait as Boolean) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420726F7461746573206120736572696573206F66206E6F6465732C207374617274696E67207769746820746865206E6F6465207468697320616374696F6E206973206578656375746564206F6E2C20736F20746861742074686973206E6F646520706F736974696F6E206D6F76657320636C6F73657220746F20616E6F74686572206E6F6465E280997320706F736974696F6E2E
		Shared Function ReachToNode(TargetNode As AppleSKnode, RootNode As AppleSKNode, Duration As Double) As AppleSKAction
		  return new AppleSKAction (reachToNodeDuration (classptr, TargetNode.id, RootNode.id, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function reachToNodeDuration Lib SpriteKitLibName Selector "reachToNode:rootNode:duration:" (id as ptr, p as ptr, x as Ptr, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function reachToNodeVelocity Lib SpriteKitLibName Selector "reachToNode:rootNode:velocity:" (id as ptr, p as ptr, x as Ptr, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420726F7461746573206120736572696573206F66206E6F6465732C207374617274696E67206174207468652063757272656E74206E6F64652C20736F20746861742074686520746172676574206E6F646520726561636865732074686520706F736974696F6E206F6620616E6F74686572206E6F6465
		Shared Function ReachToNodeWithVelocity(TargetNode As AppleSKnode, RootNode As AppleSKNode, Velocity As Double) As AppleSKAction
		  return new AppleSKAction (reachToNodeVelocity (classptr, TargetNode.id, RootNode.id, Velocity), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420726F7461746573206120736572696573206F66206E6F6465732C207374617274696E67207769746820746865206E6F6465207468697320616374696F6E206973206578656375746564206F6E2C20736F20746861742074686973206E6F646520706F736974696F6E206D6F76657320636C6F73657220746F207468652073706563696669656420706F696E742E
		Shared Function ReachToPoint(aPoint as FoundationFramework.NSPoint, RootNode As AppleSKNode, Duration As Double) As AppleSKAction
		  return new AppleSKAction (reachToRootDuration (classptr, aPoint, RootNode.id, Duration), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420726F7461746573206120736572696573206F66206E6F6465732C207374617274696E67207769746820746865206E6F6465207468697320616374696F6E206973206578656375746564206F6E2C20736F20746861742074686973206E6F646520706F736974696F6E206D6F76657320636C6F73657220746F20616E6F74686572206E6F6465E280997320706F736974696F6E2E20546865206475726174696F6E206F662074686520616E696D6174696F6E2069732064657465726D696E65642062792073706563696679696E6720746865207370656564206F6620746865207461726765746564206E6F64652E
		Shared Function ReachToPointWithVelocity(aPoint as FoundationFramework.NSPoint, RootNode As AppleSKNode, Velocity As Double) As AppleSKAction
		  return new AppleSKAction (reachToRootVelocity (classptr, aPoint, RootNode.id, Velocity), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function reachToRootDuration Lib SpriteKitLibName Selector "reachTo:rootNode:duration:" (id as ptr, p as foundationframework . nspoint, x as Ptr, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function reachToRootVelocity Lib SpriteKitLibName Selector "reachTo:rootNode:velocity:" (id as ptr, p as foundationframework . nspoint, x as Ptr, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742072656D6F76657320746865206E6F64652066726F6D2069747320706172656E742E
		Shared Function RemoveFromParent() As AppleSKAction
		  return new AppleSKAction (removeFromParent (classptr), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function removeFromParent Lib SpriteKitLibName Selector "removeFromParent" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174207265706561747320616E6F7468657220616374696F6E206120737065636966696564206E756D626572206F662074696D65732E204120636F756E742076616C7565206F6620302077696C6C207265706561742074686520616374696F6E20656E646C6573736C792E
		Shared Function RepeatAction(action as AppleSKaction, count as uinteger = 0) As AppleSKAction
		  if count > 0 then
		    return new AppleSKAction ( repeatAction (classptr, action.id, count), true, true)
		  else
		    return new AppleSKAction ( repeatActionForever (classptr, action.id), true, true)
		  end if
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function repeatAction Lib SpriteKitLibName Selector "repeatAction:count:" (id as ptr, x as ptr, count as uinteger) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function repeatActionForever Lib SpriteKitLibName Selector "repeatActionForever:" (id as ptr, x as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742061646A75737473207468652073697A65206F662061207370726974652E
		Shared Function ResizeBy(Width as Double, Height as Double, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (resizeByWidth (classptr, width, height, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function resizeByWidth Lib SpriteKitLibName Selector "resizeByWidth:height:duration:" (id as ptr, x as CGFloat, y as cgfloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function ResizeTo(Width as Double, Height as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function resizeTo lib spritekitlibname selector "resizeToWidth:height:duration:" (id as ptr, width as double, height as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function resizeTo lib spritekitlibname selector "resizeToWidth:height:duration:" (id as ptr, width as single, height as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (resizeTo (classptr, width, height, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E6765732074686520686569676874206F6620612073707269746520746F2061206E6577206162736F6C7574652076616C75652E
		Shared Function ResizeToHeight(Height as Double, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (resizeToHeight (classptr, height,  Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function resizeToHeight Lib SpriteKitLibName Selector "resizeToHeight:duration:" (id as ptr, x as CGFloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320746865207769647468206F6620612073707269746520746F2061206E6577206162736F6C7574652076616C75652E
		Shared Function ResizeToWidth(Width as Double, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (ResizeToWidth (classptr, width,  Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function resizeToWidth Lib SpriteKitLibName Selector "resizeToWidth:duration:" (id as ptr, x as CGFloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420726576657273657320746865206265686176696F72206F6620616E6F7468657220616374696F6E2E
		Function ReversedAction() As AppleSKAction
		  return new AppleSKAction(ReversedAction(mid))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function reversedAction Lib SpriteKitLibName Selector "reversedAction" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420726F746174657320746865206E6F646520627920612072656C61746976652076616C75652E
		Shared Function RotateByAngle(Angle as Double, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (RotateByAngle (classptr, angle, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function rotateByAngle Lib SpriteKitLibName Selector "rotateByAngle:duration:" (id as ptr, angle as CGFloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420726F746174657320746865206E6F646520746F20616E206162736F6C75746520616E676C652E0A49662053686F7274657374556E697441726320697320547275652C2074686520726F746174696F6E20697320706572666F726D656420696E2077686963686576657220646972656374696F6E20726573756C747320696E2074686520736D616C6C65737420726F746174696F6E2E204966206E6F742C2074686520726F746174696F6E20697320696E746572706F6C617465642E
		Shared Function RotateToAngle(Angle as Double, Duration As Double, ShortestUnitArc As Boolean = False) As AppleSKAction
		  dim result as new AppleSKAction (RotateToAngle (classptr, angle, Duration, ShortestUnitArc))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function rotateToAngle Lib SpriteKitLibName Selector "rotateToAngle:duration:shortestUnitArc:" (id as ptr, angle as CGFloat, duration as Double, arc as boolean) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function RunActionOnChild(Action as AppleSKAction, Childname as CFStringRef) As AppleSKAction
		  return new AppleSKAction (runActiononChildWithName (classptr, action.id, Childname), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function runActiononChildWithName Lib SpriteKitLibName Selector "runAction:onChildWithName:" (id as ptr, action as ptr, childname as CFStringREf) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function runBlock Lib SpriteKitLibName Selector "runBlock:" (id as ptr, block as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function runBlockonQueue Lib SpriteKitLibName Selector "runBlock:queue:" (id as ptr, block as ptr, queue as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320746865207820616E642079207363616C652076616C756573206F662061206E6F646520627920612072656C61746976652076616C75652E
		Shared Function ScaleBy(scale as Double, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (scaleBy (classptr, scale, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function scaleBy Lib SpriteKitLibName Selector "scaleBy:duration:" (id as ptr, x as CGFloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function scaleByXY Lib SpriteKitLibName Selector "scaleXBy:y:duration:" (id as ptr, x as CGFloat, y as cgfloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function ScaleTo(scale as Double, Duration As Double) As AppleSKAction
		  #if Target64Bit
		    Declare function scaleTo lib spritekitlibname selector "scaleTo:duration:" (id as ptr, scale as double, duration as Double) as ptr
		  #elseif Target32Bit
		    Declare function scaleTo lib spritekitlibname selector "scaleTo:duration:" (id as ptr, scale as single, duration as Double) as ptr
		  #endif
		  dim result as new AppleSKAction (scaleTo (classptr, scale, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function scaleToXY Lib SpriteKitLibName Selector "scaleXTo:y:duration:" (id as ptr, x as CGFloat, y as cgfloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E676573207468652078207363616C652076616C7565206F662061206E6F646520746F2061206E65772076616C75652E
		Shared Function ScaleXTo(xscale as Double, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (scaleXto (classptr, xscale, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function scaleXTo Lib SpriteKitLibName Selector "scaleXTo:duration:" (id as ptr, x as CGFloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E207468617420616464732072656C61746976652076616C75657320746F20746865207820616E642079207363616C652076616C756573206F662061206E6F64652E
		Shared Function ScaleXYBy(xscale as Double, yscale as double, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (scaleByXY (classptr, xscale, yscale, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320746865207820616E642079207363616C652076616C756573206F662061206E6F64652E
		Shared Function ScaleXYTo(xscale as Double, yscale as double, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (scaleToXY (classptr, xscale, yscale, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E676573207468652079207363616C652076616C7565206F662061206E6F646520746F2061206E65772076616C75652E
		Shared Function ScaleYTo(yscale as Double, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (scaleYTo (classptr, yscale, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function scaleYTo Lib SpriteKitLibName Selector "scaleYTo:duration:" (id as ptr, x as CGFloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742072756E73206120636F6C6C656374696F6E206F6620616374696F6E732073657175656E7469616C6C792E
		Shared Function Sequence(ActionGroup as AppleArray) As AppleSKAction
		  return new  AppleSKAction ( sequence (classptr, ActionGroup.id), true, true)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Sequence(Paramarray actions() as AppleSKAction) As AppleSKAction
		  return Sequence (AppleMutableArray.fromAppleObjects (Actions))
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function sequence Lib SpriteKitLibName Selector "sequence:" (id as ptr, x as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E676573206120737072697465E2809973206E6F726D616C20746578747572652C206F7074696F6E616C6C7920726573697A696E67207468652073707269746520746F206D617463682074686520746578747572652E20417661696C61626C652073696E6365206D61634F532031302E31312E
		Shared Function SetNormalTexture(Texture as AppleSKTexture, resize as boolean = false) As AppleSKAction
		  if RespondsToSelector ("setNormalTexture:", classptr) then 
		    dim result as  new AppleSKAction (setNormalTexture (classptr, if (texture = nil, nil,  texture.id), resize))
		    result.RetainClassObject
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function setNormalTexture Lib SpriteKitLibName Selector "setNormalTexture:resize:" (id as ptr, x as Ptr, resize as Boolean) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E676573206120737072697465E280997320746578747572652C20706F737369626C7920726573697A696E6720746865207370726974652E
		Shared Function SetTexture(Texture as AppleSKTexture, resize as boolean = false) As AppleSKAction
		  dim result as  new AppleSKAction (setTexture (classptr, texture.id, resize))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function setTexture Lib SpriteKitLibName Selector "setTexture:resize:" (id as ptr, x as Ptr, resize as Boolean) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320686F77206661737420746865206E6F646520657865637574657320616374696F6E7320627920612072656C61746976652076616C75652E
		Shared Function SpeedBy(speed as Double, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (speedBy (classptr, speed, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function speedBy Lib SpriteKitLibName Selector "speedBy:duration:" (id as ptr, x as CGFloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206368616E67657320686F77206661737420746865206E6F646520657865637574657320616374696F6E732E
		Shared Function SpeedTo(speed as Double, Duration As Double) As AppleSKAction
		  dim result as new AppleSKAction (speedTo (classptr, speed, Duration))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function speedTo Lib SpriteKitLibName Selector "speedTo:duration:" (id as ptr, x as CGFloat, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function stereoPanBy Lib SpriteKitLibName Selector "stereoPanBy:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function stereoPanTo Lib SpriteKitLibName Selector "stereoPanTo:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742074656C6C7320616E20617564696F206E6F646520746F2073746F7020706C61796261636B2E20417661696C61626C652073696E6365204F53582031302E31312E
		Shared Function Stop() As AppleSKAction
		  return new AppleSKAction (stop (classptr), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function stop Lib SpriteKitLibName Selector "stop" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function strengthBy Lib SpriteKitLibName Selector "strengthBy:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function strengthTo Lib SpriteKitLibName Selector "strengthTo:duration:" (id as ptr, x as Single, duration as Double) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h21
		Private Function TimingBlockTemplate(Time As Single) As Single
		  // This is a template for a block that can be used with the timingfunction property
		  // return the calculation (a value between 0 and 1) for the delivered animation time.
		  // Delete the pragma:
		  
		  #Pragma unused time
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E2074686174206D616B65732061206E6F64652076697369626C6520696E7374616E74656E65756F736C792E
		Shared Function Unhide() As AppleSKAction
		  dim result as new AppleSKAction (unhide (classptr))
		  result.RetainClassObject
		  return result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function unhide Lib SpriteKitLibName Selector "unhide" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E20616374696F6E20746861742069646C657320666F7220616E206F7074696F6E616C6C792072616E646F6D697A656420706572696F64206F662074696D652E
		Shared Function Wait(duration as Double, DurationRange as Double = 0.0) As AppleSKAction
		  return  new AppleSKAction (waitForDuration (classptr, duration, durationRange), true, true)
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function waitForDuration Lib SpriteKitLibName Selector "waitForDuration:withRange:" (id as ptr, x as double, y as double) As Ptr
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		
		OS X 10.12: Type methods (Warp) missing – need documentation for SKWarpGeometry.
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKAction")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206475726174696F6E20726571756972656420746F20636F6D706C65746520616E20616374696F6E2E
		#tag Getter
			Get
			  return SpriteKitFramework.getduration (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setDuration (mid, value)
			  
			End Set
		#tag EndSetter
		Duration As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120737065656420666163746F722074686174206D6F64696669657320686F77206661737420616E20616374696F6E2072756E732E
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

	#tag ComputedProperty, Flags = &h0, Description = 4120626C6F636B207573656420746F20637573746F6D697A65207468652074696D696E672066756E6374696F6E2E2057726974652D6F6E6C793A204F76657277726974652077697468206E696C20696620796F752077616E7420746F2063616E63656C2069742E20536565207468652074696D696E67426C6F636B54656D706C617465206D6574686F6420666F722074686520726571756972656420626C6F636B207374727563747572652E
		#tag Setter
			Set
			  Declare Sub setTimingFunction lib spritekitlibname selector "setTimingFunction:" (id as ptr, value as ptr)
			  setTimingFunction id, if (value = nil, nil, value.Handle)
			End Set
		#tag EndSetter
		TimingFunction As AppleBlock
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D696E67206D6F6465207573656420746F206578656375746520616E20616374696F6E2E2044656661756C74204C696E6561722E
		#tag Getter
			Get
			  Declare function timingMode lib spritekitlibname selector "timingMode" (id as ptr) as SKActionTimingMode
			  return timingMode (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTimingMode lib spritekitlibname selector "setTimingMode:" (id as ptr, value as SKActionTimingMode)
			  setTimingMode id, value
			End Set
		#tag EndSetter
		TimingMode As SKActionTimingMode
	#tag EndComputedProperty


	#tag Enum, Name = SKActionTimingMode, Type = Integer, Flags = &h0
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
			Type="SKActionTimingMode"
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
