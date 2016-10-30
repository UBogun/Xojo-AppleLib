#tag IOSView
Begin iosView TouchIDView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "TouchID"
   Top             =   0
   Begin iOSTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, -254, 
      AutoLayout      =   Table1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      EditingEnabled  =   False
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   153.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   73
      Visible         =   True
      Width           =   320.0
   End
   Begin AppleLAContext AppleLAContext1
      DebugDescription=   ""
      HasOwnership    =   False
      Left            =   0
      LocalizedCancelTitle=   ""
      LocalizedFallbackTitle=   ""
      LockedInPosition=   False
      mHasOwnership   =   False
      PanelIndex      =   -1
      Parent          =   ""
      RetainCount     =   ""
      Scope           =   0
      Top             =   0
      TouchIDAuthenticationAllowableReuseDuration=   0.0
   End
   Begin iOSTextArea TextArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextArea1, 1, <Parent>, 1, False, +1.00, 1, 1, 20, 
      AutoLayout      =   TextArea1, 2, <Parent>, 2, False, +1.00, 1, 1, -*kStdGapCtlToViewH, 
      AutoLayout      =   TextArea1, 3, Table1, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   TextArea1, 4, BottomLayoutGuide, 4, False, +1.00, 1, 1, 0, 
      Editable        =   True
      Height          =   246.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Text            =   "If you are on Simulator: Use menu Hardware/TouchId to toggle enroll state and the TouchID result. You must use a TouchID-capable device of course."
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   234
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  table1.AddSection ("Select Test")
		  table1.AddRow 0, table1.CreateCell ("Touch ID preflight", "Using canEvaluatePolicy:")
		  table1.AddRow 0, table1.CreateCell ("Touch ID authentication", "Using evaluatePolicy:")
		  // table1.AddRow 0, new iOSTableCellData ("Touch ID authentication with custom text", "Using evaluatePolicy:")
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CheckTouchID()
		  dim error as new AppleError
		  dim result as Boolean = AppleLAContext1.CanEvaluatePolicy (error)
		  dim resulttext as text = if (result = True, "LAContext gave no error – TouchID is available", "LAContext replied with error "+EOL+error.LocalizedDescription)
		  Dim alert as new iOSMessageBox
		  alert.Title = "TouchID result"
		  alert.Message = resulttext
		  alert.Show 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Evaluate()
		  AppleLAContext1.EvaluatePolicy ("TouchID test")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EvaluationFinished(context as appleLAContext, success as boolean, errorNr as applelacontext.touchIDError, result as Text)
		  dim resultmessage as text = if (success, "Evaluation was successful", "Evaluation failed"+EOL+result)
		  Dim alert as new iOSMessageBox
		  alert.Title = "LAContext evaluation finished"
		  alert.Message = resultmessage
		  alert.Show 
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events Table1
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  select case row
		  case 0
		    checkTouchID
		  case 1
		    Evaluate
		  end select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AppleLAContext1
	#tag Event
		Sub EvaluationResult(success as boolean, errornumber as appleLAContext.TouchIDError, error as text)
		  dim resultmessage as text = if (success, "Evaluation was successful", "Evaluation failed"+EOL+error)
		  dim alert as new iOSMessageBox
		  alert.Title = "LAContext evaluation finished"
		  alert.Message = resultmessage
		  alert.show
		  // system.DebugLog resultmessage
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
