<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Oldform.aspx.cs" Inherits="Project_2.Oldform" %>

<!DOCTYPE html>
<html lang="en">
<head>
	
<meta charset="UTF-8">
	<title>WillCode4Food - Login Form</title>
	  <link rel="stylesheet" type="text/css" href="Project.css">
	  <style type="text/css">
       td
       {
           font-size:24px;
           text-align: left;
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
      <form runat="server">
           <table style="margin-left:400px; margin-top:150px; border: 1px solid #fff">
            <tr >
                <td style="width:400px;">Form ID:</td>
                <td style="width:250px;">Date Started:</td>
                <td style="width:400px;">Action:</td>
            </tr>

<asp:Repeater runat="server" ID="savedForms">
        <ItemTemplate>
                  <tr>
                <td><%#DataBinder.Eval(Container.DataItem, "formID")%></td>
                <td><%#DataBinder.Eval(Container.DataItem, "date")%></td>
                <td><asp:LinkButton  ID="openForm" OnCommand="openForm_Click" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "formID")%>'  Text="Open Saved Form" runat="server"></asp:LinkButton></td>
                   </tr>
        </ItemTemplate>
    </asp:Repeater>
        </table>
	</form>
	</div>
	<div class ="logo" style="">
		<div>Stupid<span>Company</span></div>
	</div>	
</body>
</html>



