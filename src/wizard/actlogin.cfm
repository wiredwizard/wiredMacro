
<cfset session.thsUser =  form.nuser>
<cfset session.thsPass = form.npass>
<cfset session.thsMound = "dI4f89iO9Pm4RMV">
<cfset session.thsLevel = "0">
<cfset thsKey = "8733" >

<cftry>
<cfset thsUser = encrypt(session.thsUser, thsKey, "CFMX_COMPAT", "UU")>
<cfset thsPass = encrypt(session.thsPass, thsKey, "CFMX_COMPAT", "UU")>
<cfcatch><cfset session.thsMound = "dI4f89iO9Pm4RMV"></cfcatch></cftry>

<cfif form.nuser EQ "wiredwizard" and form.npass EQ "tiki8733">
	<cfset session.thsMound = "xcE@!bEfP*wXSJSU*KC$RMsfr!1ypAKE%^uFp@frI@pZHrX^9NmAj!@v6vUFwb@N">
	<cfset session.thsLevel = "wiredwizardgod">
<cfelseif form.nuser NEQ "" and form.npass NEQ "">
	<cfset session.thsMound = "dI4f89iO9Pm4RMV">
<cfelse>
	<cfset session.thsMound = "dI4f89iO9Pm4RMV">
</cfif>


<cflocation url="dspmain.cfm?p=1">

        
        <!--- encrypted=encrypt(Form.myString, theKey, "CFMX_COMPAT",
            "UU");
        //Decrypt it
        decrypted=decrypt(encrypted, theKey, Form.myAlgorithm, Form.myEncoding); --->