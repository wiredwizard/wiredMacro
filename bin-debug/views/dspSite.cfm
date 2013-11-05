<style>
	iframe
	{ 
	height: 100%;
	min-height: 680px; 
	};

</style>

<table width="100%">
	<tr>
		<td valign="top"><cfinclude template="dspForm.cfm"></td>
		<td width="70%" valign="top">
		<cfoutput>
			#request.contents#
		</cfoutput></td>
	</tr>
</table>