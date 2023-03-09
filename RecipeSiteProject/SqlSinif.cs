using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace RecipeSiteProject
{
    public class SqlSinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-8T3IOH2; Initial Catalog=DbYemekTarifi; Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}