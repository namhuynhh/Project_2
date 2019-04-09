<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AfterLogin.aspx.cs" Inherits="Project_2.AfterLogin" %>

<!DOCTYPE html>
<html lang="en">
<head>
	
<meta charset="UTF-8">
	<title>WillCode4Food - Login Form</title>
	  <link rel="stylesheet" type="text/css" href="Project.css">
	  <style type="text/css">
	  	input
	  	{
	  
        height: 35px;
        background: transparent;
        border: 1px solid #fff;
        cursor: pointer;
        border-radius: 2px;
        color: white;
        font-family: 'Source Sans Pro', sans-serif;
        font-size: 16px;
        font-weight: 400;
        padding: 6px;
        margin-top: 10px;
	  	}
	  	.logo
	  	{
	  		top: calc(7% - 50px);
			left: calc(17% - 300px);
	  	}
	  </style>
</head>

<body>
	<div class ="main"></div>
	<div class ="gradient"> 
        <form runat="server"  style="text-align: center;">
		    <input style="margin-top: 200px;" type="button" value="New Form" onclick="location.href='Newform.aspx'"><br>
		    <input type="button" value="Old Form" onclick="location.href = 'Oldform.aspx'"><br> 
         </form>
	</div>
	<div class ="logo" style="">
		<div>Generic<span>Company</span></div>
	</div>	
</body>
</html>
