using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace MySite
{
    public partial class WebForm1 : System.Web.UI.Page
    {        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            User newuser = new User();
            Gateway gatewayObject = new Gateway();
            List<SqlParameter> parameter = new List<SqlParameter>();

            string insertString=@"INSERT INTO [user_info] (firstname, lastname) VALUES (@firstname, @lastname)";

            newuser.firstName = txtFirstName.Text;
            newuser.lastName = txtLastName.Text;
            newuser.address = txtAddress.Text;
            newuser.district = txtDistrict.Text;
            newuser.country = txtCountry.Text;
            newuser.gender = gender.SelectedItem.ToString();
            //newuser.dateOfBirth.Day = dayDD.SelectedItem;

            parameter.Add(new SqlParameter("@firstname", newuser.firstName));
            parameter.Add(new SqlParameter("@lastname", newuser.lastName));

            gatewayObject.InsertData(insertString, parameter);
        }
    }
}
