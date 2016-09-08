#tag Module
Protected Module SpriteKitFramework
	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub applyAngularImpulse Lib SpriteKitLibName Selector "applyAngularImpulse:" (id as Ptr, force as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub applyForce Lib SpriteKitLibName Selector "applyForce:" (id as Ptr, force as FoundationFrameWork . CGVector)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub applyForceatPoint Lib SpriteKitLibName Selector "applyForce:atPoint:" (id as Ptr, force as FoundationFrameWork . CGVector, point as FoundationFrameWork . NSPoint)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub applyImpulse Lib SpriteKitLibName Selector "applyImpulse:" (id as Ptr, force as FoundationFrameWork . CGVector)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub applyImpulseatPoint Lib SpriteKitLibName Selector "applyImpulse:atPoint:" (id as Ptr, force as FoundationFrameWork . CGVector, point as FoundationFrameWork . NSPoint)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub applyTorque Lib SpriteKitLibName Selector "applyTorque:" (id as Ptr, torque as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function containsPoint Lib SpriteKitLibName Selector "containsPoint:" (id as ptr, point as FoundationFrameWork . NSPoint) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getactionForKey Lib SpriteKitLibName Selector "actionForKey:" (id as ptr, key as cfstringRef) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getaffectedByGravity Lib SpriteKitLibName Selector "affectedByGravity" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallContactedBodies Lib SpriteKitLibName Selector "allContactedBodies" (id as Ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsRotation Lib SpriteKitLibName Selector "allowsRotation" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getallowsTransparency Lib SpriteKitLibName Selector "allowsTransparency" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getanchorPoint Lib SpriteKitLibName Selector "anchorPoint" (id as ptr) As FoundationFrameWork.NSPoint
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getangularDamping Lib SpriteKitLibName Selector "angularDamping" (id as Ptr) As CGFLoat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getangularVelocity Lib SpriteKitLibName Selector "angularVelocity" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getAntialiased Lib SpriteKitLibName Selector "isAntialiased" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getarea Lib SpriteKitLibName Selector "area" (id as Ptr) As CGFLoat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getasynchronous Lib SpriteKitLibName Selector "isAsynchronous" (id as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getBodyA Lib SpriteKitLibName Selector "bodyA" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getBodyB Lib SpriteKitLibName Selector "bodyB" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcategoryBitMask Lib SpriteKitLibName Selector "categoryBitMask" (id as Ptr) As UInt32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcenterRect Lib SpriteKitLibName Selector "centerRect" (id as ptr) As FoundationFrameWork.NSRect
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcharge Lib SpriteKitLibName Selector "charge" (id as Ptr) As CGFLoat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getChildren Lib SpriteKitLibName Selector "children" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcollisionBitMask Lib SpriteKitLibName Selector "collisionBitMask" (id as Ptr) As UInt32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getColor Lib SpriteKitLibName Selector "color" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcolorBlendFactor Lib SpriteKitLibName Selector "colorBlendFactor" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getcontactTestBitMask Lib SpriteKitLibName Selector "contactTestBitMask" (id as Ptr) As UInt32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdensity Lib SpriteKitLibName Selector "density" (id as Ptr) As CGFLoat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getduration Lib SpriteKitLibName Selector "duration" (id as Ptr) As Double
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getdynamic Lib SpriteKitLibName Selector "isDynamic" (id as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfieldBitMask Lib SpriteKitLibName Selector "fieldBitMask" (id as Ptr) As UInt32
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfillColor Lib SpriteKitLibName Selector "fillColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getfriction Lib SpriteKitLibName Selector "friction" (id as Ptr) As CGFLoat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getglowWidth Lib SpriteKitLibName Selector "glowWidth" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getgravity Lib SpriteKitLibName Selector "gravity" (id as ptr) As FoundationFrameWork.cgvector
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gethasActions Lib SpriteKitLibName Selector "hasActions" (id as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getignoresSiblingOrder Lib SpriteKitLibName Selector "ignoresSiblingOrder" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getjoints Lib SpriteKitLibName Selector "joints" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlinearDamping Lib SpriteKitLibName Selector "linearDamping" (id as Ptr) As CGFLoat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getlineWidth Lib SpriteKitLibName Selector "lineWidth" (id as Ptr) As CGFLoat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getmass Lib SpriteKitLibName Selector "mass" (id as Ptr) As CGFLoat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getparent Lib SpriteKitLibName Selector "parent" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getPath Lib SpriteKitLibName Selector "path" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getpaused Lib SpriteKitLibName Selector "isPaused" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getphysicsBody Lib SpriteKitLibName Selector "physicsBody" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getResting Lib SpriteKitLibName Selector "isResting" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getrestitution Lib SpriteKitLibName Selector "restitution" (id as Ptr) As CGFLoat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getscene Lib SpriteKitLibName Selector "scene" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getspeed Lib SpriteKitLibName Selector "speed" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getstrokeColor Lib SpriteKitLibName Selector "strokeColor" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getuserData Lib SpriteKitLibName Selector "userData" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getuserInteractionEnabled Lib SpriteKitLibName Selector "isUserInteractionEnabled" (id as ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getusesPreciseCollisionDetection Lib SpriteKitLibName Selector "usesPreciseCollisionDetection" (id as Ptr) As Boolean
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getvelocity Lib SpriteKitLibName Selector "velocity" (id as ptr) As FoundationFrameWork.cgvector
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function node Lib SpriteKitLibName Selector "node" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub pause Lib SpriteKitLibName Selector "pause" (id as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeActionForKey Lib SpriteKitLibName Selector "removeActionForKey:" (id as Ptr, key as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeAllActions Lib SpriteKitLibName Selector "removeAllActions" (id as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub removeAllChildren Lib SpriteKitLibName Selector "removeAllChildren" (id as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub runAction Lib SpriteKitLibName Selector "runAction:" (id as ptr, action as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub runActionCompletion Lib SpriteKitLibName Selector "runAction:completion:" (id as ptr, action as ptr, block as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub runActionwithKey Lib SpriteKitLibName Selector "runAction:withKey:" (id as ptr, action as ptr, key as cfstringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setaffectedByGravity Lib SpriteKitLibName Selector "setAffectedByGravity:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsRotation Lib SpriteKitLibName Selector "setAllowsRotation:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setallowsTransparency Lib SpriteKitLibName Selector "setAllowsTransparency:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setanchorPoint Lib SpriteKitLibName Selector "setAnchorPoint:" (id as ptr, value as FoundationFrameWork . NSPoint)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setangularDamping Lib SpriteKitLibName Selector "setAngularDamping:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setangularVelocity Lib SpriteKitLibName Selector "setAngularVelocity:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setAntialiased Lib SpriteKitLibName Selector "setAntialiased:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setarea Lib SpriteKitLibName Selector "setArea:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setasynchronous Lib SpriteKitLibName Selector "setAsynchronous:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcategoryBitMask Lib SpriteKitLibName Selector "setCategoryBitMask:" (id as ptr, value as UInt32)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcenterRect Lib SpriteKitLibName Selector "setCenterRect:" (id as ptr, value as FoundationFrameWork . NSRect)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcharge Lib SpriteKitLibName Selector "setCharge:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcollisionBitMask Lib SpriteKitLibName Selector "setCollisionBitMask:" (id as ptr, value as UInt32)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setColor Lib SpriteKitLibName Selector "setColor:" (id as ptr, value as Ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcolorBlendFactor Lib SpriteKitLibName Selector "setColorBlendFactor:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setcontactTestBitMask Lib SpriteKitLibName Selector "setContactTestBitMask:" (id as ptr, value as UInt32)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdensity Lib SpriteKitLibName Selector "setDensity:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setDuration Lib SpriteKitLibName Selector "setDuration:" (id as ptr, value as Double)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setdynamic Lib SpriteKitLibName Selector "setDynamic:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfieldBitMask Lib SpriteKitLibName Selector "setFieldBitMask:" (id as ptr, value as UInt32)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfillColor Lib SpriteKitLibName Selector "setFillColor:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setfriction Lib SpriteKitLibName Selector "setFriction:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setglowWidth Lib SpriteKitLibName Selector "setGlowWidth:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setgravity Lib SpriteKitLibName Selector "setGravity:" (id as ptr, value as FoundationFrameWork . cgvector)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setignoresSiblingOrder Lib SpriteKitLibName Selector "setIgnoresSiblingOrder:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlinearDamping Lib SpriteKitLibName Selector "setLinearDamping:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setlineWidth Lib SpriteKitLibName Selector "setLineWidth:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setMass Lib SpriteKitLibName Selector "setMass:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setPath Lib SpriteKitLibName Selector "setPath:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setpaused Lib SpriteKitLibName Selector "setPaused:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setphysicsBody Lib SpriteKitLibName Selector "setPhysicsBody:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setResting Lib SpriteKitLibName Selector "setResting:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setrestitution Lib SpriteKitLibName Selector "setRestitution:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setspeed Lib SpriteKitLibName Selector "setSpeed:" (id as ptr, value as CGFloat)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setstrokeColor Lib SpriteKitLibName Selector "setStrokeColor:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setuserData Lib SpriteKitLibName Selector "setUserData:" (id as ptr, value as ptr)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setuserInteractionEnabled Lib SpriteKitLibName Selector "setUserInteractionEnabled:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setusesPreciseCollisionDetection Lib SpriteKitLibName Selector "setUsesPreciseCollisionDetection:" (id as ptr, value as Boolean)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setvelocity Lib SpriteKitLibName Selector "setVelocity:" (id as ptr, value as FoundationFrameWork . cgvector)
	#tag EndExternalMethod


	#tag Constant, Name = SpriteKitLibName, Type = Text, Dynamic = False, Default = \"SpriteKit.Framework", Scope = Public
	#tag EndConstant


	#tag Structure, Name = Vector_Float2, Flags = &h0
		x as single
		y as single
	#tag EndStructure

	#tag Structure, Name = Vector_Float3, Flags = &h0
		x as single
		  y as single
		z as single
	#tag EndStructure

	#tag Structure, Name = Vector_Float4, Flags = &h0
		x as single
		  y as single
		  z as single
		w as single
	#tag EndStructure

	#tag Structure, Name = Vector_Maxtrix2, Flags = &h0
		m00 as single
		  m01 as single
		  m10 as single
		m11 as single
	#tag EndStructure

	#tag Structure, Name = Vector_Maxtrix3, Flags = &h0
		m00 as single
		  m01 as single
		  m02 as single
		  m10 as single
		  m11 as single
		  m12 as single
		  m20 as single
		  m21 as single
		m22 as single
	#tag EndStructure

	#tag Structure, Name = Vector_Maxtrix4, Flags = &h0
		m00 as single
		  m01 as single
		  m02 as single
		  m03 as single
		  m10 as single
		  m11 as single
		  m12 as single
		  m13 as single
		  m20 as single
		  m21 as single
		  m22 as single
		  m23 as single
		  m30 as single
		  m31 as single
		  m32 as single
		m33 as single
	#tag EndStructure


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
