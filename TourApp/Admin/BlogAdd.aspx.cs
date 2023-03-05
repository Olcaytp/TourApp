using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TourApp.Admin
{
    public partial class BlogAdd : System.Web.UI.Page
    {
        //we define the sql path way
        string conf_connect = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;
        DateTime today = DateTime.Now;

        protected void Page_Load(object sender, EventArgs e)
        {
            labelDate.Text = today.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(conf_connect);
            connection.Open();
            SqlCommand command = new SqlCommand("insert into tblBlog(Header, Summary, CategoryId, Image, Details, Date) values (@Header, @Summary, @CategoryId, @Image, @Details, @Date)", connection);
            command.Parameters.AddWithValue("@Header", txtheader.Text.ToString());
            command.Parameters.AddWithValue("@Summary", txtsummary.Text.ToString());
            command.Parameters.AddWithValue("@CategoryId", DropDownList1.SelectedValue);
            command.Parameters.AddWithValue("@Image", lblImage.Text.ToString());
            command.Parameters.AddWithValue("@Details", txtdetail.Text.ToString());
            command.Parameters.AddWithValue("@Date", today);
            command.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("PackagesAdd.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string ImageName = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/blog/" + ImageName));
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
    }
}