﻿using System;
using System.Web;

namespace JewleryShop
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {

        }

        void Application_End(object sender, EventArgs e)
        {

        }

        void Application_Error(object sender, EventArgs e)
        {

        }

        void Application_BeginRequest(object sender, EventArgs e)
        {

        } 

        void Session_Start(object sender, EventArgs e)
        {

        }

        void Session_End(object sender, EventArgs e)
        {
            // The Session_End event is raised only when the sessionstate mode
            // is set to InProc in the Web.config file. If session mode is set to StateServer 
            // or SQLServer, the event is not raised.
        }
    }
}
