
using System;
using System.Collections;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.OleDb;
using System.Data;
using System.Web.Configuration;

public partial class Admin_product : System.Web.UI.Page
{
    OleDbConnection con;
    //SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["db"]);
    OleDbCommand cmd = new OleDbCommand();
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbDataReader dr;
    int id = 0;
    string id1;

    protected void Page_Load(object sender, EventArgs e)
    {
     
        String x = WebConfigurationManager.ConnectionStrings["jew"].ConnectionString.ToString();
        con = new OleDbConnection(x);
        // TextBox2.Focus();
        con.Open();
        string sel = "select * from category";
        da = new OleDbDataAdapter(sel, con);
        da.Fill(ds, "category");
        dt = ds.Tables["category"];
        if (!IsPostBack)
        {
            d1.DataSource = dt;
            d1.DataTextField = "catnm";
            d1.DataBind();

        }

        //auto generate Sub category id


        cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT max(id)  FROM product ";
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            id = dr[0].ToString().Length == 0 ? 0 : int.Parse(dr[0].ToString());

        }
        id = id + 1;
        id1 = id.ToString();
        Session["pid"] = id1;
        dr.Dispose();
        con.Close();

        //SqlDataSource1.SelectCommand = "SELECT * FROM [Sub_category1]";*00*/

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Application["price"] != null)
        {
            con.Open();
            double pri, weight, tot = 0;
            double ans, wages;
            double fans = 0;
            pri = Convert.ToDouble(Application["price"].ToString());
            weight = Convert.ToDouble(wh.Text);
            wages = Convert.ToDouble(wa.Text);
            tot = pri * weight;
            ans = wages * weight;
            fans = tot + ans;

            string filename = "";

            if (FileUpload1.HasFile)
            {
                string fname = FileUpload1.PostedFile.FileName;
                filename = fname.Substring(fname.LastIndexOf("\\") + 1);
            }

            string filenm = "~/images/" + FileUpload1.FileName;
            cmd = new OleDbCommand("insert into product values(" + id1 + ",'" + d1.Text + "','" + pnm.Text + "','" + wh.Text + "','" + wa.Text + "','" + fans + "','" + filenm + "','" + qty.Text + "')", con);
            cmd.ExecuteNonQuery();
            FileUpload1.SaveAs(MapPath("~/images/" + filename));
            Response.Write("<script>alert('Product Inserted Successfully !!')</script>");

            pnm.Text = "";
            //TextBox3.Text = "";
            //    price.Text = "";
            wh.Text = "";
            con.Close();
            Response.Redirect("~/Admin/mng_product.aspx");
        }
        else
        {
            Response.Redirect("~/Admin/dashboard.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}