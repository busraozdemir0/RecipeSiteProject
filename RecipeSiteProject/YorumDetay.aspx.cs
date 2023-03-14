using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSiteProject
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumID"];

            if (Page.IsPostBack == false)
            {
                //Hangi yemeğe yorum yapılmışsa yemek adını da çekebilmek için inner join ile Yorum ve Yemek tablosunu birleştirdik.
                SqlCommand komut = new SqlCommand("Select YorumAdSoyad, YorumMail, YorumIcerik, YemekAd From Yorum inner join Yemek on Yorum.YemekID=Yemek.YemekID Where YorumID=@yId", baglan.baglanti());
                komut.Parameters.AddWithValue("@yId", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TxtAdSoyad.Text = oku[0].ToString();
                    TxtMail.Text = oku[1].ToString();
                    TxtYorum.Text = oku[2].ToString();
                    TxtYemek.Text = oku[3].ToString();
                }
                baglan.baglanti().Close();

            }
        }

        protected void BtnOnay_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Yorum Set YorumIcerik=@icerik, YorumOnay=@onay where YorumID=@yId",baglan.baglanti());
            komut.Parameters.AddWithValue("@icerik",TxtYorum.Text);
            komut.Parameters.AddWithValue("@onay","True");
            komut.Parameters.AddWithValue("@yId",id);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
            Response.Write("<script> alert('Yorum Başarıyla Onaylandı.') </script>");
        }
    }
}