using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Lecture_Taken : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DrCourse();
           

        }
    }
    private void DrCourse()
    {
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from course", con);
        DropDownList1.DataSource = cmd.ExecuteReader();
        DropDownList1.DataTextField = "CourseName";
        DropDownList1.DataValueField = "CID";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "Select Course");
        con.Close();
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
            if (DropDownList3.SelectedValue == "0")
            {
                Label1.Text = "Please select proper Semester Field..";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

        try
        {
            int courseid = Convert.ToInt32(DropDownList1.SelectedValue);
            string year = DropDownList2.SelectedItem.Text;
            string sem = DropDownList3.SelectedItem.Text;
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Subject where CID='" + courseid + "' and Year='" + year + "' and Sem='" + sem + "'", con);
            DropDownList4.DataSource = cmd.ExecuteReader();
            DropDownList4.DataTextField = "SubjectName";
            DropDownList4.DataValueField = "SID";
            DropDownList4.DataBind();
            DropDownList4.Items.Insert(0, "Select Subject");
            con.Close();
        }
        catch (Exception)
        {
            Label1.Text = "Before selecting year you must select Course field";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox2.Text = DropDownList4.SelectedItem.Text;

    }
}