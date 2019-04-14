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
      	  
  *{
      box-sizing: border-box;
      margin: 0;
      text-align:center;
      font-family: sans-serif;
      font-size: 2vh;
      padding: 0;
     
  }
  @media only screen and (max-width: 499px) {
			.col-sm-00  {display: 		   none; }
			.col-sm-12 	{width: 		   100%; }
			body 		{background-color: white;}
			[class*="col-sm-"] {
				border: 1px solid black	;
			}
            .laLabel {text-align: left;}
		}
  @media only screen and (min-width: 500px) {
			.col-md-00  {display: 		   none; }
			.col-md-01  {width: 		  8.33%; }
			.col-md-02  {width: 		 16.66%; }
			.col-md-03  {width: 		 25.00%; }
			.col-md-04  {width: 		 33.33%; }
			.col-md-05  {width: 		 41.66%; }
			.col-md-06  {width: 		 50.00%; }
			.col-md-07  {width: 		 58.33%; }
			.col-md-08  {width: 		 66.66%; }
			.col-md-09  {width: 		 75.00%; }
			.col-md-10  {width: 		 83.33%; }
			.col-md-11  {width: 		 91.66%; }
			.col-md-12  {width: 		100.00%; }
			body 		{background-color:white;}
	     
			[class*="col-md-"] {
				border: /*1px solid red	*/;
			}
		}

  	@media only screen and (min-width: 1024px) {
			.col-md-00  {display: 		initial; }
			.col-sm-00  {display:       initial; }
			.col-lg-01  {width: 		  8.33%; }
			.col-lg-02  {width: 		 16.66%; }
			.col-lg-03  {width: 		 25.00%; }
			.col-lg-04  {width: 		 33.33%; }
			.col-lg-05  {width: 		 41.66%; }
			.col-lg-06  {width: 		 50.00%; }
			.col-lg-07  {width: 		 58.33%; }
			.col-lg-08  {width: 		 66.66%; }
			.col-lg-09  {width: 		 75.00%; }
			.col-lg-10 	{width: 		 83.33%; }
			.col-lg-11 	{width: 		 91.66%; }
			.col-lg-12 	{width: 		100.00%; }
			body 		{background-color: white;}

			[class*="col-lg-"] {
				border: /*1px solid red*/;
			}
           
		}

  .LabelsCSS
{
    display: none; 
    border-radius: 10px;
}
    .newLogo div {
        color: #000000;
        font-family: 'Source Sans Pro', sans-serif;
        font-size: 7vh;
        font-weight: 200;
        border: 4px solid white;
    }
    .newLogo div span {color: #5379fa;
                    font-size: 7vh;
    }

    [class*="col-"] {
			float: 				left;
			border-radius: 		10px;
		}
   .row::after {
			content: 			"";
			clear: 				both;
			display: 			block;
		}
   .radioButtons{text-align:center;}
   .mainForm{
      border: 2px solid white; 
       border-radius: 10px;
   }
   input[type=text]
   {
       border-radius:10px;
   }
   #people{
       margin-left: 200px;
   }
    .float {
	          float: initial;
	          position: relative;
              bottom: 20%;
	      }
   #dateTextBox
   {
       margin-left:60px;
   }
   
	  </style>
</head>

