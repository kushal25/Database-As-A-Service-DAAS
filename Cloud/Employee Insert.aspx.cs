using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Others : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void detailview_iteminsert(object sender, DetailsViewInsertedEventArgs e)
    {
        if(e.AffectedRows ==1)
        {
            Response.Redirect("~/Employees Info.aspx");
        }

    }
    protected void detailvie_itemcommand(object sender, DetailsViewCommandEventArgs e)
    {
        if (e.CommandName == "Cancel")
        {
            Response.Redirect("~/Default.aspx");
        }
    }


}
