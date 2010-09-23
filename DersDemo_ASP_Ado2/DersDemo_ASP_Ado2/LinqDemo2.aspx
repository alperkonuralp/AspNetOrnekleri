<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LinqDemo2.aspx.cs" Inherits="DersDemo_ASP_Ado2.LinqDemo2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Arama :
        <asp:TextBox ID="tbArama" runat="server" />
        <asp:Button ID="bAra" runat="server" Text="Ara" onclick="bAra_Click" />
        <asp:GridView ID="gv" runat="server" />
    </div>
    </form>
</body>
</html>
