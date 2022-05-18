<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Crud_model extends CI_Model {
	
	function __construct()
	{
		parent::__construct();
	}
	
	function clear_cache()
	{
		$this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
		$this->output->set_header('Pragma: no-cache');
	}
	function get_field($table,$table_id='',$field='name')
	{
		return $this->db->get_where($table,array($table.'_id'=>$table_id))->row()->$field;
	}
	/////////GET NAME BY TABLE NAME AND ID/////////////
	function get_type_name_by_id($type,$type_id='',$field='name')
	{
		if($type_id != ''){
			$l = $this->db->get_where($type,array($type.'_id'=>$type_id));
			$n = $l->num_rows();
			if($n > 0){
				return $l->row()->$field;
			}
		}
	}
	
	function set_product_package($product_id,$package_id){
		$package = $this->db->get_where('product_type',array('product_type_id'=>$package_id))->row();
		$product = $this->db->get_where('product',array('product_id'=>$product_id))->row();
		$data['product_package_detail'] = json_encode(array('package'=>$package->product_type_id,'activated'=>time()));
		$package_details = json_decode($package->details,true);
		if($package->defaults == 'ok'){
			$date = $product->date;
			$data['s_till'] = $date+$this->Crud_model->get_seconds($package_details['s_for']);
			$data['f_till'] = $date+$this->Crud_model->get_seconds($package_details['f_for']);
		} else {
			$data['s_till'] = time()+$this->Crud_model->get_seconds($package_details['s_for']);
			$data['f_till'] = time()+$this->Crud_model->get_seconds($package_details['f_for']);
		}
		if($data['f_till'] > time()){
			$data['featured'] = 'ok';
		} else {
			$data['featured'] = 'no';
		}
		if($data['s_till'] > time()){
			$data['status'] = 'approved';
			$data['shown'] = 'ok';
		} else {
			$data['status'] = 'pending';
			$data['shown'] = 'no';
		}
		$this->db->where('product_id',$product_id);
		$this->db->update('product', $data);
	}
	
	function set_user_package($user_id,$package_id){
		$package = $this->db->get_where('user_type',array('user_type_id'=>$package_id))->row();
		$user = $this->db->get_where('user',array('user_id'=>$user_id))->row();
		
		$left_product_type = json_decode($user->left_product_type,true);
		$package_product_type = json_decode($package->product_type,true);
		$new_product_type = array();
		foreach($package_product_type as $row){
			$sub_res = array();
			$sub_res['type'] = $row['product_type'];
			$num = $row['piece'];
			foreach($left_product_type as $row1){
				if($row['product_type'] == $row1['type']){
					$num += $row1['number'];
				}
			}
			$sub_res['number'] = $num;
			$new_product_type[] = $sub_res;
		}
				
		$data['user_type'] 			= $package_id;
		$data['left_product_type']  = json_encode($new_product_type);
		$data['user_type_till'] 	= time()+$this->Crud_model->get_seconds(json_decode($package->details,true));
		
		$this->db->where('user_id',$user_id);
		$this->db->update('user', $data);
	}
	
	function set_product_package_user($product_id,$user_id,$package_id){
		$this->set_product_package($product_id,$package_id);
		$user = $this->db->get_where('user',array('user_id'=>$user_id))->row();
		
		$left_product_type = json_decode($user->left_product_type,true);
		$new_product_type = array();
		foreach($left_product_type as $row){
			$sub_res = array();
			$sub_res['type'] = $row['type'];
			$num = $row['number'];
			if($row['type'] == $package_id){
				$num = $num-1;
			}
			$sub_res['number'] = $num;
			$new_product_type[] = $sub_res;
		}
		
		$data['left_product_type']  = json_encode($new_product_type);
		
		$this->db->where('user_id',$user_id);
		$this->db->update('user', $data);
		
	}
	
	function cron_products_users(){
		$cron_time   = $this->db->get_where('general_settings', array(
			'type' => 'cron_time'
		))->row()->value;
		$cron_gap   = $this->db->get_where('general_settings', array(
			'type' => 'cron_gap'
		))->row()->value;
		
		if(($cron_time+$cron_gap) < time()){
			$f_products = $this->db->get_where('product',array('featured'=>'ok','admin_featured !='=>'ok'))->result_array();
			foreach($f_products as $row){
				$featured = 'ok';
				if($row['f_till'] < time()){
					$featured = 'no';
				}
				$this->db->where('product_id', $row['product_id']);
				$this->db->update('product', array(
					'featured' => $featured
				));
			}
			$s_products = $this->db->get_where('product',array('status'=>'approved'))->result_array();
			foreach($s_products as $row){
				$status = 'approved';
				if($row['s_till'] < time()){
					$status = 'pending';
				}
				$this->db->where('product_id', $row['product_id']);
				$this->db->update('product', array(
					'status' => $status
				));
			}
		
			$users = $this->db->get_where('user',array('user_type !=' => 'default'))->result_array();
			foreach($users as $row){
				$user_type = $row['user_type'];
				$new_left_product_type = array();
				if($row['user_type_till'] < time()){
					$left_product_type = json_decode($row['left_product_type'],true);
					$user_type = 'default';
					if(!empty($left_product_type)){
						foreach($left_product_type as $row1){
							$new_left_product_type[] = array(
															'type' =>$row1['type'],
															'number' => 0
														);
						}
					}
					$this->db->where('user_id', $row['user_id']);
					$this->db->update('user', array(
						'user_type' => $user_type,
						'left_product_type' => json_encode($new_left_product_type)
					));
				}
			}
			
			$this->db->where('type', "cron_time");
			$this->db->update('general_settings', array(
				'value' => time()
			));
		}
	}
	
	
	function get_seconds($string){
		$string = explode('-',$string);
		$value = $string[0];
		$type = $string[1];
		if($type=='day')
		{
			$secnd1=$value*86400;
			return $secnd1;
		}
		elseif($type=='month')
		{
			$secnd2=$value*30*86400;
			return $secnd2;
		}
		elseif($type=='year')
		{
			$secnd3=$value*12*30*86400;
			return $secnd3;
		} else {
			return 0;	
		}
		
	}
	/////////Filter One/////////////
	function filter_one($table,$type,$value){
		$this->db->select('*');
		$this->db->from($table);
		$this->db->where($type, $value);
		return $this->db->get()->result_array();
	}
	
	// FILE_UPLOAD
	function img_thumb($type,$id,$ext='.jpg',$width='400',$height='400')
	{
	  $this->load->library('image_lib');
	  ini_set("memory_limit", "-1");
	  
	  $config1['image_library']  = 'gd2';
	  $config1['create_thumb']   = TRUE;
	  $config1['maintain_ratio'] = TRUE;
	  $config1['width']          = $width;
	  $config1['height']         = $height;
	  $config1['source_image']   = 'uploads/'.$type.'_image/'.$type.'_'.$id.$ext;
	  
	  $this->image_lib->initialize($config1);
	  $this->image_lib->resize();
	  $this->image_lib->clear();
	}
	  
	// FILE_UPLOAD
	function file_up($name,$type,$id,$multi='',$no_thumb='',$ext='.jpg')
	{
		if($multi == ''){
			move_uploaded_file($_FILES[$name]['tmp_name'], 'uploads/'.$type.'_image/'.$type.'_'.$id.$ext);
			if($no_thumb == ''){
				$this->Crud_model->img_thumb($type,$id,$ext);
			}
		} elseif ($multi == 'multi'){
			$ib = 1;
			foreach ($_FILES[$name]['name'] as $i => $row) {
				$ib = $this->file_exist_ret($type,$id,$ib);
				move_uploaded_file($_FILES[$name]['tmp_name'][$i], 'uploads/'.$type.'_image/'.$type.'_'.$id.'_'.$ib.$ext);
				if($no_thumb == ''){
					$this->Crud_model->img_thumb($type,$id.'_'.$ib,$ext);
				}
			}
		}
	}
	
	// FILE_UPLOAD : EXT :: FILE EXISTS
	function file_exist_ret($type,$id,$ib,$ext='.jpg'){
		if(file_exists('uploads/'.$type.'_image/'.$type.'_'.$id.'_'.$ib.$ext)){
			$ib = $ib+1;
			$ib = $this->file_exist_ret($type,$id,$ib);
			return $ib;
		} else {
			return $ib;
		}
	}


	// FILE_VIEW
	function file_view($type,$id,$width='100',$height='100',$thumb='no',$src='no',$multi='',$multi_num='',$ext='.jpg')
	{
		if($multi == ''){
			if(file_exists('uploads/'.$type.'_image/'.$type.'_'.$id.$ext)){
				if($thumb == 'no'){
					$srcl = base_url().'uploads/'.$type.'_image/'.$type.'_'.$id.$ext;
				} elseif ($thumb == 'thumb'){
					$srcl = base_url().'uploads/'.$type.'_image/'.$type.'_'.$id.'_thumb'.$ext;
				}
				
				if($src == 'no'){
					return '<img src="'.$srcl.'" height="'.$height.'" width="'.$width.'" />';
				} elseif ($src == 'src'){
					return $srcl;
				}
			}

		} else if($multi == 'multi'){
			$num = $this->Crud_model->get_type_name_by_id($type,$id,'num_of_imgs');
			//$num = 2;
			$i = 0;
			$p = 0;
			$q = 0;
			$return = array();
			while($p<$num){
				$i++;
				if(file_exists('uploads/'.$type.'_image/'.$type.'_'.$id.'_'.$i.$ext)){
					if($thumb == 'no'){
						$srcl = base_url().'uploads/'.$type.'_image/'.$type.'_'.$id.'_'.$i.$ext;
					} elseif ($thumb == 'thumb'){
						$srcl = base_url().'uploads/'.$type.'_image/'.$type.'_'.$id.'_'.$i.'_thumb'.$ext;
					}

					if($src == 'no'){
						$return[] = '<img src="'.$srcl.'" height="'.$height.'" width="'.$width.'" />';
					} elseif ($src == 'src'){
						$return[] = $srcl;
					}
					$p++;
				} else {
					$q++;
					if($q==10){
						break;
					}
				}
					
			}
			if(!empty($return)){
				if($multi_num == 'one'){
					return $return[0];
				} else if ($multi_num == 'all'){
					return $return;
				} else {
					$n = $multi_num-1;
					unset($return[$n]);
					return $return;
				}
			} else {
				return false;
			}
		}
	}
	
	  
	// FILE_VIEW
	function file_dlt($type,$id,$ext='.jpg',$multi='',$m_sin='')
	{
		if($multi == ''){
			if(file_exists('uploads/'.$type.'_image/'.$type.'_'.$id.$ext)){
				unlink("uploads/".$type."_image/".$type."_".$id.$ext);
			}
			if(file_exists("uploads/".$type."_image/".$type."_".$id."_thumb".$ext)){
				unlink("uploads/".$type."_image/".$type."_".$id."_thumb".$ext);
			}

		} else if($multi == 'multi'){
			$num = $this->Crud_model->get_type_name_by_id($type,$id,'num_of_imgs');
			if($m_sin == ''){
				$i = 0;
				$p = 0;
				while($p<$num){
					$i++;
					if(file_exists('uploads/'.$type.'_image/'.$type.'_'.$id.'_'.$i.$ext)){
						unlink("uploads/".$type."_image/".$type."_".$id.'_'.$i.$ext);
						$p++;
						$data['num_of_imgs'] = $num-1;
						$this->db->where($type.'_id',$id);
						$this->db->update($type,$data);
					}

					if(file_exists("uploads/".$type."_image/".$type."_".$id.'_'.$i."_thumb".$ext)){
						unlink("uploads/".$type."_image/".$type."_".$id.'_'.$i."_thumb".$ext);
					}
					if($i<50){
						break;
					}
				}
			} else {
				if(file_exists('uploads/'.$type.'_image/'.$type.'_'.$id.'_'.$m_sin.$ext)){
					unlink("uploads/".$type."_image/".$type."_".$id.'_'.$m_sin.$ext);
				}
				if(file_exists("uploads/".$type."_image/".$type."_".$id.'_'.$m_sin."_thumb".$ext)){
					unlink("uploads/".$type."_image/".$type."_".$id.'_'.$m_sin."_thumb".$ext);
				}
				$data['num_of_imgs'] = $num-1;
				$this->db->where($type.'_id',$id);
				$this->db->update($type,$data);
			}
		}
	}
		
	//DELETE MULTIPLE ITEMS	
	function multi_delete($type,$ids_array)
	{
		foreach($ids_array as $row){
			$this->file_dlt($type,$row);
			$this->db->where($type.'_id' , $row);
			$this->db->delete($type);
		}
	}
	
	//DELETE SINGLE ITEM	
	function single_delete($type,$id)
	{
		$this->file_dlt($type,$id);
		$this->db->where($type.'_id' , $id);
		$this->db->delete($type);
	}
	

	/////////SELECT HTML/////////////
	function select_html($from,$name,$field,$type,$class,$e_match='',$condition='',$c_match='',$onchange='')
	{	
		$return = '';
		$other  = '';
		$multi  = 'no';
		$phrase = 'Choose a '.$name;
		if($class == 'demo-cs-multiselect' || $class == 'demo-cs-multiselect widget_select'){
			$other  = 'multiple';
			$name 	= $name.'[]';
			if($type=='edit'){
				$e_match = json_decode($e_match);
				if($e_match == NULL){
					$e_match = array();
				}
				$multi = 'yes';
			}
		}
		$return = '<select name="'.$name.'" onChange="'.$onchange.'(this.value)" class="'.$class.'" '.$other.'  data-placeholder="'.$phrase.'" tabindex="2" >';
		if(!is_array($from)){
			if($condition == ''){
				$all = $this->db->get($from)->result_array();
			} else if($condition !== '') {
				$all = $this->db->get_where($from, array($condition => $c_match))->result_array();
			}
			
			$return .= '<option value="">'.translate('choose_one').'</option>';
		
			foreach($all as $row):	
				if($type == 'add'){				
					$return .= '<option value="'.$row[$from.'_id'].'">'.$row[$field].'</option>';
				} else if($type == 'edit'){
					$return .= '<option value="'.$row[$from.'_id'].'" ';
					if($multi == 'no'){					
						if($row[$from.'_id'] == $e_match){
							$return .= 'selected=."selected"';					 
						}	
					} else if($multi == 'yes'){
						if(in_array($row[$from.'_id'], $e_match)){
							$return .= 'selected=."selected"';					 
						}
					}			 
					$return .= '>'.$row[$field].'</option>';
				}
			endforeach;
		} else {
			$all = $from;
			$return .= '<option value="">Choose one</option>';
			foreach($all as $o => $row):	
				if($type == 'add'){				
					$return .= '<option value="'.$o.'">';
					if($condition == ''){
						$return .= $row;
					} else {
						$return .= $this->Crud_model->get_type_name_by_id($condition,$row,$c_match);
					}
					$return .= '</option>';
				} else if($type == 'edit'){
					$return .= '<option value="'.$o.'" ';	
					if($row == $e_match){
						$return .= 'selected=."selected"';					 
					}
					$return .= '>';

					if($condition == ''){
						$return .= $row;
					} else {
						$return .= $this->Crud_model->get_type_name_by_id($condition,$row,$c_match);
					}

					$return .= '</option>';
				}
			endforeach;
		}
		$return .= '</select>';
		return $return;
	}
	
	//CHECK IF PRODUCT EXISTS IN TABLE
	function exists_in_table($table,$field,$val){
		$ret = '';
		$res = $this->db->get($table)->result_array();
		foreach ($res as $row) {
			if($row[$field] == $val){
				$ret = $row[$table.'_id'];
			}
		}
		if($ret == ''){
			return false;
		} else {
			return $ret;
		}
		
	}

	//FORM FIELDS
	function form_fields($array)
	{
		$return = '';
		foreach($array as $row){
			$return .= '<div class="form-group">';
		    $return .= '    <label class="col-sm-4 control-label" for="demo-hor-inputpass">'.$row.'</label>';
		    $return .= '    <div class="col-sm-6">';
		    $return .= '       <input type="text" name="ad_field_values[]" id="demo-hor-inputpass" class="form-control">';
		    $return .= '       <input type="hidden" name="ad_field_names[]" value="'.$row.'" >';
		    $return .= '    </div>';
		    $return .= '</div>';
		}
		return $return;
	}
	
	// PAGINATION
	function pagination($type,$per,$link,$f_o,$f_c,$other,$current,$seg='3',$ord='desc')
	{
		$t 		= explode('#',$other);
		$t_o 	= $t[0];
		$t_c 	= $t[1];
		$c 		= explode('#',$current);
		$c_o 	= $c[0];
		$c_c 	= $c[1];
		
		$this->load->library('pagination');
		$this->db->order_by($type.'_id', $ord);
		$config['total_rows']  = $this->db->count_all_results($type);
		$config['base_url']    = base_url() . $link;
		$config['per_page']    = $per;
		$config['uri_segment'] = $seg;
		
		$config['first_link']      = '&laquo;';
		$config['first_tag_open']  = $t_o;
		$config['first_tag_close'] = $t_c;
		
		$config['last_link']      = '&raquo;';
		$config['last_tag_open']  = $t_o;
		$config['last_tag_close'] = $t_c;
		
		$config['prev_link']      = '&lsaquo;';
		$config['prev_tag_open']  = $t_o;
		$config['prev_tag_close'] = $t_c;
		
		$config['next_link']      = '&rsaquo;';
		$config['next_tag_open']  = $t_o;
		$config['next_tag_close'] = $t_c;
		
		$config['full_tag_open']  = $f_o;
		$config['full_tag_close'] = $f_c;
		
		$config['cur_tag_open']  = $c_o;
		$config['cur_tag_close'] = $c_c;
		
		$config['num_tag_open']  = $t_o;
		$config['num_tag_close'] = $t_c;
		$this->pagination->initialize($config);
		
		$this->db->order_by($type.'_id', $ord);
		return $this->db->get($type, $config['per_page'], $this->uri->segment($seg))->result_array();
	}
	
	//IF PRODUCT ADDED TO CART
	function is_added_to_cart($product_id,$set=''){
		$carted = $this->cart->contents();
		if(count($carted)>0){
			foreach ($carted as $items) {
				if($items['id']==$product_id){

					if($set == ''){
						return true;
					} else {
						return $items[$set];
					}
				}
			}
		} else {
			return false;
		}
	}
	

	//GETTING IDS OF A TABLE FILTERING SPECIFIC TYPE OF VALUE RANGE
	function ids_between_values($table,$value_type,$up_val,$down_val){
		$this->db->order_by($table.'_id','desc');
		return $this->db->get_where($table,array($value_type.' <=' => $up_val, $value_type.' >=' => $down_val))->result_array();
	}

	
	
	//GETTING BOOTSTRAP COLUMN VALUE
	function boot($num)
	{
		return (12/$num);
	}
	
	
    
    //GET PRODUCT LINK
    function product_link($product_id,$quick='')
    {
		if($quick=='quick'){
			return base_url() . 'index.php/home/product_quick/' . $product_id;
		} else {
			$name = url_title($this->get_type_name_by_id('product', $product_id, 'title'));
        	return base_url() . 'index.php/home/product_view/' . $product_id . '/' . $name;
		}
    }
    
    //GET BLOG LINK
    function blog_link($blog_id)
    {
		$name = url_title($this->get_type_name_by_id('blog', $blog_id, 'title'));
		return base_url() . 'index.php/home/blog_view/' . $blog_id . '/' . $name;
    }
	
	
	//GETTING LOGO BY TYPE
	function logo($type){
		$logo = $this->db->get_where('ui_settings',array('type'=>$type))->row()->value;
		return base_url().'uploads/logo_image/logo_'.$logo.'.png';
	}
	
	//GETTING PRODUCT PRICE CALCULATING DISCOUNT
	function get_product_price($product_id){
		$price = $this->get_type_name_by_id('product',$product_id,'sale_price');
		$discount = $this->get_type_name_by_id('product',$product_id,'discount');
		$discount_type = $this->get_type_name_by_id('product',$product_id,'discount_type');
		if($discount_type == 'amount'){
			$number = ($price-$discount);
		}
		if($discount_type == 'percent'){
			$number = ($price-($discount*$price/100));
		}
		return number_format((float)$number, 2, '.', '');
	}
	
	//GETTING ADMIN PERMISSION
	function admin_permission($codename){
		
		if($this->session->userdata('admin_login')!='yes'){
			return false;
		}
		
		$admin_id = $this->session->userdata('admin_id');
		$admin = $this->db->get_where('admin',array('admin_id'=>$admin_id))->row();
		$permission = $this->db->get_where('permission',array('codename'=>$codename))->row()->permission_id;
		if($admin->role == 1){
			return true;
		} else {
			$role = $admin->role;
			$role_permissions = json_decode($this->Crud_model->get_type_name_by_id('role',$role,'permission'));
			if(in_array($permission,$role_permissions)){
				return true;
			} else {
				return false;
			}
		}
		
		return true;
	}
	
	
	
	//GETTING NUMBER OF WISHED PRODUCTS BY CURRENT USER
	function user_wished(){
		$user = $this->session->userdata('user_id');
		return count(json_decode($this->get_type_name_by_id('user',$user,'wishlist')));
	}
	
	//ADDING PRODUCT TO WISHLIST
	function add_wish($product_id){
		$user = $this->session->userdata('user_id');
		if($this->get_type_name_by_id('user',$user,'wishlist') !== 'null'){
			$wished = json_decode($this->get_type_name_by_id('user',$user,'wishlist'));
		} else {
			$wished = array();
		}
		if($this->is_wished($product_id) == 'no'){
		array_push($wished,$product_id);
		$this->db->where('user_id',$user);
		  $this->db->update('user', array('wishlist' => json_encode($wished)));
		}
	}
	
	//REMOVING PRODUCT FROM WISHLIST
	function remove_wish($product_id){
		$user = $this->session->userdata('user_id');
		if($this->get_type_name_by_id('user',$user,'wishlist') !== 'null'){
			$wished = json_decode($this->get_type_name_by_id('user',$user,'wishlist'));
		} else {
			$wished = array();
		}
		$wished_new = array();
		foreach($wished as $row){
			if($row !== $product_id){
				$wished_new[] = $row;
			}
		}
		$this->db->where('user_id',$user);
		  $this->db->update('user', array('wishlist' => json_encode($wished_new)));
	}
	
	
	//NUMBER OF WISHED PRODUCTS
	function wished_num(){
		$user = $this->session->userdata('user_id');
		if($this->get_type_name_by_id('user',$user,'wishlist') !== ''){
			return count(json_decode($this->get_type_name_by_id('user',$user,'wishlist')));
		} else {
			return 0;
		}
	}
	
	
	//IF PRODUCT IS ADDED TO CURRENT USER'S WISHLIST
	function is_wished($product_id){
		if($this->session->userdata('user_login') == 'yes'){
			$user = $this->session->userdata('user_id');
			//$wished = array('0');
			if($this->get_type_name_by_id('user',$user,'wishlist') !== ''){
				$wished = json_decode($this->get_type_name_by_id('user',$user,'wishlist'));
			} else {
				$wished = array('0');
			}
			if(in_array($product_id,$wished)){
				return 'yes';
			} else {
				return 'no';
			}
		} else {
			return 'no';
		}
	}

	//GETTING TOTAL WISHED PRODUCTT BY USER
	function total_wished($product_id){
		$num = 0;
		$users = $this->db->get('user')->result_array();
		foreach($users as $row){
			$wishlist = json_decode($row['wishlist']);
			if(is_array($wishlist)){
				if(in_array($product_id, $wishlist)){
					$num++;
				}
			}

		}
		return $num;
	}

	//GETTING MOST WISHED PRODUCTS
	function most_wished(){
		$result = array();
		$product = $this->db->get('product')->result_array();
		foreach ($product as $row) {
			$result[] = array('title'=>$row['title'], 'wish_num'=>$this->total_wished($row['product_id']));
		}
		if (! function_exists('compare_lastname')) {
			function compare_lastname($a, $b)
			{
				return strnatcmp($b['wish_num'], $a['wish_num']);
			}
		}
	  	usort($result, 'compare_lastname');
	  	return $result;
	}
	
	//RATING
	function rating($product_id){
		$total = $this->get_type_name_by_id('product',$product_id,'rating_total');
		$num = $this->get_type_name_by_id('product',$product_id,'rating_num');
		if($num > 0){
			$number = $total/$num;
			return number_format((float)$number, 2, '.', '');
		} else {
			return 0;
		}
	}
	
	//IF CURRENT USER RATED THE PRODUCT
	function is_rated($product_id){
		if($this->session->userdata('user_login') == 'yes'){
			$user = $this->session->userdata('user_id');
			if($this->get_type_name_by_id('product',$product_id,'rating_user') !== ''){
				$rating_user = json_decode($this->get_type_name_by_id('product',$product_id,'rating_user'));
			} else {
				$rating_user = array('0');
			}
			if(in_array($user,$rating_user)){
				return 'yes';
			} else {
				return 'no';
			}
		} else {
			return 'no';
		}
	}
	
	//SETTING RATING
	function set_rating($product_id,$rating){
		if($this->is_rated($product_id) == 'yes'){
			return 'no';
		}
		
		$total 		= $this->get_type_name_by_id('product',$product_id,'rating_total');
		$num 		= $this->get_type_name_by_id('product',$product_id,'rating_num');
		$user 		= $this->session->userdata('user_id');
		$total 		= $total+$rating;
		$num 		= $num+1;
		
		$rating_user = json_decode($this->get_type_name_by_id('product',$product_id,'rating_user'));
		if(!is_array($rating_user)){
			$rating_user = array();
		}
		array_push($rating_user,$user);
		
		$this->db->where('product_id',$product_id);
			$this->db->update('product', array('rating_user' => json_encode($rating_user)));
		$this->db->where('product_id',$product_id);
			$this->db->update('product', array('rating_total' => $total));
		$this->db->where('product_id',$product_id);
			$this->db->update('product', array('rating_num' => $num));
		
		return 'yes';
	}
	
	
	//GETTING IP DATA OF PEOPLE BROWING THE SYSTEM
	function ip_data(){
		$this->session->set_userdata('last_activity',time());
		$user_data = $this->session->userdata('surfer_info');
		//$ip = $_SERVER['REMOTE_ADDR'];
		$ip = '118.179.165.41';
		if(!$user_data){
			//if($_SERVER['HTTP_HOST'] !== 'localhost'){
				$ip_data = file_get_contents("http://ip-api.com/json/".$ip);
				$this->session->set_userdata('surfer_info',$ip_data);			
			//}
		}
	}
	
	function second_to_tym($details)
	{
		$return = '';
		if($details == 'unlimited')
		 {
			 $return = $details;
		 } 
		 else if($details%86400==0){
			if($details%2592000==0){
				if($details%31104000==0){
					$return = $details/31104000;
					$return .= translate(' years');
				}
				else{
					$return =  $details/2592000;
					$return .=  translate(' months');
				}
			}
			else if($details%31104000==0){
					$return =  $details/31104000; 
					$return .=  translate(' years');
			}
			else{
					$return =  $details/86400; 
					$return .=  translate(' days');
			}
		 }
		 else{
					$return =  'error';
		 }
		 return $return;
	}
	function seo_stat($type='') {
        try {
            $url = base_url();
            $seostats = new \SEOstats\SEOstats;
            if ($seostats->setUrl($url)) {

                if($type == 'facebook'){
                    return SEOstats\Services\Social::getFacebookShares();
                }
                elseif ($type == 'gplus') {
                    return SEOstats\Services\Social::getGooglePlusShares();
                }
                elseif ($type == 'twitter') {
                    return SEOstats\Services\Social::getTwitterShares();
                }
                elseif ($type == 'linkedin') {
                    return SEOstats\Services\Social::getLinkedInShares();
                }
                elseif ($type == 'pinterest') {
                    return SEOstats\Services\Social::getPinterestShares();
                }

                elseif ($type == 'alexa_global') {
                    return SEOstats\Services\Alexa::getGlobalRank();
                }
                elseif ($type == 'alexa_country') {
                    return SEOstats\Services\Alexa::getCountryRank();
                }

                elseif ($type == 'alexa_bounce') {
                    return SEOstats\Services\Alexa::getTrafficGraph(5);
                }
                elseif ($type == 'alexa_time') {
                    return SEOstats\Services\Alexa::getTrafficGraph(4);
                }
                elseif ($type == 'alexa_traffic') {
                    return SEOstats\Services\Alexa::getTrafficGraph(1);
                }
                elseif ($type == 'alexa_pageviews') {
                    return SEOstats\Services\Alexa::getTrafficGraph(2);
                }

                elseif ($type == 'google_siteindex') {
                    return SEOstats\Services\Google::getSiteindexTotal();
                }
                elseif ($type == 'google_back') {
                    return SEOstats\Services\Google::getBacklinksTotal();
                }
                elseif ($type == 'search_graph_1') {
                    return SEOstats\Services\SemRush::getDomainGraph(1);
                }
                elseif ($type == 'search_graph_2') {
                    return SEOstats\Services\SemRush::getDomainGraph(2);
                }

            }
        }
        catch(\Exception $e) {
            echo 'Caught SEOstatsException: ' . $e->getMessage();
        }
    }
	function get_sidebar($page){
		$page_data['page']=$page;
		return ($this->load->view('front/sidebar',$page_data,true));
	}
	function get_sidebar_blog(){
		$page_data[]='';
		return ($this->load->view('front/sidebar_blog',$page_data,true));
	}
	
	

    //REMOVING PRODUCT FROM WISHLIST
    function remove_compare($product_id)
    {
        $compared = json_decode($this->session->userdata('compare'),true);
        $new = array();
        foreach ($compared as $row) {
            if($row !== $product_id){
                $new[] = $product_id;
            }
        }
        $compared = json_encode($new);
        $this->session->set_userdata('compare',$compared);
    }    

    //NUMBER OF WISHED PRODUCTS
    function compared_num()
    {
        return count(json_decode($this->session->userdata('compare'),true));
    }    


    //ADDING PRODUCT TO WISHLIST
    function add_compare($product_id)
    {
		if($this->session->userdata('compare') == '' || $this->session->userdata('compare') == 'null'){
            $this->session->set_userdata('compare','[]');
        }
        $compared = json_decode($this->session->userdata('compare'),true);
        if ($this->is_compared($product_id) == 'no') {
            array_push($compared, $product_id);
            $compared = json_encode($compared);
            $this->session->set_userdata('compare',$compared);
        }
    }

    //IF PRODUCT IS ADDED TO CURRENT USER'S WISHLIST
    function is_compared($product_id)
    {     
		//$this->session->set_userdata('compare','[]');
		var_dump($this->session->userdata('compare'));   
        if($this->session->userdata('compare') == '' || $this->session->userdata('compare') == 'null'){
            $this->session->set_userdata('compare','[]');
        }
        $compared = json_decode($this->session->userdata('compare'),true);
		var_dump($compared);
		if(!empty($compared)){
			foreach ($compared as $row) {
				if($row == $product_id){
					return 'yes';
				} 
			} 
		}
        return 'no';
    } 
	
	function product_image($id,$thumb='',$all=''){
		$images = json_decode($this->db->get_where('product',array('product_id'=>$id))->row()->images);
		$first = '';
		$alls = array();
		$t = '/';
		if($thumb=='thumb'){
			$t = '/thumbnail/';
		}
		foreach($images as $row){
			if(file_exists('uploads/product_image'.$t.$row)){
				if($first == ''){
					$first = base_url().'uploads/product_image'.$t.$row;
				}
				$alls[] = base_url().'uploads/product_image'.$t.$row;
			}
		}
		$default = base_url().'uploads/others/photo_default.png';
		if(count($alls) == 0){
			$alls[] = $default;
		}
		if($all == '') {
			if($first == ''){
				return $default;
			} else {
				return $first;
			}
		} elseif($all == 'all') {
			return $alls;
		}
		
	}
	
	function clean_garbage($time){
		$a = scandir('uploads/product_image/temp/');
		$b = scandir('uploads/product_image/temp/thumbnail/');
		foreach($a as $row){
			$elem = 'uploads/product_image/temp/'.$row;
			if(is_file($elem)){
				if((time() - filemtime($elem)) > $time){
					unlink($elem);
				}
			}
		}
		foreach($b as $row){
			$elem = 'uploads/product_image/temp/thumbnail/'.$row;
			if(is_file($elem)){
				if((time() - filemtime($elem)) > $time){
					unlink($elem);
				}
			}
		}
			
	}
	
    //IF PRODUCT IS ADDED TO CURRENT USER'S WISHLIST
    function compared_shower()
    {        
        if($this->session->userdata('compare') == ''){
            $this->session->set_userdata('compare','[]');
        }
        $compared = json_decode($this->session->userdata('compare'),true);
        $cats = array();
        $products = array();
        $result = array();
        foreach ($compared as $row) {
            $cat = $this->db->get_where('product',array('product_id'=>$row))->row()->category_id;
            $cats[] = $cat;
            $products[] = array('c'=>$cat,'p'=>$row);
        }
        $cats   = array_unique($cats);
        foreach ($cats as $row) {
            $ps     = array();
            foreach ($products as $r) {
                if($r['c'] == $row){
                    $ps[] = $r['p'];
                }
            }
            $result[] = array('category'=>$row,'products'=>$ps);
        }
        return $result;
    }
	function ticket_unread_messages($ticket_id,$user_type){
		$count = 0;
		if($ticket_id !== 'all'){
			$msgs  = $this->db->get_where('ticket_message',array('ticket_id'=>$ticket_id))->result_array();
		} else if($ticket_id == 'all'){
			$msgs  = $this->db->get('ticket_message')->result_array();
		}
		foreach($msgs as $row){
			$status = json_decode($row['view_status'],true);
			foreach($status as $type => $row1){
				if($type == $user_type.'_show'){
					if($row1 == 'no'){
						$count++;
					}
				}
			}
		}
		return $count;
		
	}
	
	function ticket_message_viewed($ticket_id,$user_type){
		$msgs  = $this->db->get_where('ticket_message',array('ticket_id'=>$ticket_id))->result_array();
		foreach($msgs as $row){
			$status = json_decode($row['view_status'],true);
			$new_status = array();
			foreach($status as $type=>$row1){
				if($type == $user_type.'_show'){
					$new_status[$type] =  'ok';
				} else{
					$new_status[$type] =  $row1;
				}
			}
			$view_status = json_encode($new_status);
			$this->db->where('ticket_message_id', $row['ticket_message_id']);
        	$this->db->update('ticket_message', array(
            	'view_status' => $view_status
        	));
		}	
	}

}








