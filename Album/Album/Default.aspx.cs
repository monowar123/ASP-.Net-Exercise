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
using System.Drawing;

namespace Album
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bitmap myImage = Properties.Resources.Chrysanthemum;

            
            //Image1.ImageUrl = Properties.Resources.Chrysanthemum;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string filename = FileUpload1.ToString();
            Label1.Text = filename;
            
        }
    }
}
