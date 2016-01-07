using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["var2"] = 1; 
    }
    protected void log(object sender, EventArgs e)
    {
        Session["var1"] = Login1.UserName.ToString();
       
    }

}
