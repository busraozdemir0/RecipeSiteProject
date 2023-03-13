using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSiteProject
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumID"];
            islem = Request.QueryString["islem"];
            if (Page.IsPostBack == false)
            {
                //Onaylı Yorumlar Listesi
                SqlCommand komut = new SqlCommand("Select * From Yorum Where YorumOnay=1", baglan.baglanti());
                SqlDataReader oku = komut.ExecuteReader();
                DataList1.DataSource = oku;
                DataList1.DataBind();

                //Onaysız Yorumlar Listesi
                SqlCommand komut2 = new SqlCommand("Select * From Yorum Where YorumOnay=0", baglan.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();
                DataList2.DataSource = oku2;
                DataList2.DataBind();
            }

            //Yorum onayını kaldırma
            if (islem == "onaylama")
            {
                SqlCommand komut2 = new SqlCommand("Update Yorum Set YorumOnay=@onay where YorumID=@yId", baglan.baglanti());
                komut2.Parameters.AddWithValue("@yId", id);
                komut2.Parameters.AddWithValue("@onay","False");
                komut2.ExecuteNonQuery();
                baglan.baglanti().Close();
                Response.Write("<script> alert('Yorum Onayı Kaldırıldı.') </script>");
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

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
    }
}