<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="RecipeSiteProject.Kategoriler" %>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <div class="auto-style5">
            <strong><em><span class="auto-style6">
            <br />
            KATEGORİ LİSTESİ</span><br class="auto-style6" /> </em></strong>
        </div>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Iconlar/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style7">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Iconlar/update.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
