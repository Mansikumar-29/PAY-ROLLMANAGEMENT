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
    public partial class WorkSheet : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["luname"] != null && Session["lpass"] != null)
                {
                    Data();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
        void Data()
        {
            SqlDataAdapter da = new SqlDataAdapter("select a.Name,b.* from Employee as a inner join WorkSheet as b on a.EmpId=b.EmpId", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            gdvemp.DataSource = ds;
            gdvemp.DataBind();
        }
    }
}