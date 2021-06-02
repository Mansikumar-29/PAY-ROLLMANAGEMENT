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
    public partial class ApplyLeave : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["euname"] != null && Session["epass"] != null)
                {
                    EmployeeName();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
        void EmployeeName()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select EmpId,Name from Employee", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ddlname.DataSource = ds;
            ddlname.DataValueField = "EmpId";
            ddlname.DataBind();
            ddlname.Items.Insert(0, "--Select EmployeeId--");
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into ApplyLeave(EmpId,DateOfLeave,LeaveStatus,Reason) values('" + ddlname.SelectedValue + "','" + txtldt.Text + "','" + txtlst.Text + "','" + txtreason.Text + "')", con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblmsg.Text = "Leave Apply Insert Successfully";
            }
            else
            {
                lblmsg.Text = "Leave Apply Not Insert";
            }
            con.Close();

        }
    }
}