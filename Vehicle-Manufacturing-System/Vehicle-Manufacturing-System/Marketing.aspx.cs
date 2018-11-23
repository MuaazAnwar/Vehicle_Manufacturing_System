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
    public partial class Marketing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string loginperson = Request.QueryString["loginperson"];
            SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            conc.Open();
            String qurey = "select job from employee where emp_id='" + loginperson + "'";
            SqlCommand cmd = new SqlCommand(qurey, conc);
            string post = cmd.ExecuteScalar().ToString().Replace(" ", "");
            label_id.Text = "ID: " + loginperson;

            Label_post.Text = "Post: " + post;
            Debug.WriteLine("Hello, world!" + post);

            conc.Close();
            
            SqlDataSource SqlDataSource2 = new SqlDataSource();
            SqlDataSource2.ID = "SqlDataSource2";
            this.Page.Controls.Add(SqlDataSource2);
            SqlDataSource2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString;
            SqlDataSource2.SelectCommand = "SELECT * from Department";
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();
        }

     
    }
}