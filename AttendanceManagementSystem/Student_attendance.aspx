<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="Student_attendance.aspx.cs" Inherits="Student_attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
<br />

    <table class="style1" style="width:40%;height:465px" cellpadding="5px" cellspacing="10px"  align="center">
        <tr align="center">
            <td style="width: 289px">
                Select : &nbsp &nbsp <input name="startDate" id="text" class="date-picker" runat="server" value="" style="width:231px; height:30px" />
            </td>
           
        </tr>
        <tr align="center">
            <td>
                <asp:Button ID="Button5" runat="server" Text="Select" Font-Bold="True" 
                    Height="40px" Width="135px" onclick="Button5_Click" BackColor="#00AC9C" 
                    BorderColor="White" Font-Size="Large" ForeColor="White" />
            </td>
           
        </tr>
        <tr align="center">
            <td >
                <asp:Label ID="Label1" runat="server" ForeColor="#003399"></asp:Label>
            </td>
           
        </tr>
        <tr align="center">
            <td>
                <asp:Label ID="Label2" runat="server" ForeColor="#003399"></asp:Label>
            </td>
           
        </tr>
        <tr align="center">
            <td >
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
           
        </tr>
    </table>

</asp:Content>

