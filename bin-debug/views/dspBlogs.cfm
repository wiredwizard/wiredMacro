<table width="100%">
	<tr>
		<td width="70%" valign="top">
			<cfset cntr = 1>
			<cfoutput query="gtblogs" maxrows="3">
				<cfif cntr EQ 1>
					<cfset cntr = 2>
					<table cellpadding="10" cellspacing="10">
						<tr>
							<td valign="top"><iframe width="420" height="315" src="//www.youtube.com/embed/#bg_vid#" frameborder="0" allowfullscreen></iframe></td>
							<td style="width:600px;" valign="top"><strong><a style="color:blue;font-weight:bold;" href="http://#cgi.SERVER_NAME#/index.cfm/p/4/bid/#bg_id#/ct/#bg_title#.html">#bg_title#</a></strong><br>#bg_description#</td>
						</tr>
					</table>
				<cfelse>
					<cfset cntr = 1>
					<table cellpadding="10" cellspacing="10">
						<tr>
							<td style="width:600px;" valign="top"><strong><a style="color:blue;font-weight:bold;" href="http://#cgi.SERVER_NAME#/index.cfm/p/4/bid/#bg_id#/ct/#bg_title#.html">#bg_title#</a></strong><br>#bg_description#</td>
							<td valign="top"><iframe width="420" height="315" src="//www.youtube.com/embed/#bg_vid#" frameborder="0" allowfullscreen></iframe></td>
						</tr>
					</table>
				</cfif>
			</cfoutput>
		</td>
		<td valign="top"><cfinclude template="dspForm.cfm"></td>
	</tr>
</table>

