using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSiteProject
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        SqlSinif baglan=new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From Hakkimizda", baglan.baglanti());
            SqlDataReader oku=komut.ExecuteReader();
            DataList3.DataSource = oku;
            DataList3.DataBind();
        }
    }
}