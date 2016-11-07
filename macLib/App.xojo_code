#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  // Setting the app icon without defining it in the IDE:
		  
		  dim ap as new AppleApplication
		  ap.ApplicationIconImage = new AppleImage(OSXLibLogo)
		  dim t as AppleDockTile = ap.DockTile
		  t.BadgeLabel = MajorVersion.ToText+"."+MinorVersion.ToText+"."+BugVersion.ToText
		  t.ShowsApplicationBadge = true
		  t.Invalidate
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(error As RuntimeException) As Boolean
		  MsgBox "Unhandled Exception "+error.ErrorNumber.ToText+eol+error.Message+eol+"Please inform the developer!"+eol+join(error.Stack, eol)
		End Function
	#tag EndEvent


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
