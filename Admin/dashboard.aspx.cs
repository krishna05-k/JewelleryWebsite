using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Configuration;
public partial class Admin_dashboard : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Application["price"] = TextBox1.Text;
        TextBox1.Text = "";

        Response.Redirect("~/Admin/mng_product.aspx");

      
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}