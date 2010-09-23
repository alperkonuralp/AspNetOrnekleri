<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DersDemo_ASP_AJAX._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager runat="server" />
    <div>
        <asp:Label ID="lSaat" runat="server" />
        <br />
        <asp:Button ID="b1" runat="server" Text="Gönder" />
    </div>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div>
                <asp:Label ID="lSaat2" runat="server" />
                <br />
                <asp:Button ID="b2" runat="server" Text="Gönder" />
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
