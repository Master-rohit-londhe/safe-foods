<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="fastfood.aspx.cs" Inherits="fastfood" %>

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
        .lablecssr
        {
          font-family:Georgia;
          font-size:x-large;
          border-bottom-color:white;
          border-top-color:white;
          border-bottom:2px solid;
          border-top:1px solid;

        
        }
        .lablecss:hover
        {
          border-color:red;
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
         .space
         {
           

         }
         .auto-style2 {
             width: 230px;
         }
         .auto-style4 {
             border: 4px groove aqua;
         }
         .auto-style6 {
             width: 894px;
             text-align: center;
         }
         </style>
    <table class="style1">
        <tr>
            <td style="background-color: #000000;">
                <asp:DataList ID="DataList1" runat="server" CellPadding="40" CellSpacing="1" DataKeyField="product_id" DataSourceID="SqlDataSource1" RepeatColumns="1" Width="1598px" BackColor="Black" Height="2091px">
                    <EditItemStyle CssClass="space" />
                    <ItemTemplate>
                        <table class="style1" style="border: medium solid #FFFFFF">
                            <tr>
                                <td class="auto-style2" rowspan="3">
                                    <br />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Image ID="Image1" runat="server" CssClass="auto-style4" Height="163px" ImageUrl='<%# Eval("product_img") %>' Width="177px" />
                                    <br />
                                    &nbsp;&nbsp;
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label7" runat="server" CssClass="lablecss" ForeColor="White" Text='<%# Eval("product_id") %>'></asp:Label>
                                    <br />
                                    <br />
                                </td>
                                <td class="auto-style6">
                                    <asp:Label ID="Label2" runat="server" CssClass="lablecssr" ForeColor="White" Text='<%# Eval("product_name") %>'></asp:Label>
                                </td>
                                <td rowspan="3">
                                    <asp:Button ID="Button2" runat="server" BackColor="#FF6600" CssClass="lablecss" OnClick="Button2_Click" Text="Order" />
                                    &nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" BackColor="#FF6600" CssClass="lablecss" Text="Add To Card" OnClick="Button3_Click" />
                                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text='<%# Eval("product_id") %>' Visible="False" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:Label ID="Label5" runat="server" CssClass="lablecss" ForeColor="White" Text="Rs."></asp:Label>
                                    <asp:Label ID="Label3" runat="server" CssClass="lablecss" ForeColor="White" Text='<%# Eval("price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:Label ID="Label6" runat="server" CssClass="lablecssr" ForeColor="White" Text='<%# Eval("specification") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select * from [restproduct] where catagory='fast food'"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

