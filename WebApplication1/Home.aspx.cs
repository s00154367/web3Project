using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void fig1_Click(object sender, System.EventArgs e)
        {
            Response.Redirect("Info.aspx?BeachID=0");
        }
        private void fig2_Click(object sender, System.EventArgs e)
        {
            Response.Redirect("Info.aspx?BeachID=1");
        }
        private void fig3_Click(object sender, System.EventArgs e)
        {
            Response.Redirect("Info.aspx?BeachID=2");
        }
    }
}