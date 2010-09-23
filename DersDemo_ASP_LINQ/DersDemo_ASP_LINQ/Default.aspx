<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DersDemo_ASP_LINQ._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Kategoriler :
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="LinqDataSource1" DataTextField="CategoryName" 
            DataValueField="CategoryID">
        </asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="DersDemo_ASP_LINQ.DataLayer.NorthwindDataClassesDataContext" 
            OrderBy="CategoryName desc" Select="new (CategoryID, CategoryName)" 
            TableName="Categories">
        </asp:LinqDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataSourceID="LinqDataSource2" ForeColor="#333333" GridLines="None">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" 
                SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                ReadOnly="True" SortExpression="ProductName" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" ReadOnly="True" 
                SortExpression="CategoryID" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" ReadOnly="True" 
                SortExpression="UnitPrice" />
            <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" 
                ReadOnly="True" SortExpression="UnitsInStock" />
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource2" runat="server" 
        ContextTypeName="DersDemo_ASP_LINQ.DataLayer.NorthwindDataClassesDataContext" 
        OrderBy="ProductName" 
        Select="new (ProductID, ProductName, CategoryID, UnitPrice, UnitsInStock)" 
        TableName="Products" Where="CategoryID == @CategoryID">
        <WhereParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="0" 
                Name="CategoryID" PropertyName="SelectedValue" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    </form>
</body>
</html>
