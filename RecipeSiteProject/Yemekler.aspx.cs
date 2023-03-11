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
        protected void Page_Load(object sender, EventArgs e)
        {
            //Kategori listesi
            if(Page.IsPostBack==false)
            {                
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
            SqlCommand komut = new SqlCommand("insert into Yemek (YemekAd,YemekMalzeme,YemekTarif,KategoriID) values(@ad,@malzeme,@tarif,@kId)", baglan.baglanti());
            komut.Parameters.AddWithValue("@ad",TxtYemekAd.Text);
            komut.Parameters.AddWithValue("@malzeme",TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@tarif",TxtTarif.Text);
            komut.Parameters.AddWithValue("@kId",DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
            Response.Write("<script> alert('Yemek Başarıyla Eklendi.') </script>");
        }
    }
}