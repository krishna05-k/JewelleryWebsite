using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Web.Configuration;
public partial class checkout : System.Web.UI.Page
{

    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader dr;
      int id = 101;
      int bid = 1;
    protected void Page_Load(object sender, EventArgs e)
    {



        String x1 = WebConfigurationManager.ConnectionStrings["jew"].ConnectionString.ToString();
        con = new OleDbConnection(x1);
        if (!IsPostBack)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            lll.Visible = false;
            lnn.Visible = false;
            lpp.Visible = false;
        }

        con.Open();
        detail();
                    cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT max(oid)  FROM  pro_ord";
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        id = dr[0].ToString().Length == 0 ? 0 : int.Parse(dr[0].ToString());

                    }
                    id = id + 1;

                    cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT max(bid)  FROM billl ";
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        bid = dr[0].ToString().Length == 0 ? 0 : int.Parse(dr[0].ToString());

                    }
                    bid = bid + 1;


                    dr.Dispose();

        if (Session["uid"] != null)
        {
          
            if (Request.QueryString["aid"] == null)
            {
                if (!IsPostBack)
                {
                   
                    String sid = Session["uid"].ToString();

                    String s1 = "select * from addtocart where uname='" + sid + "'";
                    // SqlDataAdapter da1 = new SqlDataAdapter(s1, con);
                    OleDbDataAdapter da1 = new OleDbDataAdapter(s1, con);
                    DataTable dt = new DataTable();
                    da1.Fill(dt);

                    int tot_row = Int32.Parse(dt.Rows.Count.ToString());
                    int x = 0;
                    double dd = 0;
                    while (x < tot_row)
                    {
                        Literal2.Text = Literal2.Text + "<tr><td>" + dt.Rows[x]["pname"] + "</td><td>" + dt.Rows[x]["qty"] + "</td><td>" + dt.Rows[x]["total"] + "</td></tr>";
                        dd = dd + Convert.ToDouble(dt.Rows[x]["total"]);
                        x++;
                    }
                    sub.Text = dd.ToString();
                    Label2.Text = dd.ToString();
                    double gstt = dd * 18/ 100;
                    labb.Text = gstt.ToString();//gst
                    double gt = dd + gstt;
                    Label2.Text = gt.ToString();//grandtotal
                }
            }
            else
            {
              

                String s1 = "select * from addtocart where crid=" + Request.QueryString["aid"] + "";
                // SqlDataAdapter da1 = new SqlDataAdapter(s1, con);
                OleDbDataAdapter da1 = new OleDbDataAdapter(s1, con);
                DataTable dt = new DataTable();
                da1.Fill(dt);

                int tot_row = Int32.Parse(dt.Rows.Count.ToString());
                int x = 0;
                double dd = 0;
                while (x < tot_row)
                {
                    Literal2.Text = Literal2.Text + "<tr><td>" + dt.Rows[x]["pname"] + "</td><td>" + dt.Rows[x]["qty"] + "</td><td>" + dt.Rows[x]["total"] + "</td></tr>";
                    dd = dd + Convert.ToDouble(dt.Rows[x]["total"]);

                    x++;
                }
                sub.Text = dd.ToString();
           
                double gstt = dd * 18 / 100;
                labb.Text = gstt.ToString();//gst
                double gt = dd + gstt;
                Label2.Text = gt.ToString();//grandtotal

            }
        }
        else
        {
            Response.Redirect("homee.aspx");
        }
     

        con.Close();
    }
    protected void RadioButton_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            lll.Visible = true;
            lll.Text = "Not use";
            lnn.Visible = false;
            lpp.Visible = false;
            Response.Write("<script>alert('Please select cash on delivery')</script>");
        }
        else if (RadioButton2.Checked)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
            lnn.Visible = true;
            lnn.Text = "Not use";
            lpp.Visible = false;
            lll.Visible=false;
            Response.Write("<script>alert('Please select cash on delivery')</script>");
        }
        else if (RadioButton3.Checked)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            lpp.Visible = false;
            lnn.Visible = false;
            lll.Visible = false;
        }
        else if (RadioButton4.Checked)
        {
          
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
            lpp.Visible = true;
            lpp.Text = "not use";
            lll.Visible = false;
            lnn.Visible = false;
            Response.Write("<script>alert('Please select cash on delivery')</script>");
        }


    }

    protected void detail()
    {
        if (Session["uid"] != null)
        {
          
            String nm = Session["uid"].ToString();
            String ss = "select * from registration where uname='" + nm + "'";
            OleDbDataAdapter da = new OleDbDataAdapter(ss, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            TextBox1.Text = dt.Rows[0][1].ToString();
            TextBox2.Text = dt.Rows[0][2].ToString();
            TextBox3.Text = dt.Rows[0][7].ToString();
            TextBox4.Text = dt.Rows[0][5].ToString();
            TextBox5.Text = dt.Rows[0][6].ToString();
         
        }
        else
        {
            Response.Redirect("addtocart.aspx");
        }
    }
    protected void print()
    {
        con.Open();
        OleDbDataAdapter da = new OleDbDataAdapter("select * from order", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        String n = dt.Rows[0][0].ToString();
        Response.Write("<script>alert('OrderId :')</script>");
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton3.Checked)
        {
            con.Open();

            String sss = Session["uid"].ToString();
            if (sss != null)
            {

                if (Request.QueryString["aid"] == null)
                {
                    String dat = DateTime.Now.ToShortDateString().ToString();
                    String s1 = "select * from addtocart where uname='" + sss + "'";
                    OleDbDataAdapter da1 = new OleDbDataAdapter(s1, con);
                    DataTable dt = new DataTable();
                    da1.Fill(dt);

                    int tot_row = Int32.Parse(dt.Rows.Count.ToString());
                    int x = 0;
                    while (x < tot_row)
                    {

                        cmd = new OleDbCommand("insert into pro_ord values(" + id.ToString() + ",'" + sss + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + dt.Rows[x]["id"].ToString() + "','" + dt.Rows[x]["pname"].ToString() + "','" + dt.Rows[x]["qty"] + "','" + dt.Rows[x]["price"].ToString() + "','" + dt.Rows[x]["total"] + "','" + dat + "','" + "pending" + "')", con);

                        cmd.ExecuteNonQuery();
                        x++;
                        id++;
                    }
                    cmd = new OleDbCommand("delete from addtocart where uname='" + sss + "'", con);
                    cmd.ExecuteNonQuery();

                    cmd = new OleDbCommand("insert into billl values('" + bid.ToString() + "','" + sss + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + sub.Text + "','" + labb.Text + "','" + Label2.Text + "','" + dat + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("thankyou.aspx");

                }
                else
                {
                    String dat = DateTime.Now.ToShortDateString().ToString();
                    String s1 = "select * from addtocart where crid=" + Request.QueryString["aid"] + "";
                    OleDbDataAdapter da1 = new OleDbDataAdapter(s1, con);
                    DataTable dt = new DataTable();
                    da1.Fill(dt);

                    int tot_row = Int32.Parse(dt.Rows.Count.ToString());
                    int x = 0;
                    while (x < tot_row)
                    {
                        cmd = new OleDbCommand("insert into pro_ord values(" + id.ToString() + ",'" + sss + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + dt.Rows[x]["id"].ToString() + "','" + dt.Rows[x]["pname"].ToString() + "','" + dt.Rows[x]["qty"] + "','" + dt.Rows[x]["price"].ToString() + "','" + dt.Rows[x]["total"] + "','" + dat + "','" + "pending" + "')", con);
                        cmd.ExecuteNonQuery();
                        x++;
                        id++;
                    }

                    cmd = new OleDbCommand("insert into billl values('" + bid.ToString() + "','" + sss + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + sub.Text + "','" + labb.Text + "','" + Label2.Text + "','" + dat + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("thankyou.aspx");
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }
        else if(RadioButton1.Checked)
        {
            Response.Write("<script>alert('Please select cash on delivery')</script>");
        }
        else if (RadioButton2.Checked)
        {
            loo.Text = "Please Select Cash On Delivery";
        }
        else if (RadioButton4.Checked)
        {
            loo.Text = "Please Select Cash On Delivery";
        }
    }

    }
