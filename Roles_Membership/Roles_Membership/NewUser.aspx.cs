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

namespace Roles_Membership
{
    public partial class NewUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "0")
            {
                Roles.AddUserToRole(CreateUserWizard1.UserName, "Regular");
            }
            if (RadioButtonList1.SelectedValue == "1")
            {
                Roles.AddUserToRole(CreateUserWizard1.UserName, "Primium");
            }
        }
    }
}
