<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="RecipeSiteProject.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            background-color: #C0C0C0;
        }
    .auto-style5 {
            text-align: center;
        }
        .auto-style10 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style6 {
        font-size: large;
    }
        .auto-style4 {
        text-align: left;
        width: 209px;
    }
        .auto-style20 {
            text-align: center;
            width: 153px;
        }
        .auto-style21 {
            width: 46px;
        }
        .auto-style22 {
            width: 43px;
        }
        .auto-style23 {
            text-align: center;
            width: 160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <div class="auto-style5">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style21">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style22">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style13"><strong><em><span class="auto-style6">ONAYLANAN YORUM LİSTESİ</span></em></strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style23">
                           <a href="Yorumlar.aspx?YorumID=<%# Eval("YorumID") %>&islem=onaylama"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Iconlar/delete.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="margin-top:15px;" CssClass="auto-style3">
        <div class="auto-style5">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style21">
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style10" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                    </td>
                    <td class="auto-style22">
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style10" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                    </td>
                    <td class="auto-style13"><strong><em><span class="auto-style6">ONAYSIZ YORUM LİSTESİ</span></em></strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <a href="YorumDetay.aspx?YorumID=<%# Eval("YorumID") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Iconlar/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>



</asp:Content>
