<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); if ( ! function_exists('smiley_js')) { function smiley_js($alias = '', $field_id = '', $inline = TRUE) { static $do_setup = TRUE; $r = ''; if ($alias != '' && ! is_array($alias)) { $alias = array($alias => $field_id); } if ($do_setup === TRUE) { $do_setup = FALSE; $m = array(); if (is_array($alias)) { foreach ($alias as $name => $id) { $m[] = '"'.$name.'" : "'.$id.'"'; } } $m = '{'.implode(',', $m).'}'; $r .= <<<EOF
				var smiley_map = {$m};

				function insert_smiley(smiley, field_id) {
					var el = document.getElementById(field_id), newStart;

					if ( ! el && smiley_map[field_id]) {
						el = document.getElementById(smiley_map[field_id]);

						if ( ! el)
							return false;
					}

					el.focus();
					smiley = " " + smiley;

					if ('selectionStart' in el) {
						newStart = el.selectionStart + smiley.length;

						el.value = el.value.substr(0, el.selectionStart) +
										smiley +
										el.value.substr(el.selectionEnd, el.value.length);
						el.setSelectionRange(newStart, newStart);
					}
					else if (document.selection) {
						document.selection.createRange().text = smiley;
					}
				}
EOF;
} else { if (is_array($alias)) { foreach ($alias as $name => $id) { $r .= 'smiley_map["'.$name.'"] = "'.$id.'";'."\n"; } } } if ($inline) { return '<script type="text/javascript" charset="utf-8">/*<![CDATA[ */'.$r.'// ]]></script>'; } else { return $r; } } } if ( ! function_exists('get_clickable_smileys')) { function get_clickable_smileys($image_url, $alias = '', $smileys = NULL) { if (is_array($alias)) { $smileys = $alias; } if ( ! is_array($smileys)) { if (FALSE === ($smileys = _get_smiley_array())) { return $smileys; } } $image_url = rtrim($image_url, '/').'/'; $used = array(); foreach ($smileys as $key => $val) { if (isset($used[$smileys[$key][0]])) { continue; } $link[] = "<a href=\"javascript:void(0);\" onclick=\"insert_smiley('".$key."', '".$alias."')\"><img src=\"".$image_url.$smileys[$key][0]."\" width=\"".$smileys[$key][1]."\" height=\"".$smileys[$key][2]."\" alt=\"".$smileys[$key][3]."\" style=\"border:0;\" /></a>"; $used[$smileys[$key][0]] = TRUE; } return $link; } } if ( ! function_exists('parse_smileys')) { function parse_smileys($str = '', $image_url = '', $smileys = NULL) { if ($image_url == '') { return $str; } if ( ! is_array($smileys)) { if (FALSE === ($smileys = _get_smiley_array())) { return $str; } } $image_url = preg_replace("/(.+?)\/*$/", "\\1/", $image_url); foreach ($smileys as $key => $val) { $str = str_replace($key, "<img src=\"".$image_url.$smileys[$key][0]."\" width=\"".$smileys[$key][1]."\" height=\"".$smileys[$key][2]."\" alt=\"".$smileys[$key][3]."\" style=\"border:0;\" />", $str); } return $str; } } if ( ! function_exists('_get_smiley_array')) { function _get_smiley_array() { if (defined('ENVIRONMENT') AND file_exists(APPPATH.'config/'.ENVIRONMENT.'/smileys.php')) { include(APPPATH.'config/'.ENVIRONMENT.'/smileys.php'); } elseif (file_exists(APPPATH.'config/smileys.php')) { include(APPPATH.'config/smileys.php'); } if (isset($smileys) AND is_array($smileys)) { return $smileys; } return FALSE; } } if ( ! function_exists('js_insert_smiley')) { function js_insert_smiley($form_name = '', $form_field = '') { return <<<EOF
<script type="text/javascript">
	function insert_smiley(smiley)
	{
		document.{$form_name}.{$form_field}.value += " " + smiley;
	}
</script>
EOF;
} } 