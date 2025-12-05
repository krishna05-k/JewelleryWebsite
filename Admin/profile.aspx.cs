using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class Admin_profile : System.Web.UI.Page
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
        cn.Open();

        String g;
        String cmd = "Select * from registration where role='" +"Admin" + "'";
        OleDbCommand cmd1 = new OleDbCommand(cmd, cn);
        OleDbDataAdapter da = new OleDbDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            Label2.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            Label3.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
            Label4.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            Label5.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();

        }
      
        String ss = "select * from registration where role='" + "Admin" + "'";
        OleDbDataAdapter daa = new OleDbDataAdapter(ss, cn);
        DataTable dt = new DataTable();
        daa.Fill(dt);
        lllll.Text = dt.Rows[0][1].ToString();
        Label7.Text = dt.Rows[0][1].ToString();
        Label8.Text = dt.Rows[0][1].ToString(); 
        cn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Congratulation..! Your Password Has Been Successfully Changed....!')</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Congratulation..! Your Password Has Been Successfully Changed....!')</script>");
   
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
    }
}