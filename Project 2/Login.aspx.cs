using System;
using System.Collections.Generic;
using System.Data;
using MySql.Data.MySqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Project_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
            MySqlCommand cmd = new MySqlCommand();

            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["myDB"].ConnectionString);
            MySqlDataAdapter ada = new MySqlDataAdapter();
            DataSet da = new DataSet();

            protected void Page_Load(object sender, EventArgs e)
            {
            txtUser.Attributes.Add("placeholder", "Username");
            txtPassword.Attributes.Add("placeholder", "Password");
                con.Open();
            }
            protected void LogOn_Click(object sender, EventArgs e)
            {
                cmd.CommandText = "select * from users where username = '" + txtUser.Text + "' and password = '" + txtPassword.Text + "'";
                cmd.Connection = con;
                ada.SelectCommand = cmd;
                ada.Fill(da, "users");
                if (da.Tables[0].Rows.Count > 0)
                {
                    label1.Text = "Users Information was found, Click the Button to continue";
                btnNext.Visible = true;
                }
                else
                {
                    label1.Text = "The user's information entered is not valid, please enter valid information";
                }
            }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            Response.Redirect("AfterLogin.aspx");
        }
    }
}