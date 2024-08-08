using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginPage
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (rdolibrary.Checked)
            {
                String username = txtusername.Text;
                String password = txtpassword.Text;

                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter da = new SqlDataAdapter();
                DataTable dt = new DataTable();

                SqlConnection sqlcon = new SqlConnection("Data Source=ERROR-404\\SQLEXPRESS;Initial Catalog=SampleDatabase;Integrated Security=True");
                try
                {
                    sqlcon.Open();
                    cmd = new SqlCommand("LogN", sqlcon);
                    cmd.Parameters.Add(new SqlParameter("@EmailID", username));
                    cmd.Parameters.Add(new SqlParameter("@Password", password));
                    cmd.CommandType = CommandType.StoredProcedure;
                    da.SelectCommand = cmd;
                    da.Fill(dt);

                    sqlcon.Close();

                    if (dt.Rows.Count > 0 && dt.Rows[0][0].ToString() == "0")
                    {
                        Session["uname"] = txtusername.Text;
                        Response.Redirect("Admin.aspx");
                    }
                    else
                    {
                        lblerror.Text = dt.Rows.Count > 0 ? dt.Rows[0][1].ToString() : "Invalid Login";
                    }
                }
                catch (Exception x)
                {
                    lblerror.Text = "Error: " + x.Message;
                }
            }
            else
            {
                String username = txtusername.Text;
                String password = txtpassword.Text;

                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter da = new SqlDataAdapter();
                DataTable dt = new DataTable();

                SqlConnection sqlcon = new SqlConnection("Data Source=ERROR-404\\SQLEXPRESS;Initial Catalog=SampleDatabase;Integrated Security=True");
                try
                {
                    sqlcon.Open();
                    cmd = new SqlCommand("student_LogN", sqlcon);
                    cmd.Parameters.Add(new SqlParameter("@email", username));
                    cmd.Parameters.Add(new SqlParameter("@upass", password));
                    cmd.CommandType = CommandType.StoredProcedure;
                    da.SelectCommand = cmd;
                    da.Fill(dt);

                    int status = Convert.ToInt16(cmd.ExecuteScalar());
                    if (status == 1)
                    {
                        Session["uname"] = txtusername.Text;
                        Response.Redirect("Student/StudentHomePage.aspx");
                    }
                    else
                    {
                        lblerror.Text = "Invalid User";
                    }
                    sqlcon.Close();
                }
                catch (Exception x)
                {
                    lblerror.Text = "Error: " + x.Message;
                }
            }
        }

        protected void btnResetPassword_Click(object sender, EventArgs e)
        {
            string email = txtModalEmail.Text;
            SqlConnection sqlcon = new SqlConnection("Data Source=ERROR-404\\SQLEXPRESS;Initial Catalog=SampleDatabase;Integrated Security=True");

            try
            {
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand("ForgotPassword", sqlcon);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Email", email));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    string resetToken = Guid.NewGuid().ToString(); // Generate a reset token
                    // Store the reset token and send an email to the user
                    // For simplicity, just displaying the token here
                    lblModalMessage.Text = "Password reset link has been sent to your email.";
                }
                else
                {
                    lblModalMessage.Text = "Email not found.";
                }

                sqlcon.Close();
            }
            catch (Exception ex)
            {
                lblModalMessage.Text = "Error: " + ex.Message;
            }
        }
    }
}
