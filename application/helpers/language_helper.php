<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * CodeIgniter
 *
 * An open source application development framework for PHP 5.1.6 or newer
 *
 * @package		CodeIgniter
 * @author		ExpressionEngine Dev Team
 * @copyright	Copyright (c) 2008 - 2014, EllisLab, Inc.
 * @license		http://codeigniter.com/user_guide/license.html
 * @link		http://codeigniter.com
 * @since		Version 1.0
 * @filesource
 */


	//GET CURRENCY
	if ( ! function_exists('currency'))
	{
		function currency($val=''){
			$CI=& get_instance();
			$CI->load->database();
			return $CI->db->get_where('business_settings', array('type' => 'currency'))->row()->value.$val;
			//return number_format($val,2).' Taka';
			//return $val.' $';
		}
	}


	//GET CURRENCY
	if ( ! function_exists('recache'))
	{
	    function recache(){
			$CI=& get_instance();
			$CI->benchmark->mark_time();
	    	$files = glob(APPPATH.'cache/*'); // get all file names
			foreach($files as $file){ // iterate files
			  if(is_file($file) && $file !== '.htaccess' && $file !== 'index.html' ){
			    unlink($file); // delete file
			  }
			}
	    	//file_get_contents(base_url().'index.php/home/index');
	    }
	}
	
	//GETTING LIMITING CHARECTER
	if ( ! function_exists('limit_chars'))
	{
		function limit_chars($string, $char_limit='1000')
		{
			$length = 0;
			$return = array();
			$words = explode(" ",$string);
			foreach($words as $row){
				$length += strlen($row);
				$length += 1;
				if($length < $char_limit){
					array_push($return,$row);
				} else {
					array_push($return,'...');
					break;
				}
			}
			
			return implode(" ",$return);
		}
	}

	//GET CURRENCY
	if ( ! function_exists('recache'))
	{
	    function recache(){
			$CI=& get_instance();
			$CI->benchmark->mark_time();
	    	$files = glob(APPPATH.'cache/*'); // get all file names
			foreach($files as $file){ // iterate files
			  if(is_file($file) && $file !== '.htaccess' && $file !== 'index.html' ){
			    unlink($file); // delete file	  	
			  }
			}
	    	//file_get_contents('home/index');
	    }
	}
	
	//return translation
	if ( ! function_exists('lang_check_exists'))
	{
		function lang_check_exists($word){
			$CI=& get_instance();
			$CI->load->database();
			$result = $CI->db->get_where('language',array('word'=>$word));
			if($result->num_rows() > 0){
				return 1;
			} else {
				return 0;
			}
		}
	}
	//check and add to db
	if ( ! function_exists('add_lang_word'))
	{
		function add_lang_word($word){
			$CI=& get_instance();
			$CI->load->database();
			$data['word'] = $word;
			$data['english'] = ucwords(str_replace('_', ' ', $word));
			$CI->db->insert('language',$data);
		}
	}


	//add language
	if ( ! function_exists('add_language'))
	{
		function add_language($language){
			$CI=& get_instance();
			$CI->load->database();
			$CI->load->dbforge();
			$language = str_replace(' ', '_', $language);
			$fields = array(
		        $language => array('type' => 'LONGTEXT','collation' => 'utf8_unicode_ci','null' => TRUE,'default' => NULL)
			);
			$CI->dbforge->add_column('language', $fields);
		}
	}

	//insert language wise 
	if ( ! function_exists('add_translation'))
	{
		function add_translation($word,$language,$translation){
			$CI=& get_instance();
			$CI->load->database();
			$data[$language] = $translation;
			$CI->db->where('word',$word);
			$CI->db->update('language',$data);
		}
	}


	//return translation
	if ( ! function_exists('translate'))
	{
		function translate($word){
			$CI=& get_instance();
			$CI->load->database();
			if($set_lang = $CI->session->userdata('language')){} else {
				$set_lang = $CI->db->get_where('general_settings',array('type'=>'language'))->row()->value;
			}
			$result = $CI->db->get_where('language',array('word'=>$word));
			if($result->num_rows() > 0){
				if($result->row()->$set_lang !== NULL && $result->row()->$set_lang !== ''){
					return $result->row()->$set_lang;
					//return '-----------';
				} else {
					return $result->row()->english;
					//return '-----------';
				}
			} else {
				$data['word'] = $word;
				$data['english'] = ucwords(str_replace('_', ' ', $word));
				$CI->db->insert('language',$data);
				return ucwords(str_replace('_', ' ', $word));
				//return '-----------';
			}
		}
	}

