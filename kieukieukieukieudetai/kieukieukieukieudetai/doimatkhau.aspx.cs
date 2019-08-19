using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace kieukieukieukieudetai
{
    public partial class doimatkhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("~/Dang-Nhap");
            }
        }

        protected void btncapnhat_Click(object sender, EventArgs e)
        {

            if (IsValid)
            {
                string NhapMKCu = txtMatKhau.Text;
                string MatKhau = txtMatKhauMoi.Text;
                string MatKhauCu;
                string email;
                string hoten;
                int level;
                GridView gr = new GridView();
                string username = Session["login"].ToString();
                TruyVanLayDuLieu truyvan = new TruyVanLayDuLieu();
                gr.DataSource = truyvan.LaydulieubyID(username, "NguoiDungByID_Select", "UserName");
                gr.DataBind();
                hoten = HttpUtility.HtmlDecode((string)gr.Rows[0].Cells[2].Text.ToString());
                MatKhauCu = HttpUtility.HtmlDecode((string)gr.Rows[0].Cells[3].Text.ToString());
                email = HttpUtility.HtmlDecode((string)gr.Rows[0].Cells[4].Text.ToString());
                level = int.Parse(gr.Rows[0].Cells[5].Text.ToString());
                NguoiDung nguoiDung = new NguoiDung
                {
                    Username = username,
                    Email = email,
                    Tennguoidung = hoten,
                    Matkhau = MatKhau,
                    Level = level
                };
                nguoidungDAO DAO = new nguoidungDAO();
                if (MatKhauCu == NhapMKCu)
                {
                    if (DAO.SuaNguoiDung(nguoiDung))
                    {
                        lblthongbao.Text = "Đổi mật khẩu thành công !";
                    }
                    else
                        lblthongbao.Text = "Có lỗi trong quá trình đổi mật khẩu.";
                }
                else
                    lblthongbao.Text = "Mật khẩu cũ không đúng.";

            }
        }
    }
}