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
    public partial class PackagesAdd : System.Web.UI.Page
    {
        //we define the sql path way
        string conf_connect = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                if(FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string ImageName = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/" + ImageName));
                    lblImage.Text = ImageName.ToString();
                }
                else
                {
                    lblImage.Text = "Please take jpeg, jpg or png image!";
                }
            }
            else
            {
                lblImage.Text = "Please choose an image!";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(conf_connect);
            connection.Open();
            SqlCommand command = new SqlCommand("insert into tblTourPackage(Name, Price, Time, Location, Image, Details) values (@Name, @Price, @Time, @Location, @Image, @Details)", connection);
            command.Parameters.AddWithValue("@Name", txtname.Text.ToString());
            command.Parameters.AddWithValue("@Price", Convert.ToInt32(txtprice.Text.ToString()));
            command.Parameters.AddWithValue("@Time", Convert.ToInt32(txttime.Text.ToString()));
            command.Parameters.AddWithValue("@Location", txtlocation.Text.ToString());
            command.Parameters.AddWithValue("@Image", lblImage.Text.ToString());
            command.Parameters.AddWithValue("@Details", txtdetail.Text.ToString());
            command.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("PackagesAdd.aspx");
        }

    }
}