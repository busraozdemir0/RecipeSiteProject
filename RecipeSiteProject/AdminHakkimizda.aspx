<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHakkimizda.aspx.cs" Inherits="RecipeSiteProject.AdminHakkimizda" %>
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
            font-size: x-large;
        }
        .auto-style14 {
        font-weight: bold;
        font-style: italic;
        font-size: medium;
        background-color: #FFCC99;
    }
    .auto-style15 {
        width: 100%;
        height: 293px;
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
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style13"><strong>HAKKIMIZDA</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style15">
            <tr>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Height="250px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong><em>
                    <asp:Button ID="BtnGuncelle" runat="server" BorderStyle="None" CssClass="auto-style14" Height="30px" Text="Güncelle" OnClick="BtnGuncelle_Click" />
                    </em></strong></td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
