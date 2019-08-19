using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kieukieukieukieudetai
{
    public partial class Dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                Response.Redirect("/");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string HoTen = txtHoTen.Text;
                string UserName = txtTenDangNhap.Text;
                string MatKhau = txtMatKhau.Text;
                string Email = txtEmail.Text;
                NguoiDung nguoiDung = new NguoiDung
                {
                    Tennguoidung = HoTen,
                    Matkhau = MatKhau,
                    Email = Email,
                    Username = UserName
                };
                nguoidungDAO DAO = new nguoidungDAO();
                if (DAO.ThemNguoiDung(nguoiDung))
                {
                    lblthongbao.Text= "Đăng ký thành công.";
                }
                else
                    lblthongbao.Text = "Tên người dùng đã có trong hệ thống, bạn vui lòng chọn tên khác.";
            }
        }
    }
}