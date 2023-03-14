<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="RecipeSiteProject.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style7 {
            width: 100%;
        }
        .auto-style12 {
        text-align: right;
    }
    .auto-style11 {
        margin-left: 80px;
    }
    .auto-style13 {
        text-align: right;
        height: 26px;
    }
    .auto-style14 {
        height: 26px;
        margin-left: 80px;
    }
    .auto-style16 {
        text-align: justify;
        margin-left: 80px;
    }
        .auto-style17 {
            border: 2px solid #456879;
            border-radius: 10px;
            background-color: #FFCC99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style7">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Tarif Adı:</strong> </td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtTarif" runat="server" Height="20px" Width="240px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Tarif Malzemeler:</strong></td>
                <td class="auto-style14">
                    <asp:TextBox ID="TxtMalzeme" runat="server" Height="100px" Width="240px" CssClass="tb5" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Yapılışı: </strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="241px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Tarif Resim:</strong></td>
                <td class="auto-style16">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="242px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Tarif Öneren:</strong></td>
                <td class="auto-style16">
                    <asp:TextBox ID="TxtOneren" runat="server" CssClass="tb5" Height="20px" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Öneren Mail:</strong></td>
                <td class="auto-style16">
                    <asp:TextBox ID="TxtOnerenMail" runat="server" CssClass="tb5" Height="20px" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Kategori:</strong></td>
                <td class="auto-style16">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5" Width="240px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style16"><strong><em>
                    <asp:Button ID="BtnOnayla" runat="server" BorderStyle="None" CssClass="auto-style17" Height="34px" OnClick="BtnOnayla_Click" style="font-weight: bold; font-size: medium; " Text="Onayla" Width="117px" />
                    </em></strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
