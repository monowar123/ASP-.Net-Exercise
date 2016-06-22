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
using testBLL;

namespace testWebApp
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            BLLCalculator ob_BLLCalculator = new BLLCalculator();
            int s = ob_BLLCalculator.Sum(int.Parse(txt_A.Text), int.Parse(txt_B.Text));
            lbl_Show_Sum.Text = s.ToString();
        }
    }
}
