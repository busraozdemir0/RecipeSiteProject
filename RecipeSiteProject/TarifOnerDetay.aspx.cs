using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace RecipeSiteProject
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TarifID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tarif where TarifID=@tId", baglan.baglanti());
                komut.Parameters.AddWithValue("@tId", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TxtTarif.Text = oku[1].ToString();
                    TxtMalzeme.Text = oku[2].ToString();
                    TxtYapilis.Text = oku[3].ToString();
                    TxtOneren.Text = oku[5].ToString();
                    TxtOnerenMail.Text = oku[6].ToString();
                }
                baglan.baglanti().Close();

                //Kategori listesi
                SqlCommand komutKategori = new SqlCommand("Select * from Kategori", baglan.baglanti());
                SqlDataReader oku2 = komutKategori.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriID";
                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            //TarifDurum güncelleme
            SqlCommand komut = new SqlCommand("Update Tarif Set TarifDurum=1 Where TarifID=@tId", baglan.baglanti());
            komut.Parameters.AddWithValue("@tId", id);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();


            //Yemeği ana sayfaya ekleme
            SqlCommand komut2 = new SqlCommand("insert into Yemek (YemekAd, YemekMalzeme, YemekTarif, KategoriID) values(@ad,@malzeme,@tarif,@kId)", baglan.baglanti());
            komut2.Parameters.AddWithValue("@ad",TxtTarif.Text);
            komut2.Parameters.AddWithValue("@malzeme",TxtMalzeme.Text);
            komut2.Parameters.AddWithValue("@tarif",TxtYapilis.Text);
            komut2.Parameters.AddWithValue("@kId",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();

            Response.Write("<script> alert('Tarif Başarıyla Onaylandı.') </script>");
        }
    }
}