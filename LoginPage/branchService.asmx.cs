using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

namespace LoginPage
{
    /// <summary>
    /// Summary description for branchService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class branchService : System.Web.Services.WebService
    {

        [WebMethod]
        public void GetBranch()
        {
            var cs = ConfigurationManager.ConnectionStrings["SampleDatabaseConnectionString"].ConnectionString;
            var branch = new List<Branch>();
            using (var con = new SqlConnection(cs))
            {
                var cmd = new SqlCommand("getbranch", con) { CommandType = CommandType.StoredProcedure };
                con.Open();
                var dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    
                    var branchs = new Branch
                    {
                        
                        branchname = dr[0].ToString(),
                        
                    };
                    branch.Add(branchs);
                   
                }
            }
            var js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(branch));
        }  
    }
}
