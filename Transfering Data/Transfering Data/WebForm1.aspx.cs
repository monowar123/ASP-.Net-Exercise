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
    public partial class WebForm1 : System.Web.UI.Page
    {
        _Default w;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Name"] != null)
            {
                Label1.Text = Request.QueryString["Name"];
            }

            else if (Request.Cookies["Name"] != null)
            {
                Label1.Text = Request.Cookies["Name"].Value;
            }

            else if (Session["Name"] != null)
            {
                Label1.Text = Session["Name"].ToString();
            }

            else if (Application["Name"] != null)
            {
                Label1.Text = Application["Name"].ToString();
            }
            else
            {
                w = (_Default)Context.Handler;
                Label1.Text = w.getName;
            }
        }
    }
}
