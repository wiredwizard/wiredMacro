<cfprocessingdirective pageencoding="utf-8" suppresswhitespace="true">
<cfsetting enablecfoutputonly="yes" showdebugoutput="false">
<cfquery name="gtsite" datasource="#session.dsn#" >
select *
	from hostDom hdm join domains dom on hdm.dom_id = dom.dom_id
	join seoworksheet seo on hdm.dom_client = seo.seo_id
	where hdm.dom_url = '#session.clid#'
</cfquery>	

<cfquery name="gtblog" datasource="#session.dsn#" >
select * 
from micro_blog
where bg_domainid = #gtsite.dom_id#	
</cfquery>	

<cfoutput>
<cfsavecontent variable="thssite">
<?xml version="1.0" encoding="utf-8"?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
<channel>
	<title>#gtsite.dom_title#</title>
	<link>http://#cgi.SERVER_NAME#/</link>
	<atom:link href="http://#cgi.SERVER_NAME#/sitemap/rss#gtsite.dom_id#.xml" rel="self" type="application/rss+xml" />
	<description>#REReplace(left(gtsite.dom_about,150),"[^0-9A-Za-z ]","","all")#</description>	
 <cfloop query="gtblog" >
	 <item>
		<title>#bg_title#</title>
		<link>http://#cgi.SERVER_NAME#/index.cfm/p/4/bid/#bg_id#/ct/#REReplace(bg_title,"[^0-9A-Za-z]","","all")#.html</link>
		<guid>http://#cgi.SERVER_NAME#/index.cfm/p/4/bid/#bg_id#/ct/#REReplace(bg_title,"[^0-9A-Za-z]","","all")#.html</guid>
		<description>#bg_description#</description>
	</item>	
 </cfloop>	
</channel>   
</rss>
</cfsavecontent>

</cfoutput>

<cftry>
	<cffile action="write" file="#ExpandPath(".\rss#gtsite.dom_id#.xml")#" output="#trim(thssite)#" >
<cfcatch>
<cfcontent type="text/xml">
<cfoutput>
#trim(thssite)#
</cfoutput>
</cfcatch></cftry>
</CFPROCESSINGDIRECTIVE>

