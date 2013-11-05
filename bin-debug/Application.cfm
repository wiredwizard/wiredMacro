<cfapplication	name="leadmacro" 
	sessionManagement="true" 
	clientManagement="true" />
	
<cfparam name="session.dsn" default="leadmacro" />	

<cfif cgi.SERVER_NAME EQ "192.168.56.101">
	<cfset request.seopath = "http://192.168.56.101/numacro" />
	<cfset session.clid = "youtubebusinesssolutions.com"/>
	<cfset request.sslseopath = "http://192.168.56.101/numacro">
<cfelse>
	<cfset request.seopath = "http://#cgi.HTTP_HOST#" />
	<cfset session.clid = trim(ReplaceNoCase(cgi.server_name,"www."," ","one")) />
	<cfset request.sslseopath = "https://#cgi.HTTP_HOST#">
</cfif>

	
<cfparam name="URLList" default="">
<cfset URLList = cgi.PATH_INFO>		
<cfset URLList = #ReplaceNoCase(URLList,".wiz","","all" )#>
<cfscript>
    LoopIterations = ListLen(URLList, "/") / 2;
</cfscript>
    <cfloop from="1" to="#LoopIterations#" index="i">
        <cfset tmp = SetVariable("URL.#ListGetAt(URLList, 1, "/")#", "#ListGetAt(URLList, 2, "/")#")>
        <cfset URLList = ListDeleteAt(URLList, 1, "/")>
        <cfset URLList = ListDeleteAt(URLList, 1, "/")>
    </cfloop>		


<cfparam name="session.background" default="blk.fw.png">
<cfparam name="session.email" default="">
<cfparam name="session.video" default="">
<cfparam name="session.bkcolor" default="">
<cfparam name="session.bkform" default="##f0f0f0">
<cfparam name="session.link" default="">
<cfparam name="session.logo" default="">
<cfparam name="session.address" default="">
<cfparam name="session.city" default="">
<cfparam name="session.brand" default="">
<cfparam name="session.clientname" default="">
<cfparam name="session.aboutus" default="">
<cfparam name="session.state" default="">
<cfparam name="session.dom_Id" default="">
<cfparam name="session.keywords" default="">
<cfparam name="session.client" default="">
<cfparam name="session.contater" default="">
<cfparam name="session.google" default="">
<cfparam name="session.naver" default="">

<cfquery name="getDom" datasource="#session.dsn#">
	select *
	from hostDom hdm join domains dom on hdm.dom_id = dom.dom_id
	join seoworksheet seo on hdm.dom_client = seo.seo_id
	where hdm.dom_url = '#session.clid#'
	</cfquery>

	<cfoutput query="getDom" maxrows="1">
		<cfset session.link = #dom_link#>
		<cfset session.logo = #dom_logo#>
		<cfset session.aboutus = #dom_about#>
		<cfset session.background = #dom_background#>
		<cfset session.email = #dom_email#>
		<cfset session.logo = #dom_logo#>
		<cfset session.address = #dom_address#>
		<cfset session.city = #dom_city#>
		<cfset session.brand = #dom_brand#>
		<cfset session.state = #dom_state#>
		<cfset session.video = #dom_video#>		
		<cfset session.clientname = #dealership_name#>
		<cfset session.dom_id = #dom_id#>
		<cfset session.keywords = #dom_keywords#>
		<cfset session.client = #seo_id#>
		<cfset session.contater = #dom_additional#>
		<cfset session.google = #dom_google#>
		<cfset session.naver = #dom_nav#>
	</cfoutput>