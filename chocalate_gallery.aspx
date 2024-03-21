<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chocalate_gallery.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .datalistimg
        {
            height:320px;
            width:320px;
            border-color:aqua;
            border-style:groove;
            border-width:4px;
            
            
        }
        .datalistimg:hover
        {
            height:380px;
            width:380px;
            border-color:red;
            border-style:groove;
             border-width:4px;
        }
        .lablecss
        {
          font-family:Georgia;
          font-size:x-large;
          border-style:solid;
          border: 2px groove white;
          padding: 10px;
          border-radius: 25px;
         

         
        }
        .lablecss:hover
        {
          border-color:red;
        }
    </style>
    <table class="style1">
        <tr>
            <td style="background-image: url('images/bg1.jpg')">
                <asp:DataList ID="DataList1" runat="server" CellPadding="20" CellSpacing="40" DataKeyField="product_id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" Width="1532px" BackColor="Black">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" CssClass="lablecss" ForeColor="White" Text='<%# Eval("product_id") %>'></asp:Label>
                        p<br />
                        <br />
                        <asp:Image ID="Image1" runat="server" CssClass="datalistimg" Height="297px" ImageUrl='<%# Eval("product_img") %>' Width="318px" />
                        roduct_id:
                        <asp:Label ID="product_idLabel" runat="server" Text='<%# Eval("product_id") %>' />
                        <br />
                        product_na<br />&nbsp;e<asp:Label ID="Label2" runat="server" CssClass="lablecss" ForeColor="White" Text='<%# Eval("product_name") %>'></asp:Label>
                        :
                        <br />
                        <asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' />
                        <br />
                        product_img:
                        <asp:Label ID="product_imgLabel" runat="server" Text='<%# Eval("product_img") %>' />
<br />
                        p
                        <asp:Label ID="Label4" runat="server" CssClass="lablecss" ForeColor="White" Text="Rs."></asp:Label>
                        <asp:Label ID="Label3" runat="server" CssClass="lablecss" ForeColor="White" Text='<%# Eval("price") %>'></asp:Label>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />
                        catagory:
                        <asp:Label ID="catagoryLabel" runat="server" Text='<%# Eval("catagory") %>' />
                        <br />
                        st<asp:Button ID="Button2" runat="server" BackColor="#FF6600" CssClass="lablecss" Text="Order" OnClick="Button2_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" BackColor="#FF6600" CssClass="lablecss" Text="Add To Card" OnClick="Button3_Click" />
                        <asp:Button ID="Button4" runat="server" Text='<%# Eval("product_id") %>' Visible="False" />
                        <br />
                        specification:
                        <asp:Label ID="specificationLabel" runat="server" Text='<%# Eval("specification") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [bakeryproduct]where catagory='Chocolate'"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

