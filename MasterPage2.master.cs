using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Visible = false;
        Label1.Visible = false;
        if (Session["uid"] != null)
        {
            Label1.Visible = true;
            Label1.Text = "Welcome " + Session["uid"].ToString();
            Button1.Visible = true;
            HyperLink1.Visible = false;
            HyperLink2.Visible = false;
            HyperLink3.Visible = true;
        }
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
