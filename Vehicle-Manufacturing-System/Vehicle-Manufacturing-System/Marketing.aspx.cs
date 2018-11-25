using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Diagnostics;
using System.Text;


namespace Vehicle_Manufacturing_System
{
    public partial class Marketing : System.Web.UI.Page
    {
        string loginid;
        string tpost;
        StringBuilder errorMessages = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            string loginperson = Request.QueryString["loginperson"];
            SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            conc.Open();
            String qurey = "select job from employee where emp_id='" + loginperson + "'";
            SqlCommand cmd = new SqlCommand(qurey, conc);
            string post = cmd.ExecuteScalar().ToString().Replace(" ", "");
            label_id.Text = "ID: " + loginperson;
            tpost = post;
            loginid = loginperson;
            Label_post.Text = "Post: " + post;


            conc.Close();
            if(!(post=="President"))
            {
                GridView3.Visible = false;
                Label1.Visible = false;
                Label2.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
                DropDownList1.Visible = false;
                TextBox3.Visible = false;

                
            }

            SqlDataSource SqlDataSource2 = new SqlDataSource();
            SqlDataSource2.ID = "SqlDataSource2";
            this.Page.Controls.Add(SqlDataSource2);
            SqlDataSource2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString;
            SqlDataSource2.SelectCommand = "SELECT emp_id,First_Name,Last_Name,Task_Assign from Employee where Manager_Id='" + loginid + "'";
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox3.Text = DropDownList1.SelectedValue;
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

     
    }
}