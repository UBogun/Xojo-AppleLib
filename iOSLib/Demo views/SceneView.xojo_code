#tag IOSView
Begin iosView SceneView
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "SceneKit"
   Top             =   0
   Begin iOSLibSCNView iOSLibSCNView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowsCameraControl=   False
      Alpha           =   1.0
      AntialiasingMode=   "None"
      AutoLayout      =   iOSLibSCNView1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibSCNView1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
      AutoLayout      =   iOSLibSCNView1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibSCNView1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      CanBecomeFocused=   False
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   2.0
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   415.0
      Hidden          =   False
      Left            =   0
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      Opaque          =   False
      PreferredFPS    =   60
      PreservesSuperviewLayoutMargins=   False
      RenderingAPI    =   "SceneKitFrameWork.SCNRenderingAPIiOS.metal"
      Scope           =   2
      Tag             =   0
      TintAdjustmentMode=   ""
      Top             =   65
      TranslatesAutoresizingMaskIntoConstraints=   False
      UseLowPwerDevice=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub MoveAway()
		  dim boxnode as AppleSCNNode = iOSLibSCNView1.AppleObject.Scene.RootNode.ChildNode("boxnode")
		  boxnode.RunAction AppleSCNAction.Group(AppleSCNAction.ScaleBy (0.8, 5.0) , AppleSCNAction.MoveBy (0, 10, -40, 5.0))
		  // boxnode.RunAction AppleSCNAction.ScaleBy (0.8, 5.0)
		  
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events iOSLibSCNView1
	#tag Event , Description = 4669726573207768656E2074686520636F6E74726F6C20686173206D6F766520746F206974732077696E646F772E
		Sub Shown()
		  Dim scene As New AppleSCNScene 
		  Me.Scene = scene
		  Me.AppleObject.AutoenablesDefaultLighting = True
		  Me.AppleObject.ShowsStatistics = True
		  Me.AppleObject.BackgroundColor = New applecolor(&c7F9FC055)
		  Dim boxGeometry As New AppleSCNBox(10,10,10,1.0)
		  Dim boxnode As New AppleSCNNode(boxGeometry)
		  boxnode.CategoryBitMask = 1
		  Dim pbody As AppleSCNPhysicsBody = AppleSCNPhysicsBody.DynamicBody
		  boxnode.PhysicsBody = pbody
		  scene.RootNode.AddChildNode(boxnode)
		  Me.AppleObject.AllowsCameraControl = True
		  boxnode.name = "boxnode"
		  Dim ambientnode As New AppleSCNNode
		  
		  
		  
		  ambientnode.Light = New AppleSCNLight
		  
		  ambientnode.Light.Type = AppleSCNLight.SCNLightType.Ambient
		  ambientnode.Light.LightColor = AppleColor.FromColor (&c22ff9922)
		  scene.RootNode.AddChildNode ambientnode
		  
		  Dim omniLightNode As New AppleSCNNode
		  omniLightNode.light =New AppleSCNLight
		  omniLightNode.light.type = AppleSCNLight.SCNLightType.Omni
		  omniLightNode.light.lightcolor = New applecolor(&cCD226600)
		  omniLightNode.position = SCNVector3Make(0, 50, 50)
		  scene.rootNode.addChildNode(omniLightNode)
		  Dim logoimg As New AppleImage (iosLibLogo)
		  scene.Background.Contents = logoimg
		  
		  
		  Dim Floor As New AppleSCNFloor
		  Dim floornode As New AppleSCNNode(Floor)
		  floornode.CreatePhysicsBody(AppleSCNPhysicsBody.SCNPhysicsBodyType.DynamicType)
		  floornode.PhysicsBody.CategoryBitMask = 2
		  floornode.PhysicsBody.CollisionBitMask = 3
		  Floor.Reflectivity = 0.4
		  scene.RootNode.AddChildNode (floornode)
		  boxnode.PhysicsBody.CategoryBitMask = 1
		  boxnode.PhysicsBody.CollisionBitMask = 3
		  boxnode.PhysicsBody.AffectedByGravity = False
		  
		  
		  Dim scntext As New AppleSCNText("SceneKit for Xojo-AppleLib", 2)
		  Dim textnode As New AppleSCNNode(scntext)
		  scntext.Flatness = 0.1
		  scntext.FirstMaterial.Shininess = 0.9
		  boxnode.AddChildNode textnode
		  scntext.ExtrusionDepth = 20
		  scntext.ChamferRadius = 5
		  
		  Dim Camnode As New AppleSCNNode
		  Dim camera As New AppleSCNCamera
		  Camnode.Camera = Camera
		  Camera.AutomaticallyAdjustsZRange = True
		  scene.RootNode.AddChildNode camnode
		  Camnode.Position = SCNVector3Make ( 10, 30, 500)
		  
		  
		  scene.FogStartDistance = 100
		  scene.FogEndDistance = 200
		  scene.FogColor = New applecolor (&c2433C400)
		  scene.FogDensityExponent = 1
		  boxnode.Geometry.FirstMaterial.Normal.Contents =logoimg
		  
		  Dim emitter As New AppleSCNParticleSystem
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
		  emitter.AffectedByGravity = True
		  emitter.ParticleImage = logoimg
		  emitter.ParticleColorVariation = SCNVector4Make(1, 1,1,1)
		  emitter.LightingEnabled = True
		  boxnode.AddParticleSystem (emitter)
		  
		  
		  
		  xojo.core.timer.CallLater 1000, AddressOf Moveaway
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
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
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Group="Behavior"
		Type="iOSImage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
