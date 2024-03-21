<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="specials.aspx.cs" Inherits="specials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>.lablecss
        {
          font-family:Georgia;
          font-size:large;
          border-style:solid;
          border: 2px groove white;
          padding: 10px;
          border-radius: 25px;
          background-color:white;

         
        }
        .buttoncss
        {
          font-family:Georgia;
          font-size:large;
          border-style:solid;
          border: 2px groove white;
          padding: 10px;
          border-radius: 8px;
          background-color:whitesmoke;

         
        }

        .auto-style2 {
            width: 89%;
            height: 1533px;
        }
        .auto-style3 {
        width: 758px;
    }

        .auto-style4 {
            font-family: Georgia;
            font-size: large;
            border: 2px groove white;
            padding: 10px;
            border-radius: 25px;
            background-color: chocolate;
            font-weight: bold;
        }

    .auto-style5 {
        width: 743px;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style=" height:2420px; background-color: #CCFFFF; background-image: url('images/bg1.jpg');" align="center">

                            <strong style="text-align: left">
                            <asp:Image ID="Image12" runat="server" Height="388px" ImageUrl="~/images/why.PNG" Width="1650px" />
                            <br />
    <br />
    <br />
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style3" style="border: thick groove #FFFFFF">
                <br />
                <asp:Label ID="Label2" runat="server" CssClass="lablecss" Text="Special In Cake"></asp:Label>
                <br />
                <br />
                <asp:ImageButton ID="ImageButton6" runat="server" Height="131px" Width="134px" ImageUrl="~/images/g1.jpg" />
                <strong style="text-align: left">
                            <asp:ImageButton ID="ImageButton7" runat="server" Height="131px" Width="134px" ImageUrl="~/images/g11.jpg" />
                <asp:ImageButton ID="ImageButton8" runat="server" Height="131px" Width="134px" ImageUrl="~/images/bakeryadmin3.jpeg" />
                <asp:ImageButton ID="ImageButton9" runat="server" Height="131px" Width="134px" ImageUrl="~/images/g12.jpg" />
                <asp:ImageButton ID="ImageButton10" runat="server" Height="131px" Width="134px" ImageUrl="~/images/g15.jpg" />
                <br />
                <br />
                            </strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" PostBackUrl="~/cakegallery.aspx" Text="Order Now" />
                <br />
                        </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td style="border: thick groove #FFFFFF" class="auto-style5"><strong style="text-align: left">
                            &nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" CssClass="lablecss" Text="Special In Fast Food"></asp:Label>
                <br />
&nbsp;<br />
                &nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton11" runat="server" Height="131px" Width="134px" ImageUrl="~/images/r1.jpg" />
                <asp:ImageButton ID="ImageButton12" runat="server" Height="131px" Width="134px" ImageUrl="~/images/r2.jpg" />
                <asp:ImageButton ID="ImageButton13" runat="server" Height="131px" Width="134px" ImageUrl="~/images/r15.jpg" />
                <asp:ImageButton ID="ImageButton14" runat="server" Height="131px" Width="134px" ImageUrl="~/images/r14.jpg" />
                <asp:ImageButton ID="ImageButton15" runat="server" Height="131px" Width="134px" ImageUrl="~/images/r4.jpg" />
                <br />
                <br />
&nbsp;&nbsp;
                            </strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style4" PostBackUrl="~/fastfood.aspx" Text="Order  Now" />
                <br />
                        </td>
        </tr>
        <tr>
            <td class="auto-style3" style="border: thick groove #FFFFFF">
                            <br />
                            <asp:Label ID="Label4" runat="server" CssClass="lablecss" Text="Specials In Sweets"></asp:Label>
                            <strong style="text-align: left">
                            <br />
                <br />
                <asp:ImageButton ID="ImageButton18" runat="server" Height="131px" Width="134px" />
                <asp:ImageButton ID="ImageButton19" runat="server" Height="131px" Width="134px" />
                            <asp:ImageButton ID="ImageButton20" runat="server" Height="131px" Width="134px" />
                            <asp:ImageButton ID="ImageButton21" runat="server" Height="131px" Width="134px" />
                            <asp:ImageButton ID="ImageButton22" runat="server" Height="131px" Width="134px" />
                <br />
                <br />
                            </strong>
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style4" PostBackUrl="~/sweetgallery.aspx" Text="Order Now" />
                            <br />
                        </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td style="border: thick groove #FFFFFF" class="auto-style5">
                            &nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" CssClass="lablecss" Text="Specials In Chocolates"></asp:Label>
                            <strong style="text-align: left">
                            <br />
                <br />
                &nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton24" runat="server" Height="131px" Width="134px" />
                            <asp:ImageButton ID="ImageButton25" runat="server" Height="131px" Width="134px" />
                            <asp:ImageButton ID="ImageButton26" runat="server" Height="131px" Width="134px" />
                            <asp:ImageButton ID="ImageButton27" runat="server" Height="131px" Width="134px" />
                            <asp:ImageButton ID="ImageButton28" runat="server" Height="131px" Width="134px" />
                <br />
                <br />
                            &nbsp;&nbsp;
                            </strong>
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style4" PostBackUrl="~/chocalate_gallery.aspx" Text="Order Now" />
                            <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="border: thick groove #FFFFFF">
                            <br />
                            <asp:Label ID="Label6" runat="server" CssClass="lablecss" Text="Specials In Snacks"></asp:Label>
                            <strong style="text-align: left">
                            <br />
                <br />
                <asp:ImageButton ID="ImageButton30" runat="server" Height="131px" Width="134px" />
                <asp:ImageButton ID="ImageButton31" runat="server" Height="131px" Width="134px" />
                            <asp:ImageButton ID="ImageButton32" runat="server" Height="131px" Width="134px" />
                            <asp:ImageButton ID="ImageButton33" runat="server" Height="131px" Width="134px" />
                            <asp:ImageButton ID="ImageButton34" runat="server" Height="131px" Width="134px" />
                <br />
                <br />
                            </strong>
                            <asp:Button ID="Button5" runat="server" CssClass="auto-style4" PostBackUrl="~/snacks_gallery.aspx" Text="Order Know" />
                            <br />
                        </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        </table>
                            <br />
                            <br />
                            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/three.PNG" 
                                onclick="ImageButton5_Click" Width="1629px" Height="311px" ImageAlign="Middle" />
    <br />
    <br />
                            </strong>

    </div>

</asp:Content>

