using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add_course.aspx");
    }
    protected void Subject_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add_subject.aspx");
    }
    protected void Teachers_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add_teacher.aspx");
    }
    protected void Assing_sub_Click(object sender, EventArgs e)
    {
        Response.Redirect("Assign_subject.aspx");
    }
    protected void Student_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add_student.aspx");
    }
    protected void log_out_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Staff_Login");
    }
}
