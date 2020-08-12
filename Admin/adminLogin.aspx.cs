using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace e_Commerce
{
    public partial class adminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            string query = "select count(*) from shopping where UserEmail='"+ txtBxUserEmail.Text +"'";
            SqlCommand cmd = new SqlCommand(query,con);
            int Checkpass = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (Checkpass==1) //authenticating userEmail
            {
                con.Open();
                string checker = "select UserPassword from shopping where UserPassword='" + txtBxPassword.Text + "'";
                SqlCommand cm = new SqlCommand(checker, con);
                string UserPassword = cm.ExecuteScalar() as string;
                if (UserPassword == txtBxPassword.Text) // authenticating userPassword 
                {
                    Session["New"] = txtBxUserEmail.Text;
                    //Response.Write("Successful!");
                    Response.Redirect("AdminDashboard.aspx");
                }
                else
                {

                    Response.Write("Password wrong");
                }
            }
            else // if userEmail doesnot exist
            {
                Response.Write("username is not correct!");
            }




            
        }
    }
}