<cfparam name="URL.a" default="l">
<cfparam name="micro_blog.BG_ACTIVE" default="">
<cfparam name="micro_blog.BG_AUTHOR" default="">
<cfparam name="micro_blog.BG_CONTENT" default="">
<cfparam name="micro_blog.BG_DATE" default="">
<cfparam name="micro_blog.BG_DESCRIPTION" default="">
<cfparam name="micro_blog.BG_DOMAINID" default="">
<cfparam name="micro_blog.BG_IMAGE" default="">
<cfparam name="micro_blog.BG_KEYWORDS" default="">
<cfparam name="micro_blog.BG_REVIEW" default="">
<cfparam name="micro_blog.BG_TITLE" default="">
<cfparam name="micro_blog.BG_VID" default="">

<cfswitch expression="#URL.a#">
<cfcase value="i">
<cfquery name="insert_micro_blog" datasource="leadmacro" dbtype="ODBC">
INSERT INTO micro_blog ( BG_ACTIVE, BG_AUTHOR, BG_CONTENT, BG_DATE, BG_DESCRIPTION, BG_DOMAINID, BG_IMAGE, BG_KEYWORDS, BG_REVIEW, BG_TITLE, BG_VID)
VALUES ( '#FORM.BG_ACTIVE#', '#FORM.BG_AUTHOR#', '#FORM.BG_CONTENT#', '#FORM.BG_DATE#', '#FORM.BG_DESCRIPTION#', '#FORM.BG_DOMAINID#', '#FORM.BG_IMAGE#', '#FORM.BG_KEYWORDS#', '#FORM.BG_REVIEW#', '#FORM.BG_TITLE#', '#FORM.BG_VID#')
</cfquery>

<cfset micro_blog.BG_ACTIVE = FORM.BG_ACTIVE>
<cfset micro_blog.BG_AUTHOR = FORM.BG_AUTHOR>
<cfset micro_blog.BG_CONTENT = FORM.BG_CONTENT>
<cfset micro_blog.BG_DATE = FORM.BG_DATE>
<cfset micro_blog.BG_DESCRIPTION = FORM.BG_DESCRIPTION>
<cfset micro_blog.BG_DOMAINID = FORM.BG_DOMAINID>
<cfset micro_blog.BG_IMAGE = FORM.BG_IMAGE>
<cfset micro_blog.BG_KEYWORDS = FORM.BG_KEYWORDS>
<cfset micro_blog.BG_REVIEW = FORM.BG_REVIEW>
<cfset micro_blog.BG_TITLE = FORM.BG_TITLE>
<cfset micro_blog.BG_VID = FORM.BG_VID>
</cfcase>
<cfcase value="s">
<cfquery name="micro_blog" datasource="leadmacro" dbtype="ODBC">
SELECT * FROM micro_blog
WHERE BG_ID = #URL.ID#;
</cfquery>
</cfcase>
<cfcase value="u">
<cfquery name="update_micro_blog" datasource="leadmacro" dbtype="ODBC">
UPDATE micro_blog
SET BG_ACTIVE = '#FORM.BG_ACTIVE#',
BG_AUTHOR = '#FORM.BG_AUTHOR#',
BG_CONTENT = '#FORM.BG_CONTENT#',
BG_DATE = '#FORM.BG_DATE#',
BG_DESCRIPTION = '#FORM.BG_DESCRIPTION#',
BG_DOMAINID = '#FORM.BG_DOMAINID#',
BG_IMAGE = '#FORM.BG_IMAGE#',
BG_KEYWORDS = '#FORM.BG_KEYWORDS#',
BG_REVIEW = '#FORM.BG_REVIEW#',
BG_TITLE = '#FORM.BG_TITLE#',
BG_VID = '#FORM.BG_VID#'
WHERE BG_ID = #URL.ID#;
</cfquery>
<cfquery name="micro_blog" datasource="leadmacro" dbtype="ODBC">
SELECT * FROM micro_blog
WHERE BG_ID = #URL.ID#;
</cfquery>
</cfcase>
<cfcase value="d">
<cfquery name="micro_blog" datasource="leadmacro" dbtype="odbc">
SELECT * FROM micro_blog
WHERE BG_ID = #URL.ID#;
</cfquery>
<cfquery name="remove_micro_blog" datasource="leadmacro" dbtype="odbc">
DELETE FROM micro_blog
WHERE BG_ID = #URL.ID#;
</cfquery>
</cfcase>

<cfcase value="l">
<cfquery name="micro_blog" datasource="leadmacro" dbtype="ODBC">
SELECT *
FROM micro_blog;
</cfquery>
</cfcase>
</cfswitch>


