<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="RecipeSiteProject.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            font-size: large;
            text-align: right;
        }
        .auto-style5 {
            font-size: large;
            font-weight: bold;
            font-style: italic;
            background-color: #FFCC99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="TxtAdSoyad" runat="server" Height="20px" ReadOnly="True" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" Height="20px" ReadOnly="True" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Yorum:</strong></td>
            <td>
                <asp:TextBox ID="TxtYorum" runat="server" Height="150px" TextMode="MultiLine" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Yemek:</strong></td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" Height="20px" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong><em>
                <asp:Button ID="BtnOnay" runat="server" BorderStyle="None" CssClass="auto-style5" Height="30px" OnClick="BtnOnay_Click" Text="Onayla" Width="93px" />
                </em></strong></td>
        </tr>
    </table>
</asp:Content>
