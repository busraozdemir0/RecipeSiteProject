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
            text-align: center;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            color: #FFFFFF;
        }
        .auto-style11 {
            font-size: medium;
        }
        .auto-style12 {
            color: #000000;
        }
        .auto-style13 {
            font-size: large;
            color: #000000;
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
                        <td class="auto-style9"><strong><span class="auto-style13">Malzemeler:</span></strong>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>' CssClass="auto-style12"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong><span class="auto-style13">Yemek Tarifi:</span></strong>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>' CssClass="auto-style12"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="auto-style12"><span class="auto-style11">&nbsp;</span><strong><em><span class="auto-style11">Eklenme Tarihi:</span></em></strong></span>&nbsp;<strong><em><asp:Label ID="Label6" runat="server" CssClass="auto-style10" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            </em></strong>&nbsp;&nbsp;<span class="auto-style12">-&nbsp;</span> <span class="auto-style12"><strong><em>Puan:</em></strong></span>
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
