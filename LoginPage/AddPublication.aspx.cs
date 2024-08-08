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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            SqlConnection sqlcon = new SqlConnection("Data Source=ERROR-404\\SQLEXPRESS;Initial Catalog=SampleDatabase;Integrated Security=True");
            try
            {

                SqlCommand cmd = new SqlCommand("insert_publication", sqlcon);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("publiname", tbaddpublication.Text);
                sqlcon.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    lblmsg.Text = "Publication added Succesfully into the Database";
                    lblmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
                }
                sqlcon.Close();
                
                string script = @"
                Swal.fire({
                    title: 'Success!',
                    text: 'New Publication added successfully.',
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