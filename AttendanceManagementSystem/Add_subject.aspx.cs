using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Add_subject : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showcourse();
        }

    }
    private void showcourse()
    {
        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand("select * from course", con);
        DataTable dt = new DataTable();
        con.Open();
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
                statedt.Rows.Add(1, "Sem I");
                statedt.Rows.Add(2, "Sem II");
            }
            if (DropDownList2.SelectedValue == "2")
            {
                statedt.Rows.Add(1, "Sem III");
                statedt.Rows.Add(2, "Sem IV");
            }
            if (DropDownList2.SelectedValue == "3")
            {
                statedt.Rows.Add(1, "Sem V");
                statedt.Rows.Add(2, "Sem VI");
            }
            DropDownList3.DataSource = statedt;
            DropDownList3.DataTextField = "SemName";
            DropDownList3.DataValueField = "SemId";
            DropDownList3.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
       SqlDataAdapter sda = new SqlDataAdapter("Select * From Subject where SubjectName='" + TextBox1.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            Label1.Text = "The Subject " + TextBox1.Text + " is already present for the Selected Course=" + DropDownList1.SelectedItem.Text + " Year=" + DropDownList2.SelectedItem.Text + " and the Semester =" + DropDownList3.SelectedItem.Text;
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            con = new SqlConnection(str);
            sda = new SqlDataAdapter("select CID from course where CourseName='" + DropDownList1.SelectedItem.Text + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "course");
            string courseId = ds.Tables[0].Rows[0]["CID"].ToString();
            SqlConnection con1 = new SqlConnection(str);
            con1.Open();
            SqlCommand cmd = new SqlCommand("insert into Subject(CID,CourseName,Year,SubjectName,Sem) values('" + courseId + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox1.Text + "','" + DropDownList3.SelectedItem.Text + "')", con1);

            cmd.ExecuteNonQuery();
            con1.Close();
            Label1.Text = "";
         
            Response.Write("<script> alert( ' " + TextBox1.Text + " Has added sucessfully..!') </script>");
            GridView1.DataBind();
            //Response.Redirect("Add_subject.aspx");
            DropDownList2.SelectedIndex = 0;
            DropDownList3.SelectedIndex = 0;
            TextBox1.Text = "";
            DropDownList1.SelectedIndex = -1;
        }
    }
}
