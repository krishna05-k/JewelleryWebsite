using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class Admin_MasterPage2 : System.Web.UI.MasterPage
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        String x1 = WebConfigurationManager.ConnectionStrings["jew"].ConnectionString.ToString();
        con = new OleDbConnection(x1);

        con.Open();
        String ss = "select * from registration where role='" + "Admin" + "'";
        OleDbDataAdapter da = new OleDbDataAdapter(ss, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        lllll.Text = dt.Rows[0][1].ToString();
        con.Close();
    }
}
