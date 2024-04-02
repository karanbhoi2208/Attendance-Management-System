using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Add_student : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownCourse();
          
        }
    }
    private void DropDownCourse()
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from course", con);
        DropDownList1.DataSource = cmd.ExecuteReader();
        DropDownList1.DataTextField = "CourseName";
        DropDownList1.DataValueField = "CID";
        DropDownList1.DataBind();
        con.Close();
        DropDownList1.Items.Insert(0, "Select Course");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
           
              SqlConnection con = new SqlConnection(str);
                SqlDataAdapter sda = new SqlDataAdapter("select * from Student where email='" + TextBox4.Text.ToString() + "'", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count == 1)
                {
                    Label1.Text = "Enter EmailId is Already Exits..!";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    string fullname = TextBox1.Text + " " + TextBox2.Text;
                    SqlConnection con1 = new SqlConnection(str);

                    SqlCommand cmd = new SqlCommand("insert into Student(name,email,cno,course,year,sem,password) values('" + fullname + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + TextBox6.Text + "')", con1);
                    con1.Open();
                    cmd.ExecuteNonQuery();
                    con1.Close();

                    Response.Write("<script> alert( ' " + fullname + " Has added sucessfully..!') </script>");
                    GridView1.DataBind();


                    TextBox1.Text = "";
                    TextBox2.Text = "";

                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    DropDownList1.SelectedIndex = 0;
                    DropDownList2.SelectedIndex = 0;
                    DropDownList3.SelectedIndex = 0;

                  
                }

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (int.Parse(DropDownList2.SelectedValue) > 0)
        {
            DataTable statedt = new DataTable();
            statedt.Columns.Add("SemId", typeof(int));
            statedt.Columns.Add("SemName");

            if (DropDownList2.SelectedValue == "1")
            {

                statedt.Rows.Add(1, "Select Semester");
                statedt.Rows.Add(2, "Sem I");
                statedt.Rows.Add(3, "Sem II");
            }
            if (DropDownList2.SelectedValue == "2")
            {
                statedt.Rows.Add(1, "Select Semester");
                statedt.Rows.Add(2, "Sem III");
                statedt.Rows.Add(3, "Sem IV");
            }
            if (DropDownList2.SelectedValue == "3")
            {
                statedt.Rows.Add(1, "Select Semester");
                statedt.Rows.Add(2, "Sem V");
                statedt.Rows.Add(3, "Sem VI");
            }
            DropDownList3.DataSource = statedt;
            DropDownList3.DataTextField = "SemName";
            DropDownList3.DataValueField = "SemId";
            DropDownList3.DataBind();
            if (DropDownList2.SelectedValue == "0")
            {
                Label1.Text = "Please select proper Semester Field..";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
}