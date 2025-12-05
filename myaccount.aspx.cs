using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Web.Configuration;

public partial class myaccount : System.Web.UI.Page
{
        OleDbConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
          
            Panel2.Visible = false;
            Label1.Visible = false;
            Button1.Visible = false;
            Label1.Visible = false;
            if (Session["uid"] != null)
            {
                Label1.Visible = true;
                Label1.Text = "Welcome " + Session["uid"].ToString();
                Button1.Visible = true;
                HyperLink1.Visible = false;
                HyperLink2.Visible = false;
                HyperLink3.Visible = false;
                Panel1.Visible = false;
                Panel2.Visible = false;
            }
            String x = WebConfigurationManager.ConnectionStrings["jew"].ConnectionString.ToString();
            con = new OleDbConnection(x);
            if (!IsPostBack)
            {
                if (Session["uid"] != null)
                {
                    Panel1.Visible = true;
                    showdata();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                    Panel1.Visible = false;
                    Panel2.Visible = false;
                }
            }
        }
    public void showdata()
    {
        String usernm = Convert.ToString(Session["uid"]);

        string cmd = "Select * from registration where uname='" + usernm + "'";
        OleDbCommand cmd1 = new OleDbCommand(cmd, con);
        OleDbDataAdapter da = new OleDbDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            // pnllogin.Visible = false;
            Panel1.Visible = true;
            Panel2.Visible = false;
            Label4.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            Label5.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            Label6.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            Label7.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            Label8.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
            Label10.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
            Label12.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
        }

    }
   
    protected void Button4_Click(object sender, EventArgs e)
    {
        String usernm = Convert.ToString(Session["uid"]);
        Panel2.Visible = true;
        Panel1.Visible = false;
        String g;
        String cmd = "Select * from registration where uname='" + usernm + "'";
        OleDbCommand cmd1 = new OleDbCommand(cmd, con);
        OleDbDataAdapter da = new OleDbDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            TextBox1.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            g = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
            TextBox6.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
         
          

            //TextBox6.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
            if (g == "Male")
            {
                RadioButton1.Checked = true;
            }
            else
            {
                RadioButton2.Checked = true;
            }
        }
    }
  
  
    protected void Button2_Click(object sender, EventArgs e)
    {
        showdata();
        Panel1.Visible = false;
        Panel2.Visible = true;
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
        con.Open();
        OleDbCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update registration set fname='" + TextBox1.Text + "', lname='" + TextBox2.Text + "', gender='" + gen + "', mobile='" + TextBox4.Text + "', email='" + TextBox5.Text + "', add1='" + TextBox6.Text + "' where uname='" + Session["uid"].ToString()+ "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('update Successfully !!')</script>");
       
        con.Close();
        showdata();
        Panel1.Visible = true;
        Panel2.Visible = false;
      
   
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Session["uid"] = null;
        Label1.Text = "";
        HyperLink1.Visible = true;
        HyperLink2.Visible = true;
        HyperLink3.Visible = true;
        Button1.Visible = false;
    }
}