#tag Class
Protected Class AppleSKPhysicsBody
Inherits AppleObject
	#tag Method, Flags = &h0, Description = 4170706C69657320616E20696D70756C7365207468617420696D706172747320616E67756C6172206D6F6D656E74756D20746F20616E206F626A6563742E
		Sub ApplyAngularImpulse(Impulse as double)
		  SpriteKitFramework.applyAngularImpulse mid, Impulse
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C696573206120666F72636520746F207468652063656E746572206F662067726176697479206F662061207068797369637320626F64792E
		Sub ApplyForce(Vector as FoundationFramework.CGVector)
		  SpriteKitFramework.ApplyForce mid, Vector
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C696573206120666F72636520746F206120737065636966696320706F696E74206F662061207068797369637320626F64792E
		Sub ApplyForce(Vector as FoundationFramework.CGVector, atPoint as FoundationFramework.NSPoint)
		  SpriteKitFramework.applyForceatPoint mid, Vector, atPoint
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C69657320616E20696D70756C736520746F207468652063656E746572206F662067726176697479206F662061207068797369637320626F64792E
		Sub ApplyImpulse(Vector as FoundationFramework.CGVector)
		  SpriteKitFramework.applyImpulse mid, Vector
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C69657320616E20696D70756C736520746F206120737065636966696320706F696E74206F662061207068797369637320626F64792E
		Sub ApplyImpulse(Vector as FoundationFramework.CGVector, atPoint as FoundationFramework.NSPoint)
		  SpriteKitFramework.applyImpulseatPoint mid, Vector, atPoint
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C696573206120746F7271756520746F20616E206F626A6563742E
		Sub ApplyTorque(Torque as double)
		  SpriteKitFramework.applyTorque mid, torque
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207068797369637320626F647920627920706572666F726D696E67206120756E696F6E206F6620612067726F7570206F6620766F6C756D652D6261736564207068797369637320626F646965732E
		Shared Function BodyWithBodies(Bodies As AppleArray) As AppleSKPhysicsBody
		  dim result as new AppleSKPhysicsBody (bodyWithBodies(classptr, bodies.id))
		  Result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function bodyWithBodies Lib SpriteKitLibName Selector "bodyWithBodies:" (id as ptr, bodies as Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320612063697263756C6172207068797369637320626F64792063656E7465726564206F6E20746865206F776E696E67206E6F6465E2809973206F726967696E2E
		Shared Function BodyWithCircle(radius as Double) As AppleSKPhysicsBody
		  dim result as new AppleSKPhysicsBody (bodyWithCircleOfRadius(classptr, radius))
		  Result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320612063697263756C6172207068797369637320626F64792063656E7465726564206F6E20616E2061726269747261727920706F696E742E
		Shared Function BodyWithCircle(radius as Double, Center As FoundationFrameWork.NSPoint) As AppleSKPhysicsBody
		  dim result as new AppleSKPhysicsBody (bodyWithCircleOfRadiusCenter(classptr, radius, center))
		  Result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function bodyWithCircleOfRadius Lib SpriteKitLibName Selector "bodyWithCircleOfRadius:" (id as ptr, radius as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function bodyWithCircleOfRadiusCenter Lib SpriteKitLibName Selector "bodyWithCircleOfRadius:center:" (id as ptr, radius as CGFloat, center as FoundationFrameWork . NSPoint) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E2065646765206265747765656E2074776F20706F696E74732E
		Shared Function BodyWithEdge(Point1 As FoundationFrameWork.NSPoint, Point2 As FoundationFrameWork.NSPoint) As AppleSKPhysicsBody
		  dim result as new AppleSKPhysicsBody (bodyWithEdgeFromPoint(classptr, Point1, Point2))
		  Result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E206564676520636861696E2066726F6D206120706174682E
		Shared Function BodyWithEdgeChain(Path As AppleCGPath) As AppleSKPhysicsBody
		  dim result as new AppleSKPhysicsBody (bodyWithEdgeChainFromPath(classptr, path.CFTypeRef))
		  Result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function bodyWithEdgeChainFromPath Lib SpriteKitLibName Selector "bodyWithEdgeChainFromPath:" (id as ptr, Path AS Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function bodyWithEdgeFromPoint Lib SpriteKitLibName Selector "bodyWithEdgeFromPoint:toPoint:" (id as ptr, p1 as FoundationFrameWork . NSPoint, p2 as FoundationFrameWork . NSPoint) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E2065646765206C6F6F702066726F6D206120706174682E
		Shared Function BodyWithEdgeLoop(Path As AppleCGPath) As AppleSKPhysicsBody
		  dim result as new AppleSKPhysicsBody (bodyWithEdgeLoopFromPath(classptr, path.CFTypeRef))
		  Result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E2065646765206C6F6F702066726F6D20612072656374616E676C652E
		Shared Function BodyWithEdgeLoop(Rect As FoundationFrameWork.NSRect) As AppleSKPhysicsBody
		  dim result as new AppleSKPhysicsBody (bodyWithEdgeLoopFromRect(classptr, rect))
		  Result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function bodyWithEdgeLoopFromPath Lib SpriteKitLibName Selector "bodyWithEdgeLoopFromPath:" (id as ptr, Path AS Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function bodyWithEdgeLoopFromRect Lib SpriteKitLibName Selector "bodyWithEdgeLoopFromRect:" (id as ptr, rectr as FoundationFrameWork . NSRect) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 43726561746573206120706F6C79676F6E2D736861706564207068797369637320626F64792E
		Shared Function BodyWithPolygon(Path As AppleCGPath) As AppleSKPhysicsBody
		  dim result as new AppleSKPhysicsBody (bodyWithPolygonFromPath(classptr, path.CFTypeRef))
		  Result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function bodyWithPolygonFromPath Lib SpriteKitLibName Selector "bodyWithPolygonFromPath:" (id as ptr, Path AS Ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 4372656174657320612072656374616E67756C6172207068797369637320626F64792063656E7465726564206F6E20746865206F776E696E67206E6F6465E2809973206F726967696E2E
		Shared Function BodyWithRectangle(size As FoundationFrameWork.NSSize) As AppleSKPhysicsBody
		  dim result as new AppleSKPhysicsBody (bodyWithRectangleOfSize(classptr, size))
		  Result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320612072656374616E67756C6172207068797369637320626F64792063656E7465726564206F6E20616E2061726269747261727920706F696E742E
		Shared Function BodyWithRectangle(size As FoundationFrameWork.NSSize, center as FoundationFrameWork.NSPoint) As AppleSKPhysicsBody
		  dim result as new AppleSKPhysicsBody (bodyWithRectangleOfSizeCenter(classptr, size, center))
		  Result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function bodyWithRectangleOfSize Lib SpriteKitLibName Selector "bodyWithRectangleOfSize:" (id as ptr, Size as FoundationFrameWork . NSSIze) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function bodyWithRectangleOfSizeCenter Lib SpriteKitLibName Selector "bodyWithRectangleOfSize:center:" (id as ptr, Size as FoundationFrameWork . NSSIze, center As FoundationFrameWork . NSPoint) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207068797369637320626F64792066726F6D2074686520636F6E74656E7473206F66206120746578747572652E
		Shared Function BodyWithTexture(Texture as AppleSKTexture, size As FoundationFrameWork.NSSize) As AppleSKPhysicsBody
		  dim result as new AppleSKPhysicsBody (bodyWithTexture(classptr, Texture.id, size))
		  Result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061207068797369637320626F64792066726F6D2074686520636F6E74656E7473206F66206120746578747572652C20636170747572696E67206F6E6C792074686520746578656C73207468617420657863656564206120737065636966696564207472616E73706172656E63792076616C75652E
		Shared Function BodyWithTexture(Texture as AppleSKTexture, AlphaThreshold As Single,  size As FoundationFrameWork.NSSize) As AppleSKPhysicsBody
		  dim result as new AppleSKPhysicsBody (bodyWithTextureAlpha(classptr, Texture.id, AlphaThreshold, size))
		  Result.RetainClassObject
		  return Result
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function bodyWithTexture Lib SpriteKitLibName Selector "bodyWithTexture:size:" (id as ptr, texture as ptr, Size as FoundationFrameWork . NSSIze) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function bodyWithTextureAlpha Lib SpriteKitLibName Selector "bodyWithTexture:alphaThreshold:size:" (id as ptr, texture as ptr, alpha as single, Size as FoundationFrameWork . NSSIze) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206E65772050687973696373626F64792066726F6D207468652072656374616E67756C6172207368617065206F662061206E6F64652E
		Sub Constructor(Node As AppleSKNode)
		  super.Constructor (bodyWithRectangleOfSize (classptr, node.Frame.Size_))
		  RetainClassObject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpinned Lib SpriteKitLibName Selector "pinned" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakeFromPtr(aPtr as Ptr) As AppleSKPhysicsBody
		  Return if (aptr = NIL, NIL, new AppleSKPhysicsBody (aptr))
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setpinned Lib SpriteKitLibName Selector "setPinned:" (id as ptr, value as Boolean)
	#tag EndExternalMethod


	#tag Note, Name = Status complete
		
		macOS 10.12
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686973207068797369637320626F647920697320616666656374656420627920746865207068797369637320776F726C64E2809973206772617669747920616E64207468652067726176697479206578657274656420627920616E792070687973696373206669656C647320696E20746865207363656E652E2044656661756C7420547275652E
		#tag Getter
			Get
			  return SpriteKitFramework.getaffectedByGravity (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setAffectedByGravity mid, value
			End Set
		#tag EndSetter
		AffectedByGravity As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207068797369637320626F6469657320746861742074686973207068797369637320626F647920697320696E20636F6E7461637420776974682E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (SpriteKitFramework.getallContactedBodies(mid))
			  
			End Get
		#tag EndGetter
		AllContactedBodies As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C7565207468617420696E64696361746573207768657468657220746865207068797369637320626F647920697320616666656374656420627920616E67756C617220666F7263657320616E6420696D70756C736573206170706C69656420746F2069742E2044656661756C7420547275652E
		#tag Getter
			Get
			  return SpriteKitFramework.getallowsRotation (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setAllowsRotation mid, value
			End Set
		#tag EndSetter
		AllowsRotation As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412070726F7065727479207468617420726564756365732074686520626F6479E280997320726F746174696F6E616C2076656C6F636974792E2044656661756C7420302E312E
		#tag Getter
			Get
			  return SpriteKitFramework.getangularDamping (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setAngularDamping mid, value
			End Set
		#tag EndSetter
		AngularDamping As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207068797369637320626F6479E280997320616E67756C61722073706565642E
		#tag Getter
			Get
			  return SpriteKitFramework.getangularVelocity (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setAngularVelocity mid, value
			End Set
		#tag EndSetter
		AngularVelocity As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206172656120636F76657265642062792074686520626F64792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return SpriteKitFramework.getarea (mid)
			  
			End Get
		#tag EndGetter
		Area As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E65732077686963682063617465676F726965732074686973207068797369637320626F64792062656C6F6E677320746F2E2044656661756C7420616C6C2062697473207365742E
		#tag Getter
			Get
			  return SpriteKitFramework.getcategoryBitMask (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setCategoryBitMask mid, value
			End Set
		#tag EndSetter
		CategoryBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520656C656374726963616C20636861726765206F6620746865207068797369637320626F64792E
		#tag Getter
			Get
			  return SpriteKitFramework.getcharge (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setCharge mid, value
			End Set
		#tag EndSetter
		Charge As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then
			    if AppleSKView.classavailable then
			      mClassPtr  =  FoundationFramework.NSClassFromString ("SKPhysicsBody")
			    end if
			  end if
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E65732077686963682063617465676F72696573206F66207068797369637320626F646965732063616E20636F6C6C69646520776974682074686973207068797369637320626F64792E2044656661756C7420616C6C2062697473207365742E
		#tag Getter
			Get
			  return SpriteKitFramework.getcollisionBitMask (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setCollisionBitMask mid, value
			End Set
		#tag EndSetter
		CollisionBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E65732077686963682063617465676F72696573206F6620626F6469657320636175736520696E74657273656374696F6E206E6F74696669636174696F6E7320776974682074686973207068797369637320626F64792E2044656661756C7420616C6C206269747320636C65617265642E
		#tag Getter
			Get
			  return SpriteKitFramework.getcontactTestBitMask (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setContactTestBitMask mid, value
			End Set
		#tag EndSetter
		ContactTestBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656E73697479206F6620746865206F626A65637420696E206B696C6F6772616D732070657220737175617265206D657465722E
		#tag Getter
			Get
			  return SpriteKitFramework.getdensity (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setDensity mid, value
			End Set
		#tag EndSetter
		Density As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207068797369637320626F6479206973206D6F7665642062792074686520706879736963732073696D756C6174696F6E2E2044656661756C7420547275652E
		#tag Getter
			Get
			  return SpriteKitFramework.getDynamic (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setDynamic mid, value
			End Set
		#tag EndSetter
		Dynamic As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 41206D61736B207468617420646566696E65732077686963682063617465676F72696573206F662070687973696373206669656C64732063616E20657865727420666F72636573206F6E2074686973207068797369637320626F64792E2044656661756C7420616C6C2062697473207365742E
		#tag Getter
			Get
			  return SpriteKitFramework.getfieldBitMask (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setFieldBitMask mid, value
			End Set
		#tag EndSetter
		FieldBitMask As UInt32
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520726F7567686E657373206F66207468652073757266616365206F6620746865207068797369637320626F64792E2056616C7565206265747765656E20302E3020616E6420312E302E2044656661756C7420302E322E
		#tag Getter
			Get
			  return SpriteKitFramework.getfriction (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setFriction mid, value
			End Set
		#tag EndSetter
		Friction As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206A6F696E747320636F6E6E656374656420746F2074686973207068797369637320626F64792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleArray.MakeFromPtr (SpriteKitFramework.getjoints(mid))
			  
			End Get
		#tag EndGetter
		Joints As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412070726F7065727479207468617420726564756365732074686520626F6479E2809973206C696E6561722076656C6F636974792E204265747765656E20302E3020616E6420312E302E2044656661756C7420302E312E
		#tag Getter
			Get
			  return SpriteKitFramework.getlinearDamping (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setLinearDamping mid, value
			End Set
		#tag EndSetter
		LinearDamping As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D617373206F662074686520626F647920696E206B696C6F6772616D732E
		#tag Getter
			Get
			  return SpriteKitFramework.getmass (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setmass mid, value
			End Set
		#tag EndSetter
		Mass As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F64652074686174207468697320626F647920697320636F6E6E656374656420746F2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleSKNode.MakeFromPtr (SpriteKitFramework.node(mid))
			  
			End Get
		#tag EndGetter
		Node As AppleSKNode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207068797369637320626F6479E2809973206E6F64652069732070696E6E656420746F2069747320706172656E74206E6F64652E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return getpinned (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setPinned mid, value
			End Set
		#tag EndSetter
		Pinned As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865207068797369637320776F726C6420757365732061206D6F7265207072656369736520636F6C6C6973696F6E20646574656374696F6E20616C676F726974686D2E2044656661756C742046616C73652E
		#tag Getter
			Get
			  return SpriteKitFramework.getusesPreciseCollisionDetection (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setUsesPreciseCollisionDetection mid, value
			End Set
		#tag EndSetter
		PreciseCollisionDetection As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220746865206F626A65637420697320617420726573742077697468696E2074686520706879736963732073696D756C6174696F6E2E
		#tag Getter
			Get
			  return SpriteKitFramework.getResting (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setResting mid, value
			End Set
		#tag EndSetter
		Resting As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520626F756E63696E657373206F6620746865207068797369637320626F64792C206265747765656E20302E3020616E6420312E302E2044656661756C7420302E322E
		#tag Getter
			Get
			  return SpriteKitFramework.getrestitution (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setRestitution mid, value
			End Set
		#tag EndSetter
		Restitution As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207068797369637320626F6479E28099732076656C6F6369747920766563746F722C206D6561737572656420696E206D657465727320706572207365636F6E642E
		#tag Getter
			Get
			  return SpriteKitFramework.getvelocity (mid)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SpriteKitFramework.setVelocity mid, value
			  
			End Set
		#tag EndSetter
		Velocity As FoundationFrameWork.cgvector
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AffectedByGravity"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsRotation"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AngularDamping"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AngularVelocity"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Area"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CategoryBitMask"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Charge"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CollisionBitMask"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ContactTestBitMask"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Density"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Dynamic"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FieldBitMask"
			Group="Behavior"
			Type="UInt32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Friction"
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
			Name="LinearDamping"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mass"
			Group="Behavior"
			Type="Double"
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
			Name="Pinned"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreciseCollisionDetection"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Resting"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Restitution"
			Group="Behavior"
			Type="Double"
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
