using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace TourApp
{
    public partial class LoginPage : System.Web.UI.Page
    {
        //we define the sql path way
        string conf_connect = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(conf_connect);
            connection.Open();
            SqlCommand command = new SqlCommand("select * from tblUser where UserName = @UserName and Password = @Password", connection);
            command.Parameters.AddWithValue("@UserName", txtUserName.Text.ToString());
            command.Parameters.AddWithValue("@Password", txtPassword.Text.ToString());
            SqlDataReader read = command.ExecuteReader();
            if (read.Read())
            {
                Session["User"] = read["UserName"].ToString();
                Response.Redirect("~/Admin/Default.aspx");
            }
            else
                Label1.Text = "User name or password is incorrect!";
            read.Close();
            connection.Close();
            connection.Dispose();
        }
    }
}