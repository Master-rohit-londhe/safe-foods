using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class specialtreat : System.Web.UI.Page
{
    static Int32 bookingid;
    static String startdate;
    static String enddate;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.SelectedDate = DateTime.Now.Date;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        startdate = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList1.Text;
        enddate = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList2.Text;
        //Response.Write(startdate);
        findAvailableTable();
        RadioButtonList1.Visible = true;

    }
    private void findAvailableTable()
    {

        String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        String myquery = "select DISTINCT tableno from booking where ((dtstart between '" + startdate + "' and '" + enddate + "' ) or (dtend between '" + startdate + "' and '" + enddate + "' ))";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            //RadioButtonList1.Items.Clear();
            Label10.Text = "Available Tables are Given Below";
            foreach (DataRow dr in ds.Tables[0].Rows)
            {


                RadioButtonList1.Items.Remove(RadioButtonList1.Items.FindByValue(dr["tableno"].ToString()));

            }
            if (RadioButtonList1.Items.Count == 0)
            {
                Label10.Text = "No Table Available to Book";
            }

        }
        else
        {
            Label10.Text = "Available Tables are Given Below";

        }
        con.Close();
    }
    public void GenerateBookingID()
    {
        String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select bookingid from booking";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        scon.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
            bookingid = 50001;

        }
        else
        {



            String mycon1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection scon1 = new SqlConnection(mycon1);
            String myquery1 = "select max(bookingid) from booking";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);


            bookingid = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());

            bookingid = bookingid + 1;
            scon1.Close();
        }

    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        GenerateBookingID();
        String updatepass = "insert into booking(bookingid,tableno,customername,totalperson,dtstart,dtend) values(" + bookingid + ",'" + RadioButtonList1.SelectedItem.Text + "','" + TextBox1.Text + "'," + TextBox2.Text + ",'" + startdate + "','" + enddate + "')";
        String mycon1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection s = new SqlConnection(mycon1);
        s.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = updatepass;
        cmd1.Connection = s;
        cmd1.ExecuteNonQuery();
        Label3.Text = "Booking ID " + bookingid + RadioButtonList1.SelectedItem.Text + " Has Been Booked From " + startdate + " to " + enddate;

    }
}