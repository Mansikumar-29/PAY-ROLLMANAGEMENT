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
    public partial class UpdateEmployeeDetails : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        int Id;
        protected void Page_Load(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(Request.QueryString["EmpId"]);
            if (!IsPostBack)
            {
                if (Session["euname"] != null && Session["epass"] != null)
                {
                    Department();
                    State();
                    Id = Convert.ToInt32(Request.QueryString["EmpId"]);
                    SqlDataAdapter da = new SqlDataAdapter("select * from Employee where EmpId='" + Id + "'", con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                    {
                        txtfname.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                        txtpwd.Text = ds.Tables[0].Rows[0]["Password"].ToString();
                        txtdob.Text = ds.Tables[0].Rows[0]["DateOfBirth"].ToString();
                        txtemail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                        txtmobile.Text = ds.Tables[0].Rows[0]["MobileNumber"].ToString();
                        txtaddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                        rdgender.SelectedValue = ds.Tables[0].Rows[0]["Gender"].ToString();
                        txtdesig.Text = ds.Tables[0].Rows[0]["Designation"].ToString();

                        ddlstate.SelectedValue = ds.Tables[0].Rows[0]["State"].ToString();
                        txtcity.Text = ds.Tables[0].Rows[0]["City"].ToString();
                        txtpancard.Text = ds.Tables[0].Rows[0]["PanCardNo"].ToString();
                        ddldept.SelectedValue = ds.Tables[0].Rows[0]["Department"].ToString();

                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }

            }


        }
        void Department()
        {
            SqlDataAdapter da = new SqlDataAdapter("select DeptId,DeptName from Department", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ddldept.DataSource = ds;
            ddldept.DataValueField = "DeptId";

            ddldept.DataBind();
            ddldept.Items.Insert(0, "--Select DeptId--");

        }
        void State()
        {
            SqlDataAdapter da = new SqlDataAdapter("select StateId,StateName from State", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ddlstate.DataSource = ds;
            ddlstate.DataValueField = "StateId";

            ddlstate.DataBind();
            ddlstate.Items.Insert(0, "--Select State--");

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Id = Convert.ToInt32(Request.QueryString["EmpId"]);
            DateTime dob = Convert.ToDateTime(txtdob.Text);
            con.Open();
           

            SqlCommand cmd = new SqlCommand("Update Employee set Name='" + txtfname.Text + "',DateOfBirth='" + dob + "',Email='" + txtemail.Text + "',MobileNumber='" + txtmobile.Text + "',Address='" + txtaddress.Text + "',Gender='" + rdgender.SelectedValue + "',Designation='" + txtdesig.Text + "',State='" + ddlstate.SelectedValue + "',City='" + txtcity.Text + "',PanCardNo='" + txtpancard.Text + "',Department='" + ddldept.SelectedValue + "' where EmpId='" + Id + "'", con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Redirect("EmployeeUpdate.aspx");
            }
            else
            {
                Response.Redirect("UpdateEmployeeDetails.aspx");
            }
            con.Close();
        }
    }
}
