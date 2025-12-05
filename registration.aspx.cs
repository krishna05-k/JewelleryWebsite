using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class registration : System.Web.UI.Page
{
    OleDbConnection cn;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataTable dt;
    OleDbDataReader dr;
    int id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["jew"].ConnectionString.ToString();
        cn = new OleDbConnection(x);
        cn.Open();

        cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT max(ID)  FROM registration";



        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            id = dr[0].ToString().Length == 0 ? 0 : int.Parse(dr[0].ToString());

        }
        id = id + 1;

        dr.Dispose();

        cn.Close();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*var gen = "";
            if(RadioButton1.Checked==true)
            {
                gen="male";
            }
            else if (RadioButton2.Checked == true)
            {
                gen = "female";
            }
            else
            {
                gen = "other";
            }
        cn.Open();
        cmd = new OleDbCommand("Select * From registration Where uname='" + unm.Text + "'", cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows == true)
        {
            dr.Close();
            cn.Close();

            Response.Write("<script>alert('User Name Already Exist....!')</script>");

        }
        else
        {
            dr.Close();
            String s = "insert into registration values(" + id + ",'" + fnm.Text + "','" + lnm.Text + "','" + gen + "','" + mobile.Text + "','" + email.Text + "','" + add.Text + "','" + unm.Text + "','" + pass.Text + "','" + cpass.Text + "','" + DropDownList1.Text + "')";
            cmd = new OleDbCommand(s, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("login.aspx");
            cn.Close();

        }

        cn.Close();*/

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        var gen = "";
            if(RadioButton1.Checked==true)
            {
                gen="male";
            }
            else if (RadioButton2.Checked == true)
            {
                gen = "female";
            }
            else
            {
                gen = "other";
            }
        cn.Open();
        cmd = new OleDbCommand("Select * From registration Where uname='" + unm.Text + "'", cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows == true)
        {
            dr.Close();
            cn.Close();

            Response.Write("<script>alert('User Name Already Exist....!')</script>");

        }
        else
        {
            dr.Close();
            String s = "insert into registration values(" + id + ",'" + fnm.Text + "','" + lnm.Text + "','" + gen + "','" + cno.Text + "','" + email.Text + "','" + add.Text + "','" + unm.Text + "','" + pwd.Text + "','" + cpwd.Text + "','" + DropDownList1.Text + "')";
            cmd = new OleDbCommand(s, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("login.aspx");
            cn.Close();

        }

        cn.Close();

    }
}