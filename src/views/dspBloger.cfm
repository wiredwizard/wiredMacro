<cfoutput>
	<cfset pntitle = request.title>
	<cfset vidID = request.bgvid>
	<cfset ldEmail = "http://" & cgi.SERVER_NAME>
	<cfset pnContact = request.description>
	<cfset pnURL = "http://i2.ytimg.com/vi/#request.bgvid#/hqdefault.jpg">
	
	<link rel="image_src" href="#pnURL#" />
	<link rel="video_src" href="#request.sslseopath#/dealer.swf?pnTitle=#pntitle#&vidID=#vidID#&ldEmail=#ldEmail#"/>
	<meta name="video_height" content="247" />
	<meta name="video_width" content="300" />
	<meta name="video_type" content="application/x-shockwave-flash" />
	
	<meta property="og:url" content="#request.sslseopath#/dealer.swf?pnTitle=#pntitle#&vidID=#vidID#&ldEmail=#ldEmail#">
	<meta property="og:title" content="#pntitle#">
	<meta property="og:description" content="#pnContact#">
	<meta property="og:type" content="video">
	<meta property="og:image" content="#pnURL#">
	<meta property="og:video" content="#request.sslseopath#/dealer.swf?pnTitle=#pntitle#&vidID=#vidID#&ldEmail=#ldEmail#">
	<meta property="og:video:type" content="application/x-shockwave-flash">
	<meta property="og:video:width" content="300">
	<meta property="og:video:height" content="247">
	<meta property="og:site_name" content="#cgi.SERVER_NAME#">
</cfoutput>

<table width="100%">
	<tr>
		<td width="70%" valign="top">
		
			<cfoutput>
			<h1 style="">#request.title#</h1>	
			<center><iframe width="640" height="480" src="//www.youtube.com/embed/#request.bgvid#" frameborder="0" allowfullscreen></iframe></center>
			<br>#request.contents#<br />
			</cfoutput>
		</td>
		<td valign="top"><cfinclude template="dspForm.cfm"></td>
	</tr>
</table>


