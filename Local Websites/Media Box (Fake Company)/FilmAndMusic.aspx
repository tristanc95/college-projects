<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="FilmAndMusic.aspx.vb" Inherits="Inventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <h1 style="color: whitesmoke">Welcome to the Inventory Page for Film and Music!</h1>
    <h3 style="color: whitesmoke">Here you can see all the hardware that we have to offer for you, so that you can be able to experience any entertainment medium you so wish to!</h3>

    <br />

    <h4 style="color: whitesmoke">Press select below to see how many of each item that we have in our inventory.</h4>
    <h4 style="color: whitesmoke">To see our video game inventory in stock; please go <a href="VideoGames.aspx">here!</a></h4>

    <asp:GridView ID="grdInventory" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Inventory_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="299px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Inventory_ID" HeaderText="Inventory_ID" ReadOnly="True" SortExpression="Inventory_ID" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />
    <br />
    <asp:DetailsView ID="dtlInventory" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Inventory_ID" DataSourceID="SqlDataSource2" ForeColor="#333333" Height="50px" Width="302px" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Inventory_ID" HeaderText="Inventory_ID" ReadOnly="True" SortExpression="Inventory_ID" />
            <asp:BoundField DataField="Amount_Available" HeaderText="Amount_Available" SortExpression="Amount_Available" />
            <asp:BoundField DataField="Currently Loaned Out" HeaderText="Currently Loaned Out" SortExpression="Currently Loaned Out" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
    <br />
    <br />

    <p style="font-size: medium; color:whitesmoke">Do you have any older products that you would like to donate to us?</p>
    <a href="Donations.aspx">Click here to submit a donation form of what you would like to send to us!</a>
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Film_And_Music_Inventory] WHERE ([Inventory_ID] = @Inventory_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="grdInventory" Name="Inventory_ID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Inventory_ID] FROM [Film_And_Music_Inventory]"></asp:SqlDataSource>
</asp:Content>

