<!DOCTYPE html>
<html>  
<head>
    <title><?php echo $page_title; ?> | <?php echo $system_title; ?></title>
	
    <!-- Meta -->
    <meta charset="UTF-8">
    <meta name="description" content="<?php echo $description;?> ">
    <meta name="keywords" content="<?php echo $keywords; ?>">
    <meta name="author" content="<?php echo $author; ?>">
    <meta name="revisit-after" content="<?php echo $revisit_after; ?> days">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="expires" content="Mon, 10 Dec 2001 00:00:00 GMT" />
    
    <?php 
		if($page_name == 'product_view'){
			foreach($product_data as $row)
			{
	?>
        <!-- Schema.org markup for Google+ -->
        <meta itemprop="name" content="<?php echo $row['title']; ?>">
        <meta itemprop="description" content="<?php echo strip_tags($row['description']); ?>">
        <meta itemprop="image" content="">
        
        <!-- Twitter Card data -->
        <meta name="twitter:card" content="summary_large_image">
        <meta name="twitter:site" content="@publisher_handle">
        <meta name="twitter:title" content="<?php echo $row['title']; ?>">
        <meta name="twitter:description" content="<?php echo strip_tags($row['description']); ?>">
        <!-- Twitter summary card with large image must be at least 280x150px -->
        <meta name="twitter:image:src" content="">
        
        <!-- Open Graph data -->
        <meta property="og:title" content="<?php echo $row['title']; ?>" />
        <meta property="og:type" content="article" />
        <meta property="og:url" content="<?php  echo base_url(); ?>index.php/home/product_view/<?php echo $row['product_id']; ?>" />
        <meta property="og:image" content="" />
        <meta property="og:description" content="<?php echo strip_tags($row['description']); ?>" />
        <meta property="og:site_name" content="<?php echo $row['title']; ?>" />
    <?php
			}
		} 
	?>
        
    
    <!-- Favicon -->
    <?php $ext =  $this->db->get_where('ui_settings',array('type' => 'fav_ext'))->row()->value;?>
    <link rel="shortcut icon" href="<?php echo base_url(); ?>uploads/others/favicon.<?php echo $ext; ?>">
    
    <!-- Essential styles -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/front/assets/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/front/font-awesome/css/font-awesome.min.css" type="text/css"> 
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/front/assets/fancybox/jquery.fancybox.css?v=2.1.5" media="screen"> 
     
    <!-- Boomerang styles -->
        <link id="wpStylesheet" type="text/css" href="<?php echo base_url(); ?>template/front/css/global-style-<?php echo $theme; ?>.css" rel="stylesheet" media="screen">
   
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/front/dropdown/css/style4.css" />     <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/front/header_search/flatnav.css" />

    <!-- Assets -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/front/assets/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/front/assets/owl-carousel/owl.theme.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/front/assets/sky-forms/css/sky-forms.css">    
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/front/modal/css/sm-minified.css" media="screen" /> 
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/front/assets/custom/bootstrap-social.css" media="screen" />
    <!--[if lt IE 9]>
        <link rel="stylesheet" href="<?php echo base_url(); ?>template/front/assets/sky-forms/css/sky-forms-ie8.css">
    <![endif]-->
	<link rel="stylesheet" href="<?php echo base_url(); ?>template/front/assets/prettify/css/prettify.css">
    <!-- Required JS -->
    <script src="<?php echo base_url(); ?>template/front/js/jquery.js"></script>
    <script src="<?php echo base_url(); ?>template/front/js/jquery-ui.min.js"></script>

    <link href="<?php echo base_url(); ?>template/front/chosen/chosen.css" rel="stylesheet">
    <script src="<?php echo base_url(); ?>template/front/chosen/chosen.jquery.js"></script>
    <script src="<?php echo base_url(); ?>template/front/assets/nouislider/nouislider.js"></script>
    <script src="<?php echo base_url(); ?>template/front/assets/nouislider/wNumb.js"></script>
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/front/assets/nouislider/nouislider.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/front/assets/nouislider/nouislider.tooltips.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/front/button/buttons.css" />
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/front/mag/css/mag.css" />
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/front/mag/css/base.css" />
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/front/mag/css/default.css" />
	<link rel="stylesheet"  href="<?php echo base_url();?>template/front/wysihtml5/bootstrap-wysihtml5.css"></link>
    <link rel="stylesheet"  href="<?php echo base_url();?>template/front/wysihtml5/wysiwyg-color.css"></link>    
    <link href="<?php echo base_url();?>template/front/css/footer_smedia.css" rel="stylesheet" type="text/css" media="all" />
    
    <script src="<?php echo base_url(); ?>template/front/mag/js/jquery.bridget.js"></script>
    <script src="<?php echo base_url(); ?>template/front/mag/js/jquery.mousewheel.js"></script>
    <script src="<?php echo base_url(); ?>template/front/mag/js/jquery.event.drag.js"></script>
    <script src="<?php echo base_url(); ?>template/front/mag/js/hammer.js"></script>
    <script src="<?php echo base_url(); ?>template/front/mag/js/PreventGhostClick.js"></script>
    
    <script src="<?php echo base_url(); ?>template/front/mag/js/mag-analytics.js"></script>
    <script src="<?php echo base_url(); ?>template/front/mag/js/mag.js"></script>
    <script src="<?php echo base_url(); ?>template/front/mag/js/mag-jquery.js"></script>
    <script src="<?php echo base_url(); ?>template/front/mag/js/mag-control.js"></script>
    
    <link rel="stylesheet" href="<?php echo base_url(); ?>template/front/share/jquery.share.css" />
    <script src="<?php echo base_url(); ?>template/front/share/jquery.share.js"></script>
    


    <?php 
		$font =  $this->db->get_where('ui_settings',array('type' => 'font'))->row()->value;
	?>	
    <link href='https://fonts.googleapis.com/css?family=<?php echo $font; ?>:400,500,600,700,800,900' rel='stylesheet' type='text/css'>
    <style>
    *{
    	font-family: '<?php echo str_replace('+',' ',$font); ?>', sans-serif;
    }
		.dropdown.dropdown-lg .dropdown-menu {
			margin-top: -1px;
			padding: 6px 20px;
		}
		.input-group-btn .btn-group {
			display: flex !important;
		}
		.btn-group .btn {
			border-radius: 0;
			margin-left: -1px;
		}
		.btn-group .btn:last-child {
			border-top-right-radius: 4px;
			border-bottom-right-radius: 4px;
		}
		.btn-group .form-horizontal .btn[type="submit"] {
		  border-top-left-radius: 4px;
		  border-bottom-left-radius: 4px;
		}
		.form-horizontal .form-group {
			margin-left: 0;
			margin-right: 0;
		}
		.form-group .form-control:last-child {
			border-top-left-radius: 4px;
			border-bottom-left-radius: 4px;
		}
		
		@media screen and (min-width: 768px) {
			#adv-search {
				width: 100%;
				margin: 0 auto;
			}
			.dropdown.dropdown-lg {
				position: static !important;
			}
			.dropdown.dropdown-lg .dropdown-menu {
				min-width: 100%;
			}
		}
    </style>
</head>