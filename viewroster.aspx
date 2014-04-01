<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="viewroster.aspx.vb" Inherits="viewroster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link rel="stylesheet" type="text/css" href="./CSS/StyleSheettables.css" />

    <br />

    <div id="viewroster">
    <h2> 2013 - 2014 Roster </h2>
        <p> 
            <asp:SqlDataSource ID="PlayersDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_players %>" SelectCommand="SELECT * FROM [details]"></asp:SqlDataSource>
        </p>


        <asp:GridView ID="GridView1" runat="server" CssClass="grid-view" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="PlayersDataSource" AllowPaging="True" AllowSorting="True" Height="403px" PageSize="8" Width="581px">
            <Columns>
                <asp:BoundField DataField="number" HeaderText="Number" SortExpression="number" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
                <asp:HyperLinkField DataNavigateUrlFields="playerID" DataNavigateUrlFormatString="details.aspx?playerID={0}" Text="View Details" />
            </Columns>
        </asp:GridView>

        <br />
        <br />

        <br />

    </div>


</asp:Content>

