using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSiteProject
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["KategoriID"];

            if (Page.IsPostBack == false)  //Anlamı: sayfayı yeniden yükleme
            {
                SqlCommand komut = new SqlCommand("Select * from Kategori where KategoriID=@p1", baglan.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TxtKategoriAd.Text = oku[1].ToString(); //veritabanında KategoriAd alanı 1. sırada olduğu için
                    TxtAdet.Text = oku[2].ToString();
                }
                baglan.baglanti().Close();
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Kategori Set KategoriAd=@ad, KategoriAdet=@adet where KategoriID=@kId", baglan.baglanti());
            komut.Parameters.AddWithValue("@ad", TxtKategoriAd.Text);
            komut.Parameters.AddWithValue("@adet", TxtAdet.Text);
            komut.Parameters.AddWithValue("@kId", id);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();

            Response.Write("<script> alert('Başarıyla Güncellendi.') </script>");

        }
    }
}