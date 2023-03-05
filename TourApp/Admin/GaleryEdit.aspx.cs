using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TourApp.Admin
{
    public partial class GaleryEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string ImageName = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/galeri" + ImageName));
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