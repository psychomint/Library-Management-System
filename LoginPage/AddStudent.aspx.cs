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
    public partial class AddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnstudent_Click(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            SqlConnection sqlcon = new SqlConnection("Data Source=ERROR-404\\SQLEXPRESS;Initial Catalog=SampleDatabase;Integrated Security=True");
            try
            {
                String bnch = ddlstubranch.SelectedValue;
                string gender = "Female";
                if (RadioButtonList1.Text == "Male")
                {
                    gender = "Male";
                }
                string birth = drpdd.Text + drpmm.Text + drpyyyy.Text;
                SqlCommand cmd = new SqlCommand("insert_student", sqlcon);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Studentname", tbstuname.Text);
                cmd.Parameters.AddWithValue("branch", bnch);
                cmd.Parameters.AddWithValue("sex", gender);
                cmd.Parameters.AddWithValue("dob", birth);
                cmd.Parameters.AddWithValue("mobile", tbmobile.Text);
                cmd.Parameters.AddWithValue("stuadd", tbaddress.Text);
                cmd.Parameters.AddWithValue("stucity", tbcity.Text);
                cmd.Parameters.AddWithValue("pincode", tbpincode.Text);
                cmd.Parameters.AddWithValue("email", tbmail.Text);
                cmd.Parameters.AddWithValue("upass", tbpass.Text);
                cmd.Parameters.AddWithValue("issued", 0);
                sqlcon.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    lblmsg.Text = "Record Inserted Succesfully into the Database";
                    lblmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
                }
                sqlcon.Close();
                
                string script = @"
                Swal.fire({
                    title: 'Success!',
                    text: 'Student added successfully.',
                    icon: 'success',
                    confirmButtonText: 'OK'
                }).then((result) => {
                    if (result.isConfirmed) {
                         window.location.href = window.location.href + '?reload=true';
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