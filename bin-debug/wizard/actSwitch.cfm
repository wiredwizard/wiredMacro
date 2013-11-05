<cfinclude template="cklogin.cfm">
<cfparam name="request.content" default="index.cfm">
<cfparam name="url.p" default="1">
<cfswitch expression="#url.p#">
	<cfcase value="1">
		<cfset request.content = "views/dspMain.cfm">
	</cfcase>
	<cfcase value="2">
		<cfset request.content = "views/dspNewBlog.cfm">
	</cfcase>
	<cfcase value="913">
		<cfset request.content = "views/dspUsers.cfm">
	</cfcase>
	
	
	<cfdefaultcase>
		got this <cfabort><cflocation url="index.cfm?message=Please Log In" />
	</cfdefaultcase>
</cfswitch>