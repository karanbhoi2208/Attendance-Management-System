<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Staff_Login.aspx.cs" Inherits="Admin_Staff_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
     <script type="text/javascript">
         function preventBack() { window.history.forward(); }
         setTimeout("preventBack()", 0);
         window.onunload = function () { null }; 
     </script>
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
        .style8
        {
               
            
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
            #Password
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
                <span class="style2"><strong>Attendance Management System</strong></span><br />
                    <br /></center>
    <table class="style1" style="width:33%" align="center">
        <tr align="center" >
            <td colspan="2" style="font-weight: 700";   class="style7"  >
                <img src="imges/icons8-male-user-100.png" / alt="Admin and Staff login logo">
                <br class="style2" />
                
                <span class="style2"><span class="style5">Login</span><br />
                </span></td>
            
        </tr>
        <tr >
            <td class="style9">
                User Name :<br />
                  <asp:TextBox ID="TextBox1" runat="server" Width="404px" 
                    Height="35px" BackColor="Transparent" 
                    ForeColor="White" BorderColor="White" BorderStyle="Ridge" Font-Bold="True" 
                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter User Name" ForeColor="Red">*</asp:RequiredFieldValidator>&nbsp;</td>
        
        </tr>
        <tr >
            <td class="style10" >
                Password :<br /> 
                <asp:TextBox 
                    ID="Password" runat="server" Width="404px" Height="35px" 
                    BackColor="Transparent" TextMode="Password" style="margin-top: 0px" 
                    ForeColor="White" BorderColor="White" BorderStyle="Ridge" Font-Bold="True"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Password" ErrorMessage="Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
           
          
        </tr>
        <tr align="center">
            <td colspan="2"  class="style8">
                <br />
                <asp:Button ID="login1" class="button" runat="server" Height="39px" Text="Login" 
                    Width="415px" onclick="login1_Click" Font-Bold="True" 
                    BackColor="#00AC9C" BorderStyle="None" Font-Names="Californian FB" 
                    Font-Overline="False" Font-Size="Large" Font-Strikeout="False" 
                    Font-Underline="False" ForeColor="White" />
                
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Student_Login.aspx" 
                    Font-Bold="True" ForeColor="White">For students login</asp:HyperLink>
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
