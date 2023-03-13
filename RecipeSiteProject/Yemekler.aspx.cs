using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace RecipeSiteProject
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlSinif baglan=new SqlSinif();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Page.IsPostBack==false)
            {
                id = Request.QueryString["YemekID"];
                islem= Request.QueryString["islem"];

                //Kategori listesi
                SqlCommand komutKategori = new SqlCommand("Select * from Kategori", baglan.baglanti());
                SqlDataReader oku2 = komutKategori.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriID";
                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }

            //Yemek listesi
            SqlCommand komut=new SqlCommand("Select * from Yemek",baglan.baglanti());
            SqlDataReader oku=komut.ExecuteReader();
            DataList1.DataSource= oku;
            DataList1.DataBind();


            //Silme işlemi
            if(islem=="sil")
            {
                SqlCommand komutSil = new SqlCommand("Delete from Yemek where YemekID=@yId",baglan.baglanti());
                komutSil.Parameters.AddWithValue("@yId", id);
                komutSil.ExecuteNonQuery();
                baglan.baglanti().Close();
                Response.Write("<script> alert('Yemek Başarıyla Silindi.') </script>");
            }


            Panel2.Visible = false;
            Panel4.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            //Yemek Ekleme
            SqlCommand komut = new SqlCommand("insert into Yemek (YemekAd,YemekMalzeme,YemekTarif,KategoriID) values(@ad,@malzeme,@tarif,@kId)", baglan.baglanti());
            komut.Parameters.AddWithValue("@ad",TxtYemekAd.Text);
            komut.Parameters.AddWithValue("@malzeme",TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@tarif",TxtTarif.Text);
            komut.Parameters.AddWithValue("@kId",DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();

            //Kategori Sayısını Arttırma
            SqlCommand komut2 = new SqlCommand("update Kategori Set KategoriAdet=KategoriAdet+1 Where KategoriID=@kId",baglan.baglanti());
            komut2.Parameters.AddWithValue("@kId",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();

            Response.Write("<script> alert('Yemek Başarıyla Eklendi.') </script>");
        }
    }
}