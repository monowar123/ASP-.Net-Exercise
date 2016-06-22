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

namespace Validating_Input
{
    public partial class _Default : System.Web.UI.Page
    {
        string name;
        string email;
        string phone;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Validate();
                if (IsValid)
                {
                    name = txtName.Text;
                    email = txtEmail.Text;
                    phone = txtPhone.Text;
                    lblOutput.Text += "<br />We received the following information:" +
                        "<br />Name: " + name + "<br />Email: " + email + "<br />Phone: " + phone;
                    lblOutput.Visible = true;
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //if (IsPostBack)
            //{
            //    Validate();
            //    if (IsValid)
            //    {
            //        name = txtName.Text;
            //        email = txtEmail.Text;
            //        phone = txtPhone.Text;
            //        lblOutput.Text += "<br />We received the following information:" +
            //            "<br />Name: " + name + "<br />Email: " + email + "<br />Phone: " + phone;
            //        lblOutput.Visible = true;
            //    }
            //}
        }
    }
}
