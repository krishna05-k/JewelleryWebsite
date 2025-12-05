using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class cart : System.Web.UI.Page
{
    OleDbConnection con;
    String tot = "";
    OleDbCommand cmd;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != null)
        {

            String x = WebConfigurationManager.ConnectionStrings["jew"].ConnectionString.ToString();
            con = new OleDbConnection(x);
            con.Open();
            String unm1 = Session["uid"].ToString();
            String str = "select sum(total) from addtocart where uname='" + unm1 + "'";
            OleDbDataAdapter da = new OleDbDataAdapter(str, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Label1.Text = "<h3>" + dt.Rows[0][0].ToString() + "</h3>";
            Label2.Text = "<h3>" + dt.Rows[0][0].ToString() + "</h3>";
            tot = dt.Rows[0][0].ToString();
            con.Close();
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("checkout.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("homee.aspx");
    }
}