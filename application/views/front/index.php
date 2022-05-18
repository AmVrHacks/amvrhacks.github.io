<?php
	// Turn TRUE when working in CSS and JS files
	$css_development = TRUE;
	
	// Trun TRUE once worked with CSS and JS. 
	// Again turn FALSE to rebuiled minified faster loading CSS and JS
	$rebuild		 =	FALSE;
	
	$description	 =  $this->db->get_where('general_settings',array('type' => 'meta_description'))->row()->value;
	$keywords		 =  $this->db->get_where('general_settings',array('type' => 'meta_keywords'))->row()->value;
	$author			 =  $this->db->get_where('general_settings',array('type' => 'meta_author'))->row()->value;
	$system_name	 =  $this->db->get_where('general_settings',array('type' => 'system_name'))->row()->value;
	$system_title	 =  $this->db->get_where('general_settings',array('type' => 'system_title'))->row()->value;
	$revisit_after	 =  $this->db->get_where('general_settings',array('type' => 'revisit_after'))->row()->value;
	$theme	 		 =  $this->db->get_where('ui_settings',array('type' => 'header_color'))->row()->value;
	$parallax_title	 =  $this->db->get_where('ui_settings',array('type' => 'parallax_title'))->row()->value;
	$blog_count		 =  $this->db->get_where('ui_settings',array('type' => 'blog_count'))->row()->value;
	$slider	 		 =  $this->db->get_where('general_settings',array('type' => 'slider'))->row()->value;
	$map	 		 =  $this->db->get_where('general_settings',array('type' => 'map'))->row()->value;
	$map_api	 	 =  $this->db->get_where('general_settings',array('type' => 'map_api'))->row()->value;
	$page_title		 =  ucfirst(str_replace('_',' ',$page_title));
	if($page_name == 'product_view'){
		$keywords	 .= $product_tags;
	}
	if($css_development == TRUE){
		include 'includes_top.php';
	} else {
		include 'includes_top_n.php';
	}
	include 'preloader.php';
	include 'header.php';
	
	if($page_name=="home" && $map == 'ok')
	{
		include 'map.php';
	}
	include $page_name.'.php';

	include 'modals.php';
	include 'footer.php';
	include 'script_texts.php';
	
	if($css_development == TRUE){
		include 'includes_bottom.php';
	} else {
		include 'includes_bottom_n.php';
	}
	
?>