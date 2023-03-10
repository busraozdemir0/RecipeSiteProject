<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="RecipeSiteProject.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            margin-left: 40px;
        }
        .auto-style7 {
            width: 304px;
        }
        .auto-style8 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style9 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-size: large;
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
                    <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" Height="22px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;" class="auto-style7"><strong>Malzemeler:</strong></td>
                <td>
                    <asp:TextBox ID="TxtMalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;" class="auto-style7"><strong>Yapılış:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;" class="auto-style7"><strong>Resim:</strong></td>
                <td class="auto-style5">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" Height="20px" CssClass="auto-style8" />
                </td>
            </tr>
            <tr>
                <td style="text-align:right;" class="auto-style7"><strong>Tarif Öneren:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtOneren" runat="server" Width="250px" Height="22px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;" class="auto-style7"><strong>Mail Adresi:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="250px" Height="22px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">
                    <strong><em>
                    <asp:Button ID="BtnOner" runat="server" Text="Tarif Öner" BackColor="#FFCC99" CssClass="auto-style9" Font-Bold="True" Height="31px" Width="121px" BorderColor="#FFCC99" OnClick="BtnOner_Click"/>
                    </em></strong>
                </td>
            </tr>
        </table>
</asp:Content>
   
