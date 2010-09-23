<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EmailTemplate.ascx.cs"
    Inherits="DersDemo_ASP_FormMail.EmailTemplate" %>
<html>
<head>
    <title>İletişim Formu</title>
</head>
<body>
    <table align="center">
        <tr>
            <td colspan="3" align="center">
                <h1>
                    İletişim Formu</h1>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td align="right">
                Ad ve Soyad
            </td>
            <td align="center">
                :
            </td>
            <td align="left">
                <%= Email.AdSoyad %>
            </td>
        </tr>
        <tr>
            <td align="right">
                E-Posta
            </td>
            <td align="center">
                :
            </td>
            <td align="left">
                <%= Email.EPosta %>
            </td>
        </tr>
        <tr>
            <td align="right">
                Cep Telefonu
            </td>
            <td align="center">
                :
            </td>
            <td align="left">
                <%= Email.CepTelefonu %>
            </td>
        </tr>
        <tr>
            <td align="right">
                Konu
            </td>
            <td align="center">
                :
            </td>
            <td align="left">
                <%= Email.Konu %>
            </td>
        </tr>
        <tr>
            <td align="right">
                Mesaj
            </td>
            <td align="center">
                :
            </td>
            <td align="left">
                <pre><%= Email.Mesaj %></pre>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td align="right">
                Tarih ve Saat
            </td>
            <td align="center">
                :
            </td>
            <td align="left">
                <%= DateTime.Now %>
            </td>
        </tr>
        <tr>
            <td align="right">
                IP Adresi
            </td>
            <td align="center">
                :
            </td>
            <td align="left">
                <%= Request.ServerVariables["REMOTE_ADDR"] %>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
    </table>
</body>
</html>
