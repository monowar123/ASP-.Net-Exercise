using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace MySite
{
    public class DBConnection
    {
        private string connectionString = null;
        private SqlConnection sqlConn = null;

        public DBConnection()
        {
            connectionString = @"Data Source=MONOWAR_COMPUTE\SQLEXPRESS ;Initial Catalog=mysite;Integrated Security=True;Pooling=False;User ID=sa;Password=cse";
            sqlConn = new SqlConnection(connectionString);
        }

        public SqlConnection GetConnection
        {
            get
            {
                return sqlConn;
            }
            private set
            {
            }
        }
    }
}
