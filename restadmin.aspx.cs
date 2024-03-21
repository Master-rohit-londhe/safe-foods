using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class restadmin : System.Web.UI.Page
{
    string cs;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string fp = FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath("~/images/" + fp));
        ImageButton6.ImageUrl = "~/images/" + fp;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label8.Text = "";
        cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        SqlCommand cmd = new SqlCommand("Insert into restproduct(product_name,product_img,price,catagory,stock,specification)values(@unm,@upwd,@um,@uc,@cty,@sp)", cn);
        cmd.Parameters.AddWithValue("@unm", TextBox1.Text);
        cmd.Parameters.AddWithValue("@upwd", ImageButton6.ImageUrl);
        cmd.Parameters.AddWithValue("@um", TextBox2.Text);
        cmd.Parameters.AddWithValue("@uc", TextBox3.Text);
        cmd.Parameters.AddWithValue("@cty", TextBox4.Text);
        cmd.Parameters.AddWithValue("@sp", TextBox5.Text);
        cmd.ExecuteNonQuery();
        Label8.Visible = true;
        Label8.Text = "Product Added Successfully";
        cn.Close();
    }
}