<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HR.aspx.cs" Inherits="Vehicle_Manufacturing_System.HR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 130%;
            margin-bottom: 0px;
        }
        .auto-style3
        {
            text-align: right;
        }
        .auto-style4
        {
            width: 100%;
        }
        .auto-style5
        {
            width: 105px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        HR form</div>
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">Id</td>
                <td>
                    <asp:TextBox ID="id" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Password</td>
                <td>
                    <asp:TextBox ID="password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Depart number </td>
                <td>
                    <asp:TextBox ID="deptno" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Job</td>
                <td>
                    <asp:TextBox ID="job" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="submit" runat="server" Height="36px" OnClick="Button1_Click" style="text-align: center" Text="Submit" Width="100px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBconnect %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
    </form>
</body>
</html>
