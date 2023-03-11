using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSiteProject
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekID"];

            if (Page.IsPostBack == false)  //Anlamı: sayfayı yeniden yükleme
            {
                SqlCommand komut = new SqlCommand("Select * from Yemek where YemekID=@p1", baglan.baglanti());
                komut.Parameters.AddWithValue("@p1",id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TxtAd.Text = oku[1].ToString(); //veritabanında KategoriAd alanı 1. sırada olduğu için
                    TxtMalzeme.Text = oku[2].ToString();
                    TxtTarif.Text = oku[3].ToString();
                }
                baglan.baglanti().Close();
            }
        }
    }
}