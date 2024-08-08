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
    public partial class penaltypage1 : System.Web.UI.Page
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
                cmd = new SqlCommand("p_view", sqlcon);
                cmd.Parameters.Add(new SqlParameter("@email", Session["uname"]));
                cmd.CommandType = CommandType.StoredProcedure;
                da.SelectCommand = cmd;
                da.Fill(dt);
                sqlcon.Close();


            }
            catch (Exception x)
            {
                Response.Write(x);
            }
        }
    }
}