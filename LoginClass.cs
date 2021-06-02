using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace PayRoll
{
    public class LoginClass 
    {

        public int UserId { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        public bool authentication(LoginClass login)
        {
     
            bool issuccess;
            con.Open();
            SqlCommand cmd = new SqlCommand("select UserName,Password from Login where UserName='"+login.UserName+"' and Password='"+login.Password+"'",con);
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                issuccess = true;
            }
            else
            {
                issuccess = false;
            }
            return issuccess;
        }
    }
  
}