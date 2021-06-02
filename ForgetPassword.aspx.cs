using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PayRoll
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnfgrt_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Login set Password='"+txtnewpwd.Text+"'where UserName='"+txtuname.Text+"'",con);
            int i = cmd.ExecuteNonQuery();
            if(i>0)
            {
                lblpwd.Text = "Password Not Updated";
            }
            else
            {
                lblpwd.Text = "Password Upadated";
            }
        }
    }
}