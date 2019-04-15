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
    public partial class Newform : System.Web.UI.Page
    {
        //MySqlCommand cmd = new MySqlCommand();

        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["myDB"].ConnectionString);
        MySqlDataAdapter ada = new MySqlDataAdapter();
        DataSet da = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            var formId = Request.QueryString["formID"];
            int userId = Convert.ToInt32(Application["userId"]);

            if (formId != null)
            {
                using (MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["myDB"].ConnectionString))
                {
                    using (MySqlCommand cmd = new MySqlCommand("SELECT `date`, `firstName`, `lastName`, `phone`, `dateOfIncident`, `policyNumber`, `ssn`, `address`, `zipCode`, `state`, `multiplePeople`, `description` FROM `savedforms` WHERE `formID`= '" + formId + "' AND `userID` = '" + userId + "'"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        using (MySqlDataReader sdr = cmd.ExecuteReader())
                        {
                            sdr.Read();
                            dateTextBox.Text = (sdr["date"].ToString());
                            firstName.Text = (sdr["firstName"].ToString());
                            lastName.Text = (sdr["lastName"].ToString());
                            phone.Text = (sdr["phone"].ToString());
                            dateOfIncident.Text = (sdr["dateOfIncident"].ToString());
                            policyNumber.Text = (sdr["policyNumber"].ToString());
                            lastOfSsn.Text = (sdr["ssn"].ToString());
                            address.Text = (sdr["address"].ToString());
                            zipCode.Text = (sdr["zipCode"].ToString());
                            State.Text = (sdr["state"].ToString());
                            people.Text = (sdr["multiplePeople"].ToString());
                            descriptionTextBox.Text = (sdr["description"].ToString());
                        }

                    }
                }
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Application["userId"]);
            var timerCommand = "INSERT INTO `timer`(`userID`, `dateTimer`, `firstNameTimer`, `lastNameTimer`, `phoneTimer`, `dateOfIncidentTimer`, `policyNumberTimer`, `ssnTimer`, `addressTimer`, `zipCodeTimer`, `stateTimer`, `mutiplePeopleTimer`, `descriptionTimer`) VALUES ( @userID, @dateTimer, @firstNameTimer, @lastNameTimer, @phoneTimer, @dateOfIncidentTimer, @policyNumberTimer, @ssnTimer, @addressTimer, @zipCodeTimer, @stateTimer, @mutiplePeopleTimer, @descriptionTimer)";
            using (MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["myDB"].ConnectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand(timerCommand, con))
                {
                    cmd.Parameters.AddWithValue("@userID", userId);
                    cmd.Parameters.AddWithValue("@dateTimer", dateTime.Text);
                    cmd.Parameters.AddWithValue("@firstNameTimer", firstNTimer.Text);
                    cmd.Parameters.AddWithValue("@lastNameTimer", lastNTimer.Text);
                    cmd.Parameters.AddWithValue("@phoneTimer", phoneTimer.Text);
                    cmd.Parameters.AddWithValue("@dateOfIncidentTimer", dateIncidentTimer.Text);
                    cmd.Parameters.AddWithValue("@policyNumberTimer", policyTimer.Text);
                    cmd.Parameters.AddWithValue("@ssnTimer", SSNTimer.Text);
                    cmd.Parameters.AddWithValue("@addressTimer", addressTimer.Text);
                    cmd.Parameters.AddWithValue("@zipCodeTimer", ZipTimer.Text);
                    cmd.Parameters.AddWithValue("@stateTimer", stateTimer.Text);
                    cmd.Parameters.AddWithValue("@mutiplePeopleTimer", peopleTimer.Text);
                    cmd.Parameters.AddWithValue("@descriptionTimer", descriptionTime.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }


            var formCommand = "INSERT INTO `completedforms`(`userID`, `date`, `firstName`, `lastName`, `phone`, `dateOfIncident`, `policyNumber`, `ssn`, `address`, `zipCode`, `state`, `multiplePeople`, `description`) VALUES (@userID, @date, @firstName, @lastName, @phone, @dateOfIncident, @policyNumber, @ssn, @address, @zipCode, @state, @multiplePeople,@description)";
            using (MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["myDB"].ConnectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand(formCommand, con))
                {
                    cmd.Parameters.AddWithValue("@userID", userId);
                    cmd.Parameters.AddWithValue("@date", dateTextBox.Text);
                    cmd.Parameters.AddWithValue("@firstName", firstName.Text);
                    cmd.Parameters.AddWithValue("@lastName", lastName.Text);
                    cmd.Parameters.AddWithValue("@phone", phone.Text);
                    cmd.Parameters.AddWithValue("@dateOfIncident", dateOfIncident.Text);
                    cmd.Parameters.AddWithValue("@policyNumber", policyNumber.Text);
                    cmd.Parameters.AddWithValue("@ssn", lastOfSsn.Text);
                    cmd.Parameters.AddWithValue("@address", address.Text);
                    cmd.Parameters.AddWithValue("@zipCode", zipCode.Text);
                    cmd.Parameters.AddWithValue("@state", State.Text);
                    cmd.Parameters.AddWithValue("@multiplePeople", people.Text);
                    cmd.Parameters.AddWithValue("@description", descriptionTextBox.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            dateTextBox.Text = "";
            firstName.Text = "";
            lastName.Text = "";
            phone.Text = "";
            dateOfIncident.Text = "";
            policyNumber.Text = "";
            lastOfSsn.Text = "";
            address.Text = "";
            zipCode.Text = "";
            State.Text = "";
            people.Text = "";
            descriptionTextBox.Text = "";
        }
    }
}

