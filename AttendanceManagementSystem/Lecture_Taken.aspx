<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher_master.master" AutoEventWireup="true" CodeFile="Lecture_Taken.aspx.cs" Inherits="Lecture_Taken" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   <center>
    <table class="style1" cellpadding="5px" cellspacing="10px" width="1200px">
        <tr align="center">
            <td style="width: 123px; height: 84px; padding-bottom:20px; font-size:17px">
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

            <td style="height: 84px; width: 48px;  padding-bottom:20px;font-size:17px">
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
            <td style="height: 84px;  padding-bottom:20px;font-size:17px">
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
            <td style="height: 84px;  padding-bottom:20px;font-size:17px">
             <br/>  &nbsp;Subject:</td>
            <td style="height: 84px;">
                &nbsp;<asp:DropDownList ID="DropDownList4" runat="server" 
                    Height="30px" Width="231px" 
                    onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                    <asp:ListItem>Select Semester</asp:ListItem>
                </asp:DropDownList><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="*Select Subject" ControlToValidate="DropDownList4" 
                    Font-Size="Smaller" ForeColor="Red" InitialValue="Select Subject"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 84px"></td>
           
        </tr>
    </table>
</center>

<center>
    <table cellpadding="5px" cellspacing="10px" class="style1" style="font-size:17px">
        <tr align="center">
            <td style="height: 90px; width: 644px;font-size:17px">
                Date : <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="231px"></asp:TextBox>

                    
                   <h6 style="color : Red">Enter Date in ("mm/dd/year") Format</h6> <br />
                <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
             
                </td>
               
          
        </tr>
        <tr align="center" >
            <td style="height: 46px" >
                 &nbsp; &nbsp &nbsp; &nbsp  <asp:Button ID="Button5" runat="server" 
                     Font-Bold="True" Height="40px" 
                    onclick="Button5_Click" Text="Select " Width="150px" BackColor="#00AC9C" 
                     BorderColor="White" Font-Size="Large" ForeColor="White" />
            </td>
        </tr>
        <tr align="center">
            <td >
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />    
&nbsp;</td>
        </tr>
        <tr align="center">
            <td  >
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" Width="70%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="LTaken" HeaderText="Lecture Taken" 
                            SortExpression="LTaken" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Subject" HeaderText="Subject Name" 
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
                    
                    SelectCommand="SELECT [LTaken], [Subject] FROM [T_Lecture] WHERE (([T_unm] = @T_unm) AND ([date] = @date) AND ([Subject] = @Subject))">
                    <SelectParameters>
                        <asp:SessionParameter Name="T_unm" SessionField="T_unm" Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="date" 
                            PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox2" Name="Subject" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <br />
        <br />
        <br />
        <br />

       
    </table>
    </center>
</asp:Content>

