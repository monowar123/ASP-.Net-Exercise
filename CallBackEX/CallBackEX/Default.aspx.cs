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

namespace CallBackEX
{
    public partial class _Default : System.Web.UI.Page, ICallbackEventHandler
    {

        protected System.Collections.Specialized.ListDictionary catalog;
        protected String returnValue;

        protected void Page_Load(object sender, EventArgs e)
        {
            String cbReference =
            Page.ClientScript.GetCallbackEventReference(this,
            "arg", "ReceiveServerData", "context");
            String callbackScript;
            callbackScript = "function CallServer(arg, context)" +
                "{ " + cbReference + ";}";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(),
                "CallServer", callbackScript, true);

            catalog = new System.Collections.Specialized.ListDictionary();
            catalog.Add("monitor", 12);
            catalog.Add("laptop", 10);
            catalog.Add("keyboard", 23);
            catalog.Add("mouse", 17);

            ListBox1.DataSource = catalog;
            ListBox1.DataTextField = "key";
            ListBox1.DataBind();

            

        }

        #region ICallbackEventHandler Members

        public string GetCallbackResult()
        {
            return returnValue;
        }

        public void RaiseCallbackEvent(string eventArgument)
        {
            if (catalog[eventArgument] == null)
            {
                returnValue = "-1";
            }
            else
            {
                returnValue = catalog[eventArgument].ToString();
            }

        }

        #endregion

        protected void Selection_Change(object sender, EventArgs e)
        {

        }

    }
}
