using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace TourApp.Admin
{
    public partial class Settings : System.Web.UI.Page
    {
        //we define the sql path way
        string conf_connect = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Enabled = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(conf_connect);
            connection.Open();
            SqlCommand command = new SqlCommand("select * from tblSettings", connection);
            SqlDataReader read = command.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(read);
            txtMail.Text = table.Rows[0]["Mail"].ToString();
            txtPhone.Text = table.Rows[0]["Phone"].ToString();
            txtAddress.Text = table.Rows[0]["Address"].ToString();
            txtTwitter.Text = table.Rows[0]["Twitter"].ToString();
            txtYoutube.Text = table.Rows[0]["Youtube"].ToString();
            txtInstagram.Text = table.Rows[0]["Instagram"].ToString();
            txtFacebook.Text = table.Rows[0]["Facebook"].ToString();
            lblLLogo.Text = table.Rows[0]["Logo"].ToString();
            txtdetail.Text = table.Rows[0]["SiteDetails"].ToString();
            Label1.Text = table.Rows[0]["id"].ToString();
            connection.Close();
            Button1.Enabled = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(conf_connect);
            connection.Open();
            SqlCommand command = new SqlCommand("update tblSettings set Mail = @Mail, Phone = @Phone, Address = @Address, Twitter = @Twitter, Youtube = @Youtube, Instagram = @Instagram, Facebook = @Facebook, Logo = @Logo, SiteDetails = @SiteDetails where id = @id", connection);
            command.Parameters.AddWithValue("@Mail", txtMail.Text.ToString());
            command.Parameters.AddWithValue("@Phone", txtPhone.Text.ToString());
            command.Parameters.AddWithValue("@Address", txtAddress.Text.ToString());
            command.Parameters.AddWithValue("@Twitter", txtTwitter.Text.ToString());
            command.Parameters.AddWithValue("@Youtube", txtYoutube.Text.ToString());
            command.Parameters.AddWithValue("@Instagram", txtInstagram.Text.ToString());
            command.Parameters.AddWithValue("@Facebook", txtFacebook.Text.ToString());
            command.Parameters.AddWithValue("@Logo", lblLLogo.Text.ToString());
            command.Parameters.AddWithValue("@SiteDetails", txtdetail.Text.ToString());
            command.Parameters.AddWithValue("@id", Label1.Text.ToString());
            command.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("Settings.aspx");
        }
    }
}