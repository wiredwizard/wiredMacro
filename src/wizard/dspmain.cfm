<!DOCTYPE html>
<cfinclude template="cklogin.cfm">
<cfinclude template="actSwitch.cfm">
<html>
	<head>
		<title>Site Admin Wizard</title>
		<meta name="robots" content="noindex,nofollow"> 
		<meta name="author" content="Wiredwizard">
		<link href="<cfoutput>#request.seopath#</cfoutput>/global/global.css" rel="stylesheet" type="text/css" />
	</head>
	<cfoutput>
	<body style="background-image: url(#request.seopath#/assets/#session.background#);">
		<div class="logo"><a class="nav" href="index.cfm?p=1"><img border="0" height="160px" src="#request.seopath#/assets/#session.logo#"></a></div>
		<div class="navigationmgr"><br /> <br /><cfinclude template="views/dspnav.cfm"></div>
		<div align="center" class="dspmgrcontent"><cfinclude template="#request.content#"><br /><br />
		
		<center><h2 style="font-size:10px;">&##169; #dateformat(now(),"yyyy")# Wiredwizard.net | #session.city# #session.brand#</h2></center></div>
	</body>
	</cfoutput>
</html>	