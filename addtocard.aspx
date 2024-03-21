<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addtocard.aspx.cs" Inherits="addtocard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 48%;
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
        .buttoncss
        {
          font-family:Georgia;
          font-size:x-large;
          border-style:solid;
          border: 2px groove white;
          padding: 10px;
          border-radius: 8px;
          background-color:whitesmoke;

         
        }
        .auto-style4 {
            height: 57px;
            width: 374px;
        }
        .auto-style7 {
            height: 67px;
            width: 374px;
        }
        .auto-style13 {
        height: 81px;
            width: 374px;
        }
        .auto-style14 {
            height: 68px;
            width: 374px;
        }
        .auto-style15 {
            width: 374px;
        }
        .auto-style16 {
            height: 68px;
            width: 271px;
        }
        .auto-style17 {
            height: 57px;
            width: 271px;
        }
        .auto-style18 {
            height: 67px;
            width: 271px;
        }
        .auto-style19 {
            width: 271px;
        }
        .auto-style20 {
            height: 81px;
            width: 271px;
        }
        .auto-style22 {
            height: 109px;
        }
        .auto-style23 {
            font-size: xx-large;
        }
       
        .imgsize
        {
            height:100px;
            width:100px;
            border-color:aqua;
            border-style:groove;
            border-width:1px;
            
            
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
    <div style=" height: 1220px; background-color: #CCFFFF; background-image: url('images/bg1.jpg');" >
        
      



        -eq<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style2" align="center" bgcolor="#FF9933" style="border: 10px groove #FFFFFF; background-image: url('images/bg1.jpg');">
            <tr>
                <td colspan="2" style="color: #FFFFFF" class="auto-style22" align="center">
                    <asp:Label ID="Label13" runat="server" Text="Product Add To Card Form" CssClass="lablecss" BackColor="Maroon"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF" class="auto-style16">
                    <asp:Label ID="Label16" runat="server" Text="Product ID" CssClass="lablecss"></asp:Label>
                    <span class="auto-style23"><strong>:</strong></span></td>
                <td style="color: #FFFFFF" class="auto-style14">
                    <br />
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="buttoncss" Visible="True" OnTextChanged="TextBox8_TextChanged"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF" class="auto-style17">
                    <asp:Label ID="Label9" runat="server" Text="User Name" CssClass="lablecss"></asp:Label>
                    <span class="auto-style23"><strong>:</strong></span></td>
                <td style="color: #FFFFFF" class="auto-style4">
                    <br />
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="buttoncss" ReadOnly="True" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF" class="auto-style18">
                    <asp:Label ID="Label10" runat="server" Text="Contact No." CssClass="lablecss"></asp:Label>
                    &nbsp;<span class="auto-style23"><strong>:</strong></span></td>
                <td style="color: #FFFFFF" class="auto-style7">
                    <br />
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="buttoncss" ReadOnly="True"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF" class="auto-style19">
                    <asp:Label ID="Label2" runat="server" Text="Product Name" CssClass="lablecss"></asp:Label>
                    <span class="auto-style23"><strong>:</strong></span></td>
                <td style="color: #FFFFFF" class="auto-style15">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="buttoncss"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF" class="auto-style19">
                    <asp:Label ID="Label3" runat="server" Text="Product Image" CssClass="lablecss"></asp:Label>
                    <span class="auto-style23"><strong>:</strong></span></td>
                <td style="color: #FFFFFF" class="auto-style15">
                    <asp:Image ID="Image1" runat="server" CssClass="buttoncss" Height="162px" Width="173px" />
                    <br />
&nbsp;</td>
            </tr>
      
            <tr>
                <td style="color: #FFFFFF" class="auto-style19">
                    <asp:Label ID="Label4" runat="server" Text="Price" CssClass="lablecss"></asp:Label>
                    <span class="auto-style23"><strong>:</strong></span></td>
                <td style="color: #FFFFFF" class="auto-style15">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="buttoncss" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF" class="auto-style19">
                    <asp:Label ID="Label5" runat="server" Text="Quantity" CssClass="lablecss"></asp:Label>
                    <span class="auto-style23"><strong>:</strong></span></td>
                <td style="color: #FFFFFF" class="auto-style15">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="buttoncss" OnTextChanged="TextBox3_TextChanged" AutoPostBack="True"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF" class="auto-style20">
                    <asp:Label ID="Label12" runat="server" Text="Amount" CssClass="lablecss"></asp:Label>
                    <span class="auto-style23"><strong>:</strong></span></td>
                <td style="color: #FFFFFF" class="auto-style13">
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="buttoncss" OnTextChanged="TextBox9_TextChanged"></asp:TextBox>
                </td>
            </tr>
           
            <tr>
                <td colspan="2" style="color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="#FF6600" CssClass="buttoncss" Text="Add To Cart" OnClick="Button3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="See Your Cart Item" PostBackUrl="~/addtocart1.aspx" />
                    <br />
                    <asp:Label ID="Label8" runat="server" CssClass="lablecss" Visible="False"></asp:Label>
                    <br />
                    </td>
            </tr>
        </table>
      
    </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </asp:Content>

