<!DOCTYPE html itemscope itemtype="http://schema.org/Article">
<cfinclude template="actSwitch.cfm">
<html xmlns:og="http://ogp.me/ns#">
	<head>
		<cfoutput>
		<title>#request.title#</title>
		<link href="#request.sslseopath#/global/global.css" rel="stylesheet" type="text/css" />
		<link href="#request.seopath#/global/global.css" rel="stylesheet" type="text/css" />
		<meta name="description" content="#request.description#"> 
		<meta name="keywords" content="#request.keywords#"> 
		<meta name="robots" content="index,follow"> 
		<meta name="author" content="Automotive Marketing"> 
		<meta name="Revisit-After" content="5 Days">
		
		#session.google#
		</cfoutput>
	</head>
	<cfoutput>
	<body style="background-image: url(#request.seopath#/assets/#session.background#);">
		<div class="logo"><a class="nav" href="http://#cgi.SERVER_NAME#/index.cfm/p/1/home.html"><img border="0" height="160px" src="#request.seopath#/assets/#session.logo#"></a></div>
		<div class="address">#session.address#</div>
		<div class="navigation">#session.naver# &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </div>
		<div align="center" class="dspcontent"><cfinclude template="#request.page#"><br />
		
		<center><script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- 728x90, created 1/23/08 -->
<ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-3748658815188670"
     data-ad-slot="5142089318"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script><br /> <br /><h2 style="font-size:10px;">&##169; #dateformat(now(),"yyyy")# http://youtubebusinesssolutions.com | #session.city# #session.brand#</h2></center></div>

	
	</body>
	</cfoutput>
</html>	


