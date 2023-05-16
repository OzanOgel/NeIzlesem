using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeIzlesem
{
    public partial class Index : System.Web.UI.Page
    {
        DataFunctions df = new DataFunctions();
        protected void Page_Load(object sender, EventArgs e)
        {
            rp_ımdbtop5.DataSource = df.ListMoviesImdbTop5();
            rp_ımdbtop5.DataBind();
            rp_ımdbneizlesemtop5.DataSource = df.ListMoviesNeIzlesemTop5();
            rp_ımdbneizlesemtop5.DataBind();
        }
    }
}