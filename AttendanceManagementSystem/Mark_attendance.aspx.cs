using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Mark_attendance : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DrCourse();
            DateTime now = DateTime.Now.Date;
            Label2.Text = "Today's Date : " + now.ToString("dd/MM/yyyy");

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
                Label2.Text = "Please select proper Semester Field..";
                Label2.ForeColor = System.Drawing.Color.Red;

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
            Label2.Text = "Before selecting year you must select Teacher and Course field";
            Label2.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Select Course" && DropDownList2.SelectedValue == "Select Year" && DropDownList3.SelectedValue == "Select Semester" && DropDownList4.SelectedValue == "Select Subject")
        {
            Label3.Text = "Please Select All The Field";
        }
        else if (DropDownList1.SelectedValue == "Select Course" || DropDownList2.SelectedValue == "Select Year" || DropDownList3.SelectedValue == "Select Semester" || DropDownList4.SelectedValue == "Select Subject")
        {
            Label3.Text = "Please Select All The Field";
        }
        else
        {
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select aid as Attendance_id,name as StudentName , email as Email from Student where course='" + DropDownList1.SelectedItem.Text + "' and year='" + DropDownList2.SelectedItem.Text + "' and sem='" + DropDownList3.SelectedItem.Text + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "Student");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
       
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        
        foreach (GridViewRow row in GridView1.Rows)
        {
            int Roll_No = Convert.ToInt32(row.Cells[1].Text);
            string stud_name = row.Cells[2].Text;
            string sid = row.Cells[3].Text;
            RadioButton rb1 = (row.Cells[0].FindControl("RadioButton1") as RadioButton);
            RadioButton rb2 = (row.Cells[0].FindControl("RadioButton2") as RadioButton);
            int status;
            if (rb1.Checked)
            {
                status = 1;
            }
            else
            {
                status = 0;
            }
            string course = DropDownList1.SelectedItem.Text;
            string year = DropDownList2.SelectedItem.Text;
            string subject = DropDownList4.SelectedItem.Text;
            int tot_lec = Int32.Parse(DropDownList5.SelectedItem.Text);
            //String email=;
            int tlec = (tot_lec * status);
            string sem=DropDownList3.SelectedItem.Text;
            DateTime dd = DateTime.Now;
            string date1 = dd.ToString("dd/MM/yyyy");

            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into StudentAttendance(aid,studentname,course,year,subject,status,date,lecture,sem,email) values('"+Roll_No+"','"+stud_name+"','"+course+"','"+year+"','"+subject+"','"+status+"','"+date1+"','"+tlec+"','"+sem+"','"+sid+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label4.Text = "Attendance Saved Succesfully";
            Label4.ForeColor = System.Drawing.Color.Green;

         }
      //  Response.Write(Session["T_unm"]);

        if (Session["T_unm"]!=null)
        {
            

          //  Response.Write(Session["T_nm"]);
            string course = DropDownList1.SelectedItem.Text;
            string year = DropDownList2.SelectedItem.Text;
            string sem = DropDownList3.SelectedItem.Text;
            String subject = DropDownList4.SelectedItem.Text;


            int total_lec = Int32.Parse(DropDownList5.SelectedItem.Text);

            DateTime dd = DateTime.Now;
            string date1 = dd.ToString("MM/dd/yyyy");

            SqlConnection con1 = new SqlConnection(str);

            con1.Open();
            SqlDataAdapter sda=new SqlDataAdapter("select T_nm from Teacher_mst where T_unm='"+Session["T_unm"]+"'",con1);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            string tnm= ds.Tables[0].Rows[0]["T_nm"].ToString() ;
          //  Response.Write(tnm);
           
            SqlCommand cmd1 = new SqlCommand("insert into T_Lecture(T_unm,Tname,date,LTaken,Course,Year,Subject,Sem) values('"+Session["T_unm"]+"','"+tnm+"','"+date1+"','"+total_lec+"','"+course+"','"+year+"','"+subject+"','"+sem+"')",con1);
            cmd1.ExecuteNonQuery();
            con1.Close();
        }
    }
 }
