using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Web.Configuration;

public partial class bill : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        String x1 = WebConfigurationManager.ConnectionStrings["jew"].ConnectionString.ToString();
        con = new OleDbConnection(x1);


        if (Session["uid"] != null)
        {
            con.Open();
            String nm = Session["uid"].ToString();
            String ss = "select * from registration where uname='" + nm + "'";
            OleDbDataAdapter da = new OleDbDataAdapter(ss, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            Label2.Text = dt.Rows[0][1].ToString();
            Label3.Text = dt.Rows[0][2].ToString();





         
            String s = "select * from pro_ord where uname='" + nm + "'";
            OleDbDataAdapter daa = new OleDbDataAdapter(s, con);
            DataTable dtt = new DataTable();
            daa.Fill(dtt);
            Label1.Text = dtt.Rows[0][0].ToString();
            Label7.Text = dtt.Rows[0][9].ToString();



            String sa = "select * from billl where uname='" + nm + "'";
            OleDbDataAdapter daaa = new OleDbDataAdapter(sa, con);
            DataTable dttt = new DataTable();
            daaa.Fill(dttt);
            Label5.Text = dttt.Rows[0][1].ToString();
            Label4.Text = dttt.Rows[0][0].ToString();
            Label8.Text = dttt.Rows[0][3].ToString();
            Label11.Text = dttt.Rows[0][5].ToString();
            Label13.Text = dttt.Rows[0][6].ToString();


            String sid = Session["uid"].ToString();
            String s1 = "select * from pro_ord where status='" +"success" + "'";
          
            // SqlDataAdapter da1 = new SqlDataAdapter(s1, con);
            OleDbDataAdapter da1 = new OleDbDataAdapter(s1, con);
            DataTable dta = new DataTable();
          
          
                da1.Fill(dta);
                int tot_row = Int32.Parse(dta.Rows.Count.ToString());
                int x = 0;
                double dd = 0;
                while (x < tot_row)
                {
                    Literal2.Text = Literal2.Text + "<tr><td>" + dta.Rows[x]["pname"] + "</td><td>" + dta.Rows[x]["qty"] + "</td><td>" + dta.Rows[x]["total"] + "</td></tr>";
                    dd = dd + Convert.ToDouble(dta.Rows[x]["total"]);
                    x++;
                }
                Label6.Text = dd.ToString();
                double gstt = dd * 18 / 100;
                Label11.Text = gstt.ToString();//gst
                double gt = dd + gstt;
                Label13.Text = gt.ToString();
            
            con.Close();

        }
        else
        {
            Response.Redirect("homee.aspx");
        }
    }
}