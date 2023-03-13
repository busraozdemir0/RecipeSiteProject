<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="RecipeSiteProject.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: right;
            font-size: large;
        }
        .auto-style5 {
            font-weight: bold;
            font-style: italic;
            font-size: large;
            background-color: #FFCC99;
        }
        .auto-style6 {
            height: 31px;
        }
        .auto-style7 {
            text-align: left;
            height: 31px;
        }
    .auto-style8 {
        font-weight: bold;
        font-style: italic;
        font-size: large;
        background-color: #C0C0C0;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>YEMEK AD:</strong></td>
            <td>
                <asp:TextBox ID="TxtAd" runat="server" Height="22px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>MALZEMELER:&nbsp;</strong></td>
            <td>
                <asp:TextBox ID="TxtMalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>TARİF:</strong></td>
            <td>
                <asp:TextBox ID="TxtTarif" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>KATEGORİ:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7"><strong><em>
                <asp:Button ID="BtnGuncelle" runat="server" BorderStyle="None" CssClass="auto-style5" Height="33px" Text="Güncelle" Width="250px" OnClick="BtnGuncelle_Click" />
                &nbsp;&nbsp;
                </em></strong></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7"><strong><em>
                <asp:Button ID="BtnSec" runat="server" BorderStyle="None" CssClass="auto-style8" Height="33px" OnClick="BtnSec_Click" Text="Günün Yemeği Seç" Width="250px" />
                </em></strong></td>
        </tr>
    </table>
</asp:Content>
