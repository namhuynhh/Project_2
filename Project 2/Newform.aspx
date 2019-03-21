<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Newform.aspx.cs" Inherits="Project_2.Newform" %>

<!DOCTYPE html>
<html lang="en">
<head>
	
<meta charset="UTF-8">
	<title>WillCode4Food - Login Form</title>
	  <link rel="stylesheet" type="text/css" href="Project.css">
	  <style type="text/css">
       /*td
       {
           font-size:24px;
           text-align: left;
       }*/
       
h1
{
	text-align: center;
}

#form
{
	float:initial;
	margin-left: 7%;
	margin-right: 7%%;
}

#date, #dateLabel
{
	display: inline-block;
	float:initial;
	
}
#date{
	margin-right: 60%;
}
#firstName, #fNameLabel,
#lastName, #lNameLabel
{
	display: inline-block;
	float:initial;
	clear: left;
}

/*/
*{
	text-align: center;
}
#phone
{
	display: inline-block;
	float: initial;
	justify-content: space-around;

}
#phoneLabel
{
	display: inline-block;
	clear: left;
	width: 150px;
	text-align: right;
	float: initial;
}
#dateOfIncidentLabel
{
	display: inline-block;
	clear: left;
	float: initial;
	padding-right: 12%;
}
#dateOfIncident
{
	display: inline-block;
	clear: left;
	float: initial;
	align: left;

} */

	  	.logo
	  	{
	  		top: calc(7% - 50px);
			left: calc(17% - 300px);
	  	}
	  </style>
</head>

<body>
	<div class ="main"style="text-align: center;" >
	</div>
	<div class ="gradient">
        <div id="form" style="text-align:center;">
            <br />
            <br /> 
            <br />
            <br />
            <h1>Insurance Form</h1>          
            <br />
        <form action="">
		<div class="verifyingInformation">
			
            <label for="date" id="dateLabel">Date: </label> 
			<input type="date" id="date">
			<br>

			<label for="firstName" id="fNameLabel">First Name: </label>
			<input type="text" id="firstName">

			<label for="lstName" id="lNameLabel">Last Name: </label>
			<input type="text" id="lastName">
			<br>

			<label for="phone" id="phoneLabel">Phone: </label>
			<input type="text" id="phone">

			<label for="dateOfIncident" id="dateOfIncidentLabel">Date of Incident: <label>
			<input type="date" id="dateOfIncident">
			<br>

			<label for="policyNumber" id="policyNumberLabel">Policy Number: </label>
			<input type="text" id="policyNumber">
			
			<label for="lastOfSsn" id="lastOfSsnLabel">Last four of SS#: </label>
			<input type="text" id="lastOfSsn">
			<br>

			<label for="address" id="addressLabel">Address: </label>
			<input type="text" id="address">
			<label for="zipCode">Zip:</label>
			<input type="text" id="zipCode">
			
			<select>
			<option value="AL">AL</option>
			<option value="AK">AK</option>
			<option value="AZ">AZ</option>
			<option value="AR">AR</option>
			<option value="CA">CA</option>
			<option value="CO">CO</option>
			<option value="CT">CT</option>
			<option value="DE">DE</option>
			<option value="DC">DC</option>
			<option value="FL">FL</option>
			<option value="GA">GA</option>
			<option value="HI">HI</option>
			<option value="ID">ID</option>
			<option value="IL">IL</option>
			<option value="IN">IN</option>
			<option value="IA">IA</option>
			<option value="KS">KS</option>
			<option value="KY">KY</option>
			<option value="LA">LA</option>
			<option value="ME">ME</option>
			<option value="MD">MD</option>
			<option value="MA">MA</option>
			<option value="MI">MI</option>
			<option value="MN">MN</option>
			<option value="MS">MS</option>
			<option value="MO">MO</option>
			<option value="MT">MT</option>
			<option value="NE">NE</option>
			<option value="NV">NV</option>
			<option value="NH">NH</option>
			<option value="NJ">NJ</option>
			<option value="NM">NM</option>
			<option value="NY">NY</option>
			<option value="NC">NC</option>
			<option value="ND">ND</option>
			<option value="OH">OH</option>
			<option value="OK">OK</option>
			<option value="OR">OR</option>
			<option value="PA">PA</option>
			<option value="RI">RI</option>
			<option value="SC">SC</option>
			<option value="SD">SD</option>
			<option value="TN">TN</option>
			<option value="TX">TX</option>
			<option value="UT">UT</option>
			<option value="VT">VT</option>
			<option value="VA">VA</option>
			<option value="WA">WA</option>
			<option value="WV">WV</option>
			<option value="WI">WI</option>
			<option value="WY">WY</option>
		</select>				

			<br>
			<label for="multiplePeople">Multiple People?
			</label>
			<div class=radioOptions>
				<input type="radio" value="yes">
				<label for="yes">Yes</label>
				<input type="radio" value="no">
				<label for="no">No</label>
			</div>

		
			<label for="incidentDesc">Incident description:</label>
			<br>
			<textarea name="" id="incidentDesc" cols="30" rows="10">
			</textarea>
			<br>
		</div>

		<div id="buttons">
			<input type="submit" >
			<input type="submit" value="Save">

		</div>


		</form>

	</div>
	</div>
	<div class ="logo" style="">
		<div>Stupid<span>Company</span></div>
	</div>	
</body>
</html>
