using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ozone.Styles
{
    public partial class Training_Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListItem litem = new ListItem();
            litem.Value = "การป้องกันเอชไอวี/เอดส์";

            ddlTitle.Items.Add(litem);
        }
    }
}