<body onload="initialize()">
    <div class ="main"style="text-align: center;" >
	</div>  
    <div class ="gradient">
    <div class="row">
        <div class="col-sm-00 col-md-02 col-lg-03">&nbsp;</div>    
            <div class ="newLogo" style="margin-top:40px;">
		        <div class="col-lg-06 col-md-08 col-sm-12" style="color:white;">
                    Insurance<span>CO.</span>
		        </div>
	        </div>
        <div class="col-sm-00 col-md-02 col-lg-03">&nbsp;</div>
    </div>  

    <div class="row">
        <div class="col-sm-00 col-md-02 col-lg-03">&nbsp;</div>

            <div class="col-sm-12 col-md-08 col-lg-06">


   <form runat="server" class="mainForm" >
		   <!-- <div class="verifyingInformation"> -->
			
                <div class="row">
                   <!-- <div class="col-sm-00 col-md-01 col-lg-01">&nbsp;</div> -->
                    <div class="col-sm-12 col-md-06 col-lg-05">
                        <br />
                        <asp:Label runat="server" for="date" id="dateLabel" CssClass="laLabel">Date:</asp:Label>
                        <br />
                        <asp:TextBox runat="server" type="date" id="dateTextBox" style="text-align:center;"></asp:TextBox>
                    </div>
                        <asp:TextBox runat="server" ID="dateTime" CssClass="LabelsCSS"></asp:TextBox>
                    
                    <div class="col-sm-00 col-md-04 col-lg-03 ">&nbsp;</div>
                    <div class="col-sm-00 col-md-02 col-lg-04">&nbsp;</div>
                </div>
           
			
                <div class="row">
                    <!--<div class="col-sm-00 col-md-01 col-lg-01">&nbsp;</div> -->
                    <div class="col-sm-12 col-md-06 col-lg-06">
			            <asp:Label runat="server" for="firstName" id="fNameLabel" CssClass="laLabel">First Name: </asp:Label>
                        <br />
			            <asp:TextBox runat="server" type="text" id="firstName"></asp:TextBox>
                        <asp:TextBox runat="server" ID="firstNTimer" CssClass="LabelsCSS"></asp:TextBox>
                    </div>
                    <div class="col-sm-12 col-md-06 col-lg-06">    
                        <asp:Label runat="server" for="lstName" id="lNameLabel">Last Name: </asp:Label>
                        <br />
			            <asp:TextBox runat="server" type="text" id="lastName"></asp:TextBox>
                        <asp:TextBox runat="server" ID="lastNTimer" CssClass="LabelsCSS">0</asp:TextBox>
                    </div>
                </div>

                <div class="row">
                  <!--  <div class="col-sm-00 col-md-01 col-lg-01">&nbsp;</div>-->
                    <div class="col-sm-12 col-md-06 col-lg-06">
                        <asp:Label runat="server" for="phone" id="phoneLabel">Phone: </asp:Label>
                        <br />
			            <asp:TextBox runat="server" type="text" id="phone"></asp:TextBox>
                        <asp:TextBox runat="server" ID="phoneTimer" CssClass="LabelsCSS"></asp:TextBox>
			        </div>   
                    <div class="col-sm-12 col-md-06 col-lg-06">
                        <asp:Label runat="server" for="dateOfIncident" id="dateOfIncidentLabel">Date of Incident: </asp:Label>
                        <br />
			            <asp:TextBox runat="server" type="date" id="dateOfIncident"></asp:TextBox>
                        <asp:TextBox runat="server" ID="dateIncidentTimer" CssClass="LabelsCSS"></asp:TextBox>
                    </div>     

                </div>

                <div class="row">
                  <!--  <div class="col-sm-00 col-md-01 col-lg-01">&nbsp;</div> -->
                    <div class="col-sm-12 col-md-06 col-lg-06">
			            <asp:Label runat="server" for="policyNumber" id="policyNumberLabel">Policy Number: </asp:Label>
                        <br />
			            <asp:TextBox runat="server" type="text" id="policyNumber"></asp:TextBox>
			            <asp:TextBox runat="server" ID="policyTimer" CssClass="LabelsCSS"></asp:TextBox>
                    </div>
                    <div class="col-sm-12 col-md-06 col-lg-06">
                        <asp:Label runat="server" for="lastOfSsn" id="lastOfSsnLabel">Last four of SS#: </asp:Label>
                        <br />
			            <asp:TextBox runat="server" type="text" id="lastOfSsn"></asp:TextBox>
			            <asp:TextBox runat="server" ID="SSNTimer" CssClass="LabelsCSS"></asp:TextBox>
                    </div>
                </div>
            
          <div class="row">
                   <!-- <div class="col-sm-00 col-md-01 col-lg-01">&nbsp;</div>-->
                    <div class="col-sm-12 col-md-06 col-lg-06">
                        <asp:Label runat="server" for="address" id="addressLabel">Address: </asp:Label>
                        <br />
			            <asp:TextBox runat="server" type="text" id="address"></asp:TextBox>
                        <asp:TextBox runat="server" ID="addressTimer" CssClass="LabelsCSS"></asp:TextBox>
                    </div>
                    <!--<div class="col-sm-00 col-md-01 col-lg-02">&nbsp;</div> -->
                    <div class="col-sm-12 col-md-06 col-lg-06">
			            <asp:Label runat="server" for="zipCode">Zip:</asp:Label>
                        <br />
			            <asp:TextBox runat="server" type="text" id="zipCode"></asp:TextBox>
			            <asp:TextBox runat="server" ID="ZipTimer" CssClass="LabelsCSS"></asp:TextBox>
                    </div>
                    <!--<div class="col-sm-00 col-md-07 col-lg-07">&nbsp;</div>-->
                    <div class="col-sm-12 col-md-07 col-lg-07">
                        <span runat="server">&nbsp;&nbsp;</span>     
                        <label style="margin-right:90px;">Multiple People?</label>                    
                         <asp:RadioButtonList runat="server" ID="people" RepeatDirection="Horizontal" >
				                <asp:ListItem  runat="server" text="Yes" value="yes" style="text-align=right;"></asp:ListItem>
				                <asp:ListItem runat="server" text="No" value="no" style="margin-left:10px;"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:TextBox runat="server" ID="peopleTimer" CssClass="LabelsCSS"></asp:TextBox>
                    </div> 
                    <div class="col-sm-12 col-md-05 col-lg-05">
                        <asp:Label runat="server" for="state" style="margin-right:75px;">State: </asp:Label>
                        <br />
			            <asp:DropDownList runat="server" ID="State" style="margin-right:75px;">
			            <asp:ListItem runat="server" value="AL">AL</asp:ListItem>
			            <asp:ListItem runat="server" value="AK">AK</asp:ListItem>
			            <asp:ListItem runat="server" value="AZ">AZ</asp:ListItem>
			            <asp:ListItem runat="server" value="AR">AR</asp:ListItem>
			            <asp:ListItem runat="server" value="CA">CA</asp:ListItem>
			            <asp:ListItem runat="server" value="CO">CO</asp:ListItem>
			            <asp:ListItem runat="server" value="CT">CT</asp:ListItem>
			            <asp:ListItem runat="server" value="DE">DE</asp:ListItem>
			            <asp:ListItem runat="server" value="DC">DC</asp:ListItem>
			            <asp:ListItem runat="server" value="FL">FL</asp:ListItem>
			            <asp:ListItem runat="server" value="GA">GA</asp:ListItem>
			            <asp:ListItem runat="server" value="HI">HI</asp:ListItem>
			            <asp:ListItem runat="server" value="ID">ID</asp:ListItem>
			            <asp:ListItem runat="server" value="IL">IL</asp:ListItem>
			            <asp:ListItem runat="server" value="IN">IN</asp:ListItem>
			            <asp:ListItem runat="server" value="IA">IA</asp:ListItem>
			            <asp:ListItem runat="server" value="KS">KS</asp:ListItem>
			            <asp:ListItem runat="server" value="KY">KY</asp:ListItem>
			            <asp:ListItem runat="server" value="LA">LA</asp:ListItem>
			            <asp:ListItem runat="server" value="ME">ME</asp:ListItem>
			            <asp:ListItem runat="server" value="MD">MD</asp:ListItem>
			            <asp:ListItem runat="server" value="MA">MA</asp:ListItem>
			            <asp:ListItem runat="server" value="MI">MI</asp:ListItem>
			            <asp:ListItem runat="server" value="MN">MN</asp:ListItem>
			            <asp:ListItem runat="server" value="MS">MS</asp:ListItem>
			            <asp:ListItem runat="server" value="MO">MO</asp:ListItem>
			            <asp:ListItem runat="server" value="MT">MT</asp:ListItem>
			            <asp:ListItem runat="server" value="NE">NE</asp:ListItem>
			            <asp:ListItem runat="server" value="NV">NV</asp:ListItem>
			            <asp:ListItem runat="server" value="NH">NH</asp:ListItem>
			            <asp:ListItem runat="server" value="NJ">NJ</asp:ListItem>
			            <asp:ListItem runat="server" value="NM">NM</asp:ListItem>
			            <asp:ListItem runat="server" value="NY">NY</asp:ListItem>
			            <asp:ListItem runat="server" value="NC">NC</asp:ListItem>
			            <asp:ListItem runat="server" value="ND">ND</asp:ListItem>
			            <asp:ListItem runat="server" value="OH">OH</asp:ListItem>
			            <asp:ListItem runat="server" value="OK">OK</asp:ListItem>
			            <asp:ListItem runat="server" value="OR">OR</asp:ListItem>
			            <asp:ListItem runat="server" value="PA">PA</asp:ListItem>
			            <asp:ListItem runat="server" value="RI">RI</asp:ListItem>
			            <asp:ListItem runat="server" value="SC">SC</asp:ListItem>
			            <asp:ListItem runat="server" value="SD">SD</asp:ListItem>
			            <asp:ListItem runat="server" value="TN">TN</asp:ListItem>
			            <asp:ListItem runat="server" value="TX">TX</asp:ListItem>
			            <asp:ListItem runat="server" value="UT">UT</asp:ListItem>
			            <asp:ListItem runat="server" value="VT">VT</asp:ListItem>
			            <asp:ListItem runat="server" value="VA">VA</asp:ListItem>
			            <asp:ListItem runat="server" value="WA">WA</asp:ListItem>
			            <asp:ListItem runat="server" value="WV">WV</asp:ListItem>
			            <asp:ListItem runat="server" value="WI">WI</asp:ListItem>
			            <asp:ListItem runat="server" value="WY">WY</asp:ListItem>
		            </asp:DropDownList>			
                    <asp:TextBox runat="server" ID="stateTimer" CssClass="LabelsCSS"></asp:TextBox>
                    </div>
            </div>
            <!--</div> -->
       <br />   
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <asp:Label runat="server" for="incidentDesc">Incident description:</asp:Label>
			            <br>
                        <asp:TextBox runat="server" ID="descriptionTextBox" TextMode="multiline" Columns="50" Rows="8" style="border-radius:10px; text-align:left;" />
                        <asp:TextBox runat="server" ID="descriptionTime" CssClass="LabelsCSS"></asp:TextBox>
                    </div>
			    </div>
       <br />
            <div class="row">
		        <div id="buttons" class="col-sm-12 col-md-12 col-lg-12">
                    <asp:Button runat="server" Text="Submit" OnClick="Unnamed_Click" />
			        <asp:TextBox runat="server" type="submit" value="Save"></asp:TextBox>
		        </div>
            </div>
       <br />
	</form>
  </div>
        <div class="col-sm-00 col-md-02 col-lg-03">&nbsp;</div>
