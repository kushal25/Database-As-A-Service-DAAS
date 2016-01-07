using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void detailvie_itemcommand(object sender, DetailsViewCommandEventArgs e)
    {
        if (e.CommandName == "Continue")
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}
