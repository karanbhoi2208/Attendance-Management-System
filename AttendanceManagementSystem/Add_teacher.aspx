<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="Add_teacher.aspx.cs" Inherits="Add_teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 272px;
            height: 45px;
        }
        .style6
        {
            width: 339px;
        }
        .style7
        {
            width: 339px;
            height: 68px;
        }
        .style8
        {
            height: 68px;
        }
        .style9
        {
            height: 64px;
            width: 339px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
 <table cellpadding="5px" cellspacing="10px" class="style1" style="width:55%;">
        <tr align="center">
            <td colspan="2" style="height: 43px; text-decoration: underline">
               <h2> Add Teacher</h2></td>
            
        </tr>
        <tr >
            <td align="right" class="style6">
                <b>&nbsp;&nbsp;&nbsp; Teacher Name&nbsp;&nbsp;&nbsp;&nbsp; </b></td>
            <td >
                 &nbsp&nbsp;&nbsp;&nbsp;&nbsp; &nbsp<asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="231px"></asp:TextBox>
                 <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*Enter Teacher Name" 
                     ForeColor="Red" Font-Size="Smaller" ValidationGroup="Validation"></asp:RequiredFieldValidator>
                 <br />
            </td>
        </tr>
        <tr >
            <td style="padding-bottom: 10px;" align="right" class="style9">
                <b>Create
                User Name</b></td>
            <td style="height: 64px">
                &nbsp&nbsp;&nbsp;&nbsp;&nbsp; &nbsp<asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="231px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*Enter Username" 
                    ForeColor="Red" Font-Size="Smaller" ValidationGroup="Validation"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="padding-bottom: 20px;" class="style6" align="right">
                <b>Email id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></td>
            <td>
                &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="231px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*Enter Email id" 
                    ForeColor="Red" Font-Size="Smaller" ValidationGroup="Validation"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*Enter Valid Email Id" 
                    Font-Size="Smaller" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="Validation"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="padding-bottom: 60px; " align="right" class="style7">
                <b>Create
                Password</b></td>
            <td class="style8">
                &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Height="30px" 
                    Width="231px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*Create password" 
                    ForeColor="Red" Font-Size="Smaller" ValidationGroup="Validation"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox4" 
                    ErrorMessage="*Password must contain be mininum 8 character.Password must contain at least 1 capital alphabet, 1 special character and a number." 
                    Font-Size="Smaller" ForeColor="Red" 
                    
                    ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&amp;+=]).*$" 
                    ValidationGroup="Validation"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr align="center">
            <td colspan="2" style="height: 49px">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="40px" Text="Add" 
                    Width="150px" onclick="Button1_Click" BackColor="#00AC9C" BorderColor="White" 
                    Font-Size="Large" ForeColor="White" ValidationGroup="Validation" />
            </td>
           
        </tr>
        <tr align="center">
            <td colspan="2" style="height: 39px">
                <asp:Label ID="Label1" runat="server" ForeColor="#009933"></asp:Label>
                <br />
            </td>
           </tr>
      
    </table>

    <table style="width: 40%;">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" DataKeyNames="eid" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" Width="800px" 
                    HorizontalAlign="Center" AllowPaging="True" PageSize="5" Font-Bold="True" 
                    AllowSorting="True" AutoGenerateDeleteButton="True" 
                    AutoGenerateEditButton="True" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="T_nm" HeaderText="Teacher name" 
                            SortExpression="T_nm" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="T_unm" HeaderText="User name" 
                            SortExpression="T_unm" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="eid" HeaderText="Email id" SortExpression="eid" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="password" HeaderText="Password" 
                            SortExpression="password" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
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
                    SelectCommand="SELECT * FROM [Teacher_mst]" DeleteCommand="delete from [Teacher_mst] where [eid]=@eid" UpdateCommand= "update [Teacher_mst] set [T_nm]=@T_nm, [T_unm]=@T_unm ,[password]=@password where [eid]=@eid" ></asp:SqlDataSource>
                </td>
        </tr>
    </table>
</center>
</asp:Content>

