<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Session1.aspx.cs" Inherits="DersDemo_ASP_States.Session1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Adınız :
        <asp:TextBox ID="tb" runat="server" />
        <br />
        <asp:Button ID="b" runat="server" Text="Gönder" onclick="b_Click" />
    </div>
    </form>
</body>
</html>
