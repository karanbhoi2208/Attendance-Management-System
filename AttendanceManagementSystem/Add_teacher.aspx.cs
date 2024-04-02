using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Add_teacher : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       SqlConnection con = new SqlConnection(str);
       SqlDataAdapter sda = new SqlDataAdapter("select *from Teacher_mst where eid='" + TextBox3.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            Label1.Text = "Email id is already existing..!";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            SqlConnection con1 = new SqlConnection(str);
            con1.Open();
            SqlCommand cmd = new SqlCommand("insert into Teacher_mst(T_nm,T_unm,eid,password) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con1);
            cmd.ExecuteNonQuery();
            con1.Close();

            Label1.ForeColor = System.Drawing.Color.Green;


            Response.Write("<script> alert( ' " + TextBox1.Text + " Has added sucessfully..!') </script>");

            GridView1.DataBind();

            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            Label1.Text = "";
        }
    }
}