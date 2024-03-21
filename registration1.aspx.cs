using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class registration1 : System.Web.UI.Page
{
    string cs;
    string gender;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
       
        string gender = string.Empty;
        if (RadioButton1.Checked)
        {
            gender = "Female";
        }
        if (RadioButton2.Checked)
        {
            gender = "Male";
        }
        Label7.Text = "";
        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        SqlCommand cmd = new SqlCommand("Insert into user_registration(username,email,city,gender,password,mobile)values(@unm,@upwd,@um,@uc,@cty,@mobile)", cn);
        cmd.Parameters.AddWithValue("@unm", TextBox1.Text);
        cmd.Parameters.AddWithValue("@upwd", TextBox6.Text);
        cmd.Parameters.AddWithValue("@um", TextBox7.Text);
        cmd.Parameters.AddWithValue("@uc", gender);
        cmd.Parameters.AddWithValue("@cty", TextBox8.Text);
        cmd.Parameters.AddWithValue("@mobile", TextBox9.Text);
        cmd.ExecuteNonQuery();
        Label7.Text = "Login Id Created Successfully";
        cn.Close();
    }
}