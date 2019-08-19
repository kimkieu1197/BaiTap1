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
     
        }

        protected void btnXoaAll_Click(object sender, EventArgs e)
        {
         }

        protected void ckbChonAll_CheckedChanged(object sender, EventArgs e)
        {
     
        }

        protected void data_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}