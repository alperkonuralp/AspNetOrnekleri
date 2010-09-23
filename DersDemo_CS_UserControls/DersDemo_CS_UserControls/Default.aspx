<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DersDemo_CS_UserControls._Default" %>

<%@ Register Src="Resources/UserControls/UCTCKimlikNo.ascx" TagName="UCTCKimlikNo"
    TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        T.C. Kimlik numaramanızı giriniz:
        <br />
        <uc1:UCTCKimlikNo ID="UCTCKimlikNo1" runat="server" Zorunlu="False" ValidationGroup="a"  />
        <br />
        <asp:Button runat="server" ID="bGonder" Text="Gönder" onclick="bGonder_Click" ValidationGroup="a" />
        <br />
        <asp:TextBox ID="tbYazi" runat="server" />
    </div>
    </form>
</body>
</html>
