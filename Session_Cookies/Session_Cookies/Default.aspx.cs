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
using System.Collections.Generic;

namespace Session_Cookies
{
    public partial class _Default : System.Web.UI.Page
    {
        private Dictionary<string, string> books = new Dictionary<string, string>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_Init(object sender, EventArgs e)
        {
            books.Add("Visual Basic 2008", "00A");
            books.Add("Visual C# 2008", "00B");
            books.Add("C", "00C");
            books.Add("C++", "00D");
            books.Add("Java", "00E");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblResponse.Visible = true;
            languageLink.Visible = true;
            recomendationLink.Visible = true;

            lblPromt.Visible = false;
            languageList.Visible = false;
            btnSubmit.Visible = false;

            if (languageList.SelectedItem != null)
            {
                string language = languageList.SelectedItem.Value;
                string ISBN = books[language];

                HttpCookie cookie = new HttpCookie(language, ISBN);

                Response.Cookies.Add(cookie);

                Session.Add(language, ISBN);

                lblResponse.Text += "<br />You selected " + language + ".";
            }
            else
            {
                lblResponse.Text += "<br />You did not make a selection.";
            }
        }

    }
}
