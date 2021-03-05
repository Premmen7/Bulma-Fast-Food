using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Assignment2
{
    public partial class LogIn : System.Web.UI.Page
    {
        String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Vanier 2021\E-Commerce\Assignments\Assignment2\Assignment2\App_Data\Hold.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from userInfo where Email=@Email AND Password=@Password";
            cmd.Parameters.AddWithValue("Email", loginEmail.Text);
            cmd.Parameters.AddWithValue("Password", loginPassword.Text);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            if(dt.Rows.Count>0)
            {
                Session["email"] = loginEmail.Text;
                Response.Redirect("Profile.aspx");
            }
            else
            {
                errorLabel.Text = "Email and Password are incorrect";
            }
        }
    }
}