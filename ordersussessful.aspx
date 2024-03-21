<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ordersussessful.aspx.cs" Inherits="ordersussessful" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            width: 27%;
            height: 440px;
        }
        .lable
        {
            background-color:aquamarine;
            border:2px solid black;
            font-size:large
        }
        .text
        {
            background-color:white;
            border:2px solid black;
            font-size:large
        }
        .auto-style4 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color:coral; background-image: url('images/bg1.jpg');" align="center">
        <br />
        <br />
        <table class="auto-style3" bgcolor="White">
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" Text="Bill" Width="125px" CssClass="text" Font-Bold="True" ForeColor="Black" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="User Name" CssClass="lable"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Contact Number" CssClass="lable"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Product Name" CssClass="lable"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Price" CssClass="lable"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Quantity" CssClass="lable"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged" CssClass="text"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Text="Amount" CssClass="lable"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox6_TextChanged" CssClass="text"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p class="auto-style2" style="color: #FFFFFF">

        <strong>Order Placed Successfully......</strong></p>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#0000CC">Continue Shoping.....</asp:HyperLink>
        <br />
        

        </div>
</asp:Content>

