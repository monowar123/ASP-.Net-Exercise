using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace DBAccess
{
    public class DBClass
    {      
        public bool InsertData(string sqlString, List<SqlParameter> parameter)
        {
            string conString = @"Data Source=MONOWAR-PC\SQLEXPRESS; Initial Catalog=pp; user id=sa; password=cse;";
            SqlConnection con = new SqlConnection(conString);
            con.Open();

            SqlCommand sqlCommandObject = new SqlCommand(sqlString, con);
            foreach (SqlParameter pr in parameter)
            {
                sqlCommandObject.Parameters.Add(pr);
            }
            int i = sqlCommandObject.ExecuteNonQuery();
            if (i > 0)
                return true;
            else
                return false;
        }
    }
}
