﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userregistrationreport.aspx.cs" Inherits="datewiseorder1" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

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
<div style=" height: 1000px; background-color:White; background-image: url('images/bg1.jpg');" 
        align="center">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
        Font-Size="8pt" Height="800px" InteractiveDeviceInfos="(Collection)" 
        WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="800px" 
        CssClass="report">
        <LocalReport ReportPath="userregister.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetData" 
        TypeName="order1TableAdapters.user_registrationTableAdapter">
    </asp:ObjectDataSource>
    </div>
</asp:Content>

