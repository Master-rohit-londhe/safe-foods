<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="restorderdatewise.aspx.cs" Inherits="restorderdatewise" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
  .rbutton
  {
      background-color:white;
      border:solid 2px black;
      font-size:larger;
  }
  .report
  {
      background-color:White;
      border:solid 2px black;
     
   }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="background-image: url('images/bg1.jpg')">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label2" runat="server" Text="Select Date" CssClass="rbutton"></asp:Label>
                &nbsp;
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" CssClass="rbutton" 
                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Search Report" CssClass="rbutton" />
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Calendar ID="Calendar1" runat="server" 
                    onselectionchanged="Calendar1_SelectionChanged" CssClass="report"></asp:Calendar>
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="1000px" 
                    Width="1000px" CssClass="report">
                </rsweb:ReportViewer>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
    </table>
</asp:Content>

