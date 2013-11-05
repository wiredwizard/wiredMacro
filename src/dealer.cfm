<cfparam name="url.thsid" default="p1">
<cfparam name="url.pntitle" default="hello world">
<cfparam name="url.vidID" default="NtMUOXZEyVM">
<cfparam name="url.ldEmail" default="hello email">
<cfparam name="url.pnContact" default="hello contact">
<cfparam name="url.pnURL" default="hello url">

<cfoutput>
<cfif findnocase("bg","#url.thsid#")>
	<cfset thsis = replaceNoCase(url.thsid,"bg","")>
	<cfset thsis = replaceNoCase(thsis,".html","")>
	<cfquery datasource="#session.dsn#" name="gtblog" maxrows="1">
	select bg_title,bg_vid,bg_description,bg_keywords,bg_image
	from micro_blog
	where bg_id = <cfqueryparam cfsqltype="cf_sql_integer" value="#thsis#">
	</cfquery>
	
	<cfset pntitle = gtblog.bg_title>
	<cfset vidID = gtblog.bg_vid>
	<cfset ldEmail = "http://" & cgi.SERVER_NAME>
	<cfset pnContact = left(gtblog.bg_description,100)>
	<cfif gtblog.bg_image EQ "">
		<cfset pnURL = "http://i2.ytimg.com/vi/#gtblog.bg_vid#/hqdefault.jpg">
	<cfelse>
		<cfset pnURL = gtblog.bg_vid>
	</cfif>
<cfelseif findnocase("cr","#url.thsid#")>
	
<cfelseif findnocase("hm","#url.thsid#")>	
	<cfset thsis = replaceNoCase(url.thsid,"hm","")>
	<cfset thsis = replaceNoCase(thsis,".html","")>
	<cfquery name="gtblog" datasource="#session.dsn#" maxrows="1">
	select dom_title,dom_video,dom_brand,dom_about
	from domains
	where dmm_id = <cfqueryparam cfsqltype="cf_sql_integer" value="#thsis#">
	</cfquery>

	<cfset pntitle = gtblog.dom_title>
	<cfset vidID = gtblog.dom_video>
	<cfset ldEmail = "http://" & cgi.SERVER_NAME>
	<cfset pnContact = left(gtblog.dom_about,100)>
	<cfset pnURL = "http://i2.ytimg.com/vi/#vidID#/hqdefault.jpg">
	
<cfelse>
	<cfset pntitle = "Automotive SEO Service">
	<cfset vidID = "NtMUOXZEyVM">
	<cfset ldEmail = "test">
	<cfset pnContact = "Get started learning all about SEO">
	<cfset pnURL = "http://" & cgi.SERVER_NAME >
</cfif><br />
</cfoutput>

<cfoutput>
	<link rel="image_src" href="#pnURL#" />
	<link rel="video_src" href="#request.sslseopath#/dealer.swf?pnTitle=#pnTitle#&vidID=#vidID#&ldEmail=#ldEmail#"/>
	<meta name="video_height" content="247" />
	<meta name="video_width" content="300" />
	<meta name="video_type" content="application/x-shockwave-flash" />
	
	<meta property="og:url" content="#request.sslseopath#/dealer.swf?pnTitle=#pnTitle#&vidID=#vidID#&ldEmail=#ldEmail#">
	<meta property="og:title" content="#pntitle#">
	<meta property="og:description" content="#pnContact#">
	<meta property="og:type" content="video">
	<meta property="og:image" content="#pnURL#">
	<meta property="og:video" content="#request.sslseopath#/dealer.swf?pnTitle=#pnTitle#&vidID=#vidID#&ldEmail=#ldEmail#">
	<meta property="og:video:type" content="application/x-shockwave-flash">
	<meta property="og:video:width" content="300">
	<meta property="og:video:height" content="247">
	<meta property="og:site_name" content="#cgi.SERVER_NAME#">
</cfoutput>

<CFIF FindNoCase('MSIE','#CGI.HTTP_USER_AGENT#') GREATER THAN 0>
  <cfoutput>
  	<script>
		var vars = "pnTitle=#pnTitle#&vidID=#vidID#&ldEmail=#ldEmail#&pnContact=#pnContact#";
		var movie = '#request.sslseopath#/dealer'; //just name without extension like myMovie NOT myMovie.swf
		var width = '300';
		var height = '247';
		var wmode = 'opaque';
		</script>
		<script src="loadFlash.js"></script>
  </cfoutput>
<cfelseif  FindNoCase('iphone','#CGI.HTTP_USER_AGENT#') GREATER THAN 0 or FindNoCase('ipad','#CGI.HTTP_USER_AGENT#') GREATER THAN 0 or FindNoCase('ipod','#CGI.HTTP_USER_AGENT#') GREATER THAN 0>  

<cfoutput>
<iframe width="300px" height="247px" src="https://www.youtube.com/embed/#vidID#" frameborder="0" allowfullscreen></iframe>
</cfoutput>		

<cfelse>
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
			id="Dealer" width="300" height="247"
			codebase="http://fpdownload.macromedia.com/get/flashplayer/current/swflash.cab">
			<cfoutput>
			<param name="movie" value="#request.sslseopath#/dealer.swf" />
			</cfoutput>
			<param name="bgcolor" value="$#ffffff" />
			<param name="allowScriptAccess" value="sameDomain" />
			<cfoutput>
			<param name="flashVars" value="pnTitle=#pnTitle#&vidID=#vidID#&ldEmail=#ldEmail#&pnContact=#pnContact#" />
			</cfoutput>
			<embed src="<cfoutput>#request.sslseopath#</cfoutput>/dealer.swf" quality="high" bgcolor="#ffffff#"
				width="300" height="247" align="middle"
				play="true"
				<cfoutput>
				flashVars="pnTitle=#pnTitle#&vidID=#vidID#&ldEmail=#ldEmail#&pnContact=#pnContact#"
				</cfoutput>	
				loop="false"
				allowScriptAccess="sameDomain"
				type="application/x-shockwave-flash"
				pluginspage="http://www.adobe.com/go/getflashplayer">
			</embed>
			
	</object>
</cfif>	