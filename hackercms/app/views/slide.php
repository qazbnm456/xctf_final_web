<?php if($tpl=='list'):?>
	<?php $this->load->view('admin_head.php');?>
	<div id="main_head" class="main_head">
	<form name="formsearch" id="formsearch" action="<?=site_aurl($tablefunc)?>" method="post">
	<table class="menu">
	<tr><td>
	<a href="<?=site_aurl($tablefunc)?>" class="current"><?=lang('func_'.$tablefunc)?></a>
	<span><?=lang('filter')?></span><input type="text" name="keyword" value="<?=$search['keyword']?>" class="input-text">
	<select name="searchtype">
	<option value="title" <?php if ($search['searchtype'] == 'title'): ?>selected<?php endif; ?>><?=lang('title')?></option>
	<option value="id" <?php if ($search['searchtype'] == 'id'): ?>selected<?php endif; ?>><?=lang('id')?></option>
	</select>
	<select name="type"><option value="0"><?=lang('type_pselect')?></option>
	<?php foreach($typearr as $type):?>
	<option value="<?=$type['id']?>"<?php if ($search['type'] ==$type['id']): ?>selected<?php endif; ?>><?=$type['title']?></option>
	<?php endforeach;?>
	</select>
	<input type="submit" class="btn" value="<?=lang('search')?>"></td></tr>
	</table>
	</form>
	<table cellSpacing=0 width="100%" class="content_list"><thead>
	<tr>
		<th width=30  align="left"><input type="checkbox" onclick="checkAll(this)"></th>
		<th width=50  align="left"><?=lang('order')?></th>
		<th width=40  align="left"><?=lang('id')?></th>
		<th width=200  align=left><?=lang('title')?></th>
		<th align="left"><?=lang('thumb')?></th>
		<th width=50 align="left"><?=lang('status')?></th>
		<th width=50  align="left"><?=lang('operate')?></th>
	</tr>
	</thead>
	</table>
	</div>
	<form name="formlist" id="formlist" action="<?=site_aurl($tablefunc)?>" method="post">
	<input type="hidden" name="action" id="action" value="<?=site_aurl($tablefunc)?>">
	<div id="main" class="main">
	<table cellSpacing=0 width="100%" class="content_list">
	<tbody id="content_list"><?php if (isset($liststr)): ?><?=$liststr?><?php endif; ?></tbody>
	</table>
	</div>
	</form>
	<div class="main_foot">
	<table><tr><td>
	<div class="func"><?php if (isset($funcstr)): ?><?=$funcstr?><?php endif; ?></div>
	</td><td align="right">
	<div class="page"><?php if (isset($pagestr)): ?><?=$pagestr?><?php endif; ?></div>
	</td></tr></table>
	</div>
	<?php $this->load->view('admin_foot.php');?>
<?php elseif($tpl=='view'):?>
	<link rel="stylesheet" href="<?=base_url('js/kindeditor/themes/default/default.css')?>" />
	<form name="formview" id="formview" action="" method="post">
	<input type="hidden" name="action" id="action" value="<?=site_aurl($tablefunc)?>">
	<input type="hidden" name="id" value="<?=isset($view['id'])?$view['id']:'';?>">
	<div id="main_view" class="main_view" >
	<table cellSpacing=0 width="100%" class="content_view">
	<tr><td width="100"><?=lang('title')?></td><td ><input type="text" name="title" id="title"  size="40" class="validate input-text" validtip="required"  value="<?=isset($view['title'])?$view['title']:'';?>"></td>
	<td width="150" rowspan="4" class="upic">
	<img src="<?=isset($view['thumb'])&&$view['thumb']!=''?get_image_url($view['thumb']):get_image_url('data/nopic8080.gif')?>" onclick="uploadpic(this,'thumb')" width="150" id="imgthumb"><input type="hidden" name="thumb" id="thumb" value="<?=isset($view['thumb'])?$view['thumb']:'';?>"><br><input type="button" class="btn" onclick="unsetThumb('thumb','imgthumb')" value="<?=lang('unsetpic')?>">	
	</td>
	</tr>
	<tr><td width="100"><?=lang('type_pselect')?></td>
	<td><select name="type" id="type" class="validate"  validtip="required" ><option value=""><?=lang('type_pselect')?></option>
	<?php foreach($typearr as $type):?>
	<option value="<?=$type['id']?>"<?php if (isset($view['type'])&&$view['type'] ==$type['id']): ?>selected<?php endif; ?>><?=$type['title']?></option>
	<?php endforeach;?>
	</select></td></tr>
	<tr><td width="100"><?=lang('url')?></td><td><input type="text" name="url" id="url" class="validate input-text"  validtip="required"  size="40" value="<?=isset($view['url'])?$view['url']:'';?>"></td></tr>
	<tr><td width="100"><?=lang('description')?></td><td><input type="text" name="description" id="description" class="input-text" size="40" value="<?=isset($view['description'])?$view['description']:'';?>"></td></tr>
	<tr><td width="100"><?=lang('remark')?></td><td colspan="2"><textarea rows="3" cols="40" name="remark" id="remark" class="txtarea"><?=isset($view['remark'])?$view['remark']:'';?></textarea></td></tr>
	<tr><td width="100"><?=lang('status')?></td><td colspan="2"><?=lang('status1')?><input type="radio" name="status" value="1" <?php if(!isset($view['status'])||$view['status']==1){echo 'checked';} ?> /><?=lang('status0')?><input type="radio" name="status" value="0" <?php if(isset($view['status'])&&$view['status']==0){echo 'checked';} ?>  /></td></tr>
	<tr><td width="100"><?=lang('order')?></td><td colspan="2"><input type="text" name="listorder" id="listorder" value="<?php if(isset($view['listorder'])){echo $view['listorder'];}else{echo '99';} ?>" class="input-text" value=""></td></tr>
	</table>
	</div>
	</form>
<?php endif;?>