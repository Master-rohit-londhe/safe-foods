using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class bakeryproductreport : System.Web.UI.Page
{
    string cs;
    protected void Page_Load(object sender, EventArgs e)
    {
        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ReportViewer rpt = ReportViewer1;
        DataTable dt = new DataTable();
        SqlConnection cn = new SqlConnection(cs);

        SqlCommand cmd = new SqlCommand("select * from bakeryproduct where catagory=@cate  ", cn);
        cmd.Parameters.AddWithValue("@cate",DropDownList1.Text);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        rpt.Reset();

        ReportDataSource rds = new ReportDataSource("DataSet1", dt);
        rpt.LocalReport.DataSources.Add(rds);
        rpt.LocalReport.ReportPath = "bakeryproductreport.rdlc";
        ReportParameter[] rptparam = { new ReportParameter("ReportParameter1", DropDownList1.Text) };
        rpt.LocalReport.SetParameters(rptparam);
        rpt.LocalReport.Refresh();
    }
}