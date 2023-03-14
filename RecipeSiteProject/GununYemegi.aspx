<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="RecipeSiteProject.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        margin-left: 40px;
            text-align: center;
        }
    .auto-style7 {
        font-size: x-large;
            color: #993366;
            background-color: #FFCC99;
        }
        .auto-style10 {
            width: 104%;
        }
        .auto-style11 {
            width: 401px;
        }
        .auto-style12 {
            margin-right: 3px;
        }
        .auto-style14 {
            text-align: center;
            width: 684px;
            height: 37px;
            margin-left: 40px;
            background-color: #FFCC99;
        }
        .auto-style15 {
            color: #000000;
            margin-left: 80px;
            width: 684px;
        }
        .auto-style16 {
            margin-left: 80px;
            width: 684px;
        }
        .auto-style17 {
            text-align: left;
            margin-left: 80px;
            width: 684px;
        }
        .auto-style18 {
            margin-left: 80px;
            width: 684px;
            text-align: center;
        }
        .auto-style19 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:DataList ID="DataList2" runat="server" Width="446px" CssClass="auto-style12">
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style14"><strong>
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <strong><span class="auto-style4">Malzemeler:</span></strong>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <strong><span class="auto-style4">Tarif:</span></strong>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">
                            <asp:Image ID="Image1" runat="server" Height="245px" Width="444px" ImageUrl='<%# Eval("YemekResim") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style11"><strong>Puan:</strong>&nbsp;<asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style19"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17"><strong><em>Eklenme Tarihi: </em></strong>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>' CssClass="auto-style19"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Content>
