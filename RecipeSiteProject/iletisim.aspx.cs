using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSiteProject
{
    public partial class iletisim : System.Web.UI.Page
    {
        SqlSinif baglan=new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Mesaj (MesajGonderen, MesajBaslik, MesajMail, MesajIcerik) values(@gonderen, @baslik, @mail, @icerik)",baglan.baglanti());
            komut.Parameters.AddWithValue("@gonderen", TxtAdSoyad.Text);
            komut.Parameters.AddWithValue("@baslik", TxtKonu.Text);
            komut.Parameters.AddWithValue("@mail", TxtMail.Text);
            komut.Parameters.AddWithValue("@icerik", TxtMesaj.Text);
            komut.ExecuteNonQuery();
            TxtAdSoyad.Text = "";
            TxtKonu.Text = "";
            TxtMail.Text = "";
            TxtMesaj.Text = "";
            baglan.baglanti().Close();
            Response.Write("<script> alert('Mesajınız Gönderilmiştir.') </script>");
        }
    }
}