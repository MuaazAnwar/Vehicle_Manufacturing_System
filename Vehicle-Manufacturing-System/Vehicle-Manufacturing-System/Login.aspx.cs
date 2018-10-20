using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;




namespace Vehicle_Manufacturing_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bttn_Login_Click(object sender, EventArgs e)
        {
            SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            conc.Open();
            String checkuser = "select count(*) from employee where ID='" + User_ID_text.Text + "'";
            SqlCommand cmd = new SqlCommand(checkuser, conc);
            int chkuser=Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (chkuser == 1)
            {
                String checkpass = "select pass from employee where ID='" + User_ID_text.Text + "'";
                SqlCommand cmd1 = new SqlCommand(checkpass, conc);
                string password = cmd1.ExecuteScalar().ToString().Replace(" ","");
                if (password == Password_text.Text)
                {
                    
                    Response.Write("Pass is verified");
                    string checkdept = "select deptno from employee where ID='" + User_ID_text.Text + "'";
                    SqlCommand cmd2 = new SqlCommand(checkdept,conc);
                    int userdept = Convert.ToInt32(cmd2.ExecuteScalar().ToString());
                    Response.Write(userdept);
                    if (userdept == 1)
                    {
                        //Response.Redirect("HR.aspx");
                    }
                    else if (userdept == 2)
                    {
                        //Response.Redirect("Accounting.aspx");
                    }
                    else if (userdept == 4)
                    {
                        Response.Write("i am Here");
                        Response.Redirect("Sales.aspx?loginperson=" +User_ID_text.Text);
                    }
                    else if (userdept == 7)
                    {
                        //Response.Redirect("Marketing.aspx");
                    }


                }
                else
                {
                    Response.Write("Pass is wrong");
                }
            }
            else
            {
                Response.Write("user does'nt exists");
            }


        }
    }
}