<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addtocart1.aspx.cs" Inherits="addtocart1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
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
        .auto-style2 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style=" height: 1220px; background-color: #CCFFFF; background-image: url('images/bg1.jpg');" class="auto-style2">
        <div class="auto-style2">
        <br />
    <asp:Label ID="Label3" runat="server" Text="Wellcome........" CssClass="lablecss"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label" CssClass="lablecss"></asp:Label>
        <br />
        <br />
        </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="lablecss" DataMember="                      " Height="344px" Width="1787px" >
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
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <div class="auto-style2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
        <asp:Label ID="Label4" runat="server" CssClass="lablecss" Enabled="False" Text="Enter ID"></asp:Label>
            <br />
            <br />
        <br />
    <asp:TextBox ID="TextBox1" runat="server" CssClass="buttoncss" Height="43px" Width="301px"></asp:TextBox>
            <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Remove Product" CssClass="buttoncss" />
        </div>
     </div>
</asp:Content>

