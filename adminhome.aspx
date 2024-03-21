<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

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
          font-size:x-large;
          border-style:solid;
          border: 2px groove white;
          padding: 10px;
          border-radius: 8px;
          background-color:whitesmoke;

         
        }
        .auto-style4 {
            width: 1714px;
        }
        .style15
        {
            font-size: x-large;
            font-family: Georgia;
        }
        .style14
        {
            font-family: Georgia;
        }
        .style12
        {
            width: 329px;
        }
        .auto-style5 {
            width: 86%;
            height: 284px;
        }
        .auto-style6 {
            width: 265px;
            text-align: left;
        }
        .auto-style7 {
            text-align: center;
            height: 728px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style=" height: 1520px; background-color: #CCFFFF; background-image: url('images/bg1.jpg');">
     class="auto-style2">
        &nbsp;
        
        &nbsp;&nbsp;
       
        <table class="auto-style5" align="center" style="background-color: #FFFFFF; border: thick groove #FFFFFF">
        <tr>
            <td class="auto-style4">
                <asp:ImageButton ID="ImageButton6" runat="server" BorderColor="Black" 
                    BorderStyle="Groove" BorderWidth="5px" Height="572px" 
                    ImageUrl="~/images/safa2.jpg" Width="305px" />
                <asp:ImageButton ID="ImageButton7" runat="server" BorderColor="Black" 
                    BorderStyle="Groove" BorderWidth="5px" Height="573px" 
                    ImageUrl="~/images/safa1.jpg" Width="292px" />
            </td>
            <td class="auto-style6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                        <asp:Image ID="Image1" runat="server" Height="184px" ImageUrl="~/images/bakeryadmin3.jpeg" Width="188px" CssClass="lablecss" />

                                        <br />
                <br />
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Bakerymanagement.aspx" Text="Bakery Management" CssClass="buttoncss" Height="70px" />

            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                        <asp:Image ID="Image2" runat="server" Height="184px" ImageUrl="~/images/adminhome4.jpg" Width="188px" CssClass="lablecss" />

                                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" PostBackUrl="~/restmanagement.aspx" Text="Restaurant Management" CssClass="buttoncss" />

            </td>
        </tr>
    </table>
    <table class="auto-style5" align="center" style="background-color: #FFFFFF; border: thick groove #FFFFFF">
        <tr>
            <td class="auto-style7" style="background-image: url('images/bakeryadmin3.jpeg')">
             <button class="lablecss">Manage Reports</button>
                <br />
                <br />
             <asp:HyperLink ID="HyperLink1" runat="server" CssClass="lablecss" NavigateUrl="~/userregistrationreport.aspx">See userregistration Report..</asp:HyperLink>  
                <br />
                <br />
            <br />
              <asp:HyperLink ID="HyperLink2" runat="server" CssClass="lablecss" NavigateUrl="~/feedbackreport.aspx">See User Feedback Report..</asp:HyperLink>   
                <br />
                <br />
            <br />
             <asp:HyperLink ID="HyperLink3" runat="server" CssClass="lablecss" NavigateUrl="~/bakeryproductreport.aspx">See Bakery Product Report</asp:HyperLink>   
                <br />
                <br />
           <br />
              <asp:HyperLink ID="HyperLink4" runat="server" CssClass="lablecss" NavigateUrl="~/restproductreport.aspx">See Restaurant Product Report</asp:HyperLink>  
                <br />
                <br />
            <br />
             <asp:HyperLink ID="HyperLink5" runat="server" CssClass="lablecss" NavigateUrl="~/addtocartreport.aspx">See Add to Cart Report for each User</asp:HyperLink>   
                <br />
                <br />
           <br />
             <asp:HyperLink ID="HyperLink6" runat="server" CssClass="lablecss" NavigateUrl="~/productaddreport.aspx">See Product Order Report for Bakery</asp:HyperLink>    
                <br />
                <br />
            <br />
             <asp:HyperLink ID="HyperLink7" runat="server" CssClass="lablecss" NavigateUrl="~/restorderdatewise.aspx">See Product Order Report for Restaurent</asp:HyperLink>  
                <br />
            </td>
        </tr>
    </table>


</asp:Content>

