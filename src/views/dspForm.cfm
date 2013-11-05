<cfparam name="form.submit" default="">
<center>
<table><tr><td><cfinclude template="dspSocial.cfm"></td></tr></table>
</center>
<cfdump var="#form#">
<cfif form.submit NEQ "">
	<cfinclude template="dspSent.cfm">
<cfelse>
<cfoutput>
<script type="text/javascript" src="#request.seopath#/global/validate.js"></script>
<form name="mRequest" id="mRequest" action="#request.seopath#/index.cfm/p/1/dealership.html" method="post">
	<table bgcolor="#session.bkform#">
		<tr>
			<td class="mform" width="10px">&nbsp;</td>
			<td class="mform" colspan="5" align="center" style="font-weight:bold;color:blue;">Contact Us Today!<br />It only taks seconds.<br /> <br /><hr width="99%"><br /></td>
		</tr>
		<tr>
			<td class="mform" width="10px">&nbsp;</td>
			<td class="mform" align="right" width="5px" style="color:red;font-weight:bold;">*</td>
			<td class="mform">First Name</td>
			<td class="mform" width="5px">&nbsp;</td>
			<td class="mform"><input name="mFirst" id="mFirst" type="text"></td>
			<td class="mform" width="10px">&nbsp;</td>
		</tr>
		<tr>
			<td class="mform" width="10px">&nbsp;</td>
			<td class="mform" align="right" width="5px" style="color:red;font-weight:bold;">*</td>
			<td class="mform">Last Name</td>
			<td class="mform" width="5px">&nbsp;</td>
			<td class="mform"><input name="mLast" id="mLast" type="text"></td>
			<td class="mform" width="10px">&nbsp;</td>
		</tr>
		<tr>
			<td class="mform" width="10px">&nbsp;</td>
			<td class="mform" align="right" width="5px" style="color:red;font-weight:bold;">*</td>
			<td class="mform">Age</td>
			<td class="mform" width="5px">&nbsp;</td>
			<td class="mform"><input name="mAge" id="mAge" type="text" maxlength="2"></td>
			<td class="mform" width="10px">&nbsp;</td>
		</tr>
		<tr>
			<td class="mform" width="10px">&nbsp;</td>
			<td class="mform" align="right" width="5px" style="color:red;font-weight:bold;">*</td>
			<td class="mform">Address</td>
			<td class="mform" width="5px">&nbsp;</td>
			<td class="mform"><input name="mAddress" id="mAddress" type="text"></td>
			<td class="mform" width="10px">&nbsp;</td>
		</tr>
		<tr>
			<td class="mform" width="10px">&nbsp;</td>
			<td class="mform" align="right" width="5px" style="color:red;font-weight:bold;">*</td>
			<td class="mform">City</td>
			<td class="mform" width="5px">&nbsp;</td>
			<td class="mform"><input name="mCity" id="mCity"></td>
			<td class="mform" width="10px">&nbsp;</td>
		</tr>
		<tr>
			<td class="mform" width="10px">&nbsp;</td>
			<td class="mform" align="right" width="5px" style="color:red;font-weight:bold;">*</td>
			<td class="mform">State</td>
			<td class="mform" width="5px">&nbsp;</td>
			<td class="mform"><cfinclude template="../global/dspStates.cfm"></td>
			<td class="mform" width="10px">&nbsp;</td>
		</tr>
		<tr>
			<td class="mform" width="10px">&nbsp;</td>
			<td class="mform" align="right" width="5px" style="color:red;font-weight:bold;">*</td>
			<td class="mform">Zip Code</td>
			<td class="mform" width="5px">&nbsp;</td>
			<td class="mform"><input name="mZip" id="mZip" type="text"></td>
			<td class="mform" width="10px">&nbsp;</td>
		</tr>
		<tr>
			<td class="mform" width="10px">&nbsp;</td>
			<td class="mform" align="right" width="5px" style="color:red;font-weight:bold;">*</td>
			<td class="mform">Phone</td>
			<td class="mform" width="5px">&nbsp;</td>
			<td class="mform"><input name="mPhone" id="mPhone" type="text"></td>
			<td class="mform" width="10px">&nbsp;</td>
		</tr>
		<tr>
			<td class="mform" width="10px">&nbsp;</td>
			<td class="mform" align="right" width="5px" style="color:red;font-weight:bold;">*</td>
			<td class="mform">Email</td>
			<td class="mform" width="5px">&nbsp;</td>
			<td class="mform"><input name="capche" id="capche" type="text"></td>
			<td class="mform" width="10px">&nbsp;</td>
		</tr>
		<tr>
			<td class="mform" width="10px">&nbsp;</td>
			<td class="mform" align="right" width="5px" style="color:red;font-weight:bold;">*</td>
			<td class="mform">Best time to call</td>
			<td class="mform" width="5px">&nbsp;</td>
			<td class="mform"><input name="mTime" id="mTime" type="text"></td>
			<td class="mform" width="10px">&nbsp;</td>
		</tr>	
		<tr>
			<td class="mform" width="10px">&nbsp;</td>
			<td class="mform" align="right" width="5px" style="color:red;font-weight:bold;">&nbsp;</td>
			<td class="mform" valign="top">Additional Information<br />Message</td>
			<td class="mform" width="5px">&nbsp;</td>
			<td class="mform"><textarea id="minfo" name="minfo" cols="16" rows="8"></textarea></td>
			<td class="mform" width="10px">&nbsp;</td>
		</tr>
		<tr>
			<td class="mform" width="10px">&nbsp;</td>
			<td class="mform" align="right" width="5px" style="color:red;font-weight:bold;">*</td>
			<td class="mform" colspan="3">Are you human? Enter word below.</td>
			<td class="mform" width="10px">&nbsp;</td>
		</tr>
		<tr>
			<td class="mform" width="10px">&nbsp;</td>
			<td class="mform" align="right" width="5px" style="color:red;font-weight:bold;">&nbsp;</td>
			<td class="mform"><img src="#request.seopath#/assets/email.png"></td>
			<td class="mform" width="5px">&nbsp;</td>
			<td class="mform"><input name="email" id="email" type="text"></td>
			<td class="mform" width="10px">&nbsp;</td>
		</tr>
		<tr>
			<td class="mform" width="10px">&nbsp;</td>
			<td class="mform">&nbsp;</td>
			<td class="mform">&nbsp;</td>
			<td class="mform" align="center" colspan="2"><input style="font-weight:bold;color:blue;" type="submit" name="submit" id="submit" value="Contact Us"></td>
			<td class="mform" width="10px">&nbsp;</td>
		</tr>
		<tr><td class="mform" colspan="6"><hr width="100%"></td></tr>
		<tr>
			<td class="mform" align="center" colspan="3" style="font-weight:bold;color:blue;font-size:10px"><a style="text-decoration:none;" href="http://youtubebusinesssolutions.com/" target="_blank">Powered by<br>You Tube Business Solutions</a></td>
			<td class="mform" align="center" colspan="3"><a href="http://#cgi.SERVER_NAME#/index.cfm?p=6"><img alt="Cyber Locked" title="Cyber Locked" border="0" src="#request.seopath#/assets/cyberLock.fw.png" width="50px"></a></td>
		</tr>
	</table>
</form>
<script language="javascript" type="text/javascript">
var validator = new FormValidator('mRequest', [{
    name: 'mFirst',display: 'First Name',rules: 'required'}
    ,{name: 'mLast',display: 'Last Name',rules: 'required'}
    ,{name: 'email',display: 'Human Validation',rules: 'required'}
    ,{name: 'mState',display: 'State',rules: 'required'}

], function(errors, event) {
    if (errors.length > 0) {
        var errorString = 'Please complete contact form\n\n';
        
        for (var i = 0, errorLength = errors.length; i < errorLength; i++) {
            errorString += '* ' + errors[i].message + '\n';
        }
        
        alert(errorString);
    }
});
</script>
</cfoutput>
</cfif>