<html>
<head>
<title>Wizard</title>
<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
</head>
<body>
<cfparam name="url.message" default="Please Log In">	
<center>
  	<form action="actlogin.cfm" method="post" enctype="application/x-www-form-urlencoded">
      <table>
	      	<tr>
	      		<td colspan="2" align="Center"><h1><cfoutput>#url.message#</cfoutput></h1></td>
	      	<tr>
	      	<tr>
	      		<td>User:</td>
	      		<td><input type="text" name="nuser" id="nuser" value="************" /></td>
	      	</tr>
	      	<tr>
	      		<td>Pass:</td>
	      		<td><input type="password" name="npass" id="npass" value="************" /></td>
	      	</tr>
	      	<tr>
	      		<td></td>
	      		<td><input type="submit" name="submit" id="submit" value="Log In" /></td>
	      	</tr>
      </table>
	</form>
</center>
</body>
</html>