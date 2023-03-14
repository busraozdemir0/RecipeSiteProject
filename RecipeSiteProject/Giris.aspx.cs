using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecipeSiteProject
{
    public partial class Giris : System.Web.UI.Page
    {
        DbYemekTarifiEntities db=new DbYemekTarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.Yonetici where x.YoneticiAd == Txtkullaniciadi.Text && x.YoneticiSifre == Txtsifre.Text select x;
            if (sorgu.Any())
            {
                Session["control"] = Txtkullaniciadi.Text;
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Label1.Text = "Hatalı Kullanıcı Adı ya da Şifre girdiniz.";
            }
        }
    }
}