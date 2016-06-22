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

namespace Ck_Editor_Practice
{
    public partial class _Default : System.Web.UI.Page
    {
        //private ServiceReference1.GateWayServiceClient clientObject = new ServiceReference1.GateWayServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {        
            Session["SessionIndex"] = CKEditorControl1.Text;
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Label1.Text = clientObject.testMessage();
        }
    }
}
