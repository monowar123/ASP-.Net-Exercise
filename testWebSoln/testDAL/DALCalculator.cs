using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using DALUtil;

namespace testDAL
{
    public class DALCalculator
    {
        public bool SaveSum(int sum)
        {
            try
            {
                CDALUtil obj = new CDALUtil();

                SqlCommand cmdInsert = new SqlCommand();
                cmdInsert.CommandText = "insert into savesum(result) values(@sum)";
                cmdInsert.Parameters.Add("@sum", System.Data.SqlDbType.Int).Value = sum;

                List<SqlCommand> listCmd = new List<SqlCommand>();
                listCmd.Add(cmdInsert);

                obj.ExecuteNonQuery(listCmd);

                return true;
            }
            catch(Exception)
            {
                return false;
            }     
        }
    }
}
