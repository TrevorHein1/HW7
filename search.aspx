<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link rel="stylesheet" type="text/css" href="./CSS/StyleSheettables.css" />

    <h2> Search Players </h2>

    <p>
        <br />
        <asp:SqlDataSource ID="SearchDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_players %>" SelectCommand="SELECT * FROM [details]"></asp:SqlDataSource>
    </p>
    <p>
        Search For Player :
        <asp:TextBox ID="SearchTB" runat="server" Width="250px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="RosterButton" runat="server">Clear Search</asp:LinkButton>
    </p>
    <p>
        <asp:GridView ID="GridView3" runat="server" CssClass="grid-view" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="SearchDataSource" Height="256px" Width="921px" AllowPaging="True" PageSize="5">
            <Columns>
                <asp:BoundField DataField="number" HeaderText="Number" SortExpression="number" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
                <asp:BoundField DataField="shot" HeaderText="Shot" SortExpression="shot" />
                <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                <asp:BoundField DataField="height" HeaderText="Height" SortExpression="height" />
                <asp:BoundField DataField="weight" HeaderText="Weight" SortExpression="weight" />
                <asp:BoundField DataField="birthdate" HeaderText="Birthdate" SortExpression="birthdate" DataFormatString="{0:d}" />
            </Columns>
        </asp:GridView>
    </p>

<% If Not IsPostBack Then%> <% Else%>    <%End If%>


</asp:Content>

