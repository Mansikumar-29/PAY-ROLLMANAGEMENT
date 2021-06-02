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
    public partial class EmployeeReport : System.Web.UI.Page
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
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from Employee", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            gdvemployee.DataSource = ds;
            gdvemployee.DataBind();
        }
        protected void gdvemployee_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "view")
            {

            }
        }

        protected void gdvemployee_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gdvemployee.PageIndex = e.NewPageIndex;
            Data();

        }
    }
}