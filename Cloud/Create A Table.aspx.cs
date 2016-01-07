using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Create_A_Table : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string   a2;
        string  tname,s;
        
        //tname = TextBox1 .Text;
        s = TextBox2.Text;
        a2 = TextBox3.Text;
        string str = "create table DataEmpty ('" + s  + "' varchar(20), '" + a2 + "' varchar(20))";

            //"insert into DataProvision values(" + tname  + ", " + s  + ", '" + a2 + "')";
//       "create table '" + tname + "' ('" + a1 + "' varchar(20), '" + a2 + "' varchar(20))"
        SqlConnection cn = new SqlConnection(@"Data Source=localhost\sqlexpress;Initial Catalog=Database-as-a-Service;Integrated Security=True");
        cn.Open();
        SqlCommand cmd = new SqlCommand(str,cn);
        //cmd.Connection = cn;
        //cmd.CommandText = str;
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}
