<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Login.aspx.cs" Inherits="Student_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <style type="text/css">
        body
        {
            padding-top:50px;
                color:White;
               background-color: #00AC9C;
            }
        .style1
        {
            background-color:	#404040;
            border-radius: 4px;
             width:100%;
             height:100%;
        }
        .style2
        {
            font-size: 20pt;
        }
               
       
        .style7
        {            height: 198px;
        }
        
        .style9
        {
            padding:20px 20px 20px 45px;
            font-weight: bold;
            border-radius: 4px;
        }
        .style10
        {
           padding:20px 20px 20px 45px;
            font-weight: bold;
            border-radius: 4px;
            
        }
      .button
        {
            border-radius: 4px;
              font-weight: bold;
            cursor:pointer;
             
}

            #TextBox1
            {
                 border-radius: 4px;
             }
            #TextBox2
            
              {
                   border-radius: 4px;
              }
              strong
              {
                   font-family:Baskerville Old Face;
                }
      
    </style>
</head>
<body >
    <form id="form1" runat="server">
  
                <center>
                <span class="style2">Attendance Management System</span><br />
                    <br /></center>
    <table class="style1" style="width:33%" align="center">
        <tr align="center" >
            <td colspan="2"
                style="font-weight: 700"; 
                class="style7"  >
                <img src="imges/graduated.png" style="height: 100px; width: 100px" />
                <br class="style2" />
                
                <span class="style2"><span class="style5">Student Login</span><br />
                </span></td>
            
        </tr>
        <tr >
            <td class="style9">
                User Name :<br />
                  <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" 
                    ForeColor="White" Height="35px" Width="404px" BorderColor="White" 
                    BorderStyle="Ridge" Font-Bold="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter User Name" ForeColor="Red">*</asp:RequiredFieldValidator>&nbsp;</td>
        
        </tr>
        <tr >
            <td class="style10" >
                Password :<br /> 
                <asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" 
                    ForeColor="White" Height="35px" Width="404px" TextMode="Password" 
                    BorderColor="White" BorderStyle="Ridge" Font-Bold="True"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
           
          
        </tr>
        <tr align="center">
            <td colspan="2"  class="style8">
                <br />
                <asp:Button ID="Button1" class="button" runat="server" BackColor="#00AC9C" BorderStyle="None" 
                    Font-Bold="True" Font-Names="Californian FB" Height="39px" Text="Login" 
                    Width="415px" Font-Size="Large" ForeColor="White" 
                    onclick="Button1_Click1" />
                
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin_Staff_Login.aspx" 
                    Font-Bold="True" ForeColor="White">For staff login</asp:HyperLink>
                <br />
                
                <br />
                <asp:Label ID="msg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                <br />
            </td>
            
        </tr>
    </table>
    <br />
    <br />
    </form>
</body>
</html>
