<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vehicle_Manufacturing_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">User_ID<asp:TextBox ID="User_ID_text" runat="server" style="margin-left: 98px" OnTextChanged="User_ID_text_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="User_ID_text" ErrorMessage="Please Enter ID" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;Password<asp:TextBox ID="Password_text" runat="server" style="margin-left: 93px" TextMode="Password" Width="120px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password_text" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p style="text-align: left">
            <asp:Button ID="Bttn_Login" runat="server" OnClick="Bttn_Login_Click" style="margin-left: 324px" Text="Login" Width="113px" />
        </p>
    </form>
</body>
</html>
