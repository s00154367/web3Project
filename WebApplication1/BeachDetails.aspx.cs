﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    
    public partial class BeachDetails : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        { 
            if (Request.QueryString["BeachID"] != null)
            {
                string beachID = Request.QueryString["BeachID"];
            }
        }
    }
}