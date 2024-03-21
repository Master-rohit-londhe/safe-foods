using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    string cs;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
         Label1.Text = "";
         cs = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";
         SqlConnection cn = new SqlConnection(cs);
         cn.Open();
         SqlCommand cmd = new SqlCommand("Insert into login(username,password)values(@pnm,@pc)", cn);
         cmd.Parameters.AddWithValue("@pnm",TextBox1.Text);
         cmd.Parameters.AddWithValue("@pc",TextBox2.Text);
         cmd.ExecuteNonQuery();
         Label1.Text = "Record Added Successfully";
         cn.Close();
    }
}