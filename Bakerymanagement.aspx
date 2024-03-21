<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bakerymanagement.aspx.cs" Inherits="Bakerymanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .lablecss
        {
          font-family:Georgia;
          font-size:x-large;
          border-style:solid;
          border: 2px groove white;
          padding: 10px;
          border-radius: 100px;
          background-color:chocolate;

         
        }
        .buttoncss
        {
          background-color:maroon;
          font-family:Georgia;
          font-size:large;
          border-style:solid;
          border: 2px groove white;
          padding: 10px;
          border-radius: 8px;
          background-color:whitesmoke;

    }
        .auto-style2 {
            width: 56%;
            height: 205px;
        }
        
        .auto-style3 {
            text-align: center;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style=" height: 1220px; background-color: #CCFFFF; background-image: url('images/bg1.jpg');">

    <br />
    <br />
    <table class="auto-style2" align="center" style="border: thick groove #FFFFFF; background-color: #FFFFFF; background-image: url('images/bg1.jpg')">
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" Text="ADD Product" CssClass="buttoncss" PostBackUrl="~/bakeryadmin.aspx" />
            </td>
            <td class="auto-style3">
                <asp:Button ID="Button2" runat="server" Text="Delete Product" CssClass="buttoncss" PostBackUrl="~/bakerydelete.aspx" />
            </td>
            <td class="auto-style3">
                <asp:Button ID="Button3" runat="server" Text="Update  Product" CssClass="buttoncss" PostBackUrl="~/bakeryupdate.aspx" />
            </td>
        </tr>
        </table>

</div>
</asp:Content>

