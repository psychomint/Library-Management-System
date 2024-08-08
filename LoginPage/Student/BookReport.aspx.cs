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
    public partial class BookReport1 : System.Web.UI.Page
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
                drppublication.DataSource = dt;
                drppublication.DataTextField = "Publiname";
                drppublication.DataBind();

                DataTable ddt = new DataTable();
                ddpt.Fill(ddt);
                drpbranch.DataSource = ddt;
                drpbranch.DataTextField = "branchname";
                drpbranch.DataBind();
            }
        }
        protected void btnviewbranch_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            SqlConnection sqlcon = new SqlConnection("Data Source=ERROR-404\\SQLEXPRESS;Initial Catalog=SampleDatabase;Integrated Security=True");
            try
            {
                sqlcon.Open();
                cmd = new SqlCommand("getbook_bybranch", sqlcon);
                cmd.Parameters.Add(new SqlParameter("@branch", drpbranch.SelectedItem.Text));
                cmd.CommandType = CommandType.StoredProcedure;
                da.SelectCommand = cmd;
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                lblmsg0.Text = GridView1.Rows.Count.ToString() + " - Records Found.";
                MultiView1.ActiveViewIndex = 0;
                sqlcon.Close();


            }
            catch (Exception x)
            {
                Response.Write(x);
            }

        }

        protected void btnviewpublication_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            SqlConnection sqlcon = new SqlConnection("Data Source=ERROR-404\\SQLEXPRESS;Initial Catalog=SampleDatabase;Integrated Security=True");
            try
            {
                sqlcon.Open();
                cmd = new SqlCommand("getbook_bypublication", sqlcon);
                cmd.Parameters.Add(new SqlParameter("@publication", drppublication.SelectedItem.Text));
                cmd.CommandType = CommandType.StoredProcedure;
                da.SelectCommand = cmd;
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                lblmsg0.Text = GridView1.Rows.Count.ToString() + " - Records Found.";
                MultiView1.ActiveViewIndex = 0;
                sqlcon.Close();


            }
            catch (Exception x)
            {
                Response.Write(x);
            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();

            SqlConnection sqlcon = new SqlConnection("Data Source=ERROR-404\\SQLEXPRESS;Initial Catalog=SampleDatabase;Integrated Security=True");
            try
            {
                sqlcon.Open();
                cmd = new SqlCommand("getbook_bybranch", sqlcon);
                cmd.Parameters.Add(new SqlParameter("@branch", drpbranch.SelectedItem.Text));
                cmd.CommandType = CommandType.StoredProcedure;
                da.SelectCommand = cmd;
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                lblmsg0.Text = GridView1.Rows.Count.ToString() + " - Records Found.";
                MultiView1.ActiveViewIndex = 0;
                sqlcon.Close();


            }
            catch (Exception x)
            {
                Response.Write(x);
            }
            MultiView1.ActiveViewIndex = 1;

            lblbname.Text = dt.Rows[0]["bookname"].ToString();
            lblauthor.Text = dt.Rows[0]["author"].ToString();
            lblbran.Text = dt.Rows[0]["branch"].ToString();
            lblpub.Text = dt.Rows[0]["publication"].ToString();
            lblprice.Text = dt.Rows[0]["price"].ToString();

            lblaqnt.Text = dt.Rows[0]["quantity"].ToString();

            lbldetail.Text = dt.Rows[0]["details"].ToString();


        }
    }
}