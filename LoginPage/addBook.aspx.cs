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
    public partial class addBook1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=ERROR-404\\SQLEXPRESS;Initial Catalog=SampleDatabase;Integrated Security=True");
                string com = "Select * from Publication";
                string dom = "Select * from Branch";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                SqlDataAdapter ddpt = new SqlDataAdapter(dom, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddlpub.DataSource = dt;
                ddlpub.DataTextField = "Publiname";
                ddlpub.DataBind();

                DataTable ddt = new DataTable();
                ddpt.Fill(ddt);
                ddlbranch.DataSource = ddt;
                ddlbranch.DataTextField = "branchname";
                ddlbranch.DataBind();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            SqlConnection sqlcon = new SqlConnection("Data Source=ERROR-404\\SQLEXPRESS;Initial Catalog=SampleDatabase;Integrated Security=True");
            try
            {
                String bnch = ddlbranch.SelectedValue;
                SqlCommand cmd = new SqlCommand("sp_insert", sqlcon);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("bookname", tbbookname.Text);
                cmd.Parameters.AddWithValue("branch", bnch);
                cmd.Parameters.AddWithValue("author", tbauthor.Text);
                cmd.Parameters.AddWithValue("publication", ddlpub.Text);
                cmd.Parameters.AddWithValue("details", tbdetail.Text);
                cmd.Parameters.AddWithValue("price", tbprice.Text);
                cmd.Parameters.AddWithValue("quantity", tbqty.Text);
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
                    text: 'New Book added successfully.',
                    icon: 'success',
                    confirmButtonText: 'OK'
                }).then((result) => {
                    if (result.isConfirmed) {
                         window.location.href = window.location.href + '?reload=true';
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