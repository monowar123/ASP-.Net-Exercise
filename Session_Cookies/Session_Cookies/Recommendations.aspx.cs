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

namespace Session_Cookies
{
    public partial class Recommendations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_Init(object sender, EventArgs e)
        {
            HttpCookieCollection cookies = Request.Cookies;
            if (cookies.Count > 0)
            {
                for (int i = 0; i < cookies.Count; i++)
                {
                    booksListBox.Items.Add(cookies[i].Name + "  ISBN:" + cookies[i].Value);
                }
                foreach (string keyName in Session.Keys)
                {
                    booksListBox.Items.Add(keyName + " session ISBN:" + Session[keyName]);
                }
            }
            else
            {
                lblRecommendations.Text = "No Recommendations.";
            }
        }
    }
}
