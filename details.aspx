<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="details.aspx.vb" Inherits="details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <br />

    <h2> Player Details </h2>
    <p> &nbsp;</p>
    <p> 
        <asp:DetailsView ID="DetailsView1" runat="server" Height="70px" Width="369px">
        </asp:DetailsView>
    </p>


</asp:Content>

