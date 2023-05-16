using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataModel;

namespace NeIzlesem.AdminPanel
{
    public partial class update_deleleMovies : System.Web.UI.Page
    {
        DataFunctions df = new DataFunctions();
        protected void Page_Load(object sender, EventArgs e)
        {
            lv_movies.DataSource = df.ListMovies();
            lv_movies.DataBind();
        }

        protected void lv_movies_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "remove")
            {
                df.DeleteMovies(id);
            }
            lv_movies.DataSource = df.ListMovies();
            lv_movies.DataBind();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {

        }

        
    }
}