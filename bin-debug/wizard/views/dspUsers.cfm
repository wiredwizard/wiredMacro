<cfinclude template="../cklogin.cfm">
<cfparam name="form.submit" default="">
<cfparam name="request.usertype" default="Add User">
<cfparam name="url.act" default="1">
<cfparam name="gtuser.fullname" default="">
<cfparam name="gtuser.email" default="">
<cfparam name="gtuser.password" default="">
<cfparam name="gtuser.clientid" default="999">
<cfparam name="gtuser.thsid" default="0">
<cfparam name="form.myuser" default="0">

<cfif form.myuser NEQ "0">
	<cfset gtuser.thsid = form.myuser>
</cfif>
<cfset thsKey = "8733" >


<cfif url.act EQ 1>
	<cfset request.usertype = "Add User">
<cfelseif url.act EQ 2>
	<cfquery name="alluser" datasource="#session.dsn#">
	select se.dealership_name, wrd.*
	from wizard wrd
	join seoworksheet se on wrd.p_client = se.seo_id
	order by p_client, p_fullName
	</cfquery>
	<cfif gtuser.thsid EQ 0>
		<form name="sltUser" id="sltUser" method="post" action="">
			<select name="myuser" id="myuser" onchange="this.form.submit()">
					<option value="0">Select User To Edit</option>
				<cfoutput query="alluser">
					<option value="#p_id#">#p_fullName# - #decrypt(p_email, thsKey, "CFMX_COMPAT", "UU")# - #dealership_name#<option>
				</cfoutput>
			</select><br /> <br />
		</form>
		
		<cfset request.usertype = "Add User">
	<cfelse>
		<cfset request.usertype = "Edit User">
		
		<cfquery name="alluser" datasource="#session.dsn#">
		select *
		from wizard
		where p_id = #gtuser.thsid#
		</cfquery>
		<cfoutput query="alluser">
			<cfset gtuser.email =  #decrypt(p_email, thsKey, "CFMX_COMPAT", "UU")#>
			<cfset gtuser.password = #decrypt(p_pass, thsKey, "CFMX_COMPAT", "UU")#>
			<cfset gtuser.fullname = #p_fullName#>
			<cfset gtuser.clientid = #p_client#>
		</cfoutput>
	</cfif>
	
	
<cfelseif url.act EQ 3>

</cfif>

<cfif form.submit EQ "Add User">
	<cfset gtuser.email =  form.uEmail>
	<cfset gtuser.password = form.uPass>
	<cfset gtuser.fullname = form.fllName>
	<cfset gtuser.clientid = form.uClientid>
	<cftry>
	<cfset gtuser.thsUser = encrypt(gtuser.email, thsKey, "CFMX_COMPAT", "UU")>
	<cfset gtuser.thsPass = encrypt(gtuser.password, thsKey, "CFMX_COMPAT", "UU")>
	<cfcatch><cfoutput>#cfcatch#</cfoutput><cfabort></cfcatch></cftry>
	<cfquery name="addUser" datasource="#session.dsn#">
	insert into wizard
	(p_fullName,p_email,p_pass,p_client)
	values
	(
	<cfqueryparam cfsqltype="cf_sql_varchar" value="#gtuser.fullname#">
	,<cfqueryparam cfsqltype="cf_sql_varchar" value="#gtuser.thsUser#">
	,<cfqueryparam cfsqltype="cf_sql_varchar" value="#gtuser.thsPass#">
	,<cfqueryparam cfsqltype="cf_sql_integer" value="#gtuser.clientid#">
	)
	</cfquery>
	<cfquery name="gtid" datasource="#session.dsn#" maxrows="1">
	select max(p_id) as thsid
	from wizard
	where p_fullname = <cfqueryparam cfsqltype="cf_sql_varchar" value="#gtuser.fullname#">
	and p_email = <cfqueryparam cfsqltype="cf_sql_varchar" value="#gtuser.thsUser#">
	and p_pass = <cfqueryparam cfsqltype="cf_sql_varchar" value="#gtuser.thsPass#">
	and p_client = <cfqueryparam cfsqltype="cf_sql_integer" value="#gtuser.clientid#">
	</cfquery>
	<cfset gtuser.thsid = gtid.thsid>
	<cfset request.usertype = "Edit Added User">
	
<cfelseif form.submit EQ "Edit User" or  form.submit EQ "Edit Added User">
	
	<cfset gtuser.email =  form.uEmail>
	<cfset gtuser.password = form.uPass>
	<cfset gtuser.fullname = form.fllName>
	<cfset gtuser.clientid = form.uClientid>
	<cfset gtuser.thsid = form.thsid>
	<cftry>
	<cfset gtuser.thsUser = encrypt(gtuser.email, thsKey, "CFMX_COMPAT", "UU")>
	<cfset gtuser.thsPass = encrypt(gtuser.password, thsKey, "CFMX_COMPAT", "UU")>
	<cfcatch><cfoutput>#cfcatch#</cfoutput><cfabort></cfcatch></cftry>
	<cfquery name="addUser" datasource="#session.dsn#">
	update wizard
	set p_fullName = <cfqueryparam cfsqltype="cf_sql_varchar" value="#gtuser.fullname#">
	,p_email = <cfqueryparam cfsqltype="cf_sql_varchar" value="#gtuser.thsUser#">
	,p_pass = <cfqueryparam cfsqltype="cf_sql_varchar" value="#gtuser.thsPass#">
	,p_client = <cfqueryparam cfsqltype="cf_sql_integer" value="#gtuser.clientid#">
	where p_id = <cfqueryparam cfsqltype="cf_sql_integer" value="#gtuser.thsid#">
	</cfquery>
	<cfset request.usertype = "Edit Added User">


</cfif>

<cfquery name="gtclients" datasource="#session.dsn#">
select seo_id, dealership_name
from seoworksheet
order by dealership_name
</cfquery>

<cfoutput>
<form action="" name="adduser" id="adduser" method="post">
	<input type="hidden" name="thsid" id="thsid" value="#gtuser.thsid#">
	<table>
		<tr>
			<td colspan="2" align="center"><h2>#request.usertype#</h2></td>
		</tr>
		<tr>
			<td>Full Name:</td>
			<td><input name="fllName" id="fllName" type="text" value="#gtuser.fullname#"></td>
		</tr>
		<tr>
			<td>User Email:</td>
			<td><input name="uEmail" id="uEmail" type="text" value="#gtuser.email#"></td>
		</tr>
		<tr>
			<td>User Password:</td>
			<td><input name="uPass" id="uPass" type="text" value="#gtuser.password#"></td>
		</tr>
		<tr>
			<td>Client:</td>
			<td><select id="uClientid" name="uClientid">
				<option value="0">Select Client</option>
				<cfloop query="gtclients">
				<option value="#seo_id#" <cfif gtuser.clientid EQ seo_id>selected="true"</cfif>>#dealership_name#</option>
				</cfloop>
			</select></td>
		</tr>
		<tr>
			<td>&nbsp;</td>	
			<td><input type="submit" id="submit" name="submit" value="<cfoutput>#request.usertype#</cfoutput>"></td>
		</tr>
	</table>
</form>
</cfoutput>
<cfdump var="#gtuser#">