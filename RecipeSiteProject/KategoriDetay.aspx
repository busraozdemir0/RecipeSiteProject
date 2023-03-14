<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="RecipeSiteProject.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style6 {
            width: 100%;
        }
        .auto-style8 {
            background-color: #FFCC99;
            text-align: center;
        }
        .auto-style7 {
            font-size: x-large;
            color: #993366;
        }
        .auto-style9 {
            height: 23px;
            color: #000000;
            text-align: left;
        }
        .auto-style11 {
            font-size: medium;
        }
        .auto-style12 {
            color: #000000;
        }
        .auto-style13 {
            color: #FFFFFF;
        }
        .auto-style14 {
            color: #000000;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style6">
            <tr>
                <td class="auto-style8"><strong><a href="YemekDetay.aspx?YemekID=<%# Eval("YemekID") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td class="auto-style9"><strong><span class="auto-style4">Malzemeler:</span></strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong><span class="auto-style4">Yemek Tarifi:</span></strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><span class="auto-style11">&nbsp;</span><strong><em><span class="auto-style11">Eklenme Tarihi:</span></em></strong>&nbsp;<strong><em><asp:Label ID="Label6" runat="server" CssClass="auto-style13" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </em></strong><span class="auto-style12">&nbsp;&nbsp;-&nbsp; <strong><em>Puan:</em></strong></span> <em><strong>
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style13" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </strong></em><span class="auto-style12">&nbsp; </span> </td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
