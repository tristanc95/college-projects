<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Customers.aspx.vb" Inherits="Customers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color:whitesmoke"> Welcome to the Customers Page!</h1>
    <h2>Here, you can see some of our most recent customers that have signed up!</h2>
    <h3 style="color: whitesmoke">Check the link below to sign up if you would like!</h3>
    <br />
    <asp:gridview runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Cus_ID" DataSourceID="SqlDataSource1" ForeColor="Black" ID="gridView01">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="Cus_ID" HeaderText="ID" ReadOnly="True" SortExpression="Cus_ID" />
            <asp:BoundField DataField="Cus_FirstName" HeaderText="First Name" SortExpression="Cus_FirstName" />
            <asp:BoundField DataField="Cus_LastName" HeaderText="Last Name" SortExpression="Cus_LastName" />
            <asp:BoundField DataField="Cus_Phone" HeaderText="Phone" SortExpression="Cus_Phone" />
            <asp:BoundField DataField="Cus_Balance" HeaderText="Balance" SortExpression="Cus_Balance" />
            <asp:BoundField DataField="Cus_PaidAmount" HeaderText="Paid Amount" SortExpression="Cus_PaidAmount" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:gridview>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CustomerInformation] WHERE [Cus_ID] = @Cus_ID" InsertCommand="INSERT INTO [CustomerInformation] ([Cus_ID], [Cus_FirstName], [Cus_LastName], [Cus_Phone], [Cus_Balance], [Cus_PaidAmount]) VALUES (@Cus_ID, @Cus_FirstName, @Cus_LastName, @Cus_Phone, @Cus_Balance, @Cus_PaidAmount)" SelectCommand="SELECT * FROM [CustomerInformation]" UpdateCommand="UPDATE [CustomerInformation] SET [Cus_FirstName] = @Cus_FirstName, [Cus_LastName] = @Cus_LastName, [Cus_Phone] = @Cus_Phone, [Cus_Balance] = @Cus_Balance, [Cus_PaidAmount] = @Cus_PaidAmount WHERE [Cus_ID] = @Cus_ID">
        <DeleteParameters>
            <asp:Parameter Name="Cus_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Cus_ID" Type="Int32" />
            <asp:Parameter Name="Cus_FirstName" Type="String" />
            <asp:Parameter Name="Cus_LastName" Type="String" />
            <asp:Parameter Name="Cus_Phone" Type="String" />
            <asp:Parameter Name="Cus_Balance" Type="Decimal" />
            <asp:Parameter Name="Cus_PaidAmount" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Cus_FirstName" Type="String" />
            <asp:Parameter Name="Cus_LastName" Type="String" />
            <asp:Parameter Name="Cus_Phone" Type="String" />
            <asp:Parameter Name="Cus_Balance" Type="Decimal" />
            <asp:Parameter Name="Cus_PaidAmount" Type="Decimal" />
            <asp:Parameter Name="Cus_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:detailsview runat="server" height="50px" width="235px" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Cus_ID" DataSourceID="SqlDataSource3" GridLines="None">
        <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Cus_ID" HeaderText="ID" ReadOnly="True" SortExpression="Cus_ID" />
            <asp:BoundField DataField="Cus_FirstName" HeaderText="First Name" SortExpression="Cus_FirstName" />
            <asp:BoundField DataField="Cus_LastName" HeaderText="Last Name" SortExpression="Cus_LastName" />
            <asp:BoundField DataField="Cus_Phone" HeaderText="Phone" SortExpression="Cus_Phone" />
            <asp:BoundField DataField="Cus_Balance" HeaderText="Balance" SortExpression="Cus_Balance" />
            <asp:BoundField DataField="Cus_PaidAmount" HeaderText="Paid Amount" SortExpression="Cus_PaidAmount" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    </asp:detailsview>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CustomerInformation] WHERE [Cus_ID] = @Cus_ID" InsertCommand="INSERT INTO [CustomerInformation] ([Cus_ID], [Cus_FirstName], [Cus_LastName], [Cus_Phone], [Cus_Balance], [Cus_PaidAmount]) VALUES (@Cus_ID, @Cus_FirstName, @Cus_LastName, @Cus_Phone, @Cus_Balance, @Cus_PaidAmount)" SelectCommand="SELECT * FROM [CustomerInformation] WHERE ([Cus_ID] = @Cus_ID)" UpdateCommand="UPDATE [CustomerInformation] SET [Cus_FirstName] = @Cus_FirstName, [Cus_LastName] = @Cus_LastName, [Cus_Phone] = @Cus_Phone, [Cus_Balance] = @Cus_Balance, [Cus_PaidAmount] = @Cus_PaidAmount WHERE [Cus_ID] = @Cus_ID">
        <DeleteParameters>
            <asp:Parameter Name="Cus_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Cus_ID" Type="Int32" />
            <asp:Parameter Name="Cus_FirstName" Type="String" />
            <asp:Parameter Name="Cus_LastName" Type="String" />
            <asp:Parameter Name="Cus_Phone" Type="String" />
            <asp:Parameter Name="Cus_Balance" Type="Decimal" />
            <asp:Parameter Name="Cus_PaidAmount" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gridView01" DefaultValue="0" Name="Cus_ID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Cus_FirstName" Type="String" />
            <asp:Parameter Name="Cus_LastName" Type="String" />
            <asp:Parameter Name="Cus_Phone" Type="String" />
            <asp:Parameter Name="Cus_Balance" Type="Decimal" />
            <asp:Parameter Name="Cus_PaidAmount" Type="Decimal" />
            <asp:Parameter Name="Cus_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
    <br />
    <br />

    <h2><a href="SignUp.aspx"> Sign up for our services!</a></h2>
</asp:Content>

