
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        SearchTB.Focus()

    End Sub

    Protected Sub SearchDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SearchDataSource.Selecting

    End Sub

    Protected Sub SearchTB_TextChanged(sender As Object, e As EventArgs) Handles SearchTB.TextChanged

        Dim searchword As String

        searchword = "Select * From details where (name Like '%" _
                                                                    + SearchTB.Text.ToString() + "%')"
        SearchDataSource.SelectCommand = searchword



    End Sub

    Protected Sub RosterButton_Click(sender As Object, e As EventArgs) Handles RosterButton.Click

        Response.Redirect("search.aspx")

    End Sub
End Class
