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
    }
    .auto-style10 {
        font-size: x-large;
        color: #000000;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
    <tr>
        <td class="auto-style10" colspan="2"><strong><em>MESAJ PANELİ</em></strong></td>
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
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5"></asp:TextBox>
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
            <asp:Button ID="BtnGonder" runat="server" CssClass="button" Text="Gönder" Width="117px" BorderStyle="None" Height="34px" OnClick="BtnGonder_Click" style="font-size: large; font-weight: bold; background-color: #999999" />
            </strong></td>
    </tr>
</table>
</asp:Content>
