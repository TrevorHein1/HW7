﻿
Partial Class login_Default
    Inherits System.Web.UI.Page


    'Have cursor appear in username textbox
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load


        Login1.Focus()


    End Sub
End Class
