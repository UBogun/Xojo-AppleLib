#tag Module
Protected Module iOSControlExtension
	#tag Method, Flags = &h0
		Sub AddGestureRecognizer(extends c as ioscontrol)
		  dim mDoubleTapRecognizer as new AppleTapGestureRecognizer (c.AppleObject, FoundationFramework.NSSelectorFromString("doubleTapReceived"))
		  mDoubleTapRecognizer.NumberOfTapsRequired = 2
		  mDoubleTapRecognizer.NumberOfTouchesRequired = 1
		  c.AppleObject.AddGestureRecognizer mDoubleTapRecognizer
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520636F6E74726F6CE28099732063757272656E7420416C7068612076616C75652E
		Function Alpha(extends c as iOSControl) As Double
		  Return c.AppleObject.Alpha
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207472616E73706172656E6379206F662074686520636F6E74726F6C2E
		Sub Alpha(extends c as iOSControl, assigns value as double)
		  c.AppleObject.Alpha = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D7320616E20416C7068612070726F706572747920616E696D6174696F6E206F766572207365636F6E6473207365636F6E64732077697468207468652073656C65637465642063757276652E
		Sub AnimateAlpha(extends c as ioscontrol, newAlpha as double, Seconds as double = 0.2, delay as double = 0, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.AnimateAlpha newalpha, AppleViewAnimationOption.OptionNone, Seconds, delay, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D7320616E204261636B67726F756E64436F6C6F7220616E696D6174696F6E206F766572207365636F6E6473207365636F6E64732077697468207468652073656C65637465642063757276652E0A4F6E20736F6D652055495669657720737562636C61737365732C2074686520616E696D6174696F6E20697320696E7374616E74616E656F75736C792E
		Sub AnimateBackgroundColor(extends c as ioscontrol, newcolor as color, Seconds as double = 0.2, delay as double = 0, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.AnimateColor newcolor.toAppleColor, AppleViewAnimationOption.OptionNone, Seconds, delay, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D7320616E20616E696D6174696F6E2077697468206120637573746F6D20626C6F636B206F766572207365636F6E6473207365636F6E64732077697468207468652073656C65637465642063757276652E0A5573652074686520626C6F636B20746F206368616E67652074686520616E696D617461626C652070726F70657274696573206F66206173206D616E7920636F6E74726F6C7320617320796F75206C696B652073696D756C74616E656F75736C792E
		Sub AnimateBlock(extends c as ioscontrol, Block As AppleBlock, Seconds as double = 0.2, delay as double = 0, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.AnimateBlock (block, AppleViewAnimationOption.OptionNone, Seconds, delay, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D73206120426F756E64732070726F706572747920616E696D6174696F6E206F766572207365636F6E6473207365636F6E64732077697468207468652073656C65637465642063757276652E
		Sub AnimateBounds(extends c as ioscontrol, newBounds As Xojo.Core.Rect, Seconds as double = 0.2, delay as double = 0, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.AnimateBounds newbounds.tonsrect, AppleViewAnimationOption.OptionNone, Seconds, delay, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D7320612043656E7465722070726F706572747920616E696D6174696F6E206F766572207365636F6E6473207365636F6E64732077697468207468652073656C65637465642063757276652E
		Sub AnimateCenter(extends c as ioscontrol, newX as double, newY as Double, Seconds as double = 0.2, delay as double = 0, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.Animatecenter FoundationFrameWork.NSMakePoint(newy, newy), AppleViewAnimationOption.OptionNone, Seconds, delay, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D732061204672616D652070726F706572747920616E696D6174696F6E206F766572207365636F6E6473207365636F6E64732077697468207468652073656C65637465642063757276652E
		Sub AnimateFrame(extends c as ioscontrol, newframe as Xojo.core.Rect, Seconds as double = 0.2, delay as double = 0, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.Animateframe newframe.tonsrect, AppleViewAnimationOption.OptionNone, Seconds, delay, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54726967676572732061205472616E73666F726D20616E696D6174696F6E2074686174207363616C657320746865206F70746963616C20617070656172616E6365206F662074686520766965772E204D616B65732069742070726F706F7274696F6E616C20696620796F7520646F206E6F7420646566696E6520595343616C652E2020
		Sub AnimateScale(extends c as ioscontrol, xScale as Double, YScale as Double = 0, Seconds as double = 0.2, delay as double = 0, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  if YScale = 0 then YScale = xScale
		  dim transform as CGAffineTransform = TransformExtension.CGAffineTransformScale (c.AppleObject.transform, xScale, YScale)
		  c.AppleObject.AnimateTransform (transform, AppleViewAnimationOption.OptionNone, Seconds, delay, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5472696767657273206120626C6F636B20616E696D6174696F6E20666F7220746865205F426F756E64735F206F662074686520766965772E2020
		Sub AnimateSize(extends c as ioscontrol, width as Double, height as Double, Seconds as double = 0.2, delay as double = 0, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  dim newFrame as new rect (0,0,Width, Height)
		  c.AppleObject.AnimateBounds (newFrame.toNSRect, AppleViewAnimationOption.OptionNone, Seconds, delay, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5472696767657273206120626C6F636B20616E696D6174696F6E20666F7220746865205F5472616E73666F726D5F2070726F7065727479206F662074686520566965772E2020
		Sub AnimateTransform(extends c as ioscontrol, aTransform as CGAffineTransform, Seconds as double = 0.2, delay as double = 0, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.AnimateTransform (aTransform, AppleViewAnimationOption.OptionNone, Seconds, delay, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AppleObject(extends c as iOSControl) As AppleView
		  return new AppleView (c.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206261636B67726F756E6420636F6C6F72206F66207468652076696577
		Function BackgroundColor(extends c as iOSControl) As Color
		  Return c.AppleObject.BackgroundColor.toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206261636B67726F756E6420636F6C6F72206F662074686520766965772E204F6E6C792076697369626C65206966206974206973206E6F742066756C6C792066696C6C65642077697468206F706171756520636F6E74656E742E
		Sub BackgroundColor(extends c as iOSControl, assigns value as color)
		  c.AppleObject.BackgroundColor = AppleColor.FromColor (value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520426F756E6473206F662074686520766965772C207768696368206D65616E73206974732064696D656E73696F6E73206E6F726D616C697A656420746F20697473206F776E20636F6F7264696E6174652073797374656D2E20
		Function Bounds(extends c as iOSControl) As xojo.core.rect
		  return c.AppleObject.Bounds.tocorerect
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520426F756E6473206F662074686520766965772C207768696368206D65616E73206974732064696D656E73696F6E73206E6F726D616C697A656420746F20697473206F776E20636F6F7264696E6174652073797374656D2E20
		Sub Bounds(extends c as iOSControl,assigns value as xojo.core.rect)
		  c.AppleObject.Bounds = value.tonsrect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5468652063656E74657220636F6F7264696E61746573206F6620746865207669657720696E2072656C6174696F6E20746F20697473207375706572766965772E20
		Function Center(extends c as iOSControl) As xojo.Core.Point
		  return c.AppleObject.Center.toCorepoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652063656E74657220636F6F7264696E61746573206F6620746865207669657720696E2072656C6174696F6E20746F20697473207375706572766965772E20
		Sub Center(extends c as iOSControl,assigns value as xojo.core.point)
		  c.AppleObject.Center = value.toNSPoint
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496620747275652C207468652076696577277320626F7264657220636C6970732074686520696D6167652E2049662066616C73652C206974206D6179206F7665726C61702E20
		Function ClipsToBounds(extends c as iOSControl) As Boolean
		  Return c.AppleObject.ClipsToBounds
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732069662074686520626F756E6473206F6620746865207669657720636C69702069747320636F6E74656E74732E
		Sub ClipsToBounds(extends c as iOSControl, assigns value as boolean)
		  c.AppleObject.ClipsToBounds = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D207468652073706563696669656420636F6F7264696E61746520737061636520746F2074686520636F6F7264696E617465207370616365206F66207468652063757272656E7420766965772E
		Function ConvertPointFromControl(extends c as ioscontrol, aPoint as xojo.core.point, acontrol as ioscontrol) As xojo.core.point
		  return c.ConvertPointFromView (apoint, acontrol.AppleObject)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D207468652073706563696669656420636F6F7264696E61746520737061636520746F2074686520636F6F7264696E617465207370616365206F66207468652063757272656E7420766965772E
		Function ConvertPointFromView(extends c as ioscontrol, aPoint as xojo.core.point, aView as AppleView) As xojo.core.point
		  return c.AppleObject.ConvertPointFromView (apoint.tonspoint, aview).tocorepoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D2074686520636F6F7264696E617465207370616365206F66207468652063757272656E74207669657720746F207468652073706563696669656420636F6F7264696E6174652073706163652E
		Function ConvertPointToControl(extends c as ioscontrol, aPoint as xojo.core.point, aControl as ioscontrol) As xojo.core.point
		  return c.ConvertPointToView (apoint, acontrol.AppleObject)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120706F696E742066726F6D2074686520636F6F7264696E617465207370616365206F66207468652063757272656E74207669657720746F207468652073706563696669656420636F6F7264696E6174652073706163652E
		Function ConvertPointToView(extends c as ioscontrol, aPoint as xojo.core.point, aView as AppleView) As xojo.core.point
		  return c.AppleObject.ConvertPointToView (apoint.tonspoint, aview).tocorepoint
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D207468652073706563696669656420636F6F7264696E61746520737061636520746F2074686520636F6F7264696E617465207370616365206F66207468652063757272656E7420766965772E
		Function ConvertRectFromControl(extends c as ioscontrol, aRect as xojo.core.Rect, aControl as ioscontrol) As Xojo.Core.Rect
		  return c.ConvertRectFromView (arect, acontrol.AppleObject)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D207468652073706563696669656420636F6F7264696E61746520737061636520746F2074686520636F6F7264696E617465207370616365206F66207468652063757272656E7420766965772E
		Function ConvertRectFromView(extends c as ioscontrol, aRect as xojo.core.Rect, aView as AppleView) As Xojo.Core.Rect
		  return c.AppleObject.ConvertRectFromView (arect.tonsrect, aview).toCoreRect
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D2074686520636F6F7264696E617465207370616365206F66207468652063757272656E74207669657720746F207468652073706563696669656420636F6F7264696E6174652073706163652E
		Function ConvertRectToControl(extends c as ioscontrol, aRect as xojo.core.rect, acontrol as ioscontrol) As xojo.core.rect
		  return c.ConvertRectToView (arect, acontrol.AppleObject)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320612072656374616E676C652066726F6D2074686520636F6F7264696E617465207370616365206F66207468652063757272656E74207669657720746F207468652073706563696669656420636F6F7264696E6174652073706163652E
		Function ConvertRectToView(extends c as ioscontrol, aRect as xojo.core.rect, aView as AppleView) As xojo.core.rect
		  return c.AppleObject.ConvertRectToView (arect.tonsrect, aview).toCoreRect
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865204170706C6543414C61796572206F626A656374206F662074686520766965772E
		Function CoreAnimationLayer(extends c as ioscontrol) As AppleCALayer
		  return c.AppleObject.Layer
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496620747275652C2074686520636F6E74726F6C2077696C6C206E6F7420666F727761726420746F756368206576656E747320746F2069747320656D6265646465642073756276696577732E
		Function ExclusiveTouch(extends c as iOSControl) As Boolean
		  Return c.AppleObject.ExclusiveTouch
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496620796F752077616E7420796F757220636F6E74726F6C20746F2070726F6365737320657665727920546F756368206576656E7420697473656C6620616E64206E6F7420666F727761726420697420746F20656D6265646465642073756276696577732F737562636F6E74726F6C732C2073657420746869732070726F706572747920746F20547275652E2020
		Sub ExclusiveTouch(extends c as iOSControl, assigns value as boolean)
		  c.AppleObject.ExclusiveTouch = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E67657320746865205F416C7068615F2076616C7565206F6620746865207669657720746F203120E28093206D616B65732069742066756C6C79206F706171756520E2809320647572696E6720612074696D6520706572696F64206F66205F5365636F6E64735F2E2020
		Sub FadeIn(extends c as ioscontrol, Seconds as double = 0.2, delay as double = 0, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.animateAlpha (1, AppleViewAnimationOption.OptionNone, Seconds, delay, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E67657320746865205F416C7068615F2076616C7565206F6620746865207669657720746F203020E28093206D616B65732069742066756C6C79207472616E73706172656E7420E2809320647572696E6720612074696D6520706572696F64206F66205F5365636F6E64735F2E2020
		Sub FadeOut(extends c as ioscontrol, Seconds as double = 0.2, delay as double = 0,  curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.AnimateAlpha (0, AppleViewAnimationOption.OptionNone, Seconds, delay, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652053697A652074686174207468652076696577206E6565647320666F722066756C6C7920646973706C6179696E672069747320636F6E74656E74732E
		Function FittingSize(extends c as iOSControl) As Size
		  return c.AppleObject.SizeThatFits(c.AppleObject.frame.size_).toCoreSize
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865204672616D65206F662074686520766965772C207768696368206D65616E73206974732064696D656E73696F6E7320696E2072656C6174696F6E20746F2069747320737570657276696577277320636F6F7264696E6174652073797374656D2E
		Function Frame(extends c as iOSControl) As xojo.core.rect
		  return c.AppleObject.Frame.tocorerect
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865204672616D65206F662074686520766965772C207768696368206D65616E73206974732064696D656E73696F6E7320696E2072656C6174696F6E20746F2069747320737570657276696577277320636F6F7264696E6174652073797374656D2E
		Sub Frame(extends c as iOSControl,assigns value as xojo.core.rect)
		  c.AppleObject.Frame = value.tonsrect
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E7665727473207468652063757272656E74205F5472616E73666F726D5F2070726F706572747920206F662074686520766965772E2020
		Sub InvertTransformation(extends c as ioscontrol)
		  c.AppleObject.InvertTransform
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536D6F6F74686C79206D6F7665732074686520636F6E74726F6C2076696120626C6F636B20616E696D6174696F6E20746F20746865206E657720706F736974696F6E2E20
		Sub MoveTo(extends c as ioscontrol, x as Double, y as Double, Seconds as double = 0.2, delay as double = 0, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  dim newFrame as new rect (x, y ,c.Width, c.Height)
		  c.AppleObject.AnimateFrame (newFrame.toNSRect, AppleViewAnimationOption.OptionNone, Seconds, delay, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 446566696E6573206966206120636F6E74726F6C206973206F706171756520283D20686173206E6F207472616E73706172656E7420636F6E74656E74292E2055736520746869732070726F706572747920746F2073706565642075702064726177696E67206F662066756C6C79206F706171756520636F6E74726F6C732E
		Function Opaque(extends c as iOSControl) As Boolean
		  Return c.AppleObject.Opaque
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 446566696E6573206966206120636F6E74726F6C206973206F706171756520283D20686173206E6F207472616E73706172656E7420636F6E74656E74292E2055736520746869732070726F706572747920746F2073706565642075702064726177696E67206F662066756C6C79206F706171756520636F6E74726F6C732E
		Sub Opaque(extends c as iOSControl, assigns value as boolean)
		  c.AppleObject.Opaque = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C65747320746865207669657720726563616C63756C6174652069747320646973706C617920696D6D6564696174656C792E
		Sub Redraw(extends c as iOSControl)
		  c.AppleObject.Invalidate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865205F5472616E73666F726D5F2070726F706572747920746F206964656E746974792C207768696368206D65616E732C20746865207669657720636F6E74656E747320646973706C6179206973206261636B20746F206F726967696E616C2E2020
		Sub ResetTransformation(extends c as ioscontrol)
		  c.AppleObject.ResetTransform
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5472616E73666F726D73207468652063757272656E74205F7472616E73666F726D5F2070726F70657274792077697468206120726F746174696F6E2061726F756E64205F416E676C655F20446567726565732E
		Sub Rotate(extends c as ioscontrol, Angle as double)
		  c.AppleObject.Rotate Angle.DegreesToRadians
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5472616E73666F726D73207468652063757272656E74205F5472616E73666F726D5F2070726F706572747920776974682061207363616C6520666163746F7220696E20782F7920646972656374696F6E2E20496620796F7520646566696E65206E6F2059466163746F722076616C756520286F722030292C2074686520636F6E74656E74206973207363616C65642070726F706F7274696F6E616C6C792E
		Sub Scale(extends c as ioscontrol, xfactor as double, yfactor as double = 0)
		  c.AppleObject.Scale xfactor, yfactor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E20636F6E747261737420746F205F526F746174655F2C207468652063757272656E74205F5472616E73666F726D5F2076616C756520697320646973726567617264656420616E64207265706C616365642062792061205F4347416666696E655472616E73666F726D5F20666F72206A7573742074686520726F746174696F6E2E2020
		Sub SetRotation(extends c as ioscontrol, Angle as double)
		  c.AppleObject.SetRotation Angle.DegreesToRadians
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5363616C65732074686520636F6E74656E742062792073657474696E672075702061205F5472616E73666F726D5F2056616C756520666F7220746865207363616C6520666163746F722873292E2052656D6F76657320666F726D6572205F5472616E73666F726D5F2076616C7565732E
		Sub SetScale(extends c as ioscontrol, xfactor as double, yfactor as double = 0)
		  c.AppleObject.SetScale xfactor, yfactor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865205F5472616E73666F726D5F2070726F706572747920666F722061207472616E736C6174696F6E2028616E20696E7374616E6365206D6F76652920696E2044656C7461582C2044656C7461592064697374616E636520746F2074686520626173652076616C7565732E
		Sub SetTranslation(extends c as ioscontrol, DeltaX as double, DeltaY as double)
		  c.AppleObject.SetTranslation deltaX, deltaY
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526573697A65732074686520636F6E74726F6C20746F20697473206D696E696D756D2076616C75652077697468207265737065637420746F2069747320636F6E74656E74732E
		Sub SizeToFit(extends c as ioscontrol)
		  c.AppleObject.SizeToFit
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D73206120537072696E67416E696D6174696F6E206F6E20746865205F416C7068615F2070726F70657274792E20
		Sub SpringAnimateAlpha(extends c as ioscontrol, newAlpha as Double, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 0.5)
		  c.AppleObject.SpringAnimateAlpha newAlpha, AppleViewAnimationOption.OptionNone, DampingRatio, Velocity, Seconds, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D73206120537072696E67416E696D6174696F6E206F6E20746865205F4261636B67726F756E64436F6C6F725F2070726F70657274792E2020
		Sub SpringAnimateBackgroundColor(extends c as ioscontrol, newcolor as color, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 0.5)
		  c.AppleObject.springAnimateColor newcolor.toAppleColor, AppleViewAnimationOption.OptionNone, DampingRatio, Velocity, Seconds, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 557365206120637573746F6D20626C6F636B20746F20706572666F726D20737072696E6720616E696D6174696F6E73206F6E20616E7920636F6E74726F6C20796F75206C696B65206279206368616E67696E6720746865697220616E696D617461626C652070726F7065727469657320746F206E65772076616C7565732E20
		Sub SpringAnimateBlock(extends c as ioscontrol, Block As AppleBlock, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 0.5)
		  c.AppleObject.SpringAnimateBlock (block, AppleViewAnimationOption.OptionNone, DampingRatio, Velocity, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D73206120537072696E67416E696D6174696F6E206F6E2074686520636F6E74726F6C2773205F426F756E64735F2E20
		Sub SpringAnimateBounds(extends c as ioscontrol, NewBounds As Xojo.Core.Rect, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 0.5)
		  c.AppleObject.SpringAnimateBounds (newBounds.toNSRect, AppleViewAnimationOption.OptionNone, DampingRatio, Velocity, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D73206120537072696E67416E696D6174696F6E206F6E2074686520636F6E74726F6C2773205F43656E7465725F2E2020
		Sub SpringAnimateCenter(extends c as ioscontrol, newX as double, newY as Double, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 0.5)
		  c.AppleObject.SpringAnimatecenter FoundationFrameWork.NSMakePoint(newy, newy), AppleViewAnimationOption.OptionNone, dampingRatio, Velocity, Seconds, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D73206120537072696E67416E696D6174696F6E206F6E2074686520636F6E74726F6C2773205F4672616D65
		Sub SpringAnimateFrame(extends c as ioscontrol, newframe as Xojo.core.Rect, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 0.5)
		  c.AppleObject.SpringAnimateframe newframe.tonsrect, AppleViewAnimationOption.OptionNone, dampingRatio, velocity, Seconds, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D73206120537072696E67416E696D6174696F6E206F6E2074686520636F6E74726F6C2773205F5472616E73666F726D5F20746F207363616C652074686520636F6E74726F6C2C2070726F706F7274696F6E616C6C7920696620797363616C65203D20302E
		Sub SpringAnimateScale(extends c as ioscontrol, xScale as Double, YScale as Double = 0, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 0.5)
		  if YScale = 0 then YScale = xScale
		  dim transform as CGAffineTransform = TransformExtension.CGAffineTransformScale (c.AppleObject.transform, xScale, YScale)
		  c.AppleObject.SpringAnimateTransform (transform, AppleViewAnimationOption.OptionNone, dampingRatio, Velocity, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D73206120537072696E67416E696D6174696F6E206F6E2074686520636F6E74726F6C2773205F426F756E64735F2E20
		Sub SpringAnimateSize(extends c as ioscontrol, width as Double, height as Double, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 0.5)
		  dim newFrame as new rect (0,0,Width, Height)
		  c.AppleObject.SpringAnimateBounds (newFrame.toNSRect, AppleViewAnimationOption.OptionNone, DampingRatio, Velocity, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D73206120537072696E67416E696D6174696F6E206F6E20746865205F5472616E73666F726D5F2070726F70657274792E
		Sub SpringAnimateTransform(extends c as ioscontrol, aTransform as CGAffineTransform, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 0.5)
		  c.AppleObject.SpringAnimateTransform (aTransform, AppleViewAnimationOption.OptionNone, DampingRatio, Velocity, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D73206120537072696E67616E696D6174696F6E206F6E2074686520636F6E74726F6C2773206672616D6520E2809320696E206F7468657220776F7264732C206D6F7665732069742E20
		Sub SpringMoveTo(extends c as ioscontrol, x as Double, y as Double, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut, DampingRatio as Double = 1, Velocity As Double = 1)
		  dim newFrame as new rect (x, y ,c.Width, c.Height)
		  c.AppleObject.SpringAnimateFrame (newFrame.toNSRect, AppleViewAnimationOption.OptionNone, DampingRatio, Velocity, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206669727374206E6F6E64656661756C742074696E7420636F6C6F722076616C756520696E2074686520766965772773206869657261726368792C207374617274696E67207769746820746865207669657720697473656C662E2020
		Function TintColor(extends c as iOSControl) As Color
		  Return c.AppleObject.TintColor.toColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652074696E7420636F6C6F72206F662074686520636F6E74726F6C2E
		Sub TintColor(extends c as iOSControl, assigns value as color)
		  c.AppleObject.TintColor = AppleColor.FromColor (value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207472616E736974696F6E20616E696D6174696F6E206265747765656E2074686520737065636966696564207669657773207573696E672074686520676976656E20706172616D65746572732E
		Sub Transition(extends c as ioscontrol,Transition as UIKitFramework.UIVIewAnimationTransition, options as AppleViewAnimationOption, Seconds as Double = 0.2, Curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.Transition ( transition, options ,Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207472616E736974696F6E20616E696D6174696F6E206265747765656E2074686520737065636966696564207669657773207573696E672074686520676976656E20706172616D65746572732E
		Sub TransitionToView(extends c as ioscontrol, newview as appleview, transition as UIKitFramework.UIVIewAnimationTransition, options as AppleViewAnimationOption, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.ViewTransition (c.AppleObject, newview, transition, options ,Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E205F416C7068615F207472616E736974696F6E20616E696D6174696F6E20666F722074686520766965772E
		Sub TransitionWithAlpha(extends c as ioscontrol, newAlpha as double, transition as UIKitFramework.UIVIewAnimationTransition, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.TransitionWithAlpha (newalpha, transition, AppleViewAnimationOption.OptionNone, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061205F4261636B67726F756E64436F6C6F725F207472616E736974696F6E20616E696D6174696F6E20666F722074686520766965772E202020
		Sub TransitionWithBackgroundColor(extends c as ioscontrol, newcolor as color, transition as UIKitFramework.UIVIewAnimationTransition, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.TransitionWithColor newcolor.toAppleColor, transition, AppleViewAnimationOption.OptionNone, Seconds, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207472616E736974696F6E20616E696D6174696F6E207768696C6520706572666F726D696E672074686520636F64652077697468696E205F426C6F636B5F20666F722074686520766965772E202020
		Sub TransitionWithBlock(extends c as ioscontrol, Block As AppleBlock, transition as UIKitFramework.UIVIewAnimationTransition, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.TransitionWithBlock (block, transition, AppleViewAnimationOption.OptionNone, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061205F426F756E64735F207472616E736974696F6E20616E696D6174696F6E20666F722074686520766965772E
		Sub TransitionWithBounds(extends c as ioscontrol, newBounds As Xojo.Core.Rect, transition as UIKitFramework.UIVIewAnimationTransition, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.TransitionWithBounds NewBounds.toNSREct, transition, AppleViewAnimationOption.OptionNone, Seconds, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061205F43656E7465725F207472616E736974696F6E20616E696D6174696F6E20666F722074686520766965772E
		Sub TransitionWithCenter(extends c as ioscontrol, newX as double, newY as Double, transition as UIKitFramework.UIVIewAnimationTransition, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.TransitionWithCenter FoundationFrameWork.NSMakePoint(newy, newy), transition, AppleViewAnimationOption.OptionNone, Seconds, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061205F4672616D655F207472616E736974696F6E20616E696D6174696F6E20666F722074686520766965772E
		Sub TransitionWithFrame(extends c as ioscontrol, newframe as Xojo.core.Rect, transition as UIKitFramework.UIVIewAnimationTransition, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.TransitionWithFrame newframe.tonsrect, transition, AppleViewAnimationOption.OptionNone, Seconds, curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061205F5472616E73666F726D5F207472616E736974696F6E20616E696D6174696F6E207363616C696E67207468652076696577202870726F706F7274696F6E616C6C7920696620595363616C65203D2030292E202020
		Sub TransitionWithScale(extends c as ioscontrol, xScale as Double, YScale as Double = 0, transition as UIKitFramework.UIVIewAnimationTransition, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  if YScale = 0 then YScale = xScale
		  dim transform as CGAffineTransform = TransformExtension.CGAffineTransformScale (c.AppleObject.transform, xScale, YScale)
		  c.AppleObject.TransitionWithTransform (transform, transition, AppleViewAnimationOption.OptionNone, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061205F426F756E64735F207472616E736974696F6E20616E696D6174696F6E20726573697A696E672074686520766965772E2020202020
		Sub TransitionwithSize(extends c as ioscontrol, width as Double, height as Double, transition as UIKitFramework.UIVIewAnimationTransition, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  dim newFrame as new rect (0,0,Width, Height)
		  c.AppleObject.TransitionWithBounds (newFrame.toNSRect, transition, AppleViewAnimationOption.OptionNone, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061205F5472616E73666F726D5F207472616E736974696F6E20616E696D6174696F6E2E20
		Sub TransitionWithTransform(extends c as ioscontrol, aTransform as CGAffineTransform, transition as UIKitFramework.UIVIewAnimationTransition, Seconds as double = 0.2, curve as UIKitFramework.UIViewAnimationCurve = UIKitFramework.UIViewAnimationCurve.EaseInEaseOut)
		  c.AppleObject.TransitionWithTransform (aTransform, transition, AppleViewAnimationOption.OptionNone, Seconds, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Translate(extends c as ioscontrol, DeltaX as double, DeltaY as double)
		  c.AppleObject.Translate deltaX, deltaY
		End Sub
	#tag EndMethod


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
