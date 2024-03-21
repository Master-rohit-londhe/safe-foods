using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["usernm"].ToString();
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {


    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

    }
}
