using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Add_course : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void Add_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
        SqlDataAdapter sda1 = new SqlDataAdapter("select * from course where CourseName='" + coursenm.Text.ToString() + "'", con);
        DataTable dt = new DataTable();
        sda1.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            Label1.Text = "This course is Already Presents";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into course(CourseName) values('" + coursenm.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Label1.Text = "Data inserted..";
           // Label1.ForeColor = System.Drawing.Color.DarkGreen;

          Response.Write("<script> alert( ' " + coursenm.Text + " Has added sucessfully..!') </script>");
           
           
            GridView1.DataBind();
            coursenm.Text = "";
            
        }


    }
}