﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace kieukieukieubai5
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["sessioncount"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {

            Application["sessioncount"] = (Int32)Application["sessioncount"] + 1;
        }
    }
}