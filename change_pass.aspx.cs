using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class change_pass : System.Web.UI.Page
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
   /*     if (user.Text == "")
        {
            Response.Write("<script>alert('Please! Enter Enter Password....!')</script>");
        }
        else
        {
            da = new OleDbDataAdapter("select uname,pass from registration where uname='" + user.Text + "'", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                npass.Visible = true;
                cpass.Visible = true;
                Button2.Visible = true;

            }
            else
            {
                Response.Write("<script>alert('Please! Enter Current Password....!')</script>");

            }
        }*/
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
        if (npass.Text == "")
        {
            Response.Write("<script>alert('Please! Enter New Password....!')</script>");
        }
        else if (cpass.Text == "")
        {
            Response.Write("<script>alert('Please! Retype Your Password....!')</script>");
        }
    
        else
        {
            if (npass.Text.Equals(cpass.Text))
            {
                con.Open();
                /*da.UpdateCommand = new OleDbCommand("update registration set pass='" + npass.Text + "' where uname ='" + user.Text + "'", con);
                da.UpdateCommand.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Congratulation..! Your Password Has Been Successfully Changed....!')</script>");*/
                OleDbCommand cmd1 = new OleDbCommand("update registration set pass='" + npass.Text + "',cpass='"+cpass.Text+"'  where uname ='" + user.Text + "'", con);
                cmd1.Connection = con;
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Congratulation..! Your Password Has Been Successfully Changed....!')</script>");
            //    Response.Redirect("homee.aspx");
              

            }
            else
            {
                Response.Write("<script>alert('Please! Type Same Password....!')</script>");
            }
        }
        
    }
}