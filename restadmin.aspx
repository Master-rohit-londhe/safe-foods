<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="restadmin.aspx.cs" Inherits="restadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style2 {
            width: 71%;
            height: 706px;
        }
        .lablecss
        {
          font-family:Georgia;
          font-size:x-large;
          border-style:solid;
          border: 2px groove white;
          padding: 10px;
          border-radius: 25px;
          background-color:chocolate;

         
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style=" height: 820px; background-color: #CCFFFF; background-image: url('images/bg1.jpg');" >
      



        <br />
        <table class="auto-style2" align="center" style="background-image: url('images/bg1.jpg'); border: thick groove #FFFFFF">
            <tr>
                <td colspan="2" style="color: #FFFFFF">
                    <asp:Label ID="Label8" runat="server" CssClass="lablecss" Visible="False"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF">
                    <asp:Label ID="Label2" runat="server" Text="Product Name" CssClass="lablecss"></asp:Label>
                </td>
                <td style="color: #FFFFFF">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="lablecss"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF">
                    <asp:Label ID="Label3" runat="server" Text="Product Image" CssClass="lablecss"></asp:Label>
                </td>
                <td style="color: #FFFFFF">&nbsp;
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="128px" Width="133px" CssClass="lablecss" />
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="lablecss" />
                    <br />
&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Upload" CssClass="lablecss" />
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF">
                    <asp:Label ID="Label4" runat="server" Text="Price" CssClass="lablecss"></asp:Label>
                </td>
                <td style="color: #FFFFFF">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="lablecss"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF">
                    <asp:Label ID="Label5" runat="server" Text="Catagory" CssClass="lablecss"></asp:Label>
                </td>
                <td style="color: #FFFFFF">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="lablecss"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF">
                    <asp:Label ID="Label6" runat="server" Text="Stock" CssClass="lablecss"></asp:Label>
                </td>
                <td style="color: #FFFFFF">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="lablecss"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF">
                    <asp:Label ID="Label7" runat="server" Text="Spacification" CssClass="lablecss"></asp:Label>
                </td>
                <td style="color: #FFFFFF">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="lablecss"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="color: #FFFFFF">&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Add Product" CssClass="lablecss" OnClick="Button1_Click" />
&nbsp;&nbsp;
                    &nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/restmanagement.aspx">Go to Admin Page....</asp:HyperLink>
                    </td>
            </tr>
        </table>
      



    </div>
</asp:Content>

