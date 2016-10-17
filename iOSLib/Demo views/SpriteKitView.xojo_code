#tag IOSView
Begin iosView SpriteKitView
   BackButtonTitle =   "Back"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "SpriteKit"
   Top             =   0
   Begin iOSLibSKView iOSLibSKView1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alpha           =   1.0
      Asynchronous    =   False
      AutoLayout      =   iOSLibSKView1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibSKView1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibSKView1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   iOSLibSKView1, 4, BottomLayoutGuide, 3, False, +1.00, 2, 1, 0, 
      AutoresizesSubviews=   True
      BackgroundColor =   &cFFFFFF00
      CanBecomeFocused=   False
      ClearsContextBeforeDrawing=   False
      ClipsToBounds   =   True
      ContentMode     =   ""
      ContentScaleFactor=   1.0
      ExclusiveTouch  =   False
      Focused         =   False
      HasAmbiguousLayout=   False
      Height          =   415.0
      Hidden          =   False
      IgnoresSiblingOrder=   False
      Left            =   0
      LockedInPosition=   False
      MultipleTouchEnabled=   False
      Opaque          =   False
      Paused          =   False
      PreservesSuperviewLayoutMargins=   False
      Scope           =   0
      ShouldCullNonVisibleNodes=   True
      ShowsDrawCount  =   False
      ShowsFields     =   False
      ShowsFPS        =   False
      ShowsNodeCount  =   False
      ShowsPhysics    =   False
      ShowsQuadCount  =   False
      Tag             =   0
      TintAdjustmentMode=   ""
      Top             =   65
      TranslatesAutoresizingMaskIntoConstraints=   False
      UserInteractionEnabled=   True
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events iOSLibSKView1
	#tag Event , Description = 4669726573207768656E2074686520636F6E74726F6C20686173206D6F766520746F206974732077696E646F772E
		Sub Shown()
		  me.AppleObject.ShowsFPS = true // show the FPS debug counter. See the warning below.
		  dim scene as new AppleSKScene (FoundationFrameWork.NSMakeSize(me.AppleObject.Window.Width, me.AppleObject.Window.Height)) // Create a scene in the size of the current SKView. For a game, you would rather set it to a certain size or give the options to select the resolution. 
		  // Try running it in full screen and you will see the background Logos still look crips while the Labelnode will suffer from the resolution change.
		  scene.BackgroundColor = AppleColor.FromColor (&cCEFFE100) 
		  scene.ScaleMode = AppleSKScene.SKSceneScaleMode.FillProportional
		  me.AppleObject.Present(scene) // show the scene
		  
		  // Create an emitter node
		  dim e as new AppleSKEmitterNode
		  e.Position = FoundationFrameWork.NSMakePoint (scene.Width/2, scene.height+30) // Position it centered a bit above the view
		  e.ParticlePosition = e.Frame.center // make the particles span from there
		  e.ParticlePositionRange = FoundationFrameWork.CGMakeVector(scene.Width,  0) // but spread their spawning point over the whole width of the scene
		  e.ParticleSize = FoundationFrameWork.NSMakeSize (10,10)
		  e.ParticleScaleRange = 2.5 // Small particles, but varied in size
		  e.ParticleSpeed = 30
		  e.ParticleSpeedRange = 29.9 // and with a different speed 
		  dim angle as double = -90
		  e.EmissionAngle = angle.degreestoradians // make them all fall down vertically
		  e.ParticleRotationRange = angle.DegreesToRadians // with different start angles
		  e.ParticleRotationSpeed = 2 // strangely, there is no RotationSpeedRange. Could be added with an action in case …
		  e.ParticleLifetime = 100 // Noone lives forever!
		  e.ParticleTexture = new AppleSKTexture("iosLibLogo")
		  e.ParticleBirthRate = 20 // create 20 per second
		  scene.AddChild e // and don’t forget to add the emitter to the scene.
		  
		  
		  // Now create a Labelnode
		  dim label as new AppleSKLabelNode("iOSLib SpriteKit", "AppleSDGothicNeo-Regular")
		  label.FontColor = AppleColor.FromColor(&c0E77B200)
		  label.FontSize = 40
		  label.Position = scene.Frame.Center
		  label.PhysicsBody = new AppleSKPhysicsBody (label)
		  label.PhysicsBody.Mass = 0.01
		  label.PhysicsBody.ContactTestBitMask = &hffffffff // make it react to every contact
		  label.PhysicsBody.PreciseCollisionDetection = true // will still not be precise. For that, a closer PhysicsBody would have to be defined.
		  scene.PhysicsWorld.Gravity = FoundationFrameWork.CGMakeVector(0.0, -0.1) // give the world a light gravity.
		  scene.AddChild label // and add it to the scene
		  
		  dim border as AppleSKPhysicsBody = AppleSKPhysicsBody.BodyWithEdgeLoop(scene.Frame) // Give the scene a border so the label does not escape from it
		  scene.PhysicsBody = border
		  
		  // Finally, push the label upwards (just enough so gravity cannot pull it down) and give it a spin for 4 seconds
		  label.RunAction(AppleSKAction.Group(AppleSKAction.ApplyImpulse(FoundationFrameWork.CGMakeVector (0, 0.5), 4), AppleSKAction.ApplyTorque(0.02, 4)))
		  
		  // These lines would add more debug infos to the view.
		  // But be careful: Some of them leak horribly!
		  
		  // OSXLibSKView1.AppleObject.ShowsQuadCount = true
		  // OSXLibSKView1.AppleObject.ShowsDrawCount = true
		  // OSXLibSKView1.AppleObject.ShowsNodeCount = true
		  // OSXLibSKView1.AppleObject.ShowsPhysics = true
		  // OSXLibSKView1.AppleObject.ShowsFields = true
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.AppleObject.ShowsFPS = true
		End Sub
	#tag EndEvent
	#tag Event
		Sub ContactBegan(Contact As AppleSKPhysicsContact)
		  // This is just to demonstrate the contactdelegate events are working.
		  // They are invoked by collisions of the labelnode with the border of the scene
		  // Usually, you would process the collision here instead and modify your game content.
		  
		  // system.debuglog contact.DebugDescription
		  // system.debuglog contact.CollisionImpulse.ToText
		  // system.debuglog contact.bodya.DebugDescription
		  // system.debuglog contact.bodyb.DebugDescription
		  contact.BodyB.Node.RunAction AppleSKAction.PlaySound("metal1.wav", false)
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E20746865207573657220746F75636865732074686520636F6E74726F6C2077697468206F6E65206F72206D6F72652066696E676572732E
		Sub TouchesBegan(Touches() as appletouch, anEvent as AppleNSEvent)
		  // If the mouse click is inside the (rough) frame of the labelnode, give the latter one a random impulse
		  
		  dim p as FoundationFrameWork.nspoint = me.AppleObject.Scene.convertPointFromView ( touches(0).PreciseLocationInView(me.AppleObject)) // Convert the click point to scene coordinates
		  dim body as AppleSKPhysicsBody = me.AppleObject.scene.PhysicsWorld.BodyAtPoint(p) // and check if we hit a Physicsbody (which can only be the labelnode currently)
		  if body <> nil then
		    body.ApplyImpulse(FoundationFrameWork.CGMakeVector(20-xojo.math.RandomInt (0,40), 20 - xojo.math.RandomInt(0,40))) // kick it
		  end if
		  
		  #pragma unused anevent
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Close()
		  
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
