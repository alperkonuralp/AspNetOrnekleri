<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IletisimFormu.aspx.cs"
    Inherits="DersDemo_ASP_FormMail._IletisimFormu" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="~/IletisimFormu.css" rel="stylesheet" type="text/css" runat="server" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <div id="dContainer" runat="server">
        <table>
            <tr>
                <td class="tForm" align="right">
                    Adınız Soyadınız
                </td>
                <td class="tForm" align="Center">
                    :
                </td>
                <td class="tForm" align="Left" width="330">
                    <asp:TextBox ID="tAdSoyad" runat="server" Width="309px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tAdSoyad"
                        ErrorMessage="Lütfen adınızı ve soyadınızı giriniz." Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender"
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="revAdSoyad" runat="server" ControlToValidate="tAdSoyad"
                        Display="Dynamic" ErrorMessage="Lütfen geçerli bir adı ve soyad giriniz." ValidationExpression="[a-zA-ZğüşıöçĞÜŞİÖÇ]{2,}( [a-zA-ZğüşıöçĞÜŞİÖÇ]{2,})+">*</asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="revAdSoyad_ValidatorCalloutExtender" runat="server"
                        Enabled="True" TargetControlID="revAdSoyad">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="tForm" align="right">
                    E-Posta Adresiniz
                </td>
                <td class="tForm" align="Center">
                    :
                </td>
                <td class="tForm" align="Left">
                    <asp:TextBox ID="tbEPosta" runat="server" MaxLength="75" Width="309px" />
                    <asp:RequiredFieldValidator ID="rfvEPosta" runat="server" ControlToValidate="tbEPosta"
                        Display="Dynamic" ErrorMessage="Lütfen E-Posta adresinizi giriniz.">*</asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="rfvEPosta_ValidatorCalloutExtender" runat="server"
                        Enabled="True" TargetControlID="rfvEPosta">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="revEPosta" runat="server" ControlToValidate="tbEPosta"
                        Display="Dynamic" ErrorMessage="Lütfen geçerli bir e-posta adresi giriniz." ValidationExpression="[a-zA-Z_\-.+0-9]+@[a-zA-Z_\-.+0-9]+\.[a-z12]{2,4}(\.[a-z]{2})?">*</asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="revEPosta_ValidatorCalloutExtender" runat="server"
                        Enabled="True" TargetControlID="revEPosta">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="tForm" align="right">
                    Cep Telefonunuz<br />
                    <small><em>0505 2345678 formatında giriniz.</em></small>
                </td>
                <td class="tForm" align="Center">
                    :
                </td>
                <td class="tForm" align="Left">
                    <asp:TextBox ID="tTel" runat="server" MaxLength="13" Width="309px"></asp:TextBox>
                    <asp:MaskedEditExtender ID="tTel_MaskedEditExtender" runat="server" CultureAMPMPlaceholder=""
                        CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder=""
                        CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder=""
                        Enabled="True" Mask="999 9999999" TargetControlID="tTel">
                    </asp:MaskedEditExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tTel"
                        ErrorMessage="Lütfen cep telefonunuzu giriniz." Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender"
                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="lütfen belirtilen formatta veri giriniz."
                        ControlToValidate="tTel" ValidationExpression="5[0345][0-9][2-9][0-9]{6}" Display="Dynamic">*</asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender"
                        runat="server" Enabled="True" TargetControlID="RegularExpressionValidator1">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="tForm" align="right">
                    Mesaj Konusu
                </td>
                <td class="tForm" align="Center">
                    :
                </td>
                <td class="tForm" align="Left">
                    <asp:TextBox ID="tbKonu" runat="server" MaxLength="100" Width="309px" />
                    <asp:RequiredFieldValidator ID="rfvKonu" runat="server" ControlToValidate="tbKonu"
                        Display="Dynamic" ErrorMessage="Lütfen konuyu giriniz.">*</asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="rfvKonu_ValidatorCalloutExtender" runat="server"
                        Enabled="True" TargetControlID="rfvKonu">
                    </asp:ValidatorCalloutExtender>
                    <asp:RegularExpressionValidator ID="revKonu" runat="server" ControlToValidate="tbKonu"
                        Display="Dynamic" ErrorMessage="Lütfen daha uzun bir konu yazınız." ValidationExpression=".{3,100}">*</asp:RegularExpressionValidator>
                    <asp:ValidatorCalloutExtender ID="revKonu_ValidatorCalloutExtender" runat="server"
                        Enabled="True" TargetControlID="revKonu">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="tForm" align="right">
                    Önerileriniz
                </td>
                <td class="tForm" align="Center">
                    :
                </td>
                <td class="tForm" align="Left">
                    <asp:TextBox ID="tbMesaj" runat="server" TextMode="MultiLine" Rows="5" Columns="40"
                        Width="309px" />
                    <asp:RequiredFieldValidator ID="rfvMesaj" runat="server" ControlToValidate="tbMesaj"
                        Display="Dynamic" ErrorMessage="Lütfen Mesajınızı giriniz.">*</asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="rfvMesaj_ValidatorCalloutExtender" runat="server"
                        Enabled="True" TargetControlID="rfvMesaj">
                    </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td class="tB" colspan="3" align="Right">
                    <asp:Button ID="bGonder" runat="server" Text="Gönder" BackColor="#5A88FD" BorderColor="#6F97FE"
                        ForeColor="White" Font-Bold="True" Font-Names="Arial" Font-Overline="False" OnClick="bGonder_Click" />
                </td>
            </tr>
        </table>
    </div>
    <asp:Panel ID="pIslemTamam" runat="server" Visible="false" CssClass="cSuccess">
        Formunuz tarafımıza ulaşmıştır. En kısa sürede size cevap vereceğiz.
    </asp:Panel>
    <asp:Panel ID="pHata" runat="server" Visible="false" CssClass="cError">
        Formunuz tarafımıza ulaştırılamamıştır. Lütfen bir süre sonra tekrar deneyiniz.
    </asp:Panel>
    </form>
</body>
</html>
