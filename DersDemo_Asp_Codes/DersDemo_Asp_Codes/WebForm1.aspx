<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DersDemo_Asp_Codes.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            color: White;
            background: purple;
        }
    </style>
</head>
<body runat="server" id="bBody">
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="bBlack" Text="Black" runat="server" OnClick="bBlack_Click" />
        <asp:Button ID="bBlue" Text="Blue" runat="server" OnClick="bBlack_Click" />
        <asp:Button ID="bRed" Text="Red" runat="server" OnClick="bBlack_Click" />
        <asp:Button ID="bBrown" Text="Brown" runat="server" OnClick="bBlack_Click" />
    </div>
    </form>
</body>
</html>
