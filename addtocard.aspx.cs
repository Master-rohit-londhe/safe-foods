using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class addtocard : System.Web.UI.Page
{
    string cs;
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
            TextBox8.Text = ds.Tables[0].Rows[0][0].ToString();
            TextBox1.Text = ds.Tables[0].Rows[0][1].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0][2].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0][3].ToString();

            cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            TextBox6.Text = Session["usernm"].ToString();
            TextBox7.Text = Session["usermobile"].ToString();
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        
        Label8.Text = "";
        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        SqlCommand cmd = new SqlCommand("Insert into cart(pro_id,user_name,contact,product_name,pro_img,price,qty,amt)values(@por,@un,@co,@pn,@pi,@pr,@qt,@am)", cn);
        cmd.Parameters.AddWithValue("@por", TextBox8.Text);
        cmd.Parameters.AddWithValue("@un", TextBox6.Text);
        cmd.Parameters.AddWithValue("@co", TextBox7.Text);
        cmd.Parameters.AddWithValue("@pn", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pi", Image1.ImageUrl);
        cmd.Parameters.AddWithValue("@pr", TextBox2.Text);
        cmd.Parameters.AddWithValue("@qt", TextBox3.Text);
        cmd.Parameters.AddWithValue("@am", TextBox9.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        Label8.Text = "Product Added successfully...";


        Session["username"] = TextBox6.Text;
        Response.Redirect("addtocart1.aspx");
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        double amount;
        amount = double.Parse(TextBox2.Text) * double.Parse(TextBox3.Text);
        TextBox9.Text = amount.ToString();
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {

        Session["username"] = TextBox6.Text;
        Response.Redirect("addtocart1.aspx");

    }

    protected void Button8_Click(object sender, EventArgs e)
    {

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
       
       
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
}