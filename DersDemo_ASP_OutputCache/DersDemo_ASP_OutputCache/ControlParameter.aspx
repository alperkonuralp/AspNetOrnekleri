<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlParameter.aspx.cs"
    Inherits="DersDemo_ASP_OutputCache.ControlParameter" %>

<%@ OutputCache Duration="60" VaryByParam="none" VaryByControl="ddl;lb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Kategori :
        <asp:DropDownList ID="ddl" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_SelectedIndexChanged">
            <asp:ListItem Value="0" Selected="True">Genel</asp:ListItem>
            <asp:ListItem Value="1">Türkiye</asp:ListItem>
            <asp:ListItem Value="2">Dünya</asp:ListItem>
            <asp:ListItem Value="3">Ekonomi</asp:ListItem>
            <asp:ListItem Value="4">Spor</asp:ListItem>
        </asp:DropDownList>
        <br />
        Haberler :
        <asp:ListBox ID="lb" runat="server" AutoPostBack="true" OnSelectedIndexChanged="lb_SelectedIndexChanged">
            <asp:ListItem Text="Genel - 1" />
            <asp:ListItem Text="Genel - 2" />
            <asp:ListItem Text="Genel - 3" />
            <asp:ListItem Text="Genel - 4" />
            <asp:ListItem Text="Genel - 5" />
            <asp:ListItem Text="Genel - 6" />
            <asp:ListItem Text="Genel - 7" />
            <asp:ListItem Text="Genel - 8" />
            <asp:ListItem Text="Genel - 9" />
            <asp:ListItem Text="Genel - 10" />
        </asp:ListBox>
        <br />
        Haber Detayı :
        <asp:Label ID="l" runat="server"></asp:Label>
        <br />
        <%= DateTime.Now %>
    </div>
    </form>
</body>
</html>
