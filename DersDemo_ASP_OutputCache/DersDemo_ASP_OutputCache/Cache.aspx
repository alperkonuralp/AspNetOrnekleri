<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cache.aspx.cs" Inherits="DersDemo_ASP_OutputCache.Cache" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="gv" runat="server">
        </asp:GridView>
        <fieldset>
            <legend>TL - Döviz Çevrimi</legend>TL Tutarı :
            <asp:TextBox ID="tbTl1" runat="server" />
            <br />
            <asp:DropDownList ID="ddlTl1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTl1_SelectedIndexChanged">
                <asp:ListItem Value="" Text="::Seçiniz::" />
                <asp:ListItem Value="0" Text="USD" />
                <asp:ListItem Value="1" Text="EUR" />
                <asp:ListItem Value="2" Text="GBP" />
            </asp:DropDownList>
            Tutarı :
            <asp:TextBox ID="tbDoviz1" runat="server" Enabled="false" />
        </fieldset>
        <fieldset>
            <legend>Döviz - TL Çevrimi</legend>
            <asp:DropDownList ID="ddlDoviz1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Cevir2">
                <asp:ListItem Value="0" Text="USD" />
                <asp:ListItem Value="1" Text="EUR" />
                <asp:ListItem Value="2" Text="GBP" />
            </asp:DropDownList>
            Tutarı :
            <asp:TextBox ID="tbDoviz2" runat="server" />
            <asp:Button ID="bCevir" runat="server" Text="Çevir" OnClick="Cevir2" />
            <br />
            Tl Tutarı :
            <asp:TextBox ID="tbTl2" runat="server" Enabled="false" />
        </fieldset>
        <asp:Panel runat="server" GroupingText="Döviz - Döviz Çevrimi">
            <asp:DropDownList ID="ddlDoviz3" runat="server" AutoPostBack="true" 
                onselectedindexchanged="ddlDoviz3_SelectedIndexChanged" style="height: 22px">
                <asp:ListItem Value="0" Text="USD" Selected="True" />
                <asp:ListItem Value="1" Text="EUR" />
                <asp:ListItem Value="2" Text="GBP" />
            </asp:DropDownList>
            Tutarı :
            <asp:TextBox ID="tbDoviz3" runat="server" AutoPostBack="True" 
                ontextchanged="Cevir3" />
            <br />
            <asp:DropDownList ID="ddlDoviz4" runat="server" AutoPostBack="true" 
                onselectedindexchanged="Cevir3">
                <asp:ListItem Value="1" Text="EUR" />
                <asp:ListItem Value="2" Text="GBP" />
            </asp:DropDownList>
            Tutarı :
            <asp:TextBox ID="tbDoviz4" runat="server" Enabled="false" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
