<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HR.aspx.cs" Inherits="Vehicle_Manufacturing_System.HR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 89%;
            margin-bottom: 0px;
            height: 895px;
        }
        .auto-style3
        {
            text-align: left;
            width: 1053px;
        }
        #form1
        {
            height: 934px;
        }
        .auto-style4
        {
            width: 100%;
            height: 185px;
        }
        .auto-style8
        {
            width: 157px;
            height: 26px;
        }
        .auto-style9
        {
            height: 26px;
        }
        .auto-style5
        {
            width: 157px;
        }
        .auto-style6
        {
            width: 157px;
            height: 11px;
        }
        .auto-style7
        {
            height: 11px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        HR form</div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="label_id" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="label_post" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="emp_id" DataSourceID="SqlDataSource1" Width="953px">
                        <Columns>
                            <asp:BoundField DataField="emp_id" HeaderText="emp_id" ReadOnly="True" SortExpression="emp_id" />
                            <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                            <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                            <asp:BoundField DataField="job" HeaderText="job" SortExpression="job" />
                            <asp:BoundField DataField="Manager_Id" HeaderText="Manager_Id" SortExpression="Manager_Id" />
                            <asp:BoundField DataField="Task_Assign" HeaderText="Task_Assign" SortExpression="Task_Assign" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="Department_No" HeaderText="Department_No" SortExpression="Department_No" />
                            <asp:BoundField DataField="Commision" HeaderText="Commision" SortExpression="Commision" />
                            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                            <asp:BoundField DataField="House_No" HeaderText="House_No" SortExpression="House_No" />
                            <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                            <asp:BoundField DataField="Town" HeaderText="Town" SortExpression="Town" />
                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        </Columns>
                    </asp:GridView>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button_add_emp" runat="server" OnClick="Button1_Click1" style="text-align: center; margin-left: 443px" Text="Add New Employee" />
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Employee Already Exsist" />
                    <br />
                    <asp:GridView ID="GridView2" runat="server" Width="302px">
                    </asp:GridView>
&nbsp;<br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style8">Employee Id</td>
                            <td class="auto-style9">
                                <asp:TextBox ID="empid" runat="server" Height="16px" style="margin-left: 0px" Width="787px" Wrap="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">First Name</td>
                            <td>
                                <asp:TextBox ID="fname" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Last Name</td>
                            <td>
                                <asp:TextBox ID="lname" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Job</td>
                            <td>
                                <asp:TextBox ID="job" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Password</td>
                            <td>
                                <asp:TextBox ID="passsword" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Manager ID</td>
                            <td>
                                <asp:TextBox ID="mgr_id" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Task Assign</td>
                            <td>
                                <asp:TextBox ID="task_ass" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Gender </td>
                            <td>
                                <asp:TextBox ID="gender" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Department Number</td>
                            <td>
                                <asp:TextBox ID="deptno" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Commission</td>
                            <td>
                                <asp:TextBox ID="comm" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Salary </td>
                            <td>
                                <asp:TextBox ID="sal" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">House Number </td>
                            <td>
                                <asp:TextBox ID="house_num" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Area </td>
                            <td>
                                <asp:TextBox ID="area" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Town</td>
                            <td>
                                <asp:TextBox ID="town" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">City </td>
                            <td class="auto-style7">
                                <asp:TextBox ID="city" runat="server" Height="16px" style="margin-left: 0px" Width="787px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <br />
                </td>
            </tr>
        </table>
        <asp:Button ID="submit" runat="server" Height="36px" OnClick="Button1_Click" style="text-align: center" Text="Submit" Width="100px" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" ForeColor="Green" Text="Label" Visible="False"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBconnect %>" SelectCommand="SELECT [emp_id], [First_Name], [Last_Name], [job], [Manager_Id], [Task_Assign], [Gender], [Department_No], [Commision], [Salary], [House_No], [Area], [Town], [City] FROM [Employee]"></asp:SqlDataSource>
    </form>
</body>
</html>
