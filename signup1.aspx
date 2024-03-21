<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style=" height: 620px; background-color: #CCFFFF; background-image: url('images/bg1.jpg');">
<br />
      <div style="border: 10px groove #FFFFFF; background-color: #FFFFFF; height: 528px; width: 613px; 
          margin-left:25%; background-repeat: repeat; background-image: url('images/rb.jpeg');" >
          
          
          <table class="style1">
              <tr>
                  <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <br />
                      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                      <asp:Label ID="Label1" runat="server" BackColor="Maroon" BorderColor="White" 
                          BorderStyle="Solid" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" 
                          style="text-align: right" Text=" User Login"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="Button1" runat="server" BackColor="#993333" BorderColor="White" 
                          BorderStyle="Groove" Font-Bold="True" Font-Names="Georgia" Font-Size="Large" 
                          ForeColor="White" Height="40px" Text="User Name" Width="360px" />
                  </td>
              </tr>
              <tr>
                  <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" 
                          BackColor="#993333" BorderColor="White" BorderStyle="Groove" Font-Size="Large" 
                          ForeColor="White" Height="36px" Width="357px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="Button2" runat="server" BackColor="#993333" BorderColor="White" 
                          BorderStyle="Groove" Font-Bold="True" Font-Names="Georgia" Font-Size="Large" 
                          ForeColor="White" Height="40px" Text="Password" Width="360px" />
                  </td>
              </tr>
              <tr>
                  <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" 
                          BackColor="#993333" BorderColor="White" BorderStyle="Groove" Font-Size="Large" 
                          ForeColor="White" Height="36px" Width="356px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style10">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                          ForeColor="White" Text="." BackColor="Red"></asp:Label>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="Button3" runat="server" BackColor="#0000CC" 
                          BorderColor="#000066" BorderStyle="Groove" Font-Bold="True" 
                          Font-Names="Georgia" Font-Size="Large" ForeColor="White" Height="40px" 
                          Text="Sign Up" Width="360px" onclick="Button3_Click" />
                  </td>
              </tr>
              <tr>
                  <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                          ForeColor="White" Text="For New User....."></asp:Label>
                      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="Button4" runat="server" BackColor="#0000CC" 
                          BorderColor="#000066" BorderStyle="Groove" Font-Bold="True" 
                          Font-Names="Georgia" Font-Size="Large" ForeColor="White" Height="40px" 
                          Text="User Registration" Width="360px" 
                          PostBackUrl="~/registration1.aspx" />
                  </td>
              </tr>
          </table>
          
          
       </div>
</div>
    </form>
</body>
</html>
