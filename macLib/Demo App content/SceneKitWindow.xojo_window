#tag Window
Begin Window SceneKitWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "SceneKit"
   Visible         =   True
   Width           =   600
   Begin OSXLibSCNView OSXLibSCNView1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AcceptTouchEvents=   False
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   0
      BackgroundColor =   &c000000FF
      BoundsRotation  =   0.0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      FlippedCoordinates=   False
      FocusRingType   =   "Default"
      Height          =   400
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      TrackSwipes     =   False
      TranslatesAutoresizingMaskIntoConstraints=   False
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   600
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub MoveAway()
		  dim boxnode as AppleSCNNode = OSXLibSCNView1.AppleObject.Scene.RootNode.ChildNode("boxnode")
		  boxnode.RunAction AppleSCNAction.Group(AppleSCNAction.ScaleBy (0.8, 5.0) , AppleSCNAction.MoveBy (0, 10, -40, 5.0))
		  // boxnode.RunAction AppleSCNAction.ScaleBy (0.8, 5.0)
		  
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events OSXLibSCNView1
	#tag Event
		Sub Shown()
		  dim scene as new AppleSCNScene 
		  me.AppleObject.Scene = scene
		  me.AppleObject.AutoenablesDefaultLighting = true
		  me.AppleObject.ShowsStatistics = true
		  me.AppleObject.BackgroundColor = new applecolor(&c7F9FC055)
		  dim boxGeometry as new AppleSCNBox(10,10,10,1.0)
		  dim boxnode as new AppleSCNNode(boxGeometry)
		  boxnode.CategoryBitMask = 1
		  dim pbody as AppleSCNPhysicsBody = AppleSCNPhysicsBody.DynamicBody
		  boxnode.PhysicsBody = pbody
		  scene.RootNode.AddChildNode(boxnode)
		  me.AppleObject.AllowsCameraControl = true
		  boxnode.name = "boxnode"
		  dim ambientnode as new AppleSCNNode
		  
		  
		  
		  ambientnode.Light = new AppleSCNLight
		  
		  ambientnode.Light.Type = AppleSCNLight.SCNLightType.Ambient
		  ambientnode.Light.LightColor = AppleColor.FromColor (&c22ff9922)
		  scene.RootNode.AddChildNode ambientnode
		  
		  dim omniLightNode as new AppleSCNNode
		  omniLightNode.light =new AppleSCNLight
		  omniLightNode.light.type = AppleSCNLight.SCNLightType.Omni
		  omniLightNode.light.lightcolor = new applecolor(&cCD226600)
		  omniLightNode.position = SCNVector3Make(0, 50, 50)
		  scene.rootNode.addChildNode(omniLightNode)
		  dim logoimg as new AppleImage (OSXLibLogo)
		  scene.Background.Contents = logoimg
		  
		  
		  dim floor as new AppleSCNFloor
		  dim floornode as new AppleSCNNode(floor)
		  floornode.CreatePhysicsBody(AppleSCNPhysicsBody.SCNPhysicsBodyType.DynamicType)
		  floornode.PhysicsBody.CategoryBitMask = 2
		  floornode.PhysicsBody.CollisionBitMask = 3
		  floor.Reflectivity = 0.4
		  scene.RootNode.AddChildNode (floornode)
		  boxnode.PhysicsBody.CategoryBitMask = 1
		  boxnode.PhysicsBody.CollisionBitMask = 3
		  boxnode.PhysicsBody.AffectedByGravity = false
		  
		  
		  dim scntext as new AppleSCNText("SceneKit for Xojo-AppleLib", 2)
		  dim textnode as new AppleSCNNode(scntext)
		  scntext.Flatness = 0.1
		  scntext.FirstMaterial.Shininess = 0.9
		  boxnode.AddChildNode textnode
		  scntext.ExtrusionDepth = 20
		  scntext.ChamferRadius = 5
		  
		  Dim Camnode as new AppleSCNNode
		  dim camera as new AppleSCNCamera
		  Camnode.Camera = Camera
		  Camera.AutomaticallyAdjustsZRange = true
		  scene.RootNode.AddChildNode camnode
		  Camnode.Position = SCNVector3Make ( 10, 30, 500)
		  // dim cons as new AppleMutableArray(1)
		  // cons.Addobject new AppleSCNLookAtConstraint (textnode)
		  // Camnode.Constraints = cons
		  
		  
		  scene.FogStartDistance = 100
		  scene.FogEndDistance = 200
		  scene.FogColor = new applecolor (&c2433C400)
		  scene.FogDensityExponent = 1
		  boxnode.Geometry.FirstMaterial.Normal.Contents =logoimg
		  
		  dim emitter as new AppleSCNParticleSystem
		  emitter.BirthRate = 150
		  emitter.BirthRateVariation = 250
		  emitter.BirthDirection = AppleSCNParticleSystem.SCNParticleBirthDirection.RandomDirection
		  emitter.ParticleVelocity = 80
		  emitter.ParticleVelocityVariation = 80
		  emitter.ParticleAngularVelocityVariation = 270
		  emitter.ParticleAngleVariation = 180
		  emitter.ParticleLifeSpan = 50
		  emitter.ParticleLifeSpanVariation = 48
		  emitter.ParticleSizeVariation = 5
		  emitter.AffectedByGravity = true
		  emitter.ParticleImage = logoimg
		  emitter.ParticleColorVariation = SCNVector4Make(1, 1,1,1)
		  emitter.LightingEnabled = true
		  boxnode.AddParticleSystem (emitter)
		  
		  
		  
		  xojo.core.timer.CallLater 1000, AddressOf Moveaway
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E20746865207573657220706572666F726D6564206120736D617274207A6F6F6D20676573747572652028646F75626C652D746170292E203634626974206F6E6C7921
		Sub SmartMagnifyGesture(anEvent As AppleNSEvent)
		  MsgBox "Smart mag!"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
