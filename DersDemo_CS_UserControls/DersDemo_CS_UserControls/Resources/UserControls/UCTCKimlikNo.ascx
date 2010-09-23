<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCTCKimlikNo.ascx.cs"
    Inherits="DersDemo_CS_UserControls.Resources.UserControls.UCTCKimlikNo" %>
<asp:TextBox ID="tbTCKimlikNo" runat="server" MaxLength="11" />
<asp:RequiredFieldValidator ID="rfvTCKimlikNo" runat="server"
    ControlToValidate="tbTCKimlikNo" Display="Dynamic"
    ErrorMessage="Lütfen T.C. Kimlik Numaranızı giriniz." />
<asp:RegularExpressionValidator ID="revTCKimlikNo" runat="server"
    ControlToValidate="tbTCKimlikNo" Display="Dynamic"
    ErrorMessage="Lütfen geçerli bir T.C. Kimlik Numarası giriniz."
    ValidationExpression="[1-9][0-9]{10}" />
