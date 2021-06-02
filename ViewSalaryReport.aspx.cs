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
    public partial class WebForm1 : System.Web.UI.Page
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
           
            SqlDataAdapter da = new SqlDataAdapter("select EmpId from SalaryReport", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ddlname.DataSource = ds;
            ddlname.DataValueField = "EmpId";
            ddlname.DataBind();
            ddlname.Items.Insert(0, "--Select EmployeeId--");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
          
            SqlDataAdapter da = new SqlDataAdapter("select a.Name,a.Address,a.Designation,a.Gender,b.* from Employee as a inner join SalaryReport as b on a.EmpId=b.EmpId where b.EmpId='" + ddlname.SelectedValue + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                lblname.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                lblloc.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                lbldesig.Text = ds.Tables[0].Rows[0]["Designation"].ToString();
                lblgender.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
                lblsalmnth.Text = ds.Tables[0].Rows[0]["EmployeeSalaryMonth"].ToString();
                lblsalyear.Text = ds.Tables[0].Rows[0]["EmployeeSalaryYear"].ToString();
                lblbasic.Text = ds.Tables[0].Rows[0]["Basic"].ToString();
                lblpf.Text = ds.Tables[0].Rows[0]["PF"].ToString();
                lblmedical.Text = ds.Tables[0].Rows[0]["MedicalAllowences"].ToString();
                lblpt.Text = ds.Tables[0].Rows[0]["ProfessionalTax"].ToString();
                decimal basic = Convert.ToDecimal(lblbasic.Text);

                decimal medical = Convert.ToDecimal(lblmedical.Text);
                decimal pf = Convert.ToDecimal(lblpf.Text);

                decimal pt = Convert.ToDecimal(lblpt.Text);
                decimal res1 = Decimal.Add(basic,medical);
                
                lblgross.Text = res1.ToString();
                decimal td1 = Decimal.Add(pf, pt);
                
                lbltd.Text = td1.ToString();

            }
        }
    }
}
