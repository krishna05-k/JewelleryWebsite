using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class order_status : System.Web.UI.Page
{
   OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != null)
        {
            String x1 = WebConfigurationManager.ConnectionStrings["jew"].ConnectionString.ToString();
            con = new OleDbConnection(x1);

            con.Open();
            String ss = "select * from billl where uname='" + Session["uid"].ToString() + "'";
            OleDbDataAdapter da = new OleDbDataAdapter(ss, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Label1.Text = dt.Rows[0][4].ToString();
            Label3.Text = dt.Rows[0][5].ToString();
            Label2.Text = dt.Rows[0][6].ToString();
            con.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("bill.aspx");
    }
}