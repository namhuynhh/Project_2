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
#people {text-align: center;
         margin-left: 875px;
}
.LabelsCSS
{
    display: none;  
}

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
        <form runat="server">
        <div class="verifyingInformation">
            
            <asp:Label runat="server" for="date" id="dateLabel">Date: </asp:Label> 
            <asp:TextBox runat="server" type="date" id="dateTextBox"></asp:TextBox>
            <asp:TextBox runat="server" ID="dateTime" CssClass="LabelsCSS"></asp:TextBox>
            <br>

            <asp:Label runat="server" for="firstName" id="fNameLabel">First Name: </asp:Label>
            <asp:TextBox runat="server" type="text" id="firstName"></asp:TextBox>
            <asp:TextBox runat="server" ID="firstNTimer" CssClass="LabelsCSS"></asp:TextBox>

            <asp:Label runat="server" for="lstName" id="lNameLabel">Last Name: </asp:Label>
            <asp:TextBox runat="server" type="text" id="lastName"></asp:TextBox>
            <asp:TextBox runat="server" ID="lastNTimer" CssClass="LabelsCSS"></asp:TextBox>
            <br>

            <asp:Label runat="server" for="phone" id="phoneLabel">Phone: </asp:Label>
            <asp:TextBox runat="server" type="text" id="phone"></asp:TextBox>
            <asp:TextBox runat="server" ID="phoneTimer" CssClass="LabelsCSS"></asp:TextBox>

            <asp:Label runat="server" for="dateOfIncident" id="dateOfIncidentLabel">Date of Incident: </asp:Label>
            <asp:TextBox runat="server" type="date" id="dateOfIncident"></asp:TextBox>
            <asp:TextBox runat="server" ID="dateIncidentTimer" CssClass="LabelsCSS"></asp:TextBox>
            <br>

            <asp:Label runat="server" for="policyNumber" id="policyNumberLabel">Policy Number: </asp:Label>
            <asp:TextBox runat="server" type="text" id="policyNumber"></asp:TextBox>
            <asp:TextBox runat="server" ID="policyTimer" CssClass="LabelsCSS"></asp:TextBox>

            <asp:Label runat="server" for="lastOfSsn" id="lastOfSsnLabel">Last four of SS#: </asp:Label>
            <asp:TextBox runat="server" type="text" id="lastOfSsn"></asp:TextBox>
            <asp:TextBox runat="server" ID="SSNTimer" CssClass="LabelsCSS"></asp:TextBox>
            <br>

            <asp:Label runat="server" for="address" id="addressLabel">Address: </asp:Label>
            <asp:TextBox runat="server" type="text" id="address"></asp:TextBox>
            <asp:TextBox runat="server" ID="addressTimer" CssClass="LabelsCSS"></asp:TextBox>

            <asp:Label runat="server" for="zipCode">Zip:</asp:Label>
            <asp:TextBox runat="server" type="text" id="zipCode"></asp:TextBox>
            <asp:TextBox runat="server" ID="ZipTimer" CssClass="LabelsCSS"></asp:TextBox>

            <asp:Label runat="server" for="state">State</asp:Label>
            <asp:DropDownList runat="server" ID="State">
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

            <br>
            <label>Multiple People?
            </label>
            <asp:RadioButtonList runat="server" ID="people" RepeatDirection="Horizontal">
                <asp:ListItem  runat="server" text="Yes" value="yes" ></asp:ListItem>
<%--                <asp:Label runat="server"for="yes">Yes</label>--%>
                <asp:ListItem runat="server" text="No" value="no"></asp:ListItem>
<%--                <asp:Label runat="server"for="no">No</label>--%>
            </asp:RadioButtonList>
            <asp:TextBox runat="server" ID="peopleTimer" CssClass="LabelsCSS"></asp:TextBox>

        
            <asp:Label runat="server" for="incidentDesc">Incident description:</asp:Label>
            <br>
                <asp:TextBox runat="server" Width="250px" Height="200px" ID="descriptionTextBox"></asp:TextBox>
                <asp:TextBox runat="server" ID="descriptionTime" CssClass="LabelsCSS"></asp:TextBox>
            <br />
            <br />   
        </div>

        <div id="buttons">
            <asp:Button runat="server" Text="Submit" OnClick="Unnamed_Click" />
            <asp:TextBox runat="server" type="submit"></asp:TextBox>
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
                  document.getElementById('dateTime').innerText='00:'+sec;
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

