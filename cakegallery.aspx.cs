using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cakegallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        var Button = (Control)sender;
        Button ans = (Button)Button.NamingContainer.FindControl("Button4");
        Session["demo"] = ans.Text;
        Response.Redirect("bakeryorder.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        var Button = (Control)sender;
        Button ans = (Button)Button.NamingContainer.FindControl("Button4");
        Session["demo"] = ans.Text;
        Response.Redirect("addtocard.aspx");
    }
}