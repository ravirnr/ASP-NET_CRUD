using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplicationC2
{
    public class GlobalConnection
    {
        public SqlConnection cn;
        public GlobalConnection() //constructor
        {
            string sqlcon = System.Configuration.ConfigurationManager.
                AppSettings.Get("MyConnection").ToString();
            cn = new SqlConnection(sqlcon);
            cn.Open();
        }
    }
}