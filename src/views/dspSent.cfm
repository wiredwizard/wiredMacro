<cfset dtnow = dateformat(now(), "yyyy-mm-dd") & " " & timeformat(now(), "hh:mm:ss")>

<cfif form.email EQ "finding">
	<cfquery name="addit" datasource="#session.dsn#">
	insert into leads
	(ld_client,ld_date,ld_fname,ld_lname,ld_age,ld_address,ld_city,ld_state,ld_zip,ld_phone,ld_email,ld_time,ld_message)
	values
	(<cfqueryparam cfsqltype="cf_sql_integer" value="#session.client#">
	,'#dtnow#'
	,<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.mfirst#">
	,<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.mlast#">
	,<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.mage#">
	,<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.maddress#">
	,<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.mcity#">
	,<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.mstate#">
	,<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.mzip#">
	,<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.mphone#">
	,<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.capche#">
	,<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.mtime#">
	,<cfqueryparam cfsqltype="cf_sql_longvarchar" value="#form.minfo#">
	
	)
	</cfquery>


<cftry>
	<cfmail to="wrdwzrd@wiredwizard.net" from="wrdwzrd@wiredwizard.net" subject="new lead from #cgi.SERVER_NAME#" type="html" server="wiredwizard.net" username="wrdwzrd@wiredwizard.net" password="tiki8733">
	You have a new lead from your blooging site provided by wiredwizard.net<br><br>
	Name: #form.mfirst# #form.mlast#<br />
	Age: #form.mage#<br />
	Address: #form.maddress#<br />
	City: #form.mcity# State: #form.mstate#<br />
	Zip: #form.mzip#<br />
	Phone: #form.mphone#<br />
	Email: #form.capche#<br />
	Best Time: #form.mtime#<br />
	Message: #form.minfo#
	</cfmail>
<cfcatch></cfcatch>	
</cftry>

</cfif>
<br /> <br />
<h3>Your information has been sent.<br> <br>Thank you for contacting us.</h3><br /> <br />
	<cfoutput>
	Name: #form.mfirst# #form.mlast#<br />
	Age: #form.mage#<br />
	Address: #form.maddress#<br />
	City: #form.mcity# State: #form.mstate#<br />
	Zip: #form.mzip#<br />
	Phone: #form.mphone#<br />
	Email: #form.capche#<br />
	Best Time: #form.mtime#<br />
	Message: #form.minfo#
	</cfoutput>