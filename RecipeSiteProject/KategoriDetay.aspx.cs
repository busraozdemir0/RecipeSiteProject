using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSiteProject
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlSinif baglan=new SqlSinif();
        string ktgrID= "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ktgrID = Request.QueryString["KategoriID"];
            SqlCommand komut=new SqlCommand("Select * From Yemek Where KategoriID=@p1",baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(ktgrID));
            SqlDataReader oku=komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
        }
    }
}