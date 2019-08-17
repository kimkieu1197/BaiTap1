using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kieukieukieubai5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string usn, pass;
            HttpCookie c1 = Request.Cookies["username"];
            HttpCookie c2 = Request.Cookies["password"];
            if (c1 != null)
            {
                usn = c1.Value.ToString();
                pass = c2.Value.ToString();
                Session.Add("username", usn);
                if (usn == "admin" && pass == "123")
                {
                    Response.Redirect("chugiai.aspx");
                }
            }
        }
        protected void btndangnhap(object sender, EventArgs e)
        {
            string usn = txttendangnhap.Value;
            string pass = txtmatkhau.Value;
            Application["username"] = usn;
            Application["password"] = pass;
            if (usn == "admin" && pass == "123")
            {
                Session.Add("username", usn);
                Session.Add("password", pass);
                if (chkLuu.Checked)
                {
                    HttpCookie c1 = new HttpCookie("username", usn);
                    HttpCookie c2 = new HttpCookie("password", pass);
                    DateTime d = DateTime.Now;
                    TimeSpan ts = new TimeSpan(0, 1, 0, 0);
                    c1.Expires = d.Add(ts);
                    c2.Expires = d.Add(ts);
                    Response.Cookies.Add(c1);
                    Response.Cookies.Add(c2);
                }
                Response.Redirect("chugiai.aspx");
            }
        }
    }
}