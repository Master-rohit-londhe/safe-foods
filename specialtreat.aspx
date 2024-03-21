<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="specialtreat.aspx.cs" Inherits="specialtreat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 54%;
            height: 887px;
        }
        .auto-style3 {
            width: 295px;
            text-align: left;
        }
        .auto-style4 {
            width: 295px;
            height: 29px;
            text-align: left;
        }
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
        .auto-style5 {
            width: 295px;
            height: 39px;
            text-align: left;
        }
        .auto-style6 {
            height: 39px;
            text-align: left;
            width: 1203px;
        }
        .auto-style7 {
            text-align: left;
            width: 1203px;
        }
        .auto-style8 {
            height: 29px;
            text-align: left;
            width: 1203px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style=" height:1420px; background-color: #CCFFFF; background-image: url('images/bg1.jpg');" align="center">
         <br />
         <br />
         <br />
         <br />
    <asp:Label ID="Label2" runat="server" Text="Book You Table For Special Party" BackColor="#CC0000" BorderColor="White" CssClass="lablecss"></asp:Label>
         <br />
         <br />
    <br />
   
    <table class="auto-style2" style="background-image: url('images/bg1.jpg'); border: thick groove #FFFFFF">
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Customer Name" CssClass="lablecss"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="buttoncss"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label5" runat="server" Text="No.Of Persons" CssClass="lablecss"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="buttoncss"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="Select Date" CssClass="lablecss"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Calendar ID="Calendar1" runat="server" CssClass="buttoncss"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Text="Select Time"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label8" runat="server" Text="Start Time" CssClass="lablecss"></asp:Label>
                &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="lablecss">
                    <asp:ListItem>10:00AM</asp:ListItem>
                    <asp:ListItem>11:00AM</asp:ListItem>
                    <asp:ListItem>12:00AM</asp:ListItem>
                    <asp:ListItem>01:00PM</asp:ListItem>
                    <asp:ListItem>02:00PM</asp:ListItem>
                    <asp:ListItem>03:00PM</asp:ListItem>
                    <asp:ListItem>04:00PM</asp:ListItem>
                    <asp:ListItem>05:00PM</asp:ListItem>
                    <asp:ListItem>06:00PM</asp:ListItem>
                    <asp:ListItem>07:00PM</asp:ListItem>
                    <asp:ListItem>08:00PM</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Text="Close Time" CssClass="lablecss"></asp:Label>
                &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="lablecss">
                    <asp:ListItem>11:00AM</asp:ListItem>
                    <asp:ListItem>12:00AM</asp:ListItem>
                    <asp:ListItem>01:00PM</asp:ListItem>
                    <asp:ListItem>02:00PM</asp:ListItem>
                    <asp:ListItem>03:00PM</asp:ListItem>
                    <asp:ListItem>04:00PM</asp:ListItem>
                    <asp:ListItem>05:00PM</asp:ListItem>
                    <asp:ListItem>06:00PM</asp:ListItem>
                    <asp:ListItem>07:00PM</asp:ListItem>
                    <asp:ListItem>08:00PM</asp:ListItem>
                    <asp:ListItem>09:00PM</asp:ListItem>
                </asp:DropDownList>
&nbsp;
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="White" OnClick="Button1_Click" Text="Check Availability" CssClass="buttoncss" BorderColor="Red" BorderStyle="Solid" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">
                <br />
&nbsp;<asp:Label ID="Label10" runat="server" CssClass="lablecss"></asp:Label>
                <br />
                <br />
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Visible="False" CssClass="lablecss">
                    <asp:ListItem>Table No:1</asp:ListItem>
                    <asp:ListItem>Table No:2</asp:ListItem>
                    <asp:ListItem>Table No:3</asp:ListItem>
                    <asp:ListItem>Table No:4</asp:ListItem>
                    <asp:ListItem>Table No:5</asp:ListItem>
                    <asp:ListItem>Table No:6</asp:ListItem>
                    <asp:ListItem>Table No:7</asp:ListItem>
                    <asp:ListItem>Table No:8</asp:ListItem>
                    <asp:ListItem>Table No:9</asp:ListItem>
                    <asp:ListItem>Table No:10</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="Button2" runat="server" BackColor="White" OnClick="Button2_Click" Text="Book Now" CssClass="buttoncss" BorderColor="Red" BorderStyle="Solid" />
            </td>
        </tr>
    </table>

    <br />
    <asp:Label ID="Label3" runat="server" Text="Confirm Message" CssClass="lablecss" BackColor="White" BorderColor="Red" BorderStyle="Solid"></asp:Label>
         <br />
         <br />
    <br />
    <asp:Label ID="Label11" runat="server" CssClass="lablecss" Visible="False"></asp:Label>
        </div>
</asp:Content>

