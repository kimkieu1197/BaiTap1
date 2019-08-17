using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kieukieukieubai5
{
    public partial class chugiai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = (string)Application["username"];
            string password = (string)Application["password"];
            if (Session["username"] != null)
            {
                string nameserver = Server.MachineName;
                string linkserver = Server.MapPath(@"\") + "chugiai.aspx";
                Response.Write("Name server: " + nameserver + "</br>" + "Link: " + linkserver);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Application.Remove("username");
            Application.Remove("password");
            Session.Remove("username");
            HttpCookie c1 = new HttpCookie("username");
            HttpCookie c2 = new HttpCookie("password");
            c1.Expires = DateTime.Now.AddDays(-1);
            c2.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(c1);
            Response.Cookies.Add(c2);
            Response.Redirect("chugiai.aspx");
        }
    }
}