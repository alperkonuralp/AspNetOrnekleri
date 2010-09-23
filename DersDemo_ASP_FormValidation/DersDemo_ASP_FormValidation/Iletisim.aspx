<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="DersDemo_ASP_FormValidation.Iletisim" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>İletişim Formu</h1>
    <table id="tVeriler" runat="server">
    <tr>
        <td align=right>Adınız ve Soyadınız</td>
        <td align=Center>:</td>
        <td align=Left><asp:TextBox ID="tbAdSoyad" runat="server" MaxLength=50 />
            <asp:RequiredFieldValidator ID="rfvAdSoyad" runat="server" 
            ControlToValidate="tbAdSoyad" Display="Dynamic"
            ErrorMessage="Lütfen adınızı ve soyadınızı giriniz." >*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revAdSoyad" runat="server"
            ControlToValidate="tbAdSoyad" Display="Dynamic"
            ErrorMessage="Lütfen geçerli bir adı ve soyad giriniz." 
            ValidationExpression="[a-zA-Z]{2,}( [a-zA-Z]{2,})+"
            >*</asp:RegularExpressionValidator>
            
        </td>
        
    </tr>
    <tr>
        <td align=right>E-posta Adresiniz</td>
        <td align=Center>:</td>
        <td align=Left><asp:TextBox ID="tbEPosta" runat="server" MaxLength=75 />
            <asp:RequiredFieldValidator ID="rfvEPosta" runat="server"
            ControlToValidate="tbEPosta" Display="Dynamic"
            ErrorMessage="Lütfen e-posta adresinizi giriniz." >*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEPosta" runat="server"
            ControlToValidate="tbEPosta" Display="Dynamic" 
            ErrorMessage="Lütfen geçerli bir e-posta adresi giriniz."
            
                ValidationExpression="[a-zA-Z_\-.+0-9]+@[a-zA-Z_\-.+0-9]+\.[a-z12]{2,4}(\.[a-z]{2})?" >*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td align=right>Yaşınız</td>
        <td align=Center>:</td>
        <td align=Left>
            <asp:TextBox ID="tbYas" runat="server" MaxLength="3" />
            <asp:RangeValidator ID="rvYas" runat="server"
                ControlToValidate="tbYas" Display="Dynamic"
                ErrorMessage="Lütfen geçerli bir yaş giriniz." 
                Type="Integer" MinimumValue="10" MaximumValue="90"
                >*</asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td align=right>Çocuğunuzun Yaşı</td>
        <td align=Center>:</td>
        <td align=Left>
            <asp:TextBox ID="tbCocukYasi" runat="server" MaxLength="3" />
            <asp:CompareValidator ID="cvCocukYasi" runat="server"
                ControlToValidate="tbCocukYasi" 
                ControlToCompare="tbYas" Display="Dynamic"
                ErrorMessage="Lütfen geçerli bir yaş giriniz." 
                Type="Integer" Operator="LessThan"
                >*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td align=right>Konu</td>
        <td align=Center>:</td>
        <td align=Left><asp:TextBox ID="tbKonu" runat="server" MaxLength="100"/>
            <asp:RequiredFieldValidator ID="rfvKonu" runat="server"
            ControlToValidate="tbKonu" Display="Dynamic"
            ErrorMessage="Lütfen konuyu giriniz." >*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revKonu" runat="server"
            ControlToValidate="tbKonu" Display="Dynamic"
            ErrorMessage="Lütfen daha uzun bir konu yazınız."
            ValidationExpression=".{3,100}" >*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td align=right>Mesaj</td>
        <td align=Center>:</td>
        <td align=Left><asp:TextBox ID="tbMesaj" runat="server" TextMode="MultiLine" Rows="5" Columns="40" />
            <asp:RequiredFieldValidator ID="rfvMesaj" runat="server"
                ControlToValidate="tbMesaj" Display="Dynamic"
                ErrorMessage="Lütfen Mesajınızı giriniz." >*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align=right>Güvenlik Kodu</td>
        <td align=Center>:</td>
        <td align=Left>
            <asp:Image ID="iGuvenlik" runat="server" />
            <br />
            <asp:TextBox ID="tbGuvenlik" runat="server" />
            <asp:RequiredFieldValidator ID="rfvGuvenlik" runat="server"
                ControlToValidate="tbGuvenlik" Display="Dynamic"
                ErrorMessage="Lütfen güvenlik kodunu giriniz." >*</asp:RequiredFieldValidator>
            <asp:CustomValidator ID="cvGuvenlik" runat="server"
                ControlToValidate="tbGuvenlik" Display="Dynamic"
                ErrorMessage="Güvenlik kodunu yanlış girdiniz." 
                onservervalidate="cvGuvenlik_ServerValidate" >*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td colspan=3 align=Center><asp:Button ID="bGonder" Text="Gönder"  runat="server" 
                onclick="bGonder_Click" /></td>
    </tr>
    <tr><td colspan=3>
        <asp:ValidationSummary runat="server" ShowMessageBox=true ShowSummary=false  />
    </td></tr>
    </table>
    <asp:Panel ID="pSonuc" runat="server" Visible="false">
        Girmiş olduğunuz bilgiler tarafımıza ulaşmış olup,
        en kısa sürede cevap verilecektir.<br />
        Bizi seçtiğiniz için teşekkür ederiz.
    </asp:Panel>
    
    Arama : 
    <asp:TextBox ID="tbArama" runat="server" ValidationGroup="Arama" /> 
    <asp:RequiredFieldValidator ID="rfvArama" runat="server"
        ControlToValidate="tbArama" Display="Static"
        ErrorMessage="Lütfen veri giriniz."
        Text="*" ValidationGroup="Arama" />
    <asp:Button ID="bAra" runat="server" Text="Ara" ValidationGroup="Arama" />
    </form>
</body>
</html>
