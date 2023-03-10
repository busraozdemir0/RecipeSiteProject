<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="RecipeSiteProject.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        margin-left: 40px;
            text-align: center;
        }
    .auto-style6 {
        margin-left: 80px;
    }
    .auto-style7 {
        font-size: x-large;
    }
        .auto-style9 {
            text-align: left;
            margin-left: 80px;
        }
        .auto-style10 {
            width: 94%;
        }
        .auto-style11 {
            width: 401px;
        }
        .auto-style12 {
            margin-right: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:DataList ID="DataList2" runat="server" Width="446px" CssClass="auto-style12">
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style5"><strong>
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <strong><span class="auto-style4">Malzemeler:</span></strong>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <strong><span class="auto-style4">Tarif:</span></strong>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Image ID="Image1" runat="server" Height="179px" Width="426px" ImageUrl="~/Resimler/mücver.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style11"><strong>Puan:</strong>&nbsp;<asp:Label ID="Label6" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                                        &nbsp;&nbsp;&nbsp;</td>
                                    <td><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</em></strong></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong><em>Eklenme Tarihi: </em></strong>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Content>
