using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace PayRoll
{
    public partial class EmployeeUpdate: System.Web.UI.Page
    {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    if (Session["euname"] != null && Session["epass"] != null)
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
                
                SqlDataAdapter da = new SqlDataAdapter("select * from Employee", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                gdvempupdate.DataSource = ds;
                gdvempupdate.DataBind();
            }

        protected void gdvempupdate_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gdvempupdate.PageIndex = e.NewPageIndex;
            Data();
        }

        protected void gdvempupdate_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "view")
            {
                Response.Redirect("UpdateEmployeeDetails.aspx?EmpId=" + e.CommandArgument);
            }
        }
    }
    }