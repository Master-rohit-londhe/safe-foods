using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class feedback : System.Web.UI.Page
{
    string cs;
    protected void Page_Load(object sender, EventArgs e)
    {
        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        TextBox1.Text = Session["usernm"].ToString();
        TextBox3.Text = Session["usermobile"].ToString();
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Label7.Text = "";
        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        SqlCommand cmd = new SqlCommand("Insert into ufeedback(username,contact,city,feedback)values(@unm,@um,@uc,@cty)", cn);
        cmd.Parameters.AddWithValue("@unm", TextBox1.Text);
        cmd.Parameters.AddWithValue("@um", TextBox3.Text);
        cmd.Parameters.AddWithValue("@uc", TextBox4.Text);
        cmd.Parameters.AddWithValue("@cty", TextBox5.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        Label7.Text = "Feedback Stored Successfully";
    }
}