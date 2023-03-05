using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TourApp.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
                Response.Redirect("~/LoginPage.aspx");
            else
            {
                lblUser.Text = Session["User"].ToString();
                lblUser2.Text = Session["User"].ToString();
                lblUser3.Text = Session["User"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("User");
            Session.Abandon();
            Response.Redirect("~/LoginPage.aspx");
        }
    }
}