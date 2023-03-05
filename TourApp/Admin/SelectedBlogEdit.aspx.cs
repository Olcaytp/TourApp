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
    public partial class SelectedBlogEdit : System.Web.UI.Page
    {
        //we define the sql path way
        string conf_connect = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;
        DateTime today = DateTime.Now;

        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Enabled = false;
            labelDate.Text = today.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(conf_connect);
            connection.Open();
            SqlCommand command = new SqlCommand("update tblBlog set Header = @Header, Summary = @Summary, CategoryId = @CategoryId, Image = @Image, Details = @Details, Date = @Date where id = @id", connection);
            command.Parameters.AddWithValue("@Header", txtheader.Text.ToString());
            command.Parameters.AddWithValue("@Summary", txtsummary.Text.ToString());
            command.Parameters.AddWithValue("@CategoryId", DropDownList1.SelectedValue);
            command.Parameters.AddWithValue("@Image", lblImage.Text.ToString());
            command.Parameters.AddWithValue("@Details", txtdetail.Text.ToString());
            command.Parameters.AddWithValue("@Date", today);
            command.Parameters.AddWithValue("@id", Request.QueryString["id"]);
            command.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("BlogEdit.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
                SqlConnection connection = new SqlConnection(conf_connect);
                connection.Open();
                SqlCommand command = new SqlCommand("select * from tblBlog where id = @id", connection);
                command.Parameters.AddWithValue("@id", Request.QueryString["id"]);
                SqlDataReader read = command.ExecuteReader();
                DataTable table = new DataTable();
                table.Load(read);
                txtheader.Text = table.Rows[0]["Header"].ToString();
                txtsummary.Text = table.Rows[0]["Summary"].ToString();
                DropDownList1.Text = table.Rows[0]["CategoryId"].ToString();
                lblImage.Text = table.Rows[0]["Image"].ToString();
                txtdetail.Text = table.Rows[0]["Details"].ToString();
                labelDate.Text = table.Rows[0]["Date"].ToString();
                connection.Close();
                Button2.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string ImageName = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/blog" + ImageName));
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