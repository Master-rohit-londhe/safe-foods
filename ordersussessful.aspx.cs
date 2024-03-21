using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ordersussessful : System.Web.UI.Page
{
    String cs;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(cs);
            cn.Open();
            SqlDataAdapter adpr = new SqlDataAdapter("Select * from bakeryproduct where product_id ='" + Session["demo"].ToString() + "'", cn);
            DataSet ds = new DataSet();
            adpr.Fill(ds);
            TextBox3.Text = ds.Tables[0].Rows[0][1].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0][3].ToString();

            cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            TextBox1.Text = Session["usernm"].ToString();
            TextBox2.Text = Session["usermobile"].ToString();

            TextBox5.Text = Session["quantity"].ToString();
            TextBox6.Text = Session["amount"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
       
    }
}