using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSiteProject
{
    public partial class AdminHakkimizda : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Hakkimizda", baglan.baglanti());
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBox1.Text = oku[0].ToString();
                }
                baglan.baglanti().Close();
            }
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Hakkimizda Set HakkimizdaMetin=@metin", baglan.baglanti());
            komut.Parameters.AddWithValue("@metin", TextBox1.Text);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
            Response.Write("<script> alert('Hakkımızds Yazısı Başarıyla Güncellendi.') </script>");
        }
    }
}