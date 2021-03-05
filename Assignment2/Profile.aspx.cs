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
    public partial class Profile : System.Web.UI.Page
    {
        String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Vanier 2021\E-Commerce\Assignments\Assignment2\Assignment2\App_Data\Hold.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["email"] != null)
            {
                //eml.Text = Session["email"].ToString();
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * from userInfo where Email='" + Session["email"].ToString() + "';", con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                
                if (dt.Rows.Count >= 1)
                {
                    Label1.Text = dt.Rows[0][1].ToString();
                    Label2.Text = dt.Rows[0][1].ToString();
                    Label3.Text = dt.Rows[0][2].ToString();
                    Label4.Text = dt.Rows[0][3].ToString();
                    con.Close();
                }
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("LogIn.aspx");
        }

        protected void recentBtn_Click(object sender, EventArgs e)
        {

        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand("DELETE from userInfo where Email='" + Session["email"].ToString() + "';", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Account.aspx");
            con.Close();
        }
    }
}