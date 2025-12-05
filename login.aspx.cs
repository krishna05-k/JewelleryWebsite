using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class login : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        String s = "select * from registration where uname='" +TextBox1.Text + "' and pass='" +TextBox2.Text + "' ";
        cmd = new OleDbCommand(s, cn);
        dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            string s1 = "select role from registration where uname='" +TextBox1.Text + "' and pass='" +TextBox2.Text + "'";
            cmd = new OleDbCommand(s1, cn);
            string a = Convert.ToString(cmd.ExecuteScalar());
            if (a == "Admin")
            {
                Session["uid"] =TextBox1.Text;
                Response.Redirect("~/Admin/dashboard.aspx");
            }
            else
            {
                Session["uid"] =TextBox1.Text;
                Response.Redirect("homee.aspx");
            }
        }
        else
        {
            Response.Write("<script>alert('Error :- Username and Password are wrong...!')</script>");
        }
    
    }
}