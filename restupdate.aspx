﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="restupdate.aspx.cs" Inherits="restdelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 76%;
            height: 602px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style=" height: 2220px; background-color: #CCFFFF; background-image: url('images/bg1.jpg');">


    <table class="auto-style2" align="center">
        <tr>
            <td align="center">
                <div class="auto-style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="product_id" DataSourceID="SqlDataSource1" Height="195px" Width="1406px">
                    <Columns>
                        <asp:BoundField DataField="product_id" HeaderText="product_id" InsertVisible="False" ReadOnly="True" SortExpression="product_id" />
                        <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                        <asp:BoundField DataField="product_img" HeaderText="product_img" SortExpression="product_img" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="catagory" HeaderText="catagory" SortExpression="catagory" />
                        <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" />
                        <asp:BoundField DataField="specification" HeaderText="specification" SortExpression="specification" />
                        <asp:BoundField DataField="up_stock" HeaderText="up_stock" SortExpression="up_stock" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="delete from restproduct where product_id=@product_id" SelectCommand="SELECT * FROM [restproduct]" UpdateCommand="update restproduct set product_name=@product_name,product_img=@product_img,price=@price,catagory=@catagory,stock=@stock,specification=@specification where product_id=@product_id"></asp:SqlDataSource>
            </td>
        </tr>
    </table>


</div>
</asp:Content>

