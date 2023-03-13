<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminGununYemegi.aspx.cs" Inherits="RecipeSiteProject.AdminGununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            background-color: #C0C0C0;
        }
    .auto-style5 {
            text-align: center;
        }
        .auto-style11 {
            width: 37px;
        }
        .auto-style10 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style12 {
            width: 41px;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style6 {
        font-size: large;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <div class="auto-style5">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style13"><strong><em><span class="auto-style6">YEMEK LİSTESİ</span></em></strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <a href="YemekDuzenle.aspx?YemekID=<%# Eval("YemekID") %>"><asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/Iconlar/choice.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
