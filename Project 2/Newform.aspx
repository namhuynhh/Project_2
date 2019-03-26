<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Newform.aspx.cs" Inherits="Project_2.Newform" %>

<!DOCTYPE html>
<html lang="en">
<head>
	
<meta charset="UTF-8">
	<title>WillCode4Food - Login Form</title>
	  <link rel="stylesheet" type="text/css" href="Project.css">
    	<script type="text/javascript" 
          src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js">
        </script>
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
        <form runat="server" action="">
		<div class="verifyingInformation">
			
            <label for="date" id="dateLabel">Date: </label> 
			<asp:TextBox runat="server" type="date" id="dateTextBox"></asp:TextBox>
            <label id="dateTime"></label>
			<br>

			<label for="firstName" id="fNameLabel">First Name: </label>
			<asp:TextBox runat="server" type="text" id="firstName"></asp:TextBox>
            <label id="firstNTimer"></label>

			<label for="lstName" id="lNameLabel">Last Name: </label>
			<asp:TextBox runat="server" type="text" id="lastName"></asp:TextBox>
            <label id="lastNTimer"></label>
			<br>

			<label for="phone" id="phoneLabel">Phone: </label>
			<asp:TextBox runat="server" type="text" id="phone"></asp:TextBox>
            <label id="phoneTimer"></label>

			<label for="dateOfIncident" id="dateOfIncidentLabel">Date of Incident: <label>
			<asp:TextBox runat="server" type="date" id="dateOfIncident"></asp:TextBox>
            <label id="dateIncidentTimer"></label>
			<br>

			<label for="policyNumber" id="policyNumberLabel">Policy Number: </label>
			<asp:TextBox runat="server" type="text" id="policyNumber"></asp:TextBox>
			<label id="policyTimer"></label>

			<label for="lastOfSsn" id="lastOfSsnLabel">Last four of SS#: </label>
			<asp:TextBox runat="server" type="text" id="lastOfSsn"></asp:TextBox>
			<label id="SSNTimer"></label>
            <br>

			<label for="address" id="addressLabel">Address: </label>
			<asp:TextBox runat="server" type="text" id="address"></asp:TextBox>
            <label id="addressTimer"></label>

			<label for="zipCode">Zip:</label>
			<asp:TextBox runat="server" type="text" id="zipCode"></asp:TextBox>
			<label id="ZipTimer"></label>

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
				<asp:TextBox runat="server" type="radio" value="yes"></asp:TextBox>
				<label for="yes">Yes</label>
				<asp:TextBox runat="server" type="radio" value="no"></asp:TextBox>
				<label for="no">No</label>
			</div>

		
			<label for="incidentDesc">Incident description:</label>
			<br>
<%--			<textarea name="" id="incidentDesc" cols="30" rows="10">
			</textarea>--%> <asp:TextBox runat="server" Width="250px" Height="200px" ID="descriptionTextBox"></asp:TextBox>
                <label runat ="server" id="descriptionTimer"></label>
			<br />
            <br />   
		</div>

		<div id="buttons">
			<asp:TextBox runat="server" type="submit" ></asp:TextBox>
			<asp:TextBox runat="server" type="submit" value="Save"></asp:TextBox>
		</div>
		</form>

	</div>
	</div>
	<div class ="logo" style="">
		<div>Stupid<span>Company</span></div>
	</div>	
</body>
    <script type="text/javascript">
        $(document).ready(function() {
	        var timer
            $('#dateTextBox').focusin(function() {
                  var sec = 0;
                  timer = setInterval(function(){
                  document.getElementById('dateTime').innerHTML='00:'+sec;
                  sec++;
            }, 1000);
            }).add('#dateTextBox').focusout(function() {
                if ( !$('#dateTextBox').is(':focus') ) {
                    clearTimeout(timer,1000)
                }
                });

                    $('#firstName').focusin(function() {
                  var sec = 0;
                  timer = setInterval(function(){
                  document.getElementById('firstNTimer').innerHTML='00:'+sec;
                  sec++;
            }, 1000);
            }).add('#firstName').focusout(function() {
                if ( !$('#firstName').is(':focus') ) {
                    clearTimeout(timer,1000)
                }
                });

                    $('#lastName').focusin(function() {
                  var sec = 0;
                  timer = setInterval(function(){
                  document.getElementById('lastNTimer').innerHTML='00:'+sec;
                  sec++;
            }, 1000);
            }).add('#lastName').focusout(function() {
                if ( !$('#lastName').is(':focus') ) {
                    clearTimeout(timer,1000)
                }
                });

                    $('#phone').focusin(function() {
                  var sec = 0;
                  timer = setInterval(function(){
                  document.getElementById('phoneTimer').innerHTML='00:'+sec;
                  sec++;
            }, 1000);
            }).add('#phone').focusout(function() {
                if ( !$('#phone').is(':focus') ) {
                    clearTimeout(timer,1000)
                }
                });

                    $('#dateOfIncident').focusin(function() {
                  var sec = 0;
                  timer = setInterval(function(){
                  document.getElementById('dateIncidentTimer').innerHTML='00:'+sec;
                  sec++;
            }, 1000);
            }).add('#dateOfIncident').focusout(function() {
                if ( !$('#dateOfIncident').is(':focus') ) {
                    clearTimeout(timer,1000)
                }
                });

                    $('#policyNumber').focusin(function() {
                  var sec = 0;
                  timer = setInterval(function(){
                  document.getElementById('policyTimer').innerHTML='00:'+sec;
                  sec++;
            }, 1000);
            }).add('#policyNumber').focusout(function() {
                if ( !$('#policyNumber').is(':focus') ) {
                    clearTimeout(timer,1000)
                }
                });

                    $('#lastOfSsn').focusin(function() {
                  var sec = 0;
                  timer = setInterval(function(){
                  document.getElementById('SSNTimer').innerHTML='00:'+sec;
                  sec++;
            }, 1000);
            }).add('#lastOfSsn').focusout(function() {
                if ( !$('#lastOfSsn').is(':focus') ) {
                    clearTimeout(timer,1000)
                }
                });

                    $('#address').focusin(function() {
                  var sec = 0;
                  timer = setInterval(function(){
                  document.getElementById('addressTimer').innerHTML='00:'+sec;
                  sec++;
            }, 1000);
            }).add('#address').focusout(function() {
                if ( !$('#address').is(':focus') ) {
                    clearTimeout(timer,1000)
                }
                });

                    $('#zipCode').focusin(function() {
                  var sec = 0;
                  timer = setInterval(function(){
                  document.getElementById('ZipTimer').innerHTML='00:'+sec;
                  sec++;
            }, 1000);
            }).add('#zipCode').focusout(function() {
                if ( !$('#zipCode').is(':focus') ) {
                    clearTimeout(timer,1000)
                }
                });

             $('#descriptionTextBox').focusin(function() {
                  var sec = 0;
                  timer = setInterval(function(){
                  document.getElementById('descriptionTimer').innerHTML='00:'+sec;
                  sec++;
            }, 1000);
            }).add('#descriptionTextBox').focusout(function() {
                if ( !$('#descriptionTextBox').is(':focus') ) {
                    clearTimeout(timer,1000)
                }
            });
        });
</script>

</html>
