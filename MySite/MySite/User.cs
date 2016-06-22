using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace MySite
{
    public class User
    {
        public string firstName
        { get; set; }
        public string lastName
        { get; set; }
        public string address
        { get; set; }
        public string district
        { get; set; }
        public string country
        { get; set; }
        public string gender
        { get; set; }
        public DateTime dateOfBirth
        { get; set; }
        public string mobileNo
        { get; set; }
        public string email
        { get; set; }
        public string password
        { get; set; }
    }
}
