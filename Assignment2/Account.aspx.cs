using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

namespace Assignment2
{
    public partial class Account : System.Web.UI.Page
    {
        String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Vanier 2021\E-Commerce\Assignments\Assignment2\Assignment2\App_Data\Hold.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clear();
            }

            if (Session["email"] != null)
            {
                Response.Redirect("Profile.aspx");
            }
        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {
            if (firstName.Text == "" || lastName.Text == "" || registerEmail.Text == "" || registerPassword1.Text == "" || registerPassword2.Text == "")
                errorLabel.Text = "Missing Fields, please enter all fields";
            else if (registerPassword1.Text != registerPassword2.Text)
                errorLabel.Text = "Password do not match";
            else
            {

                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into userInfo values (@First, @Last, @Email, @Password)";
                cmd.Parameters.AddWithValue("First", firstName.Text);
                cmd.Parameters.AddWithValue("Last", lastName.Text);
                cmd.Parameters.AddWithValue("Email", registerEmail.Text);
                cmd.Parameters.AddWithValue("Password", registerPassword1.Text);
                cmd.ExecuteNonQuery();
                con.Close();

                MailMessage message = new MailMessage("smtptestsample5@gmail.com", registerEmail.Text);
                message.Subject = "Confirmation";
                message.Body = "Hi " + firstName.Text + ", Thank you for creating an account with us. You corresponding email is: " +
                    registerEmail.Text + " and Password is: " + registerPassword1.Text + ". Please delete this email once you saved this information.";
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.Credentials = new System.Net.NetworkCredential("smtptestsample5@gmail.com", "sampletestsmtp5");
                client.Send(message);

                clear();
                successLabel.Text = "Account Created";
            }
        }

        void clear()
        {
            firstName.Text = lastName.Text = registerEmail.Text = registerPassword1.Text = registerPassword2.Text = "";
            successLabel.Text = errorLabel.Text = "";
        }
    }
}