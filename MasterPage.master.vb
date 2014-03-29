
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub LogInButton_Click(sender As Object, e As EventArgs) Handles LogInButton.Click

        Response.Redirect("./login/logindefault.aspx")

    End Sub
End Class

