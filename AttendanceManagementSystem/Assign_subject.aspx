<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="Assign_subject.aspx.cs" Inherits="Assign_subject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 269px;
        }
        .style5
        {
            width: 354px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <table class="style1" style="width:50%;
" cellpadding="5px" cellspacing="10px">
        <tr align="center">
            <td colspan="2">
                <h2 style="text-decoration: underline">Allocate Subject</h2>
            </td>
           
        </tr>
        <tr >
           <td align="right" style="padding-bottom:15px; font-size:17px"class="style5">
                <b>Teacher </b>&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td align="left">
                &nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="238px" 
                    AutoPostBack="True">
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="*Select Teacher" ForeColor="Red" 
                    Font-Size="Smaller" InitialValue="Select Teacher" 
                    ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
              <td align="right" style="padding-bottom:15px;font-size:17px" class="style5"><b>Course </b>
                &nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td align="left">
                &nbsp; <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    Height="30px" Width="238px">
                </asp:DropDownList>
                &nbsp;<br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DropDownList2" ErrorMessage="*Select Course" ForeColor="Red" 
                    Font-Size="Smaller" InitialValue="Select Course" 
                    ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
              <td align="right" style="padding-bottom:15px;font-size:17px" class="style5">
                <b> Year </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td align="left">
              
               
              
                &nbsp;
              
               
              
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList3_SelectedIndexChanged" Height="30px" 
                    Width="238px">
                    <asp:ListItem Value="0">Select Year</asp:ListItem>
                    <asp:ListItem Value="1">First Year</asp:ListItem>
                    <asp:ListItem Value="2">Second Year</asp:ListItem>
                    <asp:ListItem Value="3">Third Year</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*Select Year" ControlToValidate="DropDownList3" ForeColor="Red" 
                    Font-Size="Smaller" InitialValue="0" ValidationGroup="Validation"></asp:RequiredFieldValidator> &nbsp;</td>
        </tr>
        <tr align="center">
            <td align="right" style="padding-bottom:20px;font-size:17px" class="style5">
                <b> Semester</b>&nbsp;&nbsp;&nbsp; </td>
            <td align="left">
                
                &nbsp;
                
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList4_SelectedIndexChanged" Height="30px" 
                    Width="238px">
                    <asp:ListItem Value="0">Select Semester</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="DropDownList4" ErrorMessage="*Select Semester" ForeColor="Red" 
                    Font-Size="Smaller" InitialValue="0" ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
              <td align="right" style="padding-bottom:20px; font-size:17px" class="style5">
                <b> &nbsp;&nbsp;&nbsp;&nbsp; Subject&nbsp;&nbsp; </b>&nbsp;</td>
            <td align="left">
                 &nbsp;
                 <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                    Height="30px" Width="238px" 
                   >
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="DropDownList5" ErrorMessage="*Select Subject" ForeColor="Red" 
                    Font-Size="Smaller" InitialValue="Select Subject" 
                     ValidationGroup="Validation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
            <td colspan="2">
                &nbsp;<asp:Button ID="Button1" runat="server" Font-Bold="True" Height="40px" Text="Add" 
                    Width="150px" onclick="Button1_Click" BackColor="#00AC9C" BorderColor="White" 
                    Font-Size="Large" ForeColor="White" ValidationGroup="Validation" /></td>
            
        </tr>
        <tr align="center">
            <td colspan="2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
           
        </tr>
        <tr align="center">
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    AutoGenerateDeleteButton="True" 
                    DataSourceID="SqlDataSource1" 
                    DataKeyNames="id" AllowPaging="True" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" 
                    Width="800px" Font-Bold="True" AllowSorting="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Teacher" HeaderText="Teacher" 
                            SortExpression="Teacher" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Course" HeaderText="Course" 
                            SortExpression="Course" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Sem" HeaderText="Sem" SortExpression="Sem" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Subject" HeaderText="Subject" 
                            SortExpression="Subject" >
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
                    SelectCommand="SELECT * FROM [Assign_subject]" DeleteCommand="delete from [Assign_subject] WHERE [id]=@id"></asp:SqlDataSource>
            </td>
          
        </tr>
    </table>
    </center>
</asp:Content>

