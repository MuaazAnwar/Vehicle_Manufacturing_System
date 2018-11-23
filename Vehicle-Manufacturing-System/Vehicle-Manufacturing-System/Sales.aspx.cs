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
    public partial class Accounts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string loginperson = Request.QueryString["loginperson"];
            SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            conc.Open();
            String qurey = "select job from employee where emp_id='" + loginperson + "'";
            SqlCommand cmd = new SqlCommand(qurey, conc);
            string post = cmd.ExecuteScalar().ToString().Replace(" ", "");
            Label_id.Text = "ID: " + loginperson;

            Label_post.Text = "Post: " + post;
            Debug.WriteLine("Hello, world!" + post);

            conc.Close();
            Button_Submit.Visible = false;
            CheckBox1.Visible = false;
            info1.Visible = false;
            
            if (post == "clerk")
            {
                add_car.Visible = false;
            }
            SqlDataSource SqlDataSource2 = new SqlDataSource();
            SqlDataSource2.ID = "SqlDataSource2";
            this.Page.Controls.Add(SqlDataSource2);
            SqlDataSource2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString;
            SqlDataSource2.SelectCommand = "SELECT First_Name,Task_Assign from Employee where Manager_id='"+loginperson+"'";
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

       
        protected void Button_submit_Click(object sender, EventArgs e)
        {
            SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            conc.Open();

            if (CheckBox1.Checked)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
                con.Open();

                SqlCommand cmd = new SqlCommand("insert into Car values('" + car_id.Text + "','" + name.Text + "','" + model.Text + "','" + horsepower.Text + "','" + price.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                car_id.Text = "";
                name.Text = "";
                model.Text = "";
                horsepower.Text = "";
                price.Text = "";

            }
            else
            {
                Response.Write("Customer info is not added");
            }
            conc.Close();
        }

        protected void add_car_Click(object sender, EventArgs e)
        {
            CheckBox1.Visible = true;
            info1.Visible = true;

            Button_Submit.Visible = true;
        }

        
    }
}