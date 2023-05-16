using DataModel;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeIzlesem.AdminPanel
{
    public partial class AddMovies : System.Web.UI.Page
    {
        DataFunctions df = new DataFunctions();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            Movies m = new Movies();
            m.Name = tb_name.Text;
            m.summary = textbox_full.Text;
            m.ImdbScore =Convert.ToDouble(tb_imdb.Text);
            m.score = 0;
            m.activity = true;
            if(tb_name.Text != "")
            {
                if (fu_image.HasFile)
                {
                    FileInfo fi = new FileInfo(fu_image.FileName);
                    if (fi.Extension == ".jpeg" || fi.Extension == ".png" || fi.Extension == ".jpg")
                    {
                        string ext = fi.Extension;
                        string name = Guid.NewGuid().ToString();
                        m.ImagePath = name + ext;
                        fu_image.SaveAs(Server.MapPath("~/Images/" + name + ext));
                        if (df.AddMovies(m))
                        {
                            pnl_success.Visible = true;
                            pnl_error.Visible = false;
                        }

                    }
                }
                else
                {
                    if (IsPostBack)
                    {
                        pnl_success.Visible=false;
                        pnl_error.Visible = true;
                        pnl_error.Attributes.Add("style", "animation: fadein 0.5s");
                        lbl_error.Text = "the image was not selected";
                    }
                    
                }
            }
            else
            {
                if (IsPostBack)
                {
                    pnl_success.Visible=false;
                    pnl_error.Visible = true;
                    pnl_error.Attributes.Add("style", "animation: fadein 0.5s");
                    lbl_error.Text = "the movie name cannot be empty";
                }
                    
            }
           

        }
    }
}