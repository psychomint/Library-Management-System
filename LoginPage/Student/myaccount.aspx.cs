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
    public partial class myaccount1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            SqlConnection sqlcon = new SqlConnection("Data Source=ERROR-404\\SQLEXPRESS;Initial Catalog=SampleDatabase;Integrated Security=True");
            try
            {
                sqlcon.Open();
                cmd = new SqlCommand("student_info", sqlcon);
                cmd.Parameters.Add(new SqlParameter("@email", Session["uname"]));
                cmd.CommandType = CommandType.StoredProcedure;
                da.SelectCommand = cmd;
                da.Fill(dt);
                if (dt != null)
                {

                    if (dt.Rows.Count > 0)
                    {

                        lblname.Text = dt.Rows[0][0].ToString();
                        lblmobile.Text = dt.Rows[0][4].ToString();
                        lbladdress.Text = dt.Rows[0][5].ToString();
                        lblcity.Text = dt.Rows[0][6].ToString();
                        lblpincode.Text = dt.Rows[0][7].ToString();
                        lblmail.Text = dt.Rows[0][8].ToString();
                    }
                }
                sqlcon.Close();
            }
            catch (Exception x)
            {
                Response.Write(x);
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("editprofile.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("changePassword.aspx");
        }
    }
}