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

            //Kategori listesi
            if (Page.IsPostBack == false)
            {
                SqlCommand komutKategori = new SqlCommand("Select * from Kategori", baglan.baglanti());
                SqlDataReader oku2 = komutKategori.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriID";
                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Yemek Set YemekAd=@ad, YemekMalzeme=@malzeme, YemekTarif=@tarif, KategoriID=@kId where YemekID=@yId",baglan.baglanti());
            komut.Parameters.AddWithValue("@ad",TxtAd.Text);
            komut.Parameters.AddWithValue("@malzeme",TxtMalzeme.Text);
            komut.Parameters.AddWithValue("@tarif",TxtTarif.Text);
            komut.Parameters.AddWithValue("@kId",DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@yId", id);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
            Response.Write("<script> alert('Yemek Başarıyla Güncellendi.') </script>");
        }

        protected void BtnSec_Click(object sender, EventArgs e)
        {
            //Tüm yemeklerin durumu false yapıldı
            SqlCommand komut = new SqlCommand("Update Yemek Set Durum=0",baglan.baglanti());
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();

            //Günün yemeği için id'ye göre durumu true yaptık
            SqlCommand komut2 = new SqlCommand("Update Yemek Set Durum=1 where YemekID=@yId", baglan.baglanti());
            komut2.Parameters.AddWithValue("@yId",id);
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();
            Response.Write("<script> alert('Günün Yemeği Olarak Seçildi.') </script>");
        }
    }
}