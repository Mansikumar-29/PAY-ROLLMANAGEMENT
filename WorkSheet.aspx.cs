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
    public partial class WorkSheet1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                EmployeeName();
                Department();
            }

        }
        void EmployeeName()
        {
            SqlDataAdapter da = new SqlDataAdapter("select EmpId,Name from Employee", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ddlid.DataSource = ds;
            ddlid.DataValueField = "EmpId";
            ddlid.DataBind();
            ddlid.Items.Insert(0, "--Select EmployeeId--");
        }
        void Department()
        {
            SqlDataAdapter da = new SqlDataAdapter("select DeptId,DeptName from Department", con);
            DataTable ds = new DataTable();
            da.Fill(ds);
            ddldept.DataSource = ds;
            ddldept.DataValueField = "DeptId";
            ddldept.DataTextField = "DeptName";
            ddldept.DataBind();
            ddldept.Items.Insert(0, "--Select Department--");

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            con.Open();
           
            SqlCommand cmd = new SqlCommand("insert into WorkSheet (EmpId,Department,Day,Date,StartTime,ProjectStatus,EndTime,OverTimeHours,TotalWorkingHours)values('" + ddlid.SelectedValue + "','" + ddldept.SelectedValue + "','" + ddlday.SelectedValue + "','" +txtdate.Text+ "','" + txtst.Text + "','" + txtps.Text + "','" + txtet.Text + "','" + txtoth.Text + "','" + txttwh.Text + "')", con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblmsg.Text = "Worksheet post Successfully";
            }
            else
            {
                lblmsg.Text = "Worksheet not Posted";
            }
            con.Close();

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {

        }

    }
}