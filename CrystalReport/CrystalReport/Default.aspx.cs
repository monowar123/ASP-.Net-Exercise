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
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data.SqlClient;

namespace CrystalReport
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReportDocument rptDoc = new ReportDocument();
            DataSet1 ds = new DataSet1();
            DataTable dt = new DataTable();
            try
            {
                dt.TableName = "Crystal Report Example";
                dt = SelectData("select customer_name, order_id, product_name, quantity from myTable");

                ds.Tables["DataTable1"].Merge(dt);

                rptDoc.Load(Server.MapPath("~/Reports/CrystalReport1.rpt"));

                rptDoc.SetDataSource(ds);
                CrystalReportViewer1.ReportSource = rptDoc;
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        public DataTable SelectData(string sqlString)
        {
            string connStr = @"Data Source=MONOWAR-PC\SQLEXPRESS; Initial Catalog=test; User ID=sa; Password=cse";
            DataTable dataTableObject = new DataTable();
            SqlConnection sqlConnectionObject = new SqlConnection(connStr);
            try
            { 
                sqlConnectionObject.Open();

                SqlDataAdapter sqlDataAdepterObject = new SqlDataAdapter(sqlString, sqlConnectionObject);

                sqlDataAdepterObject.Fill(dataTableObject);                
            }

            catch (Exception ex)
            {
                throw new Exception("Database problem." + ex.Message);
            }

            finally
            {
                if (sqlConnectionObject.State == System.Data.ConnectionState.Open)
                    sqlConnectionObject.Close();
            }
            return dataTableObject;
        }
    }
}
