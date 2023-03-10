using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSiteProject
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string id="";
        protected void Page_Load(object sender, EventArgs e)
        {
            //YemekID'sine göre başlık getirme

            id = Request.QueryString["YemekID"];
            SqlCommand komut=new SqlCommand("Select YemekAd from Yemek where YemekID=@p1",baglan.baglanti());
            komut.Parameters.AddWithValue("@p1",Convert.ToInt32(id));
            SqlDataReader oku=komut.ExecuteReader();
            while(oku.Read())
            {
                Label3.Text = oku[0].ToString();
            }
            baglan.baglanti().Close();

            //Yorumları Listeleme
            SqlCommand komut2 = new SqlCommand("Select * from Yorum where YemekID=@p2", baglan.baglanti());
            komut2.Parameters.AddWithValue("@p2", Convert.ToInt32(id));
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();
        }

        protected void BtnYorumYap_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Yorum (YorumAdSoyad, YorumMail, YorumIcerik, YemekID) values(@adsoyad, @mail, @icerik, @yemekid)",baglan.baglanti());
            komut.Parameters.AddWithValue("@adsoyad",TxtAdSoyad.Text);
            komut.Parameters.AddWithValue("@mail",TxtMail.Text);
            komut.Parameters.AddWithValue("@icerik",TxtYorum.Text);
            komut.Parameters.AddWithValue("@yemekid",id);
            komut.ExecuteNonQuery();
            TxtAdSoyad.Text = "";
            TxtMail.Text = "";
            TxtYorum.Text = "";
            baglan.baglanti().Close();
            Response.Write("<script> alert('Yorum Yapılmıştır.') </script>");
        }
    }
}