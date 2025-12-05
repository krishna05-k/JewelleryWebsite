using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Web.Configuration;
public partial class view_product : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter da;
    DataSet ds = new DataSet();
    DataTable dt;
    OleDbDataReader dr;
    int id = 0;
    string id1;
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["jew"].ConnectionString.ToString();
        con = new OleDbConnection(x);
        Label1.Visible = false;
        stock.Visible = false;
        if (Session["uid"] != null)
        {

            int id = int.Parse(Request.QueryString["id"].ToString());

            con.Open();
            //  String sel = "select * from product where id='" + id + "'";
            String sel = "select * from product where id=" + id + "";
            da = new OleDbDataAdapter(sel, con);
            da.Fill(ds, "product");
            dt = ds.Tables[0];
            pid.Text = dt.Rows[0][0].ToString();
            pnm.Text = dt.Rows[0][2].ToString();
            whh.Text = dt.Rows[0][3].ToString();
            img.ImageUrl = dt.Rows[0][6].ToString();
            price.Text = dt.Rows[0][5].ToString();
            stock.Text = dt.Rows[0][7].ToString();

            con.Close();

        }
        else
        {
            Response.Redirect("login.aspx");

        }
        con.Open();
        cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT max(crid)  FROM addtocart ";
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            id = dr[0].ToString().Length == 0 ? 0 : int.Parse(dr[0].ToString());

        }
        id = id + 1;
        id1 = id.ToString();
        //   Session["pid"] = id1;
        dr.Dispose();
        con.Close();

    }
    protected void b1_Click(object sender, EventArgs e)
    {
        int qty1, sto, ans = 0;
        qty1 = Convert.ToInt32(qty.Text);

        sto = Convert.ToInt32(stock.Text.ToString());
        ans = sto - qty1;

        if (sto < qty1)
        {
            stock.Visible = true;
            stock.Text = "Out Of Stock !!";
            //   Label1.Visible = true;
            //   Label1.Text = "Out Of Stock !!";
        }
        else
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("login.aspx");

            }
            else
            {
                con.Open();
                String unm = Session["uid"].ToString();
                String odate = DateTime.Now.ToString();
                int id = int.Parse(Request.QueryString["id"].ToString());
                Int32 total = Convert.ToInt32(qty.Text.ToString()) * Convert.ToInt32(price.Text.ToString());
                //   string query = "insert into ADDTOCART1 values('" + unm + "'," + Label2.Text + ",'" + Label4.Text + "','" + Image1.ImageUrl + "'," + Label6.Text + ",'" + Label8.Text + "','" + TextBox1.Text + "',,"+TextBox2.Text+"," + total + ")";
                string query = "insert into addtocart values(" + id1 + ",'" + unm + "','" + pid.Text + "','" + pnm.Text + "','" + img.ImageUrl + "','" + price.Text + "','" + qty.Text + "','" + total + "')";
                //cmd = new SqlCommand(query,con);
                da = new OleDbDataAdapter(query, con);
                da.Fill(ds);
                // cmd = new OleDbCommand("update product set stock='" + ans + "'where id=" + id + "", con);
                // cmd.ExecuteNonQuery();
                cmd = new OleDbCommand("update product set stock='" + ans + "'where id=" + id + "", con);
                cmd.ExecuteNonQuery();
                //cmd.ExecuteNonQuery();
                Response.Redirect("cart.aspx");
                con.Close();

            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int qty1, sto, ans = 0;
        qty1 = Convert.ToInt32(qty.Text);

        sto = Convert.ToInt32(stock.Text.ToString());
        ans = sto - qty1;

        if (sto < qty1)
        {
            stock.Visible = true;
            stock.Text = "Out Of Stock !!";
            /*  Label1.Visible = true;
              Label1.Text = "Out Of Stock !!";*/
        }
        else
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("login.aspx");

            }
            else
            {
                con.Open();
                String unm = Session["uid"].ToString();
                String odate = DateTime.Now.ToString();
                int id = int.Parse(Request.QueryString["id"].ToString());
                Int32 total = Convert.ToInt32(qty.Text.ToString()) * Convert.ToInt32(price.Text.ToString());
                //   string query = "insert into ADDTOCART1 values('" + unm + "'," + Label2.Text + ",'" + Label4.Text + "','" + Image1.ImageUrl + "'," + Label6.Text + ",'" + Label8.Text + "','" + TextBox1.Text + "',,"+TextBox2.Text+"," + total + ")";
                string query = "insert into addtocart values(" + id1 + ",'" + unm + "','" + pid.Text + "','" + pnm.Text + "','" + img.ImageUrl + "','" + price.Text + "','" + qty.Text + "','" + total + "')";
                //cmd = new SqlCommand(query,con);
                da = new OleDbDataAdapter(query, con);
                da.Fill(ds);
                // cmd = new OleDbCommand("update product set stock='" + ans + "'where id=" + id + "", con);
                // cmd.ExecuteNonQuery();
                cmd = new OleDbCommand("update product set stock='" + ans + "'where id=" + id + "", con);
                cmd.ExecuteNonQuery();
                //cmd.ExecuteNonQuery();
                Response.Redirect("checkout.aspx?aid=" + id1);
                con.Close();

            }

        }
       
    }
}