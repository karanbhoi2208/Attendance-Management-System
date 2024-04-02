using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_Staff_Login : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("select * from Teacher_mst where T_unm='" + TextBox1.Text + "'and password='" + Password.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (TextBox1.Text == "Admin" & Password.Text == "123")
        {

            Response.Redirect("Admin_homepage.aspx");
        }

        else if (dt.Rows.Count == 1)
        {
            Session["T_unm"] = TextBox1.Text;
            Session["password"] = Password.Text;
            Response.Redirect("Teacher_homepage.aspx");

        }
        else
        {

            msg.Text = "Enter valid Username & Password";
            msg.ForeColor = System.Drawing.Color.Red;

        }
    }
}