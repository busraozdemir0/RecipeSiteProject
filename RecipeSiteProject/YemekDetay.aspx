<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="RecipeSiteProject.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            font-size: xx-small;
        }
        .auto-style9 {
            height: 24px;
        }
        .auto-style10 {
            background-color: #EEA4A4;
        }
    .auto-style11 {
        margin-left: 80px;
    }
    .auto-style12 {
        text-align: right;
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
            height: 22px;
            width: 230px;
            background-color: #FFCC99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <strong>
        <em>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text="Label"></asp:Label>
        </em>
        </strong>&nbsp;&nbsp;&nbsp;
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style9">
                            <strong>
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #000000;">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                            <strong>&nbsp; -&nbsp; </strong>
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    <br />
    <div class="auto-style10"><strong>BU TARİFE YORUM YAPIN</strong></div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style7">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Ad Soyad:</strong> </td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtAdSoyad" runat="server" Height="20px" Width="240px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Mail Adresi:</strong></td>
                <td class="auto-style14">
                    <asp:TextBox ID="TxtMail" runat="server" Height="20px" Width="240px" CssClass="tb5" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Yorumunuz: </strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtYorum" runat="server" Height="100px" TextMode="MultiLine" Width="241px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style16"><strong><em>
                    <asp:Button ID="BtnYorumYap" runat="server" CssClass="auto-style17" Height="34px" OnClick="BtnYorumYap_Click" Text="Yorum Yap" Width="117px" BorderStyle="None" style="font-weight: bold; font-size: medium; " />
                    </em></strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
