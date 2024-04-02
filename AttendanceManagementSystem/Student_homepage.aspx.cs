using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Student_homepage : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection con1 = new SqlConnection(str);
        con1.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select name from Student where email='" + Session["email"] + "'", con1);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        string snm = ds.Tables[0].Rows[0]["name"].ToString();
        Label1.Text = snm;
        con1.Close();
    }
}