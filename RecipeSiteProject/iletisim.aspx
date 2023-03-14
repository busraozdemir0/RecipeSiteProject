<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="RecipeSiteProject.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 100%;
    }
    .auto-style7 {
        margin-left: 40px;
    }
    .auto-style8 {
        text-align: right;
        color: #000000;
        font-size: large;
    }
    .auto-style10 {
        font-size: x-large;
        color: #000000;
        text-align: center;
    }
        .auto-style11 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            background-color: #FFCC99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
    <tr>
        <td class="auto-style10" colspan="2"><strong><em>İLETİŞİM PANELİ</em></strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Adınız Soyadınız:</strong></td>
        <td>
            <asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Mail Adresiniz:&nbsp;</strong></td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Konu:</strong></td>
        <td class="auto-style7">
            <asp:TextBox ID="TxtKonu" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Mesaj:</strong></td>
        <td class="auto-style7">
            <asp:TextBox ID="TxtMesaj" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style7"><strong>
            <asp:Button ID="BtnGonder" runat="server" CssClass="auto-style11" Text="Gönder" Width="117px" BorderStyle="None" Height="34px" OnClick="BtnGonder_Click" style="font-size: large; font-weight: bold; " />
            </strong></td>
    </tr>
</table>
</asp:Content>
