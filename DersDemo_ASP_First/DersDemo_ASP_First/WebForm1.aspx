<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="WebForm1.aspx.cs" Inherits="DersDemo_ASP_First.WebForm1" %>

<asp:Content ContentPlaceHolderID="cphHead" runat="server">
    <meta name="keywords" content="Deneme" />
</asp:Content>
<asp:Content ContentPlaceHolderID="cphMenu" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~">Ana Sayfa</asp:HyperLink>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/WebForm1.aspx">İlk Sayfa</asp:HyperLink>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/WebForm1.aspx">Alt Link</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    WebForm1 İçeriği
</asp:Content>