<cfswitch expression="#URL.a#">
<cfcase value="n,s">
<cfif URL.a IS "N">
<cfset button_label = "Add">
<cfset a = "i">
<cfelseif URL.a IS "s">
<cfset button_label = "Update">
<cfset a = "u&id=#id#">
</cfif>

<cfoutput>
<form action="dspmain.cfm?p=2&a=#a#" method="post"></cfoutput>
<table border="0" cellpadding="2" cellspacing="0">
<tr>
<td align="right">BG_ACTIVE</td>
<td><input name="BG_ACTIVE" type="text" id="BG_ACTIVE" value="<cfoutput>#micro_blog.BG_ACTIVE#</cfoutput>"></td>
</tr>
<tr>
<td align="right">BG_AUTHOR</td>
<td><input name="BG_AUTHOR" type="text" id="BG_AUTHOR" value="<cfoutput>#micro_blog.BG_AUTHOR#</cfoutput>"></td>
</tr>
<tr>
<td align="right">BG_CONTENT</td>
<td><input name="BG_CONTENT" type="text" id="BG_CONTENT" value="<cfoutput>#micro_blog.BG_CONTENT#</cfoutput>"></td>
</tr>
<tr>
<td align="right">BG_DATE</td>
<td><input name="BG_DATE" type="text" id="BG_DATE" value="<cfoutput>#micro_blog.BG_DATE#</cfoutput>"></td>
</tr>
<tr>
<td align="right">BG_DESCRIPTION</td>
<td><input name="BG_DESCRIPTION" type="text" id="BG_DESCRIPTION" value="<cfoutput>#micro_blog.BG_DESCRIPTION#</cfoutput>"></td>
</tr>
<tr>
<td align="right">BG_DOMAINID</td>
<td><input name="BG_DOMAINID" type="text" id="BG_DOMAINID" value="<cfoutput>#micro_blog.BG_DOMAINID#</cfoutput>"></td>
</tr>
<tr>
<td align="right">BG_IMAGE</td>
<td><input name="BG_IMAGE" type="text" id="BG_IMAGE" value="<cfoutput>#micro_blog.BG_IMAGE#</cfoutput>"></td>
</tr>
<tr>
<td align="right">BG_KEYWORDS</td>
<td><input name="BG_KEYWORDS" type="text" id="BG_KEYWORDS" value="<cfoutput>#micro_blog.BG_KEYWORDS#</cfoutput>"></td>
</tr>
<tr>
<td align="right">BG_REVIEW</td>
<td><input name="BG_REVIEW" type="text" id="BG_REVIEW" value="<cfoutput>#micro_blog.BG_REVIEW#</cfoutput>"></td>
</tr>
<tr>
<td align="right">BG_TITLE</td>
<td><input name="BG_TITLE" type="text" id="BG_TITLE" value="<cfoutput>#micro_blog.BG_TITLE#</cfoutput>"></td>
</tr>
<tr>
<td align="right">BG_VID</td>
<td><input name="BG_VID" type="text" id="BG_VID" value="<cfoutput>#micro_blog.BG_VID#</cfoutput>"></td>
</tr>
<tr>
<Td></Td>
<Td><cfoutput><input name="" type="submit" value="#button_label#"></cfoutput>
<cfif URL.a IS "s">
<cfoutput>
</td></form>
<td>
<form action="dspmain.cfm?p=2&a=d&id=#URL.ID#" method="post"><input type="submit" value="Delete"> </cfoutput></cfif></Td></form>
</tr>
</table>
</cfcase>

<cfcase value="i,d,u">
<cfif URL.a IS "i">
You have just added a record:<br>
<cfelseif URL.a IS "d">
YOu have just removed the record:<br>
<cfelseif URL.a IS "u">
You have just updated the record:<br>
</cfif>
<cfoutput>
#micro_blog.BG_DATE#<br>
#micro_blog.BG_DESCRIPTION#<br>
#micro_blog.BG_TITLE#<br>
</cfoutput>
<a href="dspmain.cfm?p=2&a=l">LIST</a>
</cfcase>
<cfcase value="l">
<cfoutput>
<form action="dspmain.cfm?p=2&a=n" method="post"><input type="submit" value="Add"></form> </cfoutput>
<table border="1">
<tr>
<td>BG_DATE</td>
<td>BG_TITLE</td>
<td> </td>
</tr>
<cfoutput query="micro_blog">
<tr>
<td>#dateformat(BG_DATE, "mm/dd/yy")#</td>
<td>#left(BG_TITLE,50)#</td>
<td><a href="dspmain.cfm?p=2&a=s&id=#BG_ID#">Edit</a></TD>
</tr>
</cfoutput>
</table>
</cfcase>
</cfswitch>