</div>
        </div>
</body>
    <script type="text/javascript">
        "use strict"
        function getDate() // date method used to auto-populate current date 
                {
	                var today = new Date();
	                var dd = today.getDate();
	                var mm = today.getMonth() +1;
	                var year = today.getFullYear();
	                if (dd < 10 ) 
	                {
		                dd = '0' + dd;
	                }
	                if (mm < 10 )
	                 {
	 	                mm= '0' + mm;
	                 }
	                 today= year+ '-'+ mm +'-'+dd;

	                 console.log(today);
	                 document.getElementById("dateTextBox").value = today;

                }

                function initialize(){
                getDate();
                }
        $(document).ready(function() {
	        var timer
            $('#dateTextBox').focusin(function() {
                  var sec = 0;
                timer = setInterval(function () {
                    $('#<%=dateTime.ClientID%>').val("00:00:" + sec);
                    document.getElementById('dateTime').innerHTML ='00:'+sec;
                  sec++;
            }, 1000);
            }).add('#dateTextBox').focusout(function() {
                if ( !$('#dateTextBox').is(':focus') ) {
                    clearTimeout(timer,1000)
                }
                });

                    $('#firstName').focusin(function() {
                  var sec = 0;
                        timer = setInterval(function () {
                      $('#<%=firstNTimer.ClientID%>').val("00:00:"+sec);
                  document.getElementById('firstNTimer').innerHTML ='00:'+sec;
                  sec++;
            }, 1000);
            }).add('#firstName').focusout(function() {
                if ( !$('#firstName').is(':focus') ) {
                    clearTimeout(timer, 1000)                 
                }
                });

                    $('#lastName').focusin(function() {
                  var sec = 0;
                        timer = setInterval(function () {
                      $('#<%=lastNTimer.ClientID%>').val("00:00:"+sec);
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
                        timer = setInterval(function () {
                      $('#<%=phoneTimer.ClientID%>').val("00:00:"+sec);
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
                        timer = setInterval(function () {
                      $('#<%=dateIncidentTimer.ClientID%>').val("00:00:"+sec);
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
                        timer = setInterval(function () {
                      $('#<%=policyTimer.ClientID%>').val("00:00:"+sec);
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
                        timer = setInterval(function () {
                      $('#<%=SSNTimer.ClientID%>').val("00:00:"+sec);
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
                        timer = setInterval(function () {
                      $('#<%=addressTimer.ClientID%>').val("00:00:"+sec);
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
                        timer = setInterval(function () {
                      $('#<%=ZipTimer.ClientID%>').val("00:00:"+sec);
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
                 timer = setInterval(function () {
                      $('#<%=descriptionTime.ClientID%>').val("00:00:"+sec);
                  document.getElementById('descriptionTime').innerHTML='00:'+sec;
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