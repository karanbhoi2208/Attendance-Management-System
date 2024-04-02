<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="Add_student.aspx.cs" Inherits="Add_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
        
         
        .style4
        {
            width: 655px;
        }
        .style6
        {
            width: 713px;
            height: 54px;
        }
        .style7
        {
            height: 54px;
        }
       
        
         
        .style9
        {
            width: 713px;
        }
        .style10
        {
            width: 713px;
            height: 50px;
        }
       
        
         
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<table width="50%" >

        <tr>
            <td colspan="2" align="center">
                <h2 style="text-decoration: underline;">Add Student</h2>
                &nbsp;</td>   
        </tr>
        <tr align="center">
            <td style="padding-bottom:15px; font-size:17px;" align="right" class="style6">
                <b>First Name&nbsp; </b>&nbsp;</td>

            <td width="auto" align="left"  class="style7">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="231px"></asp:TextBox>&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" 
                    ErrorMessage="*Enter First Name" ForeColor="Red" Font-Size="Smaller" 
                    ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
            <td style="padding-bottom:25px;font-size:17px;" align="right" class="style9">
                <b>Last Name&nbsp;&nbsp;&nbsp;&nbsp; </b></td>
            <td style="height: 46px" width="auto" align="left">
               &nbsp &nbsp&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="231px"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*Enter Last Name" 
                    ForeColor="Red" Font-Size="Smaller" ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
      
        <tr align="center">
            <td style="padding-bottom:30px;font-size:17px;" align="right" class="style9">
                <b>Email Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></td>
            <td style="height: 45px" width="auto" align="left">
                &nbsp &nbsp&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="231px"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*Enter Email ID" 
                    ForeColor="Red" Font-Size="Smaller" ValidationGroup="Validation"></asp:RequiredFieldValidator>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*Enter valid Email Id" 
                    Font-Size="Smaller" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="Validation"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr align="center">
            <td style="padding-bottom:30px;font-size:17px;" align="right" class="style9">
                <b>Contact No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></td>
            <td width="auto" align="left">
                &nbsp&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="231px"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*Enter Contact Number" 
                    ForeColor="Red" Font-Size="Smaller" ValidationGroup="Validation"></asp:RequiredFieldValidator>
               
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*Enter valid contact number" 
                    Font-Size="Smaller" ForeColor="Red" ValidationExpression="[0-9]{10}" 
                    ValidationGroup="Validation"></asp:RegularExpressionValidator>
               
            </td>
        </tr>
        <tr align="center">
            <td style="padding-bottom:25px;font-size:17px;" align="right" class="style9">
                <b>Course&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></td>
            <td width="auto" align="left">
                &nbsp &nbsp&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" 
                    runat="server" AutoPostBack="True" 
                    ToolTip="30px" Width="238px" Height="30px" 
                   >
                </asp:DropDownList>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="*Select Course" 
                    ForeColor="Red" Font-Size="Smaller" InitialValue="Select Course" 
                    ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
            <td style="; padding-bottom:25px;font-size:17px;" align="right" class="style9">
                <b>Year&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></td>
            <td width="auto" align="left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" ToolTip="30px" 
                    Width="238px" Height="30px" 
                    >
                    <asp:ListItem Value="0">Select Year</asp:ListItem>
                    <asp:ListItem Value="1">First Year</asp:ListItem>
                    <asp:ListItem Value="2">Second Year</asp:ListItem>
                    <asp:ListItem Value="3">Third Year</asp:ListItem>
                </asp:DropDownList>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DropDownList2" ErrorMessage="*Select Year" 
                    ForeColor="Red" Font-Size="Smaller" InitialValue="0" 
                    ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
            <td style="padding-bottom:25px;font-size:17px;" align="right" class="style10">
                <b>Semester&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></td>
            <td class="style10" width="auto" align="left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    ToolTip="30px" Width="238px" Height="30px">
                    <asp:ListItem Value="0">Select Semester</asp:ListItem>
                    <asp:ListItem Value="1">Sem I</asp:ListItem>
                    <asp:ListItem Value="3">Sem II</asp:ListItem>
                    <asp:ListItem Value="3">Sem III</asp:ListItem>
                    <asp:ListItem Value="4">Sem IV</asp:ListItem>
                    <asp:ListItem Value="5">Sem V</asp:ListItem>
                    <asp:ListItem Value="6">Sem VI</asp:ListItem>
                </asp:DropDownList>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="DropDownList3" ErrorMessage="*Select Semester" 
                    ForeColor="Red" Font-Size="Smaller" InitialValue="0" 
                    ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
            <td style="padding-bottom:15px;font-size:17px;" align="right" class="style9"><b>Create Password </b> </td>
            <td width="auto" align="left"> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="231px" 
                    TextMode="Password"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox6" 
                    ErrorMessage="*Password must contain be mininum 8 character.Password must contain at least 1 capital alphabet, 1 special character and a number." 
                    Font-Size="Smaller" ForeColor="Red" 
                    
                    ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&amp;+=]).*$" 
                    ValidationGroup="Validation"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="40px" Text="Add" 
                    Width="150px" onclick="Button1_Click" BackColor="#00AC9C" BorderColor="White" 
                    Font-Size="Large" ForeColor="White" ValidationGroup="Validation" />
            </td>
         
        </tr>
             
       
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
            </td>
         
        </tr>
             
       
        
    </table>

    <table style="width:100%" >
        <tr align="center">
            <td>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AllowPaging="True" AllowSorting="True" 
                    AutoGenerateColumns="False" DataKeyNames="aid" DataSourceID="SqlDataSource1" 
                    PageSize="5" Width="60%" AutoGenerateDeleteButton="True" 
                    AutoGenerateEditButton="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="aid" HeaderText="aid" InsertVisible="False" 
                            ReadOnly="True" SortExpression="aid" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="cno" HeaderText="cno" SortExpression="cno" />
                        <asp:BoundField DataField="course" HeaderText="course" 
                            SortExpression="course" />
                        <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                        <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                        <asp:BoundField DataField="password" HeaderText="password" 
                            SortExpression="password" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Student]"
                    DeleteCommand="DELETE FROM [Student] WHERE [aid]=@aid"
                    UpdateCommand="UPDATE [Student] set [name]=@name,[email]=@email,[cno]=@cno,[course]=@course,[year]=@year,[sem]=@sem,[password]=@password WHERE [aid]=@aid"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </center>
</asp:Content>

