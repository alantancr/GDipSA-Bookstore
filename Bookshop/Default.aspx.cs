﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bookshop
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string url = HttpContext.Current.Request.Url.AbsolutePath;
            //Session["url"] = url;

            Label1.Text = HttpContext.Current.Request.Url.AbsolutePath;

        }
    }
}