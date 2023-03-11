<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="RecipeSiteProject.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 393px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            margin-left: 40px;
        }
        .auto-style6 {
            margin-left: 80px;
        }
        .auto-style7 {
            width: 393px;
            text-align: right;
            font-size: large;
        }
        .auto-style8 {
            font-size: medium;
            font-weight: bold;
            font-style: italic;
            background-color: #FFCC99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>KATEGORİ ADI:&nbsp;</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtKategoriAd" runat="server" CssClass="auto-style4" Height="20px" Width="156px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>ADET:</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtAdet" runat="server" CssClass="auto-style4" Height="20px" Width="154px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>RESİM:</strong></td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="21px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6"><strong><em>
                <asp:Button ID="BtnGuncelle" runat="server" BorderStyle="None" CssClass="auto-style8" Height="28px" OnClick="BtnGuncelle_Click" Text="Güncelle" Width="77px" />
                </em></strong></td>
        </tr>
    </table>
</asp:Content>
