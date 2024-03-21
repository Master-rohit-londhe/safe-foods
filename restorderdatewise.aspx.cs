using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;
using System.Configuration;

public partial class restorderdatewise : System.Web.UI.Page
{
    string cs;
    protected void Page_Load(object sender, EventArgs e)
    {
        cs = cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
        ReportViewer rpt = ReportViewer1;
        DataTable dt = new DataTable();
        SqlConnection cn = new SqlConnection(cs);

        SqlCommand cmd = new SqlCommand("select * from placeorderrest where o_date=@a  ", cn);
        cmd.Parameters.AddWithValue("@a", TextBox1.Text);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        rpt.Reset();

        ReportDataSource rds = new ReportDataSource("DataSet1", dt);
        rpt.LocalReport.DataSources.Add(rds);
        rpt.LocalReport.ReportPath = "restorderdatewise.rdlc";
        ReportParameter[] rptparam = { new ReportParameter("ReportParameter1", TextBox1.Text) };
        rpt.LocalReport.SetParameters(rptparam);
        rpt.LocalReport.Refresh();
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
       
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}