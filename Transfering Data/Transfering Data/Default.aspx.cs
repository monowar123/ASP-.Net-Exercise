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

namespace Transfering_Data
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResponseRedirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx?Name=" + TextBox1.Text);
        }

        protected void btnCookies_Click(object sender, EventArgs e)
        {
            HttpCookie cName = new HttpCookie("Name");
            cName.Value = TextBox1.Text;
            Response.Cookies.Add(cName);
            Response.Redirect("WebForm1.aspx");
        }

        protected void btnSessionVariable_Click(object sender, EventArgs e)
        {
            Session["Name"] = TextBox1.Text;
            Response.Redirect("WebForm1.aspx");
        }

        protected void btnApplicationState_Click(object sender, EventArgs e)
        {
            Application["Name"] = TextBox1.Text;
            Response.Redirect("WebForm1.aspx");
        }

        //this is used for server transfer
        public string getName
        {
            get
            {
                return TextBox1.Text;
            }
        }
        protected void btnServerTransfer_Click(object sender, EventArgs e)
        {
            Server.Transfer("WebForm1.aspx");
        }
    }
}
