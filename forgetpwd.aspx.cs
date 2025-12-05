using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Configuration;

public partial class forgetpwd : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataTable dt;
    OleDbDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["jew"].ConnectionString.ToString();
        con = new OleDbConnection(x);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
  con.Open();
        OleDbCommand cmd = new OleDbCommand("select * from registration where uname='" + user.Text + "'", con);
        OleDbDataReader dr = cmd.ExecuteReader();
        if (user.Text == "" || npass.Text == "" || cpass.Text == "")
        {

            Response.Write("<script>alert('Error :- Please enter value...')</script>");
        }
        else
        {
            if (dr.Read())
            {
                if (npass.Text == cpass.Text)
                {
                    String x = WebConfigurationManager.ConnectionStrings["jew"].ConnectionString.ToString();
                    OleDbConnection c = new OleDbConnection(x);
                    c.Open();
                    OleDbCommand cmd1 = new OleDbCommand("Update registration set pass='" + npass.Text + "' , cpass='" + npass.Text + "'    where uname='" + user.Text + "'", c);
                    cmd1.ExecuteNonQuery();
                    Response.Redirect("login.aspx");

                }
                else
                {

                    Response.Write("<script>alert('Error :- Password not changed...')</script>");
                }
            }
            else
            {

                Response.Write("<script>alert('Error :- Username is incorrect...')</script>");
            }
        }
    
    }
}