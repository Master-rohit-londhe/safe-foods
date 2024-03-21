<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="birthday.aspx.cs" Inherits="birthday" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .lablecss
        {
          font-family:Georgia;
          font-size:large;
          border-style:solid;
          border: 2px groove white;
          padding: 10px;
          border-radius: 25px;
          background-color:chocolate;

         
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
            width: 94%;
            height: 1174px;
        }
        .auto-style3 {
            height: 387px;
            font-size: xx-large;
            text-align: left;
        }
        .auto-style4 {
            color: #66FFFF;
        }
        .auto-style5 {
            font-size: larger;
        }
        .auto-style6 {
            text-decoration: underline;
        }
        .auto-style7 {
            height: 400px;
            color: #66FFFF;
            font-size: xx-small;
            text-align: left;
            border: thick groove #FFFFFF;
            background-image: url('images/adminhome4.jpg');
        }
        .auto-style10 {
            color: #FFFFFF;
            font-size: larger;
        }
        .auto-style11 {
            text-align: left;
        }
        .auto-style13 {
            color: #FFFFFF;
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style14 {
            text-decoration: underline;
            color: #FFFFFF;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style=" height:1420px; background-color: #CCFFFF; background-image: url('images/bg1.jpg');" align="center">

     <table class="auto-style2">
         <tr>
             <td class="auto-style3" style="border: thick groove #FF0000; background-image: url('images/bakeryadmin3.jpeg')"><strong><span class="auto-style4"><span class="auto-style5">Arrange Your Birthday Cake.......</span></span><br />
                 <br />
                 <asp:ImageButton ID="ImageButton6" runat="server" BackColor="Red" Height="153px" ImageUrl="~/images/bakeryadmin3.jpeg" OnClick="ImageButton6_Click" Width="168px" />
&nbsp;<asp:ImageButton ID="ImageButton7" runat="server" BorderColor="Red" Height="153px" ImageUrl="~/images/g1.jpg" Width="168px" />
&nbsp;<asp:ImageButton ID="ImageButton8" runat="server" BorderColor="Red" Height="153px" ImageUrl="~/images/g12.jpg" Width="168px" />
&nbsp;<asp:ImageButton ID="ImageButton9" runat="server" BorderColor="Black" Height="153px" ImageUrl="~/images/g13.jpg" Width="168px" />
&nbsp;<asp:ImageButton ID="ImageButton10" runat="server" BorderColor="Red" Height="153px" ImageUrl="~/images/g15.jpg" Width="168px" />
&nbsp;<asp:ImageButton ID="ImageButton11" runat="server" BorderColor="Red" Height="153px" ImageUrl="~/images/g11.jpg" Width="168px" />
&nbsp;<asp:ImageButton ID="ImageButton12" runat="server" BorderColor="Red" Height="153px" ImageUrl="~/images/g2.jpg" Width="168px" />
                 ..........<br />
                 <br />
                 <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style14" ForeColor="White">Click Here To Book......</asp:HyperLink>
                 <span class="auto-style6">&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
         </tr>
         <tr>
             <td class="auto-style7" style="background-image: url('images/bg1.jpg'); border: thick groove #FFFFFF">
                 <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                 <h1 class="auto-style11" style="font-size: xx-large">Book Your Birthday Party Venue....</h1>
                 <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:ImageButton ID="ImageButton13" runat="server" BorderColor="White" BorderStyle="Solid" Height="151px" ImageUrl="~/images/adminhome4.jpg" Width="159px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <br />
                 <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                 <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style13" Font-Size="X-Large" NavigateUrl="~/specialtreat.aspx">Click Here To  Book...</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
         </tr>
         <tr>
             <td class="auto-style10" style="background-image: url('images/backgif.gif'); border: thick groove #00FFFF">
                 <h1 class="auto-style11"><strong>Get More Intresting Birthday Party Decoration Idea.......</strong></h1>
                 <p class="auto-style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:ImageButton ID="ImageButton14" runat="server" BorderColor="White" BorderStyle="Solid" Height="154px" ImageUrl="~/images/bb1.jpg" Width="177px" />
                 </p>
                 <p class="auto-style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                     <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style9" NavigateUrl="https://in.pinterest.com/broddd21/simple-birthday-decorations/">Click To Get Idea......</asp:HyperLink>
                     </strong>
                 </p>
             </td>
         </tr>
         <tr>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
         </tr>
     </table>

 </div>
</asp:Content>

