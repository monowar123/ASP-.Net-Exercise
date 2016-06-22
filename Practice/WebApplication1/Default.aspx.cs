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

namespace WebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {
        SqlConnection conn;
        DataTable dataTableObject = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {            
            try
            {
                string conString = @"Data Source=MONOWAR-PC\SQLEXPRESS; Initial Catalog=TestDb; User ID=sa; Password=cse";
                conn = new SqlConnection(conString);
                conn.Open();

                string sqlString = "select * from student";
                SqlDataAdapter data = new SqlDataAdapter(sqlString, conn);

                
                data.Fill(dataTableObject);

                HttpContext.Current.Session["abc"] = dataTableObject;

                MyGridView.DataSource = dataTableObject;
                MyGridView.DataBind();

                foreach (DataRow dr in dataTableObject.Rows)
                {
                    if (dr["Dept"].ToString() == "ict")
                    {
                        Label2.Text = dr["name"].ToString();
                    }
                }
            }
            catch (SqlException ex)
            {
                Label1.Text = ex.Message;
            }
            finally
            {
                conn.Close(); 
            }
        }

        protected void Page_Changing(object sender, GridViewPageEventArgs e)
        {
            MyGridView.PageIndex = e.NewPageIndex;
            DataTable dtObject = new DataTable();
            dtObject = (DataTable)HttpContext.Current.Session["abc"];
            MyGridView.DataBind();
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            Label1.Text = "Clicked";
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            Panel1.Visible = CheckBox1.Checked;
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            lblResust.Text = "Your name is " + txtName.Text;
            lblResust.Text += "<br /> Your favourite language is " + DropDownList1.SelectedValue;
        }

        protected void btnSetDate_Click(object sender, EventArgs e)
        {
            lblState.Text = DateTime.Now.ToString();
        }
    }
}
