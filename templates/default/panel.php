<?php

/*
	Copyright (C) 2003-2004 UseBB Team
	http://www.usebb.net
	
	$Header$
	
	This file is part of UseBB.
	
	UseBB is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.
	
	UseBB is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with UseBB; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA	02111-1307	USA
*/

//
// Die when called directly in browser
//
if ( !defined('INCLUDED') )
	exit();

//
// Panel templates
//

$templates['panel_menu'] = '
	<table class="panelmenu">
		<tr>
			<td class="td2"><b>{yourpanel}</b></td>
			<td>{panel_home}</td>
			<td>{view_profile}</td>
			<td>{panel_profile}</td>
			<td>{panel_options}</td>
			<td>{panel_passwd}</td>
		</tr>
	</table>
';

$templates['panel_sess_info'] = '
	<table class="maintable">
		<tr class="tablehead">
			<th colspan="2">{title}</th>
		</tr>
		<tr>
			<td width="25%" class="td2">{sess_id}</td><td class="td1">{sess_id_v}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{ip_addr}</td><td class="td1">{ip_addr_v}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{started}</td><td class="td1">{started_v}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{updated}</td><td class="td1">{updated_v}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{total_time}</td><td class="td1">{total_time_v}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{pages}</td><td class="td1">{pages_v}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{al}</td><td class="td1">{al_v}</td>
		</tr>
	</table>
';

$templates['edit_profile'] = '
	{form_begin}
	<table class="maintable">
		<tr class="tablehead">
			<th colspan="2">{edit_profile}</th>
		</tr>
		<tr>
			<td width="25%" class="td2">{email}</td><td class="td1">{email_input}&nbsp;<span class="small">{required}</span></td>
		</tr>
		<tr>
			<td width="25%" class="td2">{avatar}</td><td class="td1">{avatar_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{location}</td><td class="td1">{location_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{website}</td><td class="td1">{website_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{occupation}</td><td class="td1">{occupation_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{interests}</td><td class="td1">{interests_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{signature}</td><td class="td1">{signature_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{msnm}</td><td class="td1">{msnm_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{yahoom}</td><td class="td1">{yahoom_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{aim}</td><td class="td1">{aim_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{icq}</td><td class="td1">{icq_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{jabber}</td><td class="td1">{jabber_input}</td>
		</tr>
		<tr>
			<td colspan="2" class="td2"><div align="center">{submit_button}&nbsp;{reset_button}</div></td>
		</tr>
	</table>
	{form_end}
';

$templates['edit_options'] = '
	{form_begin}
	<table class="maintable">
		<tr class="tablehead">
			<th colspan="2">{edit_options}</th>
		</tr>
		<tr>
			<td width="25%" class="td2">{language}</td>
			<td class="td1">{language_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{template}</td>
			<td class="td1">{template_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{email_show}</td>
			<td class="td1">{email_show_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{last_login_show}</td>
			<td class="td1">{last_login_show_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{date_format}</td>
			<td class="td1">{date_format_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{timezone}</td>
			<td class="td1">{timezone_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{dst}</td>
			<td class="td1">{dst_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{quickreply}</td>
			<td class="td1">{quickreply_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{return_to_topic}</td>
			<td class="td1">{return_to_topic_input}</td>
		</tr>
		<tr>
			<td colspan="2" class="td2"><div align="center">{submit_button}&nbsp;{reset_button}</div></td>
		</tr>
	</table>
	{form_end}
';

$templates['editpwd_form'] = '
	{form_begin}
	<table class="maintable">
		<tr class="tablehead">
			<th colspan="2">{edit_pwd}</th>
		</tr>
		<tr>
			<td width="25%" class="td2">{current_passwd}</td>
			<td class="td1">{current_passwd_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{new_passwd}</td>
			<td class="td1">{new_passwd1_input}</td>
		</tr>
		<tr>
			<td width="25%" class="td2">{new_passwd_again}</td>
			<td class="td1">{new_passwd2_input}</td>
		</tr>
		<tr>
			<td colspan="2" class="td1"><small>{everything_required}</small></td>
		</tr>
		<tr>
			<td colspan="2" class="td2"><div align="center">{submit_button}&nbsp;{reset_button}</div></td>
		</tr>
	</table>
	{form_end}
';

?>