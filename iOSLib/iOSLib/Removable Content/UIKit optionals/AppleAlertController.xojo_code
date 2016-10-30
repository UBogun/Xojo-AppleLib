#tag Class
Protected Class AppleAlertController
Inherits AppleViewController
	#tag Method, Flags = &h0
		Sub AddAction(Action as AppleAlertAction)
		  declare sub addAction lib UIKitLibname selector "addAction:" (obj_id as ptr, action as ptr)
		  addAction id, action.id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddCancelButton(CancelText as Text = "", resultblock as appleblock = nil)
		  if ResultBlock = nil then ResultBlock = new AppleBlock (AddressOf OKBlock)
		  If canceltext.Empty then canceltext = "Cancel"
		  AddAction (new AppleAlertAction (self, CancelText, UIAlertActionStyle.Cancel, resultblock))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddOKAndCancelButtons(Oktext as text = "", CancelText as Text = "", resultblock as appleblock = nil)
		  if ResultBlock = nil then ResultBlock = new AppleBlock (AddressOf OKBlock)
		  AddOKButton (oktext, resultblock)
		  AddCancelButton (canceltext, resultblock)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddOKButton(OKText as Text = "", resultblock as appleblock = nil)
		  if ResultBlock = nil then ResultBlock = new AppleBlock (AddressOf OKBlock)
		  if OKText.Empty then oktext = "OK"
		  AddAction (new AppleAlertAction (self, Oktext, UIAlertActionStyle.Default, resultblock))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddPasswordTextField(placeholder as text = "", callback as appleblock = nil)
		  dim t as new AppleTextField (FoundationFrameWork.NSMakeRect (0,0,100,31))
		  t.Placeholder = placeholder
		  t.Secure = true
		  AddTextField  t, callback
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddPasswordTextField(password as text, placeholder as text, callback as appleblock = nil)
		  dim t as new AppleTextField (FoundationFrameWork.NSMakeRect (0,0,100,31))
		  t.Placeholder = placeholder
		  t.Caption = password
		  t.Secure = true
		  AddTextField  t, callback
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddStandardTextfield(Caption as text, placeholder as text = "", callback as appleblock = nil)
		  dim t as new AppleTextField (FoundationFrameWork.NSMakeRect (0,0,100,31))
		  t.Caption = caption
		  t.Placeholder = placeholder
		  AddTextField  t, callback
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddTextField(TextField as AppleTextField, configurationHandler as appleblock = nil)
		  if TextFieldDict = nil then TextFieldDict = new Dictionary
		  if not TextFieldDict.HasKey (id) then TextFieldDict.value(id) = new AppleMutableArray
		  dim myarray as AppleMutableArray = AppleMutableArray(TextFieldDict.Value (id))
		  myarray.Addobject TextField
		  
		  if configurationHandler = nil then configurationHandler = new AppleBlock (AddressOf ConfigurationHandlerTemplate)
		  declare sub addTextFieldWithConfigurationHandler lib UIKitLibname selector "addTextFieldWithConfigurationHandler:" (obj_id as ptr, confighandler as ptr)
		  addTextFieldWithConfigurationHandler id, configurationHandler.Handle
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ConfigurationHandlerTemplate(TextFieldPtr as Ptr)
		  if me <> nil then
		    dim textfield as new AppleTextField(TextFieldPtr)
		    for q as Integer = 1 to me.TextFields.Count
		      dim curfield as AppleTextField = AppleTextField.MakefromPtr(me.TextFields.PtrAtIndex(q-1))
		      if textfield.id = curfield.id then
		        if TextFieldDict <> nil then
		          if TextFieldDict.HasKey (id) then
		            dim textfieldarray as AppleArray = AppleArray (TextFieldDict.Value(id))
		            if textfieldarray.Count >=q then
		              dim realfield as AppleTextField = AppleTextField.MakefromPtr (textfieldarray.PtrAtIndex(q-1))
		              textfield.Caption = realfield.Caption
		              textfield.Placeholder = realfield.Placeholder
		              textfield.Secure = realfield.Secure
		            end if
		          end if
		        end if
		      end if
		    next
		    // RaiseEvent TextFieldResult (textfield)
		  end if
		  // Here, do something with your textfield properties.
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(Title as CFStringRef, Message As CFStringRef = "", preferredStyle as UIAlertControllerStyle = UIAlertControllerStyle.alert)
		  Declare Function alertControllerWithTitle lib UIKitLibname selector "alertControllerWithTitle:message:preferredStyle:" (id as ptr, Title as CFStringRef, Message As CFStringRef, preferredStyle as UIAlertControllerStyle) as Ptr
		  
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleResponder
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  if isAvailable then
		    Super.Constructor (alertControllerWithTitle (classptr, Title, Message, preferredStyle))
		    RetainClassObject
		  else
		    MakeException ("UIAlertController is not available on this system, probably below iOS 8. Use AppleActionSheet instead")
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub OKBlock(actionPtr as Ptr)
		  if me <> nil then
		    dim action as new AppleAlertAction(actionptr)
		    if action.Style = UIAlertActionStyle.Default or Action.style = UIAlertActionStyle.Destructive then
		      dim textfields as AppleArray = me.TextFields
		      dim Fields() as text
		      if textfields <> nil then
		        for q as integer = 1 to TextFields.count
		          dim field as AppleTextField = AppleTextField.MakefromPtr(TextFields.PtrAtIndex(q-1))
		          fields.Append field.Caption
		        next
		      end if
		      RaiseEvent Result (action.title, fields)
		    else
		      RaiseEvent AlertClosed (action.title)
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Show(ViewControl as AppleViewController, animated as boolean = true, ResultBlock as AppleBlock = nil)
		  ParentViewControl = ViewControl
		  if ResultBlock = nil then ResultBlock = new AppleBlock (AddressOf OKBlock)
		  if Actions.Count = 0 then AddOKButton ("",ResultBlock)
		  viewcontrol.Present (self, animated)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AlertClosed(SelectedButtonTitle as Text)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Result(button as text, captions() as text)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function actions lib UIKitLibname selector "actions" (id as ptr) as ptr
			  Return AppleArray.MakeFromPtr (actions(id))
			  
			End Get
		#tag EndGetter
		Actions As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("UIAlertController")
			  return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return not (ClassPtr = nil)
			End Get
		#tag EndGetter
		Shared isAvailable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function message lib UIKitLibname selector "message" (id as ptr) as CFStringRef
			  Return message (id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setMessage lib UIKitLibname selector "setMessage:" (id as ptr, value as CFStringRef)
			  setMessage id, value
			End Set
		#tag EndSetter
		Message As Text
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private ParentViewControl As AppleViewController
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function preferredStyle lib UIKitLibname selector "preferredStyle" (id as ptr) as UIAlertControllerStyle
			  Return preferredStyle (id)
			  
			End Get
		#tag EndGetter
		PreferredStyle As UIAlertControllerStyle
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared TextFieldDict As Dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function textFields lib UIKitLibname selector "textFields" (id as ptr) as ptr
			  Return AppleArray.MakeFromPtr (textFields(id))
			  
			End Get
		#tag EndGetter
		TextFields As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return UIKitFramework.getTitle (mid)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  UIKitFramework.setTitle mid, value
			End Set
		#tag EndSetter
		Title As Text
	#tag EndComputedProperty


	#tag Enum, Name = UIAlertControllerStyle, Flags = &h0
		ActionSheet
		Alert
	#tag EndEnum


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
			Name="Message"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreferredStyle"
			Group="Behavior"
			Type="UIAlertControllerStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - ActionSheet"
				"1 - Alert"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Group="Behavior"
			Type="Text"
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
