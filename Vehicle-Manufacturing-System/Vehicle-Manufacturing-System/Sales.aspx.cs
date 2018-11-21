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
    public partial class Sales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string loginperson = Request.QueryString["loginperson"];
            SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            conc.Open();
            String qurey = "select job from employee where emp_id='" + loginperson + "'";
            SqlCommand cmd = new SqlCommand(qurey, conc);
            string post = cmd.ExecuteScalar().ToString().Replace(" ","");
            label_id.Text = "ID: " + loginperson;
            
            Label_post.Text="Post: "+post;
            Debug.WriteLine("Hello, world!" + post);
            
            conc.Close();
            C1.Visible = false;
            S1.Visible = false;
            Button_Submit.Visible = false;
            CheckBox1.Visible = false;
            info1.Visible = false;
            info2.Visible = false;
            if(post=="clerk"){
            button_add_sale.Visible=false;
            }
            SqlDataSource SqlDataSource2 = new SqlDataSource();
            SqlDataSource2.ID = "SqlDataSource2";
            this.Page.Controls.Add(SqlDataSource2);
            SqlDataSource2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString;
            SqlDataSource2.SelectCommand = "SELECT * from Department";
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();
    

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void button_add_sale_Click(object sender, EventArgs e)
        {
            CheckBox1.Visible = true;
            C1.Visible = true;
            S1.Visible = true;
            info1.Visible = true;
            info2.Visible = true;
            Button_Submit.Visible = true;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            
           
        }

        protected void Button_Submit_Click(object sender, EventArgs e)
        {
            SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            conc.Open();
            
            if (CheckBox1.Checked)
            {
                String qurey = "insert into Employee (emp_id) values(@id)";
                SqlCommand cmd = new SqlCommand(qurey, conc);
                cmd.Parameters.AddWithValue("@id", S1.Text);
                cmd.ExecuteNonQuery();

            }
            else{
                Response.Write("Customer info is not added");
                }
            conc.Close();

        }


        protected void Button_up_task_Click(object sender, EventArgs e)
        {
            SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            conc.Open();
            string checkdept = "select Department_No from employee where emp_id='" + text_id.Text + "'";
            SqlCommand cmd2 = new SqlCommand(checkdept, conc);
            int userdept = Convert.ToInt32(cmd2.ExecuteScalar().ToString());
            if (userdept == 4)
            {

                string qurey = "update emp set Task_Assign='" + text_no_task.Text + "'";
                SqlCommand cmd = new SqlCommand(qurey, conc);
                cmd.ExecuteNonQuery();
            }
            else Response.Write("invalid Employee is selected");
            conc.Close();


        }
    }
}