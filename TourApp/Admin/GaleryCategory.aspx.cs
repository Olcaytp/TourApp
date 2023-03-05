using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace TourApp.Admin
{
    public partial class GaleryCategory : System.Web.UI.Page
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
            SqlCommand command = new SqlCommand("insert into tblGaleryCategory(Name) values (@Name)", connection);
            command.Parameters.AddWithValue("@Name", txtname.Text.ToString());
            command.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("BlogKategori.aspx");
        }
    }
}