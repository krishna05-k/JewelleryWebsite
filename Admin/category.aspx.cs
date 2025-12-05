using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class category : System.Web.UI.Page
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


        //auto generate Sub category id


        cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT max(cid)  FROM category ";
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            id = dr[0].ToString().Length == 0 ? 0 : int.Parse(dr[0].ToString());

        }
        id = id + 1;
        id1 = id.ToString();
        Session["cid"] = id1;
        dr.Dispose();
        con.Close();

        //SqlDataSource1.SelectCommand = "SELECT * FROM [Sub_category1]";*00*/

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new OleDbCommand("insert into category values('" + id1 + "','" + TextBox1.Text + "')", con);
        cmd.ExecuteNonQuery();

        Response.Write("<script>alert('Product Inserted Successfully !!')</script>");
        con.Close();
         Response.Redirect("~/Admin/manage_category.aspx");
     
    }
}