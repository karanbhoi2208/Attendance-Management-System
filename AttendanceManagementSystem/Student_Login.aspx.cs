using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Student_Login : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("select * from Student where email='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);



        if (dt.Rows.Count == 1)
        {
            Session["email"] = TextBox1.Text;
            Session["password"] = TextBox2.Text;
            Response.Redirect("Student_homepage.aspx");

        }
        else
        {

            msg.Text = "Enter valid Username & Password";


        }

    }
}