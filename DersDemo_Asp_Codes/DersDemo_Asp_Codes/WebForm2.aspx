<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="DersDemo_Asp_Codes.WebForm2"
    Trace="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lMesaj" runat="server" /><br />
        <asp:TextBox ID="tb" runat="server" AutoPostBack="True" OnTextChanged="tb_TextChanged" /><br />
        <asp:ListBox ID="lb" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lb_SelectedIndexChanged">
            <asp:ListItem Text="Bir" />
            <asp:ListItem Text="İki" />
            <asp:ListItem Text="Üç" />
        </asp:ListBox>
        <br />
        <asp:Button ID="bGonder" Text="Gönder" runat="server" />
    </div>
    </form>
</body>
</html>
