<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="add.aspx.vb" Inherits="admin_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <link rel="stylesheet" type="text/css" href="./CSS/StyleSheettables.css"/>

    <br />

    <div id="details">

    <h2> Add New Player </h2>

        <br />

        <asp:SqlDataSource ID="AddDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_players %>" DeleteCommand="DELETE FROM [details] WHERE [playerID] = @playerID" InsertCommand="INSERT INTO [details] ([name], [age], [position], [height], [weight], [shot], [birthdate], [number]) VALUES (@name, @age, @position, @height, @weight, @shot, @birthdate, @number)" SelectCommand="SELECT * FROM [details]" UpdateCommand="UPDATE [details] SET [name] = @name, [age] = @age, [position] = @position, [height] = @height, [weight] = @weight, [shot] = @shot, [birthdate] = @birthdate, [number] = @number WHERE [playerID] = @playerID">
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

    <p> 
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="playerID" DataSourceID="AddDataSource1" Height="133px" Width="362px">
            <Fields>
                <asp:BoundField DataField="number" HeaderText="Number" SortExpression="number" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
                <asp:BoundField DataField="shot" HeaderText="Shot" SortExpression="shot" />
                <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                <asp:BoundField DataField="height" HeaderText="Height" SortExpression="height" />
                <asp:BoundField DataField="weight" HeaderText="Weight" SortExpression="weight" />
                <asp:BoundField DataField="birthdate" DataFormatString="{0:d}" HeaderText="Birthdate" SortExpression="birthdate" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </p>
    
     

    </div>

</asp:Content>

