using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Diagnostics;

namespace Vehicle_Manufacturing_System
{
    
    public partial class HR : System.Web.UI.Page
    {
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into Employee values('" + empid.Text + "','" + fname.Text + "','" + lname.Text + "','" + job.Text + "','" + passsword.Text + "','" + mgr_id.Text + "','" + task_ass.Text + "','" + gender.Text + "','" + deptno.Text + "','" + comm.Text + "','" + sal.Text + "','" + house_num.Text + "','" + area.Text + "','" + town.Text + "','" + city.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "Data Stored Successfully.";
            empid.Text = "";
            fname.Text = "";
            lname.Text = "";
            job.Text = "";
            passsword.Text = "";
            mgr_id.Text = "";
            task_ass.Text = "";
            gender.Text = "";
            deptno.Text = "";
            comm.Text = "";
            sal.Text = "";
            house_num.Text = "";
            area.Text = "";
            town.Text = "";
            city.Text = "";


        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}