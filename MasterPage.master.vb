
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage




    Protected Sub LogInButton_Click(sender As Object, e As EventArgs) Handles LogInButton.Click

        Response.Redirect("./login/logindefault.aspx")

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        DateLabel.Text = Format(Date.Now, "MM/dd/yyyy")


    End Sub
End Class

