<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProcedureDemo.aspx.cs"
    Inherits="DersDemo_ASP_Ado2.ProcedureDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table>
        <tr>
            <td valign="top">
                Başlangıç Tarihi :
                <asp:Calendar ID="cBaslangic" runat="server" />
                Bitiş Tarihi :
                <asp:Calendar ID="cBitis" runat="server" />
                <asp:Button ID="bAl" runat="server" Text="Veri Al" onclick="bAl_Click" />
            </td>
            <td valign="top">
                Toplam :
                <asp:Label ID="lToplam" runat="server" />
                <asp:GridView ID="gv" runat="server" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
