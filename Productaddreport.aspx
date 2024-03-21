<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Productaddreport.aspx.cs" Inherits="Bakeryorderreport" %><%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

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
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" CssClass="rbutton"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Search Report" CssClass="rbutton" />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Calendar ID="Calendar1" runat="server" 
                    onselectionchanged="Calendar1_SelectionChanged" CssClass="report"></asp:Calendar>
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                    Font-Size="8pt" Height="1000px" InteractiveDeviceInfos="(Collection)" 
                    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1000px" 
                    CssClass="report">
                    <LocalReport ReportPath="Report.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    SelectMethod="GetData" 
                    TypeName="bakeryorderTableAdapters.placeorderTableAdapter">
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="GetData" 
                    TypeName="bakerycatagoryTableAdapters.bakeryproductTableAdapter">
                </asp:ObjectDataSource>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
    </table>
</asp:Content>

