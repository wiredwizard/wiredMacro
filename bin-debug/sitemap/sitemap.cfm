<cfprocessingdirective pageencoding="utf-8" suppresswhitespace="true">
<cfsetting enablecfoutputonly="false" showdebugoutput="true">
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
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
        xmlns:video="http://www.google.com/schemas/sitemap-video/1.0">
  <url> 
    <loc>http://#cgi.SERVER_NAME#/index.cfm/p/1/home.html</loc>
	<video:video>     
      <video:player_loc allow_embed="yes" autoplay="ap=1">#request.seopath#/dealer.cfm/thsid/hm1.html</video:player_loc>
      <video:thumbnail_loc>http://i2.ytimg.com/vi/#gtsite.dom_video#/hqdefault.jpg</video:thumbnail_loc>
      <video:title>#gtsite.dom_title#</video:title>  
      <video:description>#REReplace(gtsite.dom_about,"[^0-9A-Za-z ]","","all")#</video:description>
    </video:video> 
  </url>
  <url>
  	<loc>http://#cgi.SERVER_NAME#/index.cfm/p/3/blog.html</loc>
  </url>	
  <url>
  	<loc>http://#cgi.SERVER_NAME#/index.cfm/p/2/information.html</loc>
  </url>	
 <cfloop query="gtblog" >
 	<url> 
		<loc>http://#cgi.SERVER_NAME#/index.cfm/p/4/bid/#bg_id#/ct/#REReplace(bg_title,"[^0-9A-Za-z' ]","","all")#.html</loc>
		<video:video>     
	      <video:player_loc allow_embed="yes" autoplay="ap=1">#request.seopath#/dealer.cfm/thsid/bg#bg_id#.html</video:player_loc>
	      <video:thumbnail_loc>http://i2.ytimg.com/vi/#bg_vid#/hqdefault.jpg</video:thumbnail_loc>
	      <video:title>#bg_title#</video:title>  
	      <video:description>#REReplace(bg_description,"[^0-9A-Za-z ]","","all")#</video:description>
	    </video:video>
	</url> 	
 </cfloop>	
 </urlset>    
</cfsavecontent>
</cfoutput>

</CFPROCESSINGDIRECTIVE>
<cftry>
<cffile action="delete" file="#ExpandPath(".\sitemap" & gtsite.dom_id & ".xml")#">	
<cfcatch></cfcatch></cftry>
<cffile action="write" file="#ExpandPath(".\sitemap" & gtsite.dom_id & ".xml")#" output="#trim(thssite)#" >

<cflocation addtoken="false" url="http://#cgi.SERVER_NAME#/sitemap/sitemap#gtsite.dom_id#.xml">