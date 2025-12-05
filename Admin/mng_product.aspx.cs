using System;
using System.Collections;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.OleDb;
using System.Data;
using System.Web.Configuration;
public partial class Admin_mng_product : System.Web.UI.Page
{
    OleDbConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["price"] != null)
        {
            String x = WebConfigurationManager.ConnectionStrings["jew"].ConnectionString.ToString();
            con = new OleDbConnection(x);
            con.Open();
            string a = "";
            string b = "";
            string c = Application["price"].ToString();
            string d = "";
            OleDbCommand cmd = new OleDbCommand("select id,weightt,wages from product", con);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                a = ds.Tables[0].Rows[i].ItemArray[0].ToString();
                b = ds.Tables[0].Rows[i].ItemArray[1].ToString();
                d = ds.Tables[0].Rows[i].ItemArray[2].ToString();
                double total = Convert.ToDouble(b) * Convert.ToDouble(c);
                double waa = Convert.ToDouble(d) * Convert.ToDouble(b);
                double ans = total + waa;
                cmd = new OleDbCommand("update product set price='" + ans + "' where id=" + a + "", con);
                cmd.ExecuteNonQuery();
            }
            con.Close();
        }
        else 
        {
            Response.Redirect("~/Admin/dashboard.aspx");
        }
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}