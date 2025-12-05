using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class Admin_changppp : System.Web.UI.Page
{
    OleDbConnection cn;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataTable dt;
    OleDbDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["jew"].ConnectionString.ToString();
        cn = new OleDbConnection(x);
      
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        cn.Open();
        var rr = "Admin";
        if (TextBox9.Text.Equals(TextBox8.Text))
        {
            OleDbCommand cmd = cn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update registration set pass='" + TextBox9.Text + "',cpass='" + TextBox8.Text + "'where role='" + rr + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Product Inserted Successfully !!')</script>");
            Response.Redirect("~/Admin/dashboard.aspx");
            cn.Close();
        }
    }
}