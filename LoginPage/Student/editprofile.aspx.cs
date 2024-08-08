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
    public partial class editprofile1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            SqlConnection sqlcon = new SqlConnection("Data Source=ERROR-404\\SQLEXPRESS;Initial Catalog=SampleDatabase;Integrated Security=True");
            try
            {
                sqlcon.Open();
                cmd = new SqlCommand("update_profile", sqlcon);
                cmd.Parameters.Add(new SqlParameter("@email", Session["uname"]));
                cmd.Parameters.Add(new SqlParameter("@Studentname", tbname.Text));
                cmd.Parameters.Add(new SqlParameter("@dob", tbdob.Text));
                cmd.Parameters.Add(new SqlParameter("@mobile", tbphone.Text));
                cmd.Parameters.Add(new SqlParameter("@stuadd", tbaddress.Text));
                cmd.Parameters.Add(new SqlParameter("@stuciy", tbcity.Text));
                cmd.Parameters.Add(new SqlParameter("@pincode", tbpincode.Text));
                cmd.Parameters.Add(new SqlParameter("@newmail", tbnewmail.Text));
                cmd.CommandType = CommandType.StoredProcedure;
                da.SelectCommand = cmd;
                da.Fill(dt);
                sqlcon.Close();
                
                string script = @"
                Swal.fire({
                    title: 'Success!',
                    text: 'Your Profile changed successfully.',
                    icon: 'success',
                    confirmButtonText: 'OK'
                }).then((result) => {
                    if (result.isConfirmed) {
                         window.location.href='myaccount.aspx';
                    }
                });";
                ClientScript.RegisterStartupScript(this.GetType(), "", script, true);
            }
            catch (Exception x)
            {
                Response.Write(x);
            }
        }
    }
}