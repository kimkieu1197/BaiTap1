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
    public partial class Trangquanli : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
                LoadDuLieu();
        }
        private void LoadDuLieu()
        {
            TruyVanLayDuLieu dao = new TruyVanLayDuLieu();
            data.DataSource = dao.Laydulieu("Sach_SelectAll");
            data.DataBind();
        }

        protected void btnXoaAll_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in data.Rows)
            {
                SachDAO DAO = new SachDAO();
                CheckBox ck = (CheckBox)row.FindControl("ckbChon");
                if (ck != null && ck.Checked)
                {
                    string id = row.Cells[1].Text.ToString();
                    if (DAO.XoaSach(id))
                        LoadDuLieu();
                    else
                        Response.Redirect("../Error.aspx");
                }
            }
        }

        protected void ckbChonAll_CheckedChanged(object sender, EventArgs e)
        {
            bool trangthai = false;
            if (ckbChonAll.Checked) trangthai = true;
            foreach (GridViewRow dr in data.Rows)
            {
                CheckBox chk = (CheckBox)dr.Cells[0].FindControl("ckbChon");
                chk.Checked = trangthai;
            }
        }
    }
}