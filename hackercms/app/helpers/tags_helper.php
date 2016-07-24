<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); function hackercms_lang(){ $CI =& get_instance(); $data=$CI->Cache_model->loadLang(); return $data; } function hackercms_path($path){ if(substr($path,0,4)=='http'){ return $path; }else{ return base_url($path); } } function hackercms_location($category,$code=''){ $CI =& get_instance(); $data=$CI->Cache_model->loadLocation($category,$code); return $data; } function hackercms_url($url){ if(substr($url,0,4)=='http'){ return $url; }else{ return site_url($url); } } function hackercms_search($model='article',$ismult=true){ $CI =& get_instance(); $data=$CI->Cache_model->loadSearch($model,$ismult); return $data; } function hackercms_navigation($type){ $CI =& get_instance(); $data=$CI->Cache_model->loadNavigation($type); return $data; } function hackercms_category($num=0){ $CI =& get_instance(); $data=$CI->Cache_model->loadCategory($num); return $data; } function hackercms_slide($type){ $CI =& get_instance(); $data=$CI->Cache_model->loadSlide($type); return $data; } function hackercms_modellist($model,$category,$order,$num,$recommend){ $CI =& get_instance(); $data=$CI->Cache_model->loadModel($model,$category,$order,$num,$recommend); return $data; } function hackercms_recommend($recommendid,$order,$num){ $CI =& get_instance(); $data=$CI->Cache_model->loadRecommend($recommendid,$order,$num); return $data; } function hackercms_fragment($varname){ $CI =& get_instance(); $data=$CI->Cache_model->loadFragment($varname); return $data; } function hackercms_tags($num=0){ $CI =& get_instance(); $data=$CI->Cache_model->loadTags($num); return $data; } function hackercms_tagsData($model,$tags,$num){ $CI =& get_instance(); $data=$CI->Cache_model->loadTagsData($model,$tags,$num); return $data; } function hackercms_link($type=0){ $CI =& get_instance(); $data=$CI->Cache_model->loadLink($type); return $data; } function hackercms_online(){ $CI =& get_instance(); $data=$CI->Cache_model->loadOnline(); return $data; } function hackercms_thiscategory($category){ $CI =& get_instance(); $data=$CI->Cache_model->loadThisCategory($category); return $data; } function hackercms_allcategory(){ $CI =& get_instance(); $data=$CI->Cache_model->loadAllCategory(); return $data; } function hackercms_related($detail,$num=5){ $CI =& get_instance(); $data=$CI->Cache_model->loadRelated($detail,$num); return $data; } 