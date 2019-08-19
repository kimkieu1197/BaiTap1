using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace kieukieukieukieudetai
{
    class TruyVanLayDuLieu
    {
        private chuyennganh _chuyennganh;
        public chuyennganh Chuyennganh
        {
            get { return _chuyennganh; }
            set { _chuyennganh = value; }
        }
        private NhaXuatBan _nhaxuatban;
        public NhaXuatBan NhaXuatBan
        {
            get { return _nhaxuatban; }
            set { _nhaxuatban = value; }
        }
        internal object Laydulieu(string p)
        {
            SqlDataSource sqldata = new SqlDataSource();
            KetNoiCSDL chuoiketnoi = new KetNoiCSDL();
            sqldata.ConnectionString = chuoiketnoi.GetSetChuoiKetNoi;
            sqldata.SelectCommandType = SqlDataSourceCommandType.StoredProcedure;
           // sqldata.SelectCommand = procedue;
            return sqldata;
        }

        internal object LaydulieubyID(string username, string p1, string p2)
        {
            SqlDataSource sqldata = new SqlDataSource();
            KetNoiCSDL chuoiketnoi = new KetNoiCSDL();
            sqldata.ConnectionString = chuoiketnoi.GetSetChuoiKetNoi;
            sqldata.SelectCommandType = SqlDataSourceCommandType.StoredProcedure;
            return sqldata;
        }

       // public string procedue { get; set; }
    }
}
