<cfoutput>
<table width="100%">
	<tr>
		<td valign="top"><cfinclude template="dspForm.cfm"></td>
		<td width="70%" valign="top">
		<h1 style="color:black;padding-bottom:10px;">#session.city# #session.brand#</h1>
		<center>
			<iframe width="640" height="360" src="//www.youtube.com/embed/#session.video#?controls=0" frameborder="0" allowfullscreen></iframe>
		</center>
		<br />
		<p>#session.contater#</p>
		</td>		
	</tr>
</table>
</cfoutput>