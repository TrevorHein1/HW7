<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="edit.aspx.vb" Inherits="admin_edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .grid-view {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <link rel="stylesheet" type="text/css" href="./CSS/StyleSheettables.css" />

    <br />

    <h2> Edit / Delete Players </h2>
        <p> 
            <asp:SqlDataSource ID="EditDeleteDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_players %>" SelectCommand="SELECT * FROM [details]" DeleteCommand="DELETE FROM [details] WHERE [playerID] = @playerID" InsertCommand="INSERT INTO [details] ([name], [age], [position], [height], [weight], [shot], [birthdate], [number]) VALUES (@name, @age, @position, @height, @weight, @shot, @birthdate, @number)" UpdateCommand="UPDATE [details] SET [name] = @name, [age] = @age, [position] = @position, [height] = @height, [weight] = @weight, [shot] = @shot, [birthdate] = @birthdate, [number] = @number WHERE [playerID] = @playerID">
                <DeleteParameters>
                    <asp:Parameter Name="playerID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="age" Type="Int32" />
                    <asp:Parameter Name="position" Type="String" />
                    <asp:Parameter Name="height" Type="String" />
                    <asp:Parameter Name="weight" Type="Int32" />
                    <asp:Parameter Name="shot" Type="String" />
                    <asp:Parameter DbType="Date" Name="birthdate" />
                    <asp:Parameter Name="number" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="age" Type="Int32" />
                    <asp:Parameter Name="position" Type="String" />
                    <asp:Parameter Name="height" Type="String" />
                    <asp:Parameter Name="weight" Type="Int32" />
                    <asp:Parameter Name="shot" Type="String" />
                    <asp:Parameter DbType="Date" Name="birthdate" />
                    <asp:Parameter Name="number" Type="Int32" />
                    <asp:Parameter Name="playerID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>


        <asp:GridView ID="GridView2" runat="server" CssClass="grid-view" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="EditDeleteDataSource" AllowPaging="True" AllowSorting="True" Height="403px" PageSize="8" Width="902px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="number" HeaderText="Number" SortExpression="number" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
                <asp:BoundField DataField="shot" HeaderText="Shot" SortExpression="shot" />
                <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                <asp:BoundField DataField="height" HeaderText="Height" SortExpression="height" />
                <asp:BoundField DataField="weight" HeaderText="Weight" SortExpression="weight" />
                <asp:BoundField DataField="birthdate" HeaderText="Birthdate" SortExpression="birthdate" />
            </Columns>
        </asp:GridView>

        <br />
    

</asp:Content>

