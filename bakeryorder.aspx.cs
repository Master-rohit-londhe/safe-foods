using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class bakeryorder : System.Web.UI.Page
{
    string cs;
    static int av;
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
            TextBox10.Text = ds.Tables[0].Rows[0][5].ToString();


            cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            TextBox6.Text = Session["usernm"].ToString();
            TextBox7.Text = Session["usermobile"].ToString();

        }
    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("select address from cityaddress where cityid="+DropDownList1.SelectedValue+"", cn);
        SqlDataAdapter adpt = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adpt.Fill(ds);
        int n = ds.Tables[0].Rows.Count;
        int i = 0;
        DropDownList2.Items.Clear();
        while(i<n)
        {
            DropDownList2.Items.Add(ds.Tables[0].Rows[i][0].ToString());
            i++;
        }
    }

    

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    void UpdateQty()
    {

        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        SqlCommand cmd = new SqlCommand("Select * from bakeryproduct where product_id='" + TextBox8.Text + "'", cn);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            av = int.Parse(dr.GetValue(5).ToString());
        }
        cmd.Dispose();
        cn.Close();

        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn1 = new SqlConnection(cs);
        cn1.Open();

        SqlCommand cmd1 = new SqlCommand("update bakeryproduct set up_stock=@aqt where product_id='" + TextBox8.Text + "'", cn1);
        int stock = av - int.Parse(TextBox3.Text);
        cmd1.Parameters.AddWithValue("@aqt", stock);

        cmd1.ExecuteNonQuery();
        Label8.Text = "Record Updated Successfully";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string qty = TextBox3.Text;
        Session["quantity"] = qty;
        string amt = TextBox9.Text;
        Session["amount"] = amt;


        Label8.Text = "";
        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(cs);
        cn.Open();
        SqlCommand cmd = new SqlCommand("Insert into placeorder(user_name,contact,product_name,pro_img,price,qty,amt,city,uad,o_date)values(@un,@co,@pn,@pi,@pr,@qt,@am,@ci,@ad,@da)", cn);
        cmd.Parameters.AddWithValue("@un", TextBox6.Text);
        cmd.Parameters.AddWithValue("@co", TextBox7.Text);
        cmd.Parameters.AddWithValue("@pn", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pi", Image1.ImageUrl);
        cmd.Parameters.AddWithValue("@pr", TextBox2.Text);
        cmd.Parameters.AddWithValue("@qt", TextBox3.Text);
        cmd.Parameters.AddWithValue("@am", TextBox9.Text);
        cmd.Parameters.AddWithValue("@ci", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@ad", DropDownList2.Text);
        cmd.Parameters.AddWithValue("@da", System.DateTime.Now.ToShortDateString());
        cmd.ExecuteNonQuery();
        cn.Close();
        Label8.Text = "Order Placed successfully...";

        UpdateQty();

        Response.Redirect("ordersussessful.aspx");

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        {
            if (int.Parse(TextBox3.Text) > int.Parse(TextBox10.Text))
            {
                Label8.Text = "Soory Too much quantity";
            }
            else
            {
                Label8.Text = "";
            }
        }





        double amount;
        amount = double.Parse(TextBox2.Text) * double.Parse(TextBox3.Text);
        TextBox9.Text = amount.ToString();
    }

    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
}