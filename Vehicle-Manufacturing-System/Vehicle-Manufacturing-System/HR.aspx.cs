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
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into table Employee('"+id.Text+"','"+password.Text+"','"+deptno.Text+"','"+job.Text+"')",conn);
            cmd.ExecuteNonQuery();
            con.Close();
            id.Text = "";
            password.Text = "";
            deptno.Text = "";
            job.Text = "";


        }
    }
}