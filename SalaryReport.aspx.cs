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
    public partial class SalaryReport : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Session["luname"] != null && Session["lpass"] != null)
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
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into SalaryReport(EmpId,Deparment,EmployeeSalaryMonth,PF,NetSalary,EmployeeSalaryYear,Basic,MedicalAllowences,Gross,ProfessionalTax) values('" + ddlname.SelectedValue + "','"+ddldept.SelectedValue+"','" + ddlsalmnth.SelectedValue + "','" + txtpf.Text + "','" + txtntsal.Text + "','" + ddlsalyear.SelectedValue + "','" + txtbasic.Text + "','" + txtmedical.Text + "','" + txtgross.Text + "','" + txtpt.Text + "')", con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblmsg.Text = "Salary Report Insert Successfully";
            }
            else
            {
                lblmsg.Text = "Salary Report Not Insert";
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ddlsalmnth.SelectedIndex = 0;
            txtpf.Text = "";
            txtntsal.Text = "";
            ddlsalyear.SelectedIndex = 0;
            txtbasic.Text = "";
            txtmedical.Text = "";
            txtgross.Text = "";
            txtpt.Text = "";
        }
    }
}