using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_2
{
    public partial class Oldform : System.Web.UI.Page
    {
        MySqlCommand cmd = new MySqlCommand();

        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["myDB"].ConnectionString);
        MySqlDataAdapter ada = new MySqlDataAdapter();
        DataSet da = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Application["userId"]);
            cmd.CommandText = "SELECT formID, date FROM savedForms WHERE userID = '" + userId + "'";
            cmd.Connection = con;
            ada.SelectCommand = cmd;
            ada.Fill(da, "savedforms");
            if (da.Tables[0].Rows.Count > 0)
            {
                Forms storeValues = new Forms();
                var nForm = new List<Forms>();
                for (int i = 0; i < da.Tables[0].Rows.Count; i++)
                {
                    nForm.Add(new Forms() { formID = Convert.ToInt32(da.Tables[0].Rows[i].ItemArray[0]), date = Convert.ToDateTime(da.Tables[0].Rows[i].ItemArray[1]) });
                }
                savedForms.DataSource = nForm;
                savedForms.DataBind();
            }
        }

        protected void openForm_Click(object sender, CommandEventArgs e)
        {
            int formID;
            formID = Convert.ToInt32(e.CommandArgument);
            Response.Redirect($"Newform.aspx?FormID={formID}");
        }
    }
}