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
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }
        void State()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select StateId,StateName from State", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ddlstate.DataSource = ds;
            ddlstate.DataValueField = "StateId";
            ddlstate.DataTextField = "StateName";
            ddlstate.DataBind();
            ddlstate.Items.Insert(0, "Select State");
            }
            protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Employee(Name,Password,DateOfBirth,Email,MobileNumber,Address,Designation,Gender,Department,state,City,PanCardNo) values('" + txtfname.Text + "','" + txtpwd.Text + "','"+ txtdob.Text + "','" + txtemail.Text + "','" + txtmobile.Text + "','" + txtaddress.Text + "','" + txtdesig.Text + "','" + rdgender.SelectedValue + "','" + DropDownList1.SelectedValue + "','" + ddlstate.SelectedValue + "','" + txtcity.Text+ "','"+ txtpancard.Text+"')", con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Redirect("Registration.aspx");
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtfname.Text = "";
            txtpwd.Text = "";
            txtdob.Text = "";
            rdgender.SelectedValue = "";
            
            txtemail.Text = "";
            txtmobile.Text = "";
            txtdesig.Text = "";
            txtpancard.Text = "";
            txtcity.Text = "";
            txtpincode.Text = "";
            ddlstate.SelectedIndex = 0;
        }
    }
}