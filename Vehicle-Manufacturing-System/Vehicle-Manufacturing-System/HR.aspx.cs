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
    
    public partial class HR : System.Web.UI.Page
    {
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            con.Open();
            
            SqlCommand cmd = new SqlCommand("insert into Employee values('"+id.Text+"','"+password.Text+"','"+deptno.Text+"','"+job.Text+"')",con);
            cmd.ExecuteNonQuery();

            con.Close();
            id.Text = "";
            password.Text = "";
            deptno.Text = "";
            job.Text = "";


        }
    }
}