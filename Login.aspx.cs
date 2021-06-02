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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }


        protected void btnsignin_Click(object sender, EventArgs e)
        {
            if (ddluser.SelectedValue == "Administrator")
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("select UserName,Password from Administrator where UserName='" + txtuname.Text + "' and Password='" + txtpwd.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    if (txtuname.Text == dr[0].ToString() && txtpwd.Text == dr[1].ToString())
                    {
                        Session["luname"] = txtuname.Text;
                        Session["lpass"] = txtpwd.Text;
                        Response.Redirect("Dashboard.aspx");
                    }
                    else
                    {
                        Response.Redirect("Login.aspx");
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
                con.Close();
            }
            else if (ddluser.SelectedValue == "Employee")
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("select Name,Password from Employee where Name='" + txtuname.Text + "' and Password='" + txtpwd.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    //if (txtuname.Text == dr.GetValue(0).ToString() && txtpwd.Text == dr.GetValue(1).ToString())
                    //{
                    //    Session["euname"] = txtuname.Text;
                    //    Session["epass"] = txtpwd.Text;
                    //    Response.Redirect("WorkSheet.aspx");
                    //}
                    Response.Redirect("WorkSheet.aspx");
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
                
                //else
                //{
                //    Response.Redirect("Login.aspx");
                //}
                con.Close();
            }

        }
    }
}