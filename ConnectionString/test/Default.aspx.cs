using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace test
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //string conString = @"Data Source=MONOWAR-PC\SQLEXPRESS; Initial Catalog=ATMDB; User ID=sa; Password=1234";
                //Reading connection string values from web.config file
                string conString = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
                SqlConnection conn = new SqlConnection(conString);
                conn.Open();
                
                DataTable dataTable = new DataTable();
                string sqlString = "select * from customer";
                SqlDataAdapter adapter = new SqlDataAdapter(sqlString, conn);
                adapter.Fill(dataTable);

                GridView1.DataSource = dataTable;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            
        }
    }
}
