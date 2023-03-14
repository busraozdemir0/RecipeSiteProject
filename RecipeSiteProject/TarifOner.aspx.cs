using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSiteProject
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SqlSinif baglan=new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnOner_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));
            SqlCommand komut = new SqlCommand("insert into Tarif(TarifAd,TarifMalzeme, TarifYapilis,TarifResim, TarifSahip, TarifSahipMail) values (@tarifAd,@tarifMalzeme,@tarifYapilis,@tarifResim,@tarifSahip,@tarifSahipMail)", baglan.baglanti());
            komut.Parameters.AddWithValue("@tarifAd",TxtTarifAd.Text);
            komut.Parameters.AddWithValue("@tarifMalzeme",TxtMalzeme.Text);
            komut.Parameters.AddWithValue("@tarifYapilis",TxtYapilis.Text);
            komut.Parameters.AddWithValue("@tarifResim", "~/Resimler/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@tarifSahip",TxtOneren.Text);
            komut.Parameters.AddWithValue("@tarifSahipMail",TxtMail.Text);
            komut.ExecuteNonQuery();
            TxtTarifAd.Text = " ";
            TxtMalzeme.Text = " ";
            TxtYapilis.Text = " ";
            TxtOneren.Text = " ";
            TxtMail.Text = " ";
            baglan.baglanti().Close();
            Response.Write("<script> alert('Tarifiniz Alınmışır.') </script>");
            
        }
    }
}