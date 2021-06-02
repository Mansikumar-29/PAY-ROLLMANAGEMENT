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
    public partial class LeaveReport: System.Web.UI.Page
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
            SqlDataAdapter da = new SqlDataAdapter("select a.Name,b.* from Employee as a inner join ApplyLeave as b on a.EmpId=b.EmpId", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            gdvleave.DataSource = ds;
            gdvleave.DataBind();
        }

        protected void btnapproval_Click(object sender, EventArgs e)
        {
           
            Button btn = (Button)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            Label id = (Label)row.FindControl("lbllid");
            int ids = Convert.ToInt32(id.Text);
            string s = "Success";
            con.Open();
            SqlCommand cmd = new SqlCommand("update ApplyLeave set ApprovalStatus='" + s + "' where LeaveId='" + ids + "'", con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                Response.Redirect("LeaveReport.aspx");
            }
            con.Close();
           

        }
    }
}