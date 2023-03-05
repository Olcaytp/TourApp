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
    public partial class About : System.Web.UI.Page
    {
        //we define the sql path way
        string conf_connect = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Enabled = false;
        }
        string id;

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(conf_connect);
            connection.Open();
            SqlCommand command = new SqlCommand("select * from tblAbout", connection);
            SqlDataReader read = command.ExecuteReader();
            DataTable table = new DataTable();
            table.Load(read);
            txtHeader.Text = table.Rows[0]["Header"].ToString();
            txtSummary.Text = table.Rows[0]["Summary"].ToString();
            txtdetail.Text = table.Rows[0]["Details"].ToString();
            Label1.Text = table.Rows[0]["id"].ToString();
            connection.Close();
            Button1.Enabled = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(conf_connect);
            connection.Open();
            SqlCommand command = new SqlCommand("update tblAbout set Header = @Header, Summary = @Summary, Details = @Details where id = @id", connection);
            command.Parameters.AddWithValue("@Header", txtHeader.Text.ToString());
            command.Parameters.AddWithValue("@Summary", txtSummary.Text.ToString());
            command.Parameters.AddWithValue("@Details", txtdetail.Text.ToString());
            command.Parameters.AddWithValue("@id", Label1.Text.ToString());
            command.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("About.aspx");
        }
    }
}