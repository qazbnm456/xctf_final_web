<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?=lang('system_adminname')?> - Powered by <?=lang('system_name')?> <?=lang('system_version')?></title>
<FRAMESET FRAMEBORDER=0 framespacing=0 border=1 rows="85,*,22">
<FRAME SRC="<?=site_aurl('main/main_top')?>" name="top" FRAMEBORDER=0 NORESIZE SCROLLING='no' marginwidth=0 marginheight=0>
<FRAMESET FRAMEBORDER=0  framespacing=0 border=0 cols="150,12,*,8" id="frame-body">
<FRAME SRC="<?=site_aurl('main/main_left')?>" FRAMEBORDER=0 id="main_left" name="menu">
<FRAME src="<?=site_aurl('main/main_center')?>" id="main_center" name="main_center" frameborder="no" scrolling="no">
<FRAME SRC="<?=site_aurl($defaultfunc)?>" FRAMEBORDER=0 id="main_main" name="main">
<FRAME src="<?=site_aurl('main/main_right')?>" id="main_right" name="main_right" frameborder="no" scrolling="no">
</FRAMESET>
<FRAME SRC="<?=site_aurl('main/main_foot')?>"  name="footer1" FRAMEBORDER=0 NORESIZE SCROLLING='no' marginwidth=0 marginheight=0>
</FRAMESET>
</html>