using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Assign_subject : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownTeachershow();
            DropDownCourseshow();

        }
    }
    private void DropDownTeachershow()
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Teacher_mst", con);
        DropDownList1.DataSource = cmd.ExecuteReader();
        DropDownList1.DataTextField = "T_nm";
        DropDownList1.DataValueField = "T_unm";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "Select Teacher");
        con.Close();

    }
    private void DropDownCourseshow()
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from course", con);
        DropDownList2.DataSource = cmd.ExecuteReader();
        DropDownList2.DataTextField = "CourseName";
        DropDownList2.DataValueField = "CID";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, "Select Course");
        con.Close();

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (int.Parse(DropDownList3.SelectedValue) > 0)
        {
            DataTable statedt = new DataTable();
            statedt.Columns.Add("SemId", typeof(int));
            statedt.Columns.Add("SemName");

            if (DropDownList3.SelectedValue == "1")
            {

                statedt.Rows.Add(1, "Select Semester");
                statedt.Rows.Add(2, "Sem I");
                statedt.Rows.Add(3, "Sem II");
            }
            if (DropDownList3.SelectedValue == "2")
            {
                statedt.Rows.Add(1, "Select Semester");
                statedt.Rows.Add(2, "Sem III");
                statedt.Rows.Add(3, "Sem IV");
            }
            if (DropDownList3.SelectedValue == "3")
            {
                statedt.Rows.Add(1, "Select Semester");
                statedt.Rows.Add(2, "Sem V");
                statedt.Rows.Add(3, "Sem VI");
            }
            DropDownList4.DataSource = statedt;
            DropDownList4.DataTextField = "SemName";
            DropDownList4.DataValueField = "SemId";
            DropDownList4.DataBind();
            if (DropDownList3.SelectedValue == "0")
            {
                Label1.Text = "Please select proper Semester Field..";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
   
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            int courseid = Convert.ToInt32(DropDownList2.SelectedValue);
            string year = DropDownList3.SelectedItem.Text;
            string sem = DropDownList4.SelectedItem.Text;
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Subject where CID='" + courseid + "' and Year='" + year + "' and Sem='" + sem + "'", con);
            DropDownList5.DataSource = cmd.ExecuteReader();
            DropDownList5.DataTextField = "SubjectName";
            DropDownList5.DataValueField = "SID";
            DropDownList5.DataBind();
            DropDownList5.Items.Insert(0, "Select Subject");
            con.Close();
        }
        catch (Exception)
        {
            Label1.Text = "Before selecting year you must select Teacher and Course field";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("Select * from Assign_subject where Teacher='" + DropDownList1.SelectedItem.Text + "' and Course='" + DropDownList2.SelectedItem.Text + "' and Year='" + DropDownList3.SelectedItem.Text + "' and Sem='" + DropDownList4.SelectedItem.Text + "' and Subject='" + DropDownList5.SelectedItem.Text + "'", con1);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            Label1.Text = "Selected Teacher is already assigned to the selected Subject";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Assign_subject(Teacher,Course,Year,Sem,Subject) values('" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + DropDownList4.SelectedItem.Text + "','" + DropDownList5.SelectedItem.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script> alert( 'Subject assign sucessfully..!') </script>");
            GridView1.DataBind();
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            DropDownList3.SelectedIndex = 0;
            DropDownList4.SelectedIndex = 0;
            DropDownList5.SelectedIndex = 0;
            Label1.Text = "";
        }

    }
}