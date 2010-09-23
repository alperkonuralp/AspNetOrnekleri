<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LinqDemo.aspx.cs" Inherits="DersDemo_ASP_Ado2.LinqDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Kategori :
        <asp:DropDownList ID="ddl" runat="server" AutoPostBack="true" 
            onselectedindexchanged="ddl_SelectedIndexChanged" />
        <asp:GridView ID="gv" runat="server" />
    </div>
    </form>
</body>
</html>
