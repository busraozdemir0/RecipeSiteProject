<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="RecipeSiteProject.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            margin-left: 40px;
        }
        .auto-style6 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style7 {
            width: 304px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:right;" class="auto-style7"><strong>Tarif Ad:</strong></td>
                <td>
                    <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" Height="22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;" class="auto-style7"><strong>Malzemeler:</strong></td>
                <td>
                    <asp:TextBox ID="TxtMalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;" class="auto-style7"><strong>Yapılış:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;" class="auto-style7"><strong>Resim:</strong></td>
                <td class="auto-style5">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" Height="25px" />
                </td>
            </tr>
            <tr>
                <td style="text-align:right;" class="auto-style7"><strong>Tarif Öneren:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtOneren" runat="server" Width="250px" Height="22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;" class="auto-style7"><strong>Mail Adresi:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="250px" Height="22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">
                    <strong><em>
                    <asp:Button ID="BtnOner" runat="server" Text="Tarif Öner" BackColor="#FFCC99" CssClass="auto-style6" Font-Bold="True" Height="36px" Width="108px" BorderColor="#FFCC99" OnClick="BtnOner_Click"/>
                    </em></strong>
                </td>
            </tr>
        </table>
</asp:Content>
   
