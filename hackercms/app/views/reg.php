<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv=Content-Type>
<title><?=lang('system_adminname')?> - Powered by <?=lang('system_name')?> <?=lang('system_version')?></title>
<script type="text/javascript" src="<?=base_url('js/jquery.min.js')?>"></script>
<style type="text/css">
*{padding:0;margin:0;}
div{margin:0;padding:0;}
body{background:#efeff1;color:#135891;font-size:14px;font-weight:800;}
#body{width:499px;height:468px;overflow:hidden;) no-repeat;margin:150px auto;}
table{margin-top:80px;margin-left:100px;line-height:24px;}
#user_name,#user_pass{width:212px;height:24px;line-height:24px;}
#msgtip{width:200px;height:30px;line-height:30px;color:red;float:left;}
#regbtn{width:62px;height:28px;text-align:center;line-height:28px;color:#fff;text-decoration:none;background:url(<?=base_url('images/loginbg.gif')?>) no-repeat;}
</style>
</head>
<body>
<div id="body">

<form action="index.php?/user/add" method="post">
	<div id="main_view" class="main_view">
	<table cellspacing="0" width="100%" class="content_view">
	<tbody>
	<tr><td colspan="2" height="20">Login ID</td><td><input type="text" name="username" id="username" class="validate input-text" validtip="required" value=""></td></tr>
	<tr><td colspan="2" height="20">Password</td><td><input type="password" name="password" id="password" class="validate input-text" validtip="<? if(!isset($view['id'])){echo 'required,';}; ?>minsize:6" value=""></td></tr>
	<tr><td colspan="2" height="20">Email</td><td><input type="text" name="email" id="email" class="validate input-text" validtip="email" value=""></td></tr>
	<tr><td colspan="2" height="20">Real Name</td><td><input type="text" name="realname" id="realname" class="input-text" value=""></td></tr>
	<tr><td colspan="2" height="20">Sex</td><td>
	<input type="radio" name="sex" value="1">Male<input type="radio" name="sex" value="2">Femail<input type="radio" name="sex" value="0" checked="">Secrecy</td></tr>
	<tr><td colspan="2" height="20">Tel</td><td><input type="text" name="tel" id="tel" class="input-text" value=""></td></tr>
	<tr><td colspan="2" height="20">Phone</td><td><input type="text" name="mobile" id="mobile" class="input-text" value=""></td></tr>
	<tr><td colspan="2" height="20">Fax</td><td><input type="text" name="fax" id="fax" class="input-text" value=""></td></tr>
	<tr><td colspan="2" height="20">Address</td><td><input type="text" name="address" id="address" class="input-text" value=""></td></tr>
	<tr><td colspan="2" height="20"><div class="aui_buttons"><input type="submit" id="regbtn" class="aui_state_highlight" value="Reg"></div></td></tr>
	</tbody></table>
	</div>
	
</form>



</div>
</body>
</html>