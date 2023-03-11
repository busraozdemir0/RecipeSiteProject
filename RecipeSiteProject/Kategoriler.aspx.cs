using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSiteProject
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack==false)
            {
                id = Request.QueryString["KategoriID"];
                islem = Request.QueryString["islem"];
            }

            SqlCommand komut = new SqlCommand("Select * From Kategori", baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            //Silme işlemi
            if(islem=="sil")
            {
                SqlCommand komutSil = new SqlCommand("Delete from Kategori where KategoriID=@kId", baglan.baglanti());
                komutSil.Parameters.AddWithValue("@kId", id);
                komutSil.ExecuteNonQuery();
                baglan.baglanti().Close();
                Response.Write("<script> alert('Kategori Başarıyla Silindi.') </script>");
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
            SqlCommand komut = new SqlCommand("insert into Kategori (KategoriAd) values(@kategoriad)",baglan.baglanti());
            komut.Parameters.AddWithValue("@kategoriad", TextBox1.Text);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();

            Response.Write("<script> alert('Kategori Başarıyla Eklendi.') </script>");
        }
    }
}