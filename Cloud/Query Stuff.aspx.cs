using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Query_Stuff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string  tex = text1.Text;
        string m=null;
        string b=null;
        char[] a;
        a = tex.ToCharArray();
        int l = a.Length;
        int i;
        for (i = l-1; i > 0;i-- )
        {
            a[i] = (char) ((int)a[i] + 1);
            m = m + a[i];
        }
        text2.Text = m.ToLower();
        for (i = 0; i <l; i++)
        {
            if (i == 0)
            {
                a[i] = (char)((int)a[i]);
            }
            else
            {
                a[i] = (char)((int)a[i] - 1);
            }
            b = b + a[i];
        }
        text3.Text = b.ToUpper();
    }
}
