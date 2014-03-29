<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="viewroster.aspx.vb" Inherits="viewroster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link rel="stylesheet" type="text/css" href="./CSS/StyleSheettables.css" />

    <br />

    <div id="viewroster">
    <h2> 2013 - 2014 Roster </h2>
        <p> &nbsp;</p>


        <asp:GridView ID="GridView1" runat="server" CssClass="grid-view">
        </asp:GridView>

        <br />

    </div>


</asp:Content>

