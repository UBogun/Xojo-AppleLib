#tag Window
Begin Window SpriteKitWindow
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
   Placement       =   1
   Resizeable      =   True
   Title           =   "SpriteKit"
   Visible         =   True
   Width           =   600
   Begin OSXLibSKView OSXLibSKView1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AcceptTouchEvents=   True
      AllowVibrancy   =   False
      Alpha           =   1.0
      AutoDeactivate  =   True
      Backdrop        =   0
      BackgroundColor =   &c0000FF00
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
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      TrackSwipes     =   False
      TranslatesAutoresizingMaskIntoConstraints=   False
      Transparent     =   True
      UseCustomColor  =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   600
   End
End
#tag EndWindow

#tag WindowCode
#tag EndWindowCode

#tag Events OSXLibSKView1
	#tag Event
		Sub Shown()
		  system.debuglog "SK shown"
		  me.AppleObject.ShowsFPS = true // show the FPS debug counter. See the warning below.
		  dim scene as new AppleSKScene (me.AppleObject.Frame.size_) // Create a scene in the size of the current SKView. For a game, you would rather set it to a certain size or give the options to select the resolution. 
		  // Try running it in full screen and you will see the background Logos still look crips while the Labelnode will suffer from the resolution change.
		  scene.BackgroundColor = AppleColor.FromColor (&cCEFFE100) 
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
		  e.ParticleTexture = new AppleSKTexture("OSXLibLogo")
		  e.ParticleBirthRate = 20 // create 20 per second
		  scene.AddChild e // and don’t forget to add the emitter to the scene.
		  
		  
		  // Now create a Labelnode
		  dim label as new AppleSKLabelNode("OSXLib SpriteKit", "Helvetica-Neue")
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
	#tag Event , Description = 4669726573207768656E207468652074686520757365722068617320626567756E20612070696E636820676573747572652E
		Sub MagnifyGesture(anEvent As AppleNSEvent)
		  msgbox "magnify!"
		  #pragma unused anEvent
		  // Just to that Gesture events do fire.
		  // This would be a place where you could change the cameraNode position or similar …
		End Sub
	#tag EndEvent
	#tag Event , Description = 4669726573207768656E20746865207573657220686173207072657373656420746865206C656674206D6F75736520627574746F6E2E
		Sub MouseDown(anEvent As AppleNSEvent)
		  // If the mouse click is inside the (rough) frame of the labelnode, give the latter one a random impulse
		  
		  dim p as FoundationFrameWork.nspoint = me.AppleObject.Scene.convertPointFromView ( anEvent.LocationInWindow) // Convert the click point to scene coordinates
		  dim body as AppleSKPhysicsBody = me.AppleObject.scene.PhysicsWorld.BodyAtPoint(p) // and check if we hit a Physicsbody (which can only be the labelnode currently)
		  if body <> nil then
		    body.ApplyImpulse(FoundationFrameWork.CGMakeVector(20-xojo.math.RandomInt (0,40), 20 - xojo.math.RandomInt(0,40))) // kick it
		  end if
		  
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
