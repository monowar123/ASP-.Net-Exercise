using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using DBAccess;

namespace Business
{
    public class BusinessClass
    {
        public double add(double a, double b)
        {
            DBClass dbObject = new DBClass();
            List<SqlParameter> parameter = new List<SqlParameter>();
            string sqlString = "Insert into [myTable] (a, b, sum) values(@a, @b, @sum)";
            double result = a + b;

            parameter.Add(new SqlParameter("@a", a));
            parameter.Add(new SqlParameter("@b", b));
            parameter.Add(new SqlParameter("@sum", result));

            dbObject.InsertData(sqlString, parameter);

            return (result);
        }
    }
}
