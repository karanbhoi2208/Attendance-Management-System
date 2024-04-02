<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher_master.master" AutoEventWireup="true" CodeFile="Mark_attendance.aspx.cs" Inherits="Mark_attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center>
    <table class="style1" cellpadding="5px" cellspacing="10px" width="1200px">
        <tr align="center">
            <td style="width: 123px; height: 84px; padding-bottom:20px">
               <br/> Course: </td>
            <td style="height: 84px">
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="30px" Width="231px" 
                    >
                </asp:DropDownList><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*Select Course" ControlToValidate="DropDownList1" 
                    Font-Size="Smaller" ForeColor="Red" InitialValue="Select Course"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 84px"></td>

            <td style="height: 84px; width: 48px;  padding-bottom:20px">
               <br/>Year:</td>
            <td style="height : 84px; ">
                &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    Height="30px" onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                    Width="231px">
                    <asp:ListItem Value="0">Select Year</asp:ListItem>
                    <asp:ListItem Value="1">First Year</asp:ListItem>
                    <asp:ListItem Value="2">Second Year</asp:ListItem>
                    <asp:ListItem Value="3">Third Year</asp:ListItem>
                </asp:DropDownList><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*Select Year" ControlToValidate="DropDownList2" 
                    Font-Size="Smaller" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 84px"></td>
            <td style="height: 84px;  padding-bottom:20px">
               <br/> &nbsp;Semester:<br/></td>
            <td style="height: 84px;">
                &nbsp;<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    Height="30px" onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
                    Width="231px">
                    <asp:ListItem Value="0">Select Semester</asp:ListItem>
                </asp:DropDownList><br />

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DropDownList3" ErrorMessage="*Select Semester" 
                    Font-Size="Smaller" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>

            </td>
            <td style="width: 15px; height: 84px;"></td>
            <td style="height: 84px;  padding-bottom:20px">
             <br/>  &nbsp;Subject:</td>
            <td style="height: 84px;">
                &nbsp;<asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                    Height="30px" Width="231px">
                </asp:DropDownList><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="*Select Subject" ControlToValidate="DropDownList4" 
                    Font-Size="Smaller" ForeColor="Red" InitialValue="Select Subject"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 84px"></td>
           
        </tr>
    </table>


    <table cellpadding="5px" cellspacing="10px" class="style1">
        <tr align="center">
            <td style="height: 90px" >
                Total Lecture : <asp:DropDownList ID="DropDownList5" runat="server" 
                    Height="30px" Width="50px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
            </td>
            
        </tr>
        <tr align="center">
            <td style="height: 46px">
                 &nbsp; &nbsp &nbsp; &nbsp <asp:Button ID="Button5" runat="server" 
                     Font-Bold="True" Height="40px" 
                    onclick="Button5_Click" Text="Select " Width="150px" BackColor="#00AC9C" 
                     BorderColor="White" Font-Size="Large" ForeColor="White" />
            </td>
        </tr>
        <tr align="center">
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" ForeColor="#336600"></asp:Label><br />    
&nbsp;<asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr align="center">
            <td>
                &nbsp;
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="600px" Font-Bold="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Mark Attenndance">
                            <ItemTemplate>
                                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="attend" 
                                    Text="Present" Checked="True" />
                                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="attend" 
                                    Text="Absent" />
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <EmptyDataTemplate>
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                            Text="No such Records in Database!"></asp:Label>
                    </EmptyDataTemplate>
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
                
            </td>
        </tr>
        <tr align="center">
            <td>
               &nbsp; &nbsp &nbsp; &nbsp <asp:Button ID="Button6" runat="server" 
                    Font-Bold="True" Height="40px" 
                    Text="Mark Attendance" Width="155px" onclick="Button6_Click" 
                    BackColor="#00AC9C" BorderColor="White" Font-Size="Large" ForeColor="White" />
            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
       
    </table>
    </center>
</asp:Content>

