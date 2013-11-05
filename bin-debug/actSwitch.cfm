<cfinclude template="global/dfparam.cfm">
<cfif url.p EQ 1>
	<cfset request.page = "views/dspindex.cfm">
<cfelseif url.p EQ 2>
	<cfset request.page = "views/dspSite.cfm">
<cfelseif url.p EQ 3>
	<cfset request.page = "views/dspBlogs.cfm">
<cfelseif url.p EQ 4>
	<cfset request.page = "views/dspBloger.cfm">
<cfelseif url.p EQ 5>
	<cfset request.page = "views/dspSent.cfm">	
<cfelseif url.p EQ 6>
	<cfset request.page = "views/dspSecurity.cfm">	
<cfelse>
	<cfset request.page = "views/dspindex.cfm">
</cfif>