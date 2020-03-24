<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="TeknikServis_Web.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lblUrunSeriNo" runat="server" Text="Ürün Seri No:" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtUrunSeriNo" runat="server"></asp:TextBox>
    <asp:Button ID="btnAra" runat="server" Text="Ara" OnClick="btnAra_Click" CssClass="btn btn-primary" />

    <table class="table table-bordered"; style="margin-top:15px">

        <thead>
            <tr>
                <th>Açıklama</th>
                <th>Tarih</th>
            </tr>
        </thead>

        <tbody>
            <asp:Repeater ID="rptrUrunTakip" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("Durum") %></td>
                        <td><%# Eval("SonTarih") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </tbody>

    </table>


</asp:Content>
