using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class Admin_register : System.Web.UI.Page
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

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        var rr = "Admin";
        var gen = "";
        if (RadioButton1.Checked == true)
        {
            gen = "male";
        }
        else
        {
            gen = "female";
        }
        cn.Open();
        OleDbCommand cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update registration set fname='" + TextBox1.Text + "', lname='" + TextBox2.Text + "', gender='" + gen + "', mobile='" + TextBox4.Text + "', email='" + TextBox5.Text + "', add1='" + TextBox6.Text + "', uname='" + TextBox7.Text + "', pass='" + TextBox9.Text + "',cpass='" + TextBox8.Text + "'where role='" + rr+ "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Product Inserted Successfully !!')</script>");
        Response.Redirect("~/Admin/mng_product.aspx");
        cn.Close();
    }
}