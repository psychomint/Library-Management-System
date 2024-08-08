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
    public partial class bookissue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=ERROR-404\\SQLEXPRESS;Initial Catalog=SampleDatabase;Integrated Security=True");
                string com = "Select * from Publication";
                string dom = "Select * from Bookstall";
                string bom = "Select * from Branch";
                string aom = "Select * from Student";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                SqlDataAdapter ddpt = new SqlDataAdapter(dom, con);
                SqlDataAdapter cdpt = new SqlDataAdapter(bom, con);
                SqlDataAdapter edpt = new SqlDataAdapter(aom, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddlipubli.DataSource = dt;
                ddlipubli.DataTextField = "Publiname";
                ddlipubli.DataBind();

                DataTable ddt = new DataTable();
                ddpt.Fill(ddt);
                ddlibook.DataSource = ddt;
                ddlibook.DataTextField = "bookname";
                ddlibook.DataBind();

                DataTable adt = new DataTable();
                cdpt.Fill(adt);
                DropDownList1.DataSource = adt;
                DropDownList1.DataTextField = "branchname";
                DropDownList1.DataBind();

                DataTable bdt = new DataTable();
                edpt.Fill(bdt);
                DropDownList2.DataSource = bdt;
                DropDownList2.DataTextField = "Studentname";
                DropDownList2.DataBind();
            }
        }
        protected void btnselect_Click(object sender, EventArgs e)
        {


            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            SqlConnection sqlcon = new SqlConnection("Data Source=ERROR-404\\SQLEXPRESS;Initial Catalog=SampleDatabase;Integrated Security=True");
            try
            {
                sqlcon.Open();
                string pub = ddlipubli.SelectedValue;
                string boo = ddlibook.SelectedValue;
                cmd = new SqlCommand("CLI_GetBookStall", sqlcon);
                cmd.Parameters.Add(new SqlParameter("@publication", pub));
                cmd.Parameters.Add(new SqlParameter("@BookName", boo));

                cmd.CommandType = CommandType.StoredProcedure;
                da.SelectCommand = cmd;
                da.Fill(dt);


                if (dt != null)
                {

                    if (dt.Rows.Count > 0)
                    {

                        lblBookName.Text = dt.Rows[0][0].ToString();
                        lblauthor.Text = dt.Rows[0][2].ToString();
                        lblpublication.Text = dt.Rows[0][3].ToString();
                        lblbranch.Text = dt.Rows[0][4].ToString();
                        lblprice.Text = dt.Rows[0][5].ToString();
                        lbltqty.Text = dt.Rows[0][6].ToString();
                        lblaqty.Text = dt.Rows[0][6].ToString();
                        lbldetails.Text = dt.Rows[0][1].ToString();


                    }
                }
                sqlcon.Close();
            }
            catch (Exception x)
            {
                Response.Write(x);
            }
        }

        protected void btnissue_Click(object sender, EventArgs e)
        {


            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            SqlConnection sqlcon = new SqlConnection("Data Source=ERROR-404\\SQLEXPRESS;Initial Catalog=SampleDatabase;Integrated Security=True");
            try
            {
                sqlcon.Open();
                string pub = ddlipubli.SelectedValue;
                string boo = ddlibook.SelectedValue;
                cmd = new SqlCommand("issue_book", sqlcon);
                cmd.Parameters.Add(new SqlParameter("@publication", pub));
                cmd.Parameters.Add(new SqlParameter("@BookName", boo));
                cmd.Parameters.Add(new SqlParameter("@name", DropDownList2.SelectedItem.Text));
                cmd.CommandType = CommandType.StoredProcedure;
                da.SelectCommand = cmd;
                da.Fill(dt);
                sqlcon.Close();
                lblmsg.Text = "Boook Issued";
                
                string script = @"
                Swal.fire({
                    title: 'Success!',
                    text: 'Book issued to Student.',
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