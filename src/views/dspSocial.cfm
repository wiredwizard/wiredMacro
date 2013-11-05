<style>

#facebookbutton{
}

#googleplusbutton{
}

#twitterbutton{
}

#socialmenu{
	background-repeat: no-repeat;	
	}
	
#socialmenu li{
	list-style:none;
	float:left;
	padding:2px;
}	
</style>
<cfinclude template="../global/dfparam.cfm">
<cfparam name="thsStg" default="">
<cfif cgi.QUERY_STRING NEQ "">
	<cfset thsStg = replacenocase(cgi.QUERY_STRING,"=","/","all")>
	<cfset thsStg = replacenocase(thsStg,"&","/","all")>
</cfif>
<cfset thsPage = "http://" & cgi.SERVER_NAME & cgi.SCRIPT_NAME & "/" & thsStg>
<cfoutput>
<meta itemprop="name" content="#request.title#">
<meta itemprop="description" content="#request.description#">
<meta itemprop="image" content="#request.seopath#/assets/#session.logo#">	
<meta property="og:title" content="#request.title#" />
<meta property="og:image" content="#request.seopath#/assets/#session.logo#" />
<meta property="og:description" content="#request.description#" />


<div id="socialmenu" >
	<ul>
		<li onclick="document.getElementById('player2').play()">
			<a href="##" title="Facebook" onClick="MyWindow=window.open('http://www.facebook.com/share.php?u=#thsPage#&title=#request.title#','MyWindow','toolbar=no,location=no,directories=no,status=no, menubar=no,scrollbars=no,resizable=no,width=600,height=300'); return false;">	<img style="border: 0;" src="#request.seopath#/buttons/facebookbutton.png" id="facebookbutton" name="facebookbutton" alt="facebook button" onMouseOver="this.src='#request.seopath#/buttons/facebookrolloverbutton.png'" onMouseOut="this.src='#request.seopath#/buttons/facebookbutton.png'" /> </a>
		</li>
		<li onclick="document.getElementById('player2').play()">
			<a href="##" title="Google+" onClick="MyWindow=window.open('https://plus.google.com/share?url=#thsPage#&description=#request.title#','MyWindow','toolbar=no,location=no,directories=no,status=no, menubar=no,scrollbars=no,resizable=no,width=600,height=300'); return false;">	<img style="border: 0;" src="#request.seopath#/buttons/googleplusbutton.png" id="googleplusbutton" name="facebookbutton" alt="google plus button" onMouseOver="this.src='#request.seopath#/buttons/googleplusrolloverbutton.png'" onMouseOut="this.src='#request.seopath#/buttons/googleplusbutton.png'" /> </a>
		</li>
		
		<li onclick="document.getElementById('player2').play()">
			<a href="##" title="Twitter" onClick="MyWindow=window.open('https://twitter.com/share?text=#request.title#&url=#thsPage#&related=prplwiredwizard:SEO Video Service','MyWindow','toolbar=no,location=no,directories=no,status=no, menubar=no,scrollbars=no,resizable=no,width=600,height=300'); return false;">	<img style="border: 0;" src="#request.seopath#/buttons/twitterbutton.png" id="twitterbutton" name="twitterbutton" alt="twitter button" onMouseOver="this.src='#request.seopath#/buttons/twitterrolloverbutton.png'" onMouseOut="this.src='#request.seopath#/buttons/twitterbutton.png'" /> </a>
		</li>
		<li onclick="document.getElementById('player2').play()">
			<a title="Pinterest" href='javascript:void((function()%7Bvar%20e=document.createElement(&apos;script&apos;);e.setAttribute(&apos;type&apos;,&apos;text/javascript&apos;);e.setAttribute(&apos;charset&apos;,&apos;UTF-8&apos;);e.setAttribute(&apos;src&apos;,&apos;http://assets.pinterest.com/js/pinmarklet.js?r=&apos;+Math.random()*99999999);document.body.appendChild(e)%7D)());'>	<img style="border: 0;" src="#request.seopath#/buttons/pinterestbutton.png" id="pinterestbutton" name="pinterestbutton" alt="pinterest button" onMouseOver="this.src='#request.seopath#/buttons/pinterestrolloverbutton.png'" onMouseOut="this.src='#request.seopath#/buttons/pinterestbutton.png'" /> </a>
		</li>
		<li onclick="document.getElementById('player2').play()">
			<a href="##" title="Scope.it" onClick="MyWindow=window.open('https://www.scoop.it/bookmarklet?url=#thsPage#','MyWindow','toolbar=no,location=no,directories=no,status=no, menubar=no,scrollbars=no,resizable=no,width=600,height=750'); return false;">	<img style="border: 0;" src="#request.seopath#/buttons/scopeitbutton.png" id="scopeitbutton" name="scopeitbutton" alt="scopeit button" onMouseOver="this.src='#request.seopath#/buttons/scopeitrolloverbutton.png'" onMouseOut="this.src='#request.seopath#/buttons/scopeitbutton.png'" /> </a>
		</li>
		<li onclick="document.getElementById('player2').play()">
			<a target="_blank" href="#request.seopath#/sitemap/rss#session.dom_Id#.xml"><img src="#request.seopath#/assets/rss.png" title="RSS Blog Feed" height="25px"></a>
		</li>
	</ul>
</div>
</cfoutput>