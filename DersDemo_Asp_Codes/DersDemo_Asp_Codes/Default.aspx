<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DersDemo_Asp_Codes._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="lMesaj" runat="server" />
    <table id="t" runat="server">
        <tr>
            <td align="right">
                Ad
            </td>
            <td align="center">
                :
            </td>
            <td align="left">
                <asp:TextBox ID="tbAd" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="right">
                Soyad
            </td>
            <td align="center">
                :
            </td>
            <td align="left">
                <asp:TextBox ID="tbSoyad" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Button ID="bGonder" runat="server" Text="Gönder" onclick="bGonder_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
