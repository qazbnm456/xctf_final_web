<?php
error_reporting(0); header("content-Type: text/html; charset=UTF-8"); include_once 'language/zh_cn.php'; define('SELF', pathinfo(__FILE__, PATHINFO_BASENAME)); define('FCPATH', str_replace(SELF,'', __FILE__)); if(file_exists(FCPATH.'../data/install.lock')){ $url = "http://".$_SERVER['HTTP_HOST'].$_SERVER['SCRIPT_NAME']; $url = substr($url,0,-17); echo $lang['havestep'].'<a href="'.$url.'">'.$url.'</a>';exit; } $DatabasePath = '../app/config/database.php'; $ConfigPath = '../app/config/config.php'; $error = ''; $step = 1; if(isset($_POST['action'])&&$_POST['action']==1){ $dbhost = trim($_POST['dbhost']); $dbuser = trim($_POST['dbuser']); $dbpwd = trim($_POST['dbpwd']); $dbname = trim($_POST['dbname']); $base_url = trim($_POST['base_url']); $admin_folder = trim($_POST['admin_folder']); $username = trim($_POST['username']); $userpass = trim($_POST['userpass']); $salt = random_string('alnum',6); $userpass = md5pass($userpass,$salt); if(!empty($dbhost) && !empty($dbuser)){ if(!@mysql_connect($dbhost,$dbuser,$dbpwd)) { $error = $lang['dbconnecterror']; }else{ if(!@mysql_select_db($dbname)) { $DATABASESQL="DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci"; if(!mysql_query("CREATE DATABASE `$dbname` ".$DATABASESQL)){ $error = $lang['dbcreateerror']; } } if(mysql_select_db($dbname)){ mysql_query("set names utf8"); $sql = file_get_contents('./db/install.sql'); $sql = str_replace('http://demo.hackercms.com/',$base_url,$sql); $sqlarr = explode(";\n",$sql); foreach($sqlarr as $sql){ mysql_query($sql); } $str = file_get_contents($DatabasePath); $str = str_replace('$db[\'default\'][\'hostname\']=\'localhost\';','$db[\'default\'][\'hostname\']=\''.$dbhost.'\';',$str); $str = str_replace('$db[\'default\'][\'username\']=\'root\';','$db[\'default\'][\'username\']=\''.$dbuser.'\';',$str); $str = str_replace('$db[\'default\'][\'password\']=\'root\';','$db[\'default\'][\'password\']=\''.$dbpwd.'\';',$str); $str = str_replace('$db[\'default\'][\'database\']=\'hackercms\';','$db[\'default\'][\'database\']=\''.$dbname.'\';',$str); file_put_contents($DatabasePath,$str); $str = file_get_contents($ConfigPath); $str = str_replace('http://demo.hackercms.com/',$base_url,$str); $str = str_replace('$config[\'admin_folder\']=\'admin\';','$config[\'admin_folder\']=\''.$admin_folder.'\';',$str); file_put_contents($ConfigPath,$str); rename('../app/controllers/admin','../app/controllers/'.$admin_folder); $sql = 'update hack_user set username="'.$username.'",password="'.$userpass.'",salt="'.$salt.'" where id=1'; mysql_query($sql); @fopen("../data/install.lock", 'w'); $error = $lang['installok'].'<br><a href="'.$base_url.'" target="_blank">'.$lang['frontmana'].$base_url.'</a><br><a href="'.$base_url.'index.php?/'.$admin_folder.'/login" target="_blank">'.$lang['blackmana'].$base_url.'index.php?/'.$admin_folder.'/login</a>'; $step=2; } } }else{ $error = $lang['alldatabaseinfo']; } }else{ $dirfile = array( 0=>array( 'path'=>'../data', 'type'=>'dir', ), 1=>array( 'path'=>'../data/attachment', 'type'=>'dir', ), 2=>array( 'path'=>'../data/backup', 'type'=>'dir', ), 3=>array( 'path'=>'../data/bak', 'type'=>'dir', ), 4=>array( 'path'=>'../data/cache', 'type'=>'dir', ), 5=>array( 'path'=>'../data/sitemap', 'type'=>'dir', ), 6=>array( 'path'=>'../app/controllers/admin', 'type'=>'dir', ), 7=>array( 'path'=>'../app/config/database.php', 'type'=>'file', ), 8=>array( 'path'=>'../app/config/config.php', 'type'=>'file', ), 9=>array( 'path'=>'../data/template', 'type'=>'dir', ), ); $dirfile = dirfile_check($dirfile); } $url = "http://".$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF']; $url = substr($url,0,-17); function dirfile_check($dirfile_items) { foreach($dirfile_items as $key => $item) { $item_path = $item['path']; if($item['type'] == 'dir') { if(!dir_writeable(FCPATH.$item_path)) { if(is_dir(FCPATH.$item_path)) { $dirfile_items[$key]['status'] = 0; $dirfile_items[$key]['current'] = '+r'; } else { $dirfile_items[$key]['status'] = -1; $dirfile_items[$key]['current'] = 'nodir'; } }else { $dirfile_items[$key]['status'] = 1; $dirfile_items[$key]['current'] = '+r+w'; } } else { if(file_exists(FCPATH.$item_path)) { if(is_writable(FCPATH.$item_path)) { $dirfile_items[$key]['status'] = 1; $dirfile_items[$key]['current'] = '+r+w'; } else { $dirfile_items[$key]['status'] = 0; $dirfile_items[$key]['current'] = '+r'; } } else { if(dir_writeable(dirname(FCPATH.$item_path))) { $dirfile_items[$key]['status'] = 1; $dirfile_items[$key]['current'] = '+r+w'; } else { $dirfile_items[$key]['status'] = -1; $dirfile_items[$key]['current'] = 'nofile'; } } } } return $dirfile_items; } function dir_writeable($dir) { $writeable = 0; if(!is_dir($dir)) { @mkdir($dir, 0777); } if(is_dir($dir)) { if($fp = @fopen("$dir/test.txt", 'w')) { @fclose($fp); @unlink("$dir/test.txt"); $writeable = 1; } else { $writeable = 0; } } return $writeable; } function md5pass($pass,$salt){ return md5(substr(md5($pass),0,10).$salt); } function random_string($type = 'alnum', $len = 8) { switch($type) { case 'basic' : return mt_rand(); break; case 'alnum' : case 'numeric' : case 'nozero' : case 'alpha' : switch ($type) { case 'alpha' : $pool = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'; break; case 'alnum' : $pool = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'; break; case 'numeric' : $pool = '0123456789'; break; case 'nozero' : $pool = '123456789'; break; } $str = ''; for ($i=0; $i < $len; $i++) { $str .= substr($pool, mt_rand(0, strlen($pool) -1), 1); } return $str; break; case 'unique' : case 'md5' : return md5(uniqid(mt_rand())); break; case 'encrypt' : case 'sha1' : $CI =& get_instance(); $CI->load->helper('security'); return do_hash(uniqid(mt_rand(), TRUE), 'sha1'); break; } } ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $lang['system_title'];?> - <?php echo $lang['system_name'];?> </title>
<meta name="autor" content="<?php echo $lang['system_author'];?>" />
<script type="text/javascript" src="./js/jquery-1.7.2.min.js"></script>
<link rel=stylesheet type=text/css href="./css/style.css" />
<script type="text/javascript">
function subOK(){
	var dbhost = $.trim($("#dbhost").val());
	var dbuser = $.trim($("#dbuser").val());
	var dbpwd = $.trim($("#dbpwd").val());
	var dbname = $.trim($("#dbname").val());
	var username = $.trim($("#username").val());
	var userpass = $.trim($("#userpass").val());
	var admin_folder = $.trim($("#admin_folder").val());
	var base_url = $.trim($("#base_url").val());
	if(dbhost==''){
		alert("<?php echo $lang['pleasewrite'].$lang['dbhost']; ?>");return;
	}
	if(dbuser==''){
		alert("<?php echo $lang['pleasewrite'].$lang['dbuser']; ?>");return;
	}
	if(dbname==''){
		alert("<?php echo $lang['pleasewrite'].$lang['dbname']; ?>");return;
	}
	if(username==''){
		alert("<?php echo $lang['pleasewrite'].$lang['username']; ?>");return;
	}
	if(userpass==''){
		alert("<?php echo $lang['pleasewrite'].$lang['userpass']; ?>");return;
	}
	if(admin_folder==''){
		alert("<?php echo $lang['pleasewrite'].$lang['admin_folder']; ?>");return;
	}
	if(base_url==''){
		alert("<?php echo $lang['pleasewrite'].$lang['base_url']; ?>");return;
	}
	$("#form1").submit();
}
</script>
</head>
<body>
<?php  if($step==1){ ?>
<form name="form1" id="form1" action="index.php" method="post">
<input type="hidden" name="action" value="1" />
<table>
<tr><td><?php echo $lang['system_title'];?> - <?php echo $lang['system_name'];?></td></tr>
<?php  $purviewstr = ''; if(isset($dirfile)){ foreach($dirfile as $item){ if($item['status']==0){ $purviewstr .= $item['path'].$lang['nowritepurivew'].'<br>'; }else if($item['status']==-1){ $purviewstr .= $item['path'].$lang['nohave'].'<br>'; } } if($purviewstr!=''){ ?>
		<tr><td ><font color="red"><?php echo $purviewstr;?></font></td></tr>
		<?php
 } } ?>
<tr><th ><?php echo $lang['step1'];?></th></tr>
<tr><td>
<table width="80%">
	<tr><td width="120"><?php echo $lang['dbhost'];?> </td><td><input type="text" name="dbhost" id="dbhost" value="localhost" /></td></tr>
	<tr><td><?php echo $lang['dbuser'];?> </td><td><input type="text" name="dbuser" id="dbuser" value="root" /></td></tr>
	<tr><td><?php echo $lang['dbpwd'];?> </td><td><input type="text" name="dbpwd" id="dbpwd" value="" /></td></tr>
	<tr><td><?php echo $lang['dbname'];?> </td><td><input type="text" name="dbname" id="dbname" value="hackercms" /></td></tr>
</table>
</td></tr>
<tr><th ><?php echo $lang['step2'];?></th></tr>
<tr><td>
<table width="80%">
	<tr><td><?php echo $lang['username'];?></td><td><input type="text" name="username" id="username" value="admin" /></td></tr>
	<tr><td><?php echo $lang['userpass'];?> </td><td><input type="text" name="userpass" id="userpass" value="" /></td></tr>
	<tr><td><?php echo $lang['admin_folder'];?> </td><td><input type="text" name="admin_folder" id="admin_folder" value="admin" /></td></tr>
	<tr><td width="120"><?php echo $lang['base_url'];?></td><td><input type="text" name="base_url" id="base_url" size="40" value="<?php echo $url?>" /></td></tr>
	<tr><td></td><td><font color="blue"><?php echo $lang['notmustbaseurl'];?></font></td></tr>
</table>
</td></tr>
<tr><td><input type="button" onclick="subOK()" value="<?php echo $lang['installhackercms'];?>" /><font color="red"><?php echo $error?></font></td></tr>
</table>
</form>
<?php  }else{ ?>
<table>
<tr><td><?php echo $lang['system_title'];?> - <?php echo $lang['system_name'];?></td></tr>
<tr><th ><?php echo $lang['step3'];?></th></tr>
<tr><td><?php echo $error?></th></tr>
<?php  } ?>
</body>
</html>