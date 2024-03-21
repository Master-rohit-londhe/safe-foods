using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    string cs;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       
        cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        SqlCommand cmd = new SqlCommand("Insert into login(username,password)values(@unm,@upwd)", cn);
        cmd.Parameters.AddWithValue("@unm", TextBox1.Text);
        cmd.Parameters.AddWithValue("@upwd", TextBox2.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        //Response.Redirect("home.aspx");
        SqlDataAdapter da = new SqlDataAdapter("Select * from user_registration where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label2.Text = "Sorry User Details are wrong";
        }
        else
        {
            Session["usernm"] = ds.Tables[0].Rows[0][1].ToString();
            Session["userid"] = ds.Tables[0].Rows[0][0].ToString();
            Session["usermobile"] = ds.Tables[0].Rows[0][7].ToString();
            // Label2.Text = ds.Tables[0].Rows[0][6].ToString();
            if (ds.Tables[0].Rows[0][6].ToString()== "admin")
                Response.Redirect("adminhome.aspx");
            else
                Response.Redirect("home.aspx");
        }
       
    }
}