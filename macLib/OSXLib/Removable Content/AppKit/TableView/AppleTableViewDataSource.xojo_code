#tag Class
Protected Class AppleTableViewDataSource
Inherits AppleObject
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(init(alloc(classptr)), true)
		  registerIdentity(me)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function Identity(id as ptr) As AppleTableViewDataSource
		  dim wr as xojo.Core.WeakRef = XojoIdentity.Lookup(id, Nil)
		  if wr <> nil then return AppleTableViewDataSource(wr.Value)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function impl_numberOfRowsInTableView(pid as ptr, sel as ptr, tableview as ptr) As Integer
		  Dim obj As AppleTableViewDataSource = identity(pid)
		  if obj <> nil then
		    return obj.informOnNumberOfRows (AppleTableView.MakefromPtr(tableview))
		  end if
		  #pragma unused sel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_objectValueForTableColumn(pid as ptr, sel as ptr, tableview as ptr, tablecolumn as ptr, row as Integer) As Ptr
		  Dim obj As AppleTableViewDataSource = identity(pid)
		  If obj <> Nil Then
		    Dim result As variant = obj.ValueForTableColumn (AppleTableView.MakefromPtr(tableview), AppleTableColumn.MakefromPtr(tablecolumn), row)
		    dim appleresult as AppleObject
		    select case result.Type
		    case variant.TypeCFStringRef
		      AppleResult = New AppleString(result.CFStringRefValue)
		    Case variant.TypeText
		      AppleResult = new AppleString(result.TextValue)
		    Case variant.TypeString
		      AppleResult = New AppleString(result.StringValue)
		    Case Variant.TypeColor
		      appleresult = New AppleColor(result.ColorValue)
		    Case Variant.TypeObject
		      Dim myobj As Object = result.ObjectValue
		      Select Case myobj
		      Case IsA Picture
		        appleresult = New AppleImage(picture(myobj))
		      Case IsA AppleObject
		        appleresult = AppleObject(myobj)
		        return appleresult.id
		      End Select
		    Case Variant.TypeNil
		      return nil
		    End Select
		    appleresult.retain
		    return appleresult.id
		  End If
		  #pragma unused sel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_setobjectValueForTableColumn(pid as ptr, sel as ptr, tableview as ptr, objectvalue as ptr, tablecolumn as ptr, row as Integer) As Ptr
		  Dim obj As AppleTableViewDataSource = identity(pid)
		  If obj <> Nil Then
		    obj.informOnSetobjectValueForTableColumn(AppleTableView.MakefromPtr(tableview), appleobject.MakeFromPtr(objectvalue), AppleTableColumn.MakefromPtr(tablecolumn), row)
		  End If
		  #pragma unused sel
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function informOnNumberOfRows(TableView as AppleTableView) As Integer
		  return RaiseEvent NumberOfRows(TableView)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Sub informOnSetObjectValueForTableColumn(TableView as AppleTableView, objectvalue as appleobject, column as appletablecolumn, row as Integer)
		  Dim var As Variant
		  If objectvalue <> Nil Then 
		    if objectvalue.InstanceIsSubclass(AppleString.ClassPtr) Then
		      dim myString as new applestring(objectvalue.id)
		      var = myString.UTF8String
		    Elseif objectvalue.InstanceIsSubclass(applecolor.ClassPtr) Then
		      dim mycolor as new applecolor(objectvalue.id)
		      var = mycolor.toColor
		    Elseif objectvalue.InstanceIsSubclass(AppleImage.ClassPtr) Then
		      dim myimage as new appleimage(objectvalue.id)
		      var = myimage.toPicture
		    Else
		      var = objectvalue
		    End If
		  End If
		  RaiseEvent setValueForColumn(TableView, var, column, row)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleTableViewDataSource
		  return if (aptr = nil, nil, new AppleTableViewDataSource(aptr))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5265676973746572732074686520636F6E74726F6C20697473656C662061732061205765616B52656620696E2061207368617265642044696374696F6E6172792E
		Attributes( hidden )  Sub RegisterIdentity(Identity As object)
		  XojoIdentity.Value (id) = xojo.core.WeakRef.Create(Identity)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden )  Function ValueForTableColumn(TableView as AppleTableView, column as appletablecolumn, row as Integer) As Variant
		  return RaiseEvent ValueForColumn(TableView, column, row)
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 52657475726E20746865206E756D626572206F6620726F777320796F7572207461626C65766965772073686F756C6420646973706C61792E
		Event NumberOfRows(TableView As AppleTableView) As Integer
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E207468652076616C756520666F722074686520636F6C756D6E20617420726F772E2056616C7565732063616E20626520616E79207465787420747970652C20436F6C6F722C20506963747572652C20616E79204170706C654F626A656374206F72204E696C2E
		Event SetValueForColumn(TableView As AppleTableView, ObjectValue as Variant, column as appletablecolumn, row as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 52657475726E207468652076616C756520666F722074686520636F6C756D6E20617420726F772E2056616C7565732063616E20626520616E79207465787420747970652C20436F6C6F722C20506963747572652C20616E79204170706C654F626A656374206F72204E696C2E
		Event ValueForColumn(TableView As AppleTableView, column as appletablecolumn, row as Integer) As Variant
	#tag EndHook


	#tag ComputedProperty, Flags = &h0, Description = 5468652070747220746F2074686520637573746F6D20636C61737320646572697665642066726F6D204E534F626A656374
		#tag Getter
			Get
			  // static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CBCentralManager")
			  // return mClassPtr
			  
			  static mClassPtr as ptr
			  if mClassPtr = Nil then
			    dim methods() as TargetClassMethodHelper
			    
			    //TableViewDataSource methods:
			    methods.Append new TargetClassMethodHelper("numberOfRowsInTableView:", AddressOf impl_numberOfRowsInTableView, "i@:@")
			    methods.Append new TargetClassMethodHelper("tableView:objectValueForTableColumn:row:", AddressOf impl_objectValueForTableColumn, "@@:@@i")
			    methods.Append New TargetClassMethodHelper("tableView:setObjectValue:forTableColumn:row:", AddressOf impl_setObjectValueForTableColumn, "v@:@@@i")
			    
			    mClassPtr = BuildTargetClass ("NSObject", "OSXLibTableViewDataSource",methods)
			  end if
			  Return mClassPtr
			End Get
		#tag EndGetter
		Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static midentity as xojo.Core.Dictionary
			  if midentity = nil then midentity = new xojo.Core.Dictionary
			  return midentity
			End Get
		#tag EndGetter
		Protected Shared XojoIdentity As xojo.Core.Dictionary
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
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
