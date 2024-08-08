using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginPage.Student1
{
    public partial class changePassword1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        
        protected void btnchnage_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            SqlConnection sqlcon = new SqlConnection("Data Source=ERROR-404\\SQLEXPRESS;Initial Catalog=SampleDatabase;Integrated Security=True");
            try
            {
                sqlcon.Open();
                cmd = new SqlCommand("change_password", sqlcon);
                cmd.Parameters.Add(new SqlParameter("@email", Session["uname"]));
                cmd.Parameters.Add(new SqlParameter("@upass", tbnewpassword.Text));
                cmd.CommandType = CommandType.StoredProcedure;
                da.SelectCommand = cmd;
                da.Fill(dt);
                sqlcon.Close();
                lblmsg.Text = "Your Password Changed";
                string script = @"
                Swal.fire({
                    title: 'Success!',
                    text: 'Your Password chnaged successfully.',
                    icon: 'success',
                    confirmButtonText: 'OK'
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = '../LoginPage.aspx';
                    }
                });
            ";
                ClientScript.RegisterStartupScript(this.GetType(), "", script, true);
            }
            catch (Exception x)
            {
                Response.Write(x);
            }
            

        }
    }
}