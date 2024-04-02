<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="Add_subject.aspx.cs" Inherits="Add_subject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    
    <table class="style1" style="height:340px;width:40%;" cellpadding="5px" 
            cellspacing="10px">
        <tr align="center">
            <td colspan="2">
              <h2 style="text-decoration: underline">Add Subject</h2></td>
            
        </tr>
        <tr align="center">
            <td align="center" style="width: 346px; height: 43px; padding-bottom:15px; font-size:17px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Course</b></td>
            <td style="width: 369px; height: 43px;" align="left">
                &nbsp; 
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="238px" 
                    AutoPostBack="True">
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="*Select Course" 
                    Font-Size="Smaller" ForeColor="Red" InitialValue="Select Course" 
                    ValidationGroup="Validation"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr align="center">
            <td style="height: 40px; width: 346px; padding-bottom:15px;font-size:17px">
                &nbsp;<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Year </b></td>
            <td style="height: 46px; width: 369px;" align="left"> &nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" 
                    Height="30px" Width="238px" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                    <asp:ListItem Value="0" >Select Year</asp:ListItem>
                    <asp:ListItem Value="1">First Year</asp:ListItem>
                    <asp:ListItem Value="2">Second Year</asp:ListItem>
                    <asp:ListItem Value="3">Third Year</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DropDownList2" ErrorMessage="*Select Year" 
                    Font-Size="Smaller" ForeColor="Red" InitialValue="0" 
                    ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
            <td style="width: 346px;  padding-bottom:15px;font-size:17px"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Semester </b></td>
            <td style="width: 369px" align="left">
                &nbsp; <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    Height="30px" Width="238px">
                    <asp:ListItem Value="0">Select Semester</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="DropDownList3" ErrorMessage="*Select Semester" 
                    Font-Size="Smaller" ForeColor="Red" InitialValue="0" 
                    ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
            <td style="width: 346px; padding-bottom:15px;font-size:17px">
                <b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subject&nbsp; Name&nbsp; </b></td>
            <td style="width: 369px" align="left">
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="231px" 
                    CausesValidation="true" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*Enter Subject Name" 
                    ForeColor="Red" Font-Size="Smaller" ValidationGroup="Validation"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
  
        <tr align="center">
            <td colspan="2">
              
                      <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="40px" Text="Add" 
                    Width="150px" onclick="Button1_Click" BackColor="#00AC9C" BorderColor="White" 
                    Font-Size="Large" ForeColor="White" ValidationGroup="Validation" />
                <br />
            </td>
            
        </tr>
        <tr align="center">
            <td colspan="2" style="height: 28px">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
            </td>
           
        </tr>
        <tr align="center">
            <td colspan="2" align="center" style=" padding-bottom:15px">
               
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="SID" DataSourceID="SqlDataSource1" 
                    AutoGenerateDeleteButton="True" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="700px" AutoGenerateEditButton="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="CID" HeaderText="Course ID" SortExpression="CID" 
                            ReadOnly="True" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CourseName" HeaderText="Course Name" 
                            SortExpression="CourseName" ReadOnly="True" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SID" HeaderText="Subject ID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="SID" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SubjectName" HeaderText="Subject Name" 
                            SortExpression="SubjectName" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Sem" HeaderText="Sem" SortExpression="Sem" />
                        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
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
                    SelectCommand="SELECT [CID], [CourseName], [SID], [SubjectName], [Sem], [Year] FROM [Subject]"
                    DeleteCommand="DElETE FROM [Subject] WHERE [SID]=@SID"
                    UpdateCommand="UPDATE Subject SET [SubjectName]=@SubjectName,[Sem]=@Sem,[Year]=@Year WHERE [SID]=@SID" >
                </asp:SqlDataSource>
                
                <br />
            </td>
            
        </tr>
    </table>
    
</center>
</asp:Content>

