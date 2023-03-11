<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="RecipeSiteProject.Yemekler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            background-color: #C0C0C0;
        }
    .auto-style4 {
        text-align: left;
        width: 258px;
    }
    .auto-style5 {
            text-align: center;
        }
    .auto-style6 {
        font-size: large;
    }
        .auto-style7 {
            text-align: right;
        }
        .auto-style10 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style11 {
            width: 37px;
        }
        .auto-style12 {
            width: 41px;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style14 {
            margin-left: 40px;
        }
        .auto-style15 {
            font-weight: bold;
            font-style: italic;
            font-size: large;
            background-color: #FFCC99;
        }
        .auto-style16 {
            width: 37px;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style18 {
            width: 40px;
            text-align: center;
        }
        .auto-style19 {
            font-size: large;
            text-align: right;
        }
        .auto-style20 {
            height: 32px;
        }
        .auto-style21 {
            margin-left: 40px;
            height: 32px;
            text-align: center;
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
                           <a href="Yemekler.aspx?YemekID=<%# Eval("YemekID") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Iconlar/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style7">
                            <a href="YemekDuzenle.aspx?YemekID=<%# Eval("YemekID") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Iconlar/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="margin-top:15px;" CssClass="auto-style3">
        <table class="auto-style1">
            <tr>
                <td class="auto-style18"><strong><em><span class="auto-style6">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                    </span></em></strong></td>
                <td class="auto-style18"><strong><em><span class="auto-style6">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style10" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                    </span></em></strong></td>
                <td><strong><em><span class="auto-style6">YEMEK EKLEME</span></em></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" style="margin-top:15px;">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>YEMEK ADI:</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="TxtYemekAd" runat="server" Width="300px" Height="21px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>MALZEMELER:</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>YEMEK TARİFİ:</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="TxtTarif" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>KATEGORİSİ:</strong></td>
            <td class="auto-style14">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="300px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
            <td class="auto-style21"><strong><em>
                <asp:Button ID="BtnEkle" runat="server" BorderStyle="None" CssClass="auto-style15" Height="28px" OnClick="BtnEkle_Click" Text="Ekle" Width="117px" />
                </em></strong></td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
        </tr>
    </table>
         </asp:Panel>
    </asp:Content>

