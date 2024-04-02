using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Student_attendance : System.Web.UI.Page
{
   string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Student_Login.aspx");
            }
            //  text.Attributes.Add("autocomplete","off");
        }

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
          if (Session["email"] == null)
        {
            Response.Redirect("slogin1.aspx");
        }
        else
        { 
            string sid=Session["email"].ToString();
            DateTime dt = Convert.ToDateTime(text.Value);
            string dm = dt.ToString("yyyy-MM");
            SqlConnection con=new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("select lecture from StudentAttendance where DATEPART(yy,date)='" + dt.Year + "' and DATEPART(D,date)='"+dt.Month+"' and email='"+sid+"'", con);
            DataSet ds=new DataSet();
            sda.Fill(ds,"StudentAttendance");
            int r = 0, total = 0, itotal = 0, ftotal = 0;

            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
                {
                    int days = Convert.ToInt32(((DataRow)ds.Tables[0].Rows[r])["lecture"]);

                    itotal = days;
                    ftotal = (total + itotal);
                    total = ftotal;
                    r++;

                }
            }
           // Response.Write(itotal+" "+total);

               SqlDataAdapter sda1 = new SqlDataAdapter("select course,year,sem from Student where email='"+sid+"' ",con);
                DataSet ds1 = new DataSet();
                sda1.Fill(ds1,"Student");
                string course = ds1.Tables[0].Rows[0][0].ToString();
                string year = ds1.Tables[0].Rows[0][1].ToString();
                string sem = ds1.Tables[0].Rows[0][2].ToString();

                SqlDataAdapter sda2 = new SqlDataAdapter("select LTaken from T_Lecture where Course='" + course + "' and Year='" + year + "' and Sem='" + sem + "' and DATEPART(yy,date)='" + dt.Year + "' and DATEPART(M,date)='" + dt.Month + "' ", con);
                DataSet ds2 = new DataSet();
                sda2.Fill(ds2,"T_Lecture");


                int r1 = 0, total1 = 0, itotal1 = 0, ftotal1 = 0;
                int x1, x2;
                float per;

                string totalTakenLectures, totalLectureAttend;

                if (ds2.Tables[0].Rows.Count > 0)
                {
                    for (int i = 0; i <= ds2.Tables[0].Rows.Count - 1; i++)
                    {
                        int days = Convert.ToInt32(((DataRow)ds2.Tables[0].Rows[r1])["LTaken"]);

                        itotal1 = days;
                        ftotal1 = (total1 + itotal1);
                        total1 = ftotal1;
                        r1++;

                    }
                    totalTakenLectures = total1.ToString();
                    totalLectureAttend = total.ToString();

                    Label1.Text = "Total Lectures Attends :" + totalLectureAttend + "/ " + totalTakenLectures;
                    Label1.ForeColor=System.Drawing.Color.Blue;

                    x1 = Convert.ToInt32(totalTakenLectures);
                    x2 = Convert.ToInt32(totalLectureAttend);
                    per = ((x2 * 100) / x1);
                    Label2.Text = "Percentage : " + per + "%";
                    if (per < 40)
                    {
                        Label3.Text = "You are in defaluter for this month (" + dm + ").";
                        Label3.ForeColor = System.Drawing.Color.Red;

                    }
                }
                else
                {
                    Label1.Text = "No Record Found..!";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label2.Text = "";
                }
        }
    }
 }
