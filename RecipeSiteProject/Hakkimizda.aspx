<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="RecipeSiteProject.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: x-large;
            text-align: center;
        }
    .auto-style7 {
        font-size: x-large;
        text-align: center;
        color: #000000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style7">
        <strong><em>HAKKIMIZDA</em></strong></p>
        <asp:Image ID="Image1" runat="server" Height="192px" ImageUrl="~/Resimler/hakkimizdaresim.jpg" Width="475px" />
    <p class="auto-style3">
        <asp:DataList ID="DataList3" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("HakkimizdaMetin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
