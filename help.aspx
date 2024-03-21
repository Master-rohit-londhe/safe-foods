<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="help.aspx.cs" Inherits="help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 1823px;
            height: 2168px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style2" style="background-image: url('images/bg1.jpg')">

        <br />
        <asp:Image ID="Image1" runat="server" BorderColor="Red" BorderStyle="Groove" BorderWidth="5px" Height="1038px" ImageUrl="~/images/sitemap.PNG" Width="1262px" />
        <br />
        <asp:Image ID="Image2" runat="server" BorderColor="Red" BorderStyle="Groove" BorderWidth="5px" Height="1038px" ImageUrl="~/images/guideline.PNG" Width="1262px" />

    </div>
</asp:Content>

