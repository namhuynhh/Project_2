<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Project_2.AdminPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
	
<meta charset="UTF-8">
	<title>WillCode4Food - Login Form</title>
	  <link rel="stylesheet" type="text/css" href="Project.css">
</head>

<body>
     
	<div class ="main"> </div>
	<div class ="gradient"></div>
	<div class ="logo">
		<div>Generic<span>Company</span></div>
	</div>
	<br>
	<div class ="loginForm">
        <form id="form" runat="server">
<%--        <input type ="text" placeholder="username" name ="user"> <br>--%>
            <asp:TextBox runat="server" id ="txtUser"></asp:TextBox>
            <asp:TextBox runat="server" id ="txtPassword" TextMode="Password"></asp:TextBox>
<%--		<input type="password" placeholder="password" name="password"><br>--%>
<%--		    <input type="button" value="Login" onclick="LogOn_Click()"/>--%>
            <asp:Button runat="server" Text="Login" ID ="btnLogin" BorderStyle="solid" BorderColor="white" ForeColor="White" BackColor="Transparent" OnClick="LogOn_Click" /><br />
            <asp:Label runat="server" ID ="label1"></asp:Label><br />
            <asp:Button runat="server" OnClick="btnNext_Click" ID="btnNext" Visible="false" Text="Continue"/>
    
         
        </form>
	</div>
</body>
</html>
<%--  --%>