<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="details.aspx.vb" Inherits="details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link rel="stylesheet" type="text/css" href="./CSS/StyleSheettables.css" />

    <br />

    <div id="details">

    <h2> Player Details </h2>
    <p> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_players %>" SelectCommand="SELECT * FROM [details] WHERE ([playerID] = @playerID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="playerID" QueryStringField="playerID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p> 

     

        <asp:DetailsView ID="DetailsView1" runat="server" Height="70px" Width="369px" CssClass="grid-view" AutoGenerateRows="False" DataKeyNames="playerID" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="number" HeaderText="Number" SortExpression="number" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
                <asp:BoundField DataField="shot" HeaderText="Shot" SortExpression="shot" />
                <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                <asp:BoundField DataField="height" HeaderText="Height" SortExpression="height" />
                <asp:BoundField DataField="weight" HeaderText="Weight" SortExpression="weight" />
                <asp:BoundField DataField="birthdate" DataFormatString="{0:d}" HeaderText="Birthdate" SortExpression="birthdate" />
            </Fields>
        </asp:DetailsView>

        

    <p> 
        <br />
        <div id="backbutton">
        
            <asp:LinkButton ID="BacktorosterButton" runat="server">Back to Roster</asp:LinkButton>

            </div>
    </p>

</div>
    

</asp:Content>

