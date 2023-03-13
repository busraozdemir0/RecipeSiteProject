using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace RecipeSiteProject
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MesajID"];
            SqlCommand komut = new SqlCommand("Select * from Mesaj where MesajID=@mId",baglan.baglanti());
            komut.Parameters.AddWithValue("@mId",id);
            SqlDataReader oku=komut.ExecuteReader();    
            while(oku.Read())
            {
                TxtGonderen.Text= oku[1].ToString();
                TxtMail.Text= oku[3].ToString();
                TxtKonu.Text= oku[2].ToString();
                Txticerik.Text= oku[4].ToString();
            }
            baglan.baglanti().Close();
        }
    }
}