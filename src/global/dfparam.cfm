

<cfparam name="request.title" default="Buy New Car">
<cfparam name="request.description" default="">
<cfparam name="request.keywords" default="">
<cfparam name="request.page" default="views/dspindex.cfm">
<cfparam name="request.contents" default="">


<cfparam name="url.p" default="1">

<cfif url.p EQ 1>
 	<cfquery name="getDom" datasource="#session.dsn#">
	select *
	from hostDom hdm join domains dom on hdm.dom_id = dom.dom_id
	where hdm.dom_url = <cfqueryparam cfsqltype="cf_sql_varchar" value="#session.clid#">
	</cfquery>
	<cfoutput query="getDom" maxrows="1">
		<cfset request.title = #dom_title#>
		<cfset request.description = #dom_about#>
		<cfset request.keywords = #dom_keywords#>
	</cfoutput>
<cfelseif url.p EQ 2>
	<cfparam name="url.ct" default="0">
	
	<cfif url.ct EQ 0>
	<cfquery name="gtPage" datasource="#session.dsn#">
	select *
	from corePages
	where pg_id = 2
	and pg_domid = <cfqueryparam cfsqltype="cf_sql_integer" value="#session.dom_id#"> 
	</cfquery>
	<cfoutput query="gtPage" maxrows="1">
		<cfset request.title = #pg_title#>
		<cfset request.description = #pg_description#>
		<cfset request.keywords = #pg_keywords#>
		<cfset request.contents = #pg_content#>
	</cfoutput>
	<cfelse>
	<cfquery name="gtPage" datasource="#session.dsn#">
	select *
	from corePages
	where pg_id = 2
	and thsid = <cfqueryparam cfsqltype="cf_sql_integer" value="#url.ct#">
	and pg_domid = <cfqueryparam cfsqltype="cf_sql_integer" value="#session.dom_id#"> 
	</cfquery>
	<cfoutput query="gtPage" maxrows="1">
		<cfset request.title = #pg_title#>
		<cfset request.description = #pg_description#>
		<cfset request.keywords = #pg_keywords#>
		<cfset request.contents = #pg_content#>
	</cfoutput>
	</cfif>
<cfelseif url.p EQ 3>
	<cfquery name="gtblogs" datasource="#session.dsn#">
	select bg_id, bg_title, bg_description,bg_vid
	from micro_blog
	where bg_domainid = <cfqueryparam cfsqltype="cf_sql_integer" value="#session.dom_id#">
	and bg_active = 1
	order by bg_date DESC
	</cfquery>
		<cfset request.title = session.brand & " News and Reviews">
		<cfset request.description = session.brand & " " & session.aboutus>
		<cfset request.keywords = session.keywords>
<cfelseif url.p EQ 4>	
	<cfquery name="gtblog" datasource="#session.dsn#">
	select *
	from micro_blog
	where bg_id = <cfqueryparam cfsqltype="cf_sql_integer" value="#url.bid#">
	</cfquery>
	<cfoutput query="gtblog" maxrows="1">
		<cfset request.title = #bg_title#>
		<cfset request.description = #bg_description#>
		<cfset request.keywords = #bg_keywords#>
		<cfset request.contents = #bg_content#>
		<cfset request.bgvid = #bg_vid#>
	</cfoutput>
<cfelseif url.p EQ 5>	
	<cfquery name="getDom" datasource="#session.dsn#">
	select *
	from hostDom hdm join domains dom on hdm.dom_id = dom.dom_id
	where hdm.dom_url = <cfqueryparam cfsqltype="cf_sql_varchar" value="#session.clid#">
	</cfquery>
	<cfoutput query="getDom" maxrows="1">
		<cfset request.title = #dom_title#>
		<cfset request.description = #dom_about#>
		<cfset request.keywords = #dom_keywords#>
	</cfoutput>
<cfelseif url.p EQ 6>	
		<cfset request.title = "Cyber Locked Security Policy">
		<cfset request.description = "Keeping your information secure is just the beginning. We're equally committed to keeping your preferences in mind. When you fill out a form on one of our sites, rest assured we send your information quickly and safely to the business you requested.&nbsp; If you have questions or concerns regarding our Privacy Policy, please feel free to contact us.">
		<cfset request.keywords = "hacker free,information security,wiredwizard security,personal information,form submission policy">
<cfelse>


</cfif>
