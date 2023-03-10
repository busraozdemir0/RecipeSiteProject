<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="RecipeSiteProject.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            font-size: x-large;
            color: #993366;
        }
        .auto-style8 {
            background-color: #FFCC99;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style8"><strong>

                         <a href="YemekDetay.aspx?YemekID=<%# Eval("YemekID") %>"><asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekAd") %>'></asp:Label> </a>   
                      
                            </strong>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong>Malzemeler:</strong>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Yemek Tarifi:</strong>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;<strong><em>Eklenme Tarihi:</em></strong>
                            <strong><em>
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style10" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            </em></strong>&nbsp;&nbsp;-&nbsp; <strong><em>Puan:</em></strong>
                            <em><strong>
                            <asp:Label ID="Label7" runat="server" CssClass="auto-style10" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            </strong></em>&nbsp; </td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Content>
