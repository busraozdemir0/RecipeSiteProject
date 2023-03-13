<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="RecipeSiteProject.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: large;
            text-align: right;
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
            <td class="auto-style3"><strong>Mesaj Gönderen:</strong></td>
            <td>
                <asp:TextBox ID="TxtGonderen" runat="server" ReadOnly="True" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" ReadOnly="True" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Konu:</strong></td>
            <td>
                <asp:TextBox ID="TxtKonu" runat="server" ReadOnly="True" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Mesaj İçerik:</strong></td>
            <td>
                <asp:TextBox ID="Txticerik" runat="server" Height="200px" ReadOnly="True" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
