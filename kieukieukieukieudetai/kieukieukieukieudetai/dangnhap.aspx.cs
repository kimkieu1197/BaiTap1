using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kieukieukieukieudetai
{
    public partial class dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                Response.Redirect("/");
            }
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                nguoidungDAO DAO = new nguoidungDAO();
                string TenNguoiDung = txtUserName.Text;
                string Matkhau = txtMatKhau.Text;
                if (DAO.CheckLogin(TenNguoiDung, Matkhau))
                {
                    Session["Login"] = txtUserName.Text;
                    Response.Redirect("/");
                }
                else
                {
                   lblthongbao.Text = "Tên đăng nhập hoặc mật khẩu không chính xác!";
                }
            }
        }
    }
}