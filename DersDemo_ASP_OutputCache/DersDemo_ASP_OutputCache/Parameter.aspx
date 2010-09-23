<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parameter.aspx.cs" Inherits="DersDemo_ASP_OutputCache.Parameter" %>

<%@ OutputCache Duration="60" VaryByParam="hfSecenek" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript">
        function sec(no) {
            form1.hfSecenek.value = no;
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HiddenField ID="hfSecenek" runat="server" Value="1" />
        <table id="t" runat="server">
            <tr>
                <td>
                    <asp:LinkButton runat="server" ID="lb1" Text="1.Seçenek" OnClick="lb1_Click" OnClientClick="sec(1)" />
                </td>
                <td>
                    <asp:LinkButton runat="server" ID="lb2" Text="2.Seçenek" OnClick="lb2_Click" OnClientClick="sec(2)" />
                </td>
                <td>
                    <asp:LinkButton runat="server" ID="lb3" Text="3.Seçenek" OnClick="lb3_Click" OnClientClick="sec(3)" />
                </td>
            </tr>
            <tr id="tr1" runat="server">
                <td colspan="3">
                    1. Seçenek sayfası
                </td>
            </tr>
            <tr id="tr2" runat="server" runat="server" visible="false">
                <td colspan="3">
                    2. seçenek sayfası
                </td>
            </tr>
            <tr id="tr3" runat="server" visible="false">
                <td colspan="3">
                    3. seçenek sayfası
                </td>
            </tr>
        </table>
        <%= DateTime.Now %>
    </div>
    </form>
</body>
</html>
