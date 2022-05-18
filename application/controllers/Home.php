<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	 
	function __construct()
	{
		parent::__construct();
		$this->load->database();
		ini_set("memory_limit","256M");
        /*cache control*/
		//ini_set("user_agent","My-Great-Marketplace-App");
		$cache_time	 =  $this->db->get_where('general_settings',array('type' => 'cache_time'))->row()->value;
		if(!$this->input->is_ajax_request()){
			$this->output->set_header('HTTP/1.0 200 OK');
			$this->output->set_header('HTTP/1.1 200 OK');
			$this->output->set_header('Last-Modified: '.gmdate('D, d M Y H:i:s', time()).' GMT');
			$this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate');
			$this->output->set_header('Cache-Control: post-check=0, pre-check=0');
			$this->output->set_header('Pragma: no-cache');
            if($this->router->fetch_method() == 'index'){
                $this->output->cache($cache_time);
            }
		}
		$this->config->cache_query();
		$this->load->library('user_agent');
		$this->Crud_model->cron_products_users();
	}
		
	public function index()
	{
		$page_data['page_name']		="home";
        $page_data['page_title']    = translate('home');
		$limit = $this->Crud_model->get_type_name_by_id('ui_settings','22','value');
		$this->db->order_by('product_id','desc');
		$this->db->limit($limit);
		$page_data['featured_product']=$this->db->get_where('product',array('featured'=>'ok','status'=>'approved','shown'=>'ok'))->result_array();
		$page_data['category']=$this->db->get('category')->result_array();
		$page_data['sub_category']=$this->db->get('sub_category')->result_array();
		$this->load->view('front/index',$page_data);
	}
		
	public function error()
	{
		$page_data['page_name']="error";
        $page_data['page_title']    = translate('home');
		$this->load->view('front/index',$page_data);
	}
			
	function post_add()
	{
		$page_data['page_name']="post_add";
        $page_data['page_title']    = translate('post_add');
		$this->load->view('front/index',$page_data);
	}
	
	function product_edit($id='',$key='')
	{
		$product_info = $this->db->get_where('product',array('product_id'=>$id));
		if($product_info->row()->user_id == $this->session->userdata('user_id') 
			||  $product_info->row()->product_trace_key == $key){
				$page_data['product_data'] = $product_info->result_array();
				$page_data['page_title']    = translate('home');
				$page_data['page_name'] = "post_edit";
				$this->load->view('front/index',$page_data);
		} else {
			redirect(base_url().'index.php/home/');
		}
		
	}
	
	function surfer_info(){
		$this->Crud_model->ip_data();	
	}
	function product_upload()
	{	
		$can = 'yes';
		if($this->session->userdata('user_login') == 'yes'){
			$data['user_id']    	= $this->session->userdata('user_id');
		} else {
			if($this->db->get_where('general_settings',array('type'=>'post_without_login'))->row()->value == 'ok'){
				$data['user_id']    	= 'guest';
			} else {
				$can = 'no';	
			}
		}
		if($can == 'yes'){
        	$this->load->library('form_validation');
            $this->form_validation->set_rules('email', translate('e-mail'), 'required|valid_email');
            $this->form_validation->set_rules('phone', translate('phone_number'), 'required');
            $this->form_validation->set_rules('address', translate('address'), 'required');
            $this->form_validation->set_rules('category', translate('category'), 'required');
            $this->form_validation->set_rules('sub_category', translate('sub_category'), 'required');
            $this->form_validation->set_rules('title', translate('product_title'), 'required');
            $this->form_validation->set_rules('model', translate('product_model'), 'required');
            $this->form_validation->set_rules('description', translate('product_description'), 'required');
            $this->form_validation->set_rules('tag', translate('tag'), 'required');
            $this->form_validation->set_rules('condition', translate('condition'), 'required');
            $this->form_validation->set_rules('lat_lang', translate('location'), 'required');
            $this->form_validation->set_rules('price', translate('price'), 'required');
            $this->form_validation->set_rules('files_data[]', translate('product_images'), 'required');
			$this->form_validation->set_rules('terms', translate('terms'), 'required',
				array('required' => translate('you_must_accept_terms_and_conditions'))
			);
			

            if ($this->form_validation->run() == FALSE)
            {
                echo validation_errors().'#-#-#';
            }
            else 
			{
				$data['email']    				= $this->input->post('email');
				$data['phone']    				= $this->input->post('phone');
				$data['address']    			= $this->input->post('address');
				$data['category_id']    		= $this->input->post('category');
				$data['sub_category_id']    	= $this->input->post('sub_category');
				$data['title']    				= $this->input->post('title');
				$data['model']    				= $this->input->post('model');
				$data['description']    		= $this->input->post('description');
				$data['tag']    				= $this->input->post('tag');
				$data['langlat']    			= $this->input->post('lat_lang');
				$data['condition']    			= $this->input->post('condition');
				$data['price']    				= $this->input->post('price');
				$data['status']    				= $this->db->get_where('general_settings',array('type'=>'initial_upload'))->row()->value;
				$data['ad_type']    			= 'free';
				$data['featured']    			= 'no';
				$data['date']    				= time();
				$data['premium_type']   		= '';
				$data['shown']    				= 'ok';
				$data['product_trace_key']  	= substr(hash('sha512', rand()), 0, 30);
				
				$default_package = $this->db->get_where('product_type',array('defaults'=>'ok'))->row();
				$data['product_package_detail'] = json_encode(array('package'=>$default_package->product_type_id,'activated'=>time()));
				$package_details = json_decode($default_package->details,true);
				$data['s_till'] = time()+$this->Crud_model->get_seconds($package_details['s_for']);
				$data['f_till'] = time()+$this->Crud_model->get_seconds($package_details['f_for']);
				
				if($images = $this->input->post('files_data')){
					$data['images']    			= json_encode($images);
				} else {
					$data['images']    			= '[]';	
				}
				$stitle 		= $this->input->post('stitle');
				$sdetails 		= $this->input->post('sdetails');
				$additional 	= array();
				if(!empty($stitle)){
					foreach($stitle as $i => $row){
						$additional[] = array(
											'title' => $stitle[$i],
											'details' => $sdetails[$i], 
										);
					}
				}
				$data['additional'] = json_encode($additional);
				
				foreach($images as $row){
					if(file_exists('uploads/product_image/temp/'.$row)){
						copy('uploads/product_image/temp/'.$row,'uploads/product_image/'.$row);
						copy('uploads/product_image/temp/thumbnail/'.$row,'uploads/product_image/thumbnail/'.$row);
						unlink('uploads/product_image/temp/'.$row);
						unlink('uploads/product_image/temp/thumbnail/'.$row);
					}
				}
				
				$this->Crud_model->clean_garbage(3600);
								
				$this->db->insert('product', $data);
				$id = $this->db->insert_id();
				$url = base_url().'index.php/home/product_view/'.$id.'/temp_viewer/'.$data['product_trace_key'].'/hope';
				echo 'success#-#-#'.$url;	
			}
		} else {
			echo translate('you_cannot_post_without_signing_in!');
		}
	}
	
    
    /* FUNCTION: Newsletter Subscription */
    function subscribe()
    {
        $safe = 'yes';
        $char = '';
        foreach($_POST as $row){
            if (preg_match('/[\'^":()}{#~><>|=+¬]/', $row,$match))
            {
                $safe = 'no';
                $char = $match[0];
            }
        }

        $this->load->library('form_validation');
		$this->form_validation->set_rules('email', 'Email', 'required');
		if ($this->form_validation->run() == FALSE)
		{
			echo validation_errors();
		}
		else
		{
            if($safe == 'yes'){
    			$subscribe_num = $this->session->userdata('subscriber');
    			$email         = $this->input->post('email');
    			$subscriber    = $this->db->get('subscribe')->result_array();
    			$exists        = 'no';
    			foreach ($subscriber as $row) {
    				if ($row['email'] == $email) {
    					$exists = 'yes';
    				}
    			}
    			if ($exists == 'yes') {
    				echo 'already';
    			} else if ($subscribe_num >= 3) {
    				echo 'already_session';
    			} else if ($exists == 'no') {
    				$subscribe_num = $subscribe_num + 1;
    				$this->session->set_userdata('subscriber', $subscribe_num);
    				$data['email'] = $email;
    				$this->db->insert('subscribe', $data);
    				echo 'done';
    			}
            } else {
                echo 'Disallowed charecter : " '.$char.' " in the POST';
            }
		}
    }
    
	function product_update($product_id='')
	{	
		$can = 'yes';
		if($this->session->userdata('user_login') == 'yes'){
			$data['user_id']    	= $this->session->userdata('user_id');
		} else {
			if($this->db->get_where('general_settings',array('type'=>'post_without_login'))->row()->value == 'ok'){
				$data['user_id']    	= 'guest';
			} else {
				$can = 'no';	
			}
		}
		if($can == 'yes'){
        	$this->load->library('form_validation');
            $this->form_validation->set_rules('email', translate('e-mail'), 'required|valid_email');
            $this->form_validation->set_rules('phone', translate('phone_number'), 'required');
            $this->form_validation->set_rules('address', translate('address'), 'required');
            $this->form_validation->set_rules('category', translate('category'), 'required');
            $this->form_validation->set_rules('sub_category', translate('sub_category'), 'required');
            $this->form_validation->set_rules('title', translate('product_title'), 'required');
            $this->form_validation->set_rules('model', translate('product_model'), 'required');
            $this->form_validation->set_rules('description', translate('product_description'), 'required');
            $this->form_validation->set_rules('tag', translate('tag'), 'required');
            $this->form_validation->set_rules('condition', translate('condition'), 'required');
            $this->form_validation->set_rules('lat_lang', translate('location'), 'required');
            $this->form_validation->set_rules('price', translate('price'), 'required');
            $this->form_validation->set_rules('files_data[]', translate('product_images'), 'required');
			$this->form_validation->set_rules('terms', translate('terms'), 'required',
				array('required' => translate('you_must_accept_terms_and_conditions'))
			);
			

            if ($this->form_validation->run() == FALSE)
            {
                echo validation_errors().'#-#-#';
            }
            else 
			{
				$data['email']    				= $this->input->post('email');
				$data['phone']    				= $this->input->post('phone');
				$data['address']    			= $this->input->post('address');
				$data['category_id']    		= $this->input->post('category');
				$data['sub_category_id']    	= $this->input->post('sub_category');
				$data['title']    				= $this->input->post('title');
				$data['model']    				= $this->input->post('model');
				$data['description']    		= $this->input->post('description');
				$data['tag']    				= $this->input->post('tag');
				$data['langlat']    			= $this->input->post('lat_lang');
				$data['condition']    			= $this->input->post('condition');
				$data['price']    				= $this->input->post('price');
				
				if($images = $this->input->post('files_data')){
					$data['images']    			= json_encode($images);
				} else {
					$data['images']    			= '[]';	
				}
				$stitle 		= $this->input->post('stitle');
				$sdetails 		= $this->input->post('sdetails');
				$additional 	= array();
				if(!empty($stitle)){
					foreach($stitle as $i => $row){
						$additional[] = array(
											'title' => $stitle[$i],
											'details' => $sdetails[$i], 
										);
					}
				}
				$data['additional'] = json_encode($additional);
				
				foreach($images as $row){
					if(file_exists('uploads/product_image/temp/'.$row)){
						copy('uploads/product_image/temp/'.$row,'uploads/product_image/'.$row);
						copy('uploads/product_image/temp/thumbnail/'.$row,'uploads/product_image/thumbnail/'.$row);
						unlink('uploads/product_image/temp/'.$row);
						unlink('uploads/product_image/temp/thumbnail/'.$row);
					}
				}
				
				$this->Crud_model->clean_garbage(3600);
								
				$this->db->where('product_id', $product_id);
				$this->db->update('product', $data);
				
				$url = base_url().'index.php/home/product_edit/'.$product_id.'/'.$this->db->get_where('product',array('product_id'=>$product_id))->row()->product_trace_key;
				echo 'success#-#-#'.$url;	
			}
		} else {
			echo translate('you_cannot_post_without_signing_in!');
		}
	}
	
	
	function product_view($para1='', $para2 = '', $trace_key = '',$just='')
	{
        $page_data['page_name']    = "product_view";
		if($para2 == 'temp_viewer'){
			$user_id_p = $this->Crud_model->get_field('product',$para1,'user_id');
			$this->db->where('product_id',$para1);
			if($user_id_p == $this->session->userdata('user_id')){
				$this->db->where('product_trace_key',$trace_key);
			}
			$product_data = $this->db->get('product');
			
			$notify = '';
			if($just !== 'nope'){
				$notify = translate('product_uploaded_successfully!');
			}
			$this->session->set_flashdata('alert', 'temp_view');
			if($this->Crud_model->get_field('general_settings','67','value') == 'pending'){
				$notify .= translate('product_uploaded_successfully!');
			}
			if($just == 'hope'){
				$this->session->set_flashdata('alert', $notify);
			}
			/**/
		} else {
			$product_data = $this->db->get_where('product', array(
				'product_id' => $para1,
				'status' => 'approved',
				'shown' => 'ok'
			));	
			if($product_data->num_rows() == 0){
				redirect(base_url(),'refresh');
			} else {
				$num = $product_data->row()->number_of_view;
				$this->db->where('product_id', $para1);
				$this->db->update('product', array(
					'number_of_view' => $num+1,
					'last_viewed' => time()
				));
			}		
		}
        $page_data['product_data'] = $product_data->result_array();
        $page_data['page_title']   = $product_data->row()->title;
        $page_data['product_tags'] = $product_data->row()->tag;
        
        $this->load->view('front/index', $page_data);
	}
	
	
	function product_quick($para1='')
	{
        $page_data['page_name']    = "product_quick";
        $product_data              = $this->db->get_where('product', array(
            'product_id' => $para1,
            'status' => 'approved',
            'shown' => 'ok'
        ));
		if($product_data->num_rows() == 0){
			redirect(base_url(),'refresh');
		}
		$num = $product_data->row()->number_of_view;
        $this->db->where('product_id', $para1);
        $this->db->update('product', array(
            'number_of_view' => $num+1,
			'last_viewed' => time()
        ));
		
        $page_data['product_data'] = $product_data->result_array();
        $page_data['page_title']   = $product_data->row()->title;
        $page_data['product_tags'] = $product_data->row()->tag;
        
        $this->load->view('front/product_quick', $page_data);
	}
	
	function contact_author($product_id='')
	{
		$page_data['product_info']=$this->db->get_where('product',array('product_id'=>$product_id))->result_array();
		$page_data['page_title']= 'contact_author';
		$this->load->view('front/contact_author',$page_data);
	}
	
	function product_package($product_id='')
	{
		$page_data['product_info'] 	= $this->db->get_where('product',array('product_id'=>$product_id));
		$page_data['user_info'] 	= $this->db->get_where('user',array('user_id'=>$this->session->userdata('user_id')));
		$page_data['page_name']		= "product_package";
        $page_data['page_title']    = translate('product_packages');
		$page_data['product_name']	= $this->Crud_model->get_type_name_by_id('product',$product_id,'title');
		$page_data['product_id']	= $product_id;
		$this->load->view('front/index',$page_data);
	}
	
	
	function package_update($pro = '')
	{
		$product = $pro;
		$user    = $this->session->userdata('user_id');
		$ch_type = $this->input->post('ch_type');
		if($ch_type == 'product'){
			$package = $this->input->post('product_type');
			$cost    = $this->Crud_model->get_field('product_type',$package,'price');
			if($cost !== '0'){
				if($this->input->post('payment_type') == 'paypal') { 
					$this->Payment_model->paypal_package_payment('initiate',$cost,$user,$package,$product);
				} elseif($this->input->post('payment_type') == 'stripe') {
					$stripe_pay = $this->Payment_model->stripe_package_payment($cost,$user,$package,$product);
					if($stripe_pay == 'success'){
						$this->session->set_flashdata('alert', 'successful_stripe');
						redirect(base_url().'index.php/home/product_package/'.$product);
					} elseif($stripe_pay == 'fail'){
						$this->session->set_flashdata('alert', 'unsuccessful_stripe');
						redirect(base_url().'index.php/home/product_package/'.$product);
					}
				}
			} else {
				$this->Crud_model->set_product_package($product,$package);
				redirect(base_url().'index.php/home/product_package/'.$product);
			}
		} else if ($ch_type == 'user'){
			$package = $this->input->post('select_pt');
			$user_pt_left = json_decode($this->Crud_model->get_field('user',$user,'left_product_type'),true);
			foreach($user_pt_left as $row){
				if($row['type'] == $package){
					if($row['number'] > 0){
						$this->Crud_model->set_product_package_user($product,$user,$package);
					}
				}
			}
			redirect(base_url().'index.php/home/product_package/'.$product);
		}
	}
	
	function paypal_responses($type=''){
		$this->Payment_model->paypal_package_payment($type);
	}
	
	function user_package_update($pro = '')
	{
		$package = $this->input->post('user_type');
		$cost    = $this->Crud_model->get_field('user_type',$package,'price');
		$user    = $this->session->userdata('user_id');
		if($cost !== '0'){
			if($this->input->post('payment_type') == 'paypal'){
				//echo $cost.'-'.$user.'-'.$package;
				$this->Payment_model->paypal_package_payment_user('initiate',$cost,$user,$package);
			} elseif($this->input->post('payment_type') == 'stripe'){
				$stripe_pay = $this->Payment_model->stripe_package_payment_user($cost,$user,$package);
				if($stripe_pay == 'success'){
					$this->session->set_flashdata('alert', 'successful_stripe');
					redirect(base_url().'index.php/home/user_package/');
				} elseif($stripe_pay == 'fail'){
					$this->session->set_flashdata('alert', 'unsuccessful_stripe');
					redirect(base_url().'index.php/home/user_package/');
				}
			}
		} else {
			$this->Crud_model->set_user_package($user,$package);
			redirect(base_url().'index.php/home/user_package/');
		}
	}
	
	function paypal_responses_user($type=''){
		$this->Payment_model->paypal_package_payment_user($type);
	}
	
	function user_package()
	{
		$page_data['user_info'] 	= $this->db->get_where('user',array('user_id'=>$this->session->userdata('user_id')));
		$page_data['page_name']		= "user_package";
        $page_data['page_title']    = translate('user_packages');
		$this->load->view('front/index',$page_data);
	}
	
	
	function profile()
	{
		if($this->session->userdata('user_login')!="yes")
		{
			redirect(base_url().'index.php/home/');
		}
		$page_data['page_name']="profile";
        $page_data['page_title']    = translate('profile');
		$page_data['inner_page']="product_list";
		$id= $this->session->userdata('user_id');
		$page_data['user_info']=$this->db->get_where('user',array('user_id'=>$id))->result_array();
		$page_data['email']= $this->db->get_where('email_tracing',array('product_owner'=>$id))->result_array();
		$this->db->where('from_where','{"type":"user","id":"'.$id.'"}');
		$this->db->or_where('to_where','{"type":"user","id":"'.$id.'"}');
		$page_data['tickets']= $this->db->get('ticket')->result_array();
		$this->load->view('front/index',$page_data);
	}
	
	function product_shown($product_id = '', $stat = ''){
		$product_info = $this->db->get_where('product',array('product_id'=>$product_id));
		if($product_info->row()->user_id == $this->session->userdata('user_id')){
			if($stat == 'true'){
				$set = 'ok';
			} else {
				$set = '0';
			}
			$this->db->where('product_id', $product_id);
			$this->db->update('product', array(
				'shown' => $set
			));
		}
	}
	
	function product_delete($product_id = ''){
		$product_info = $this->db->get_where('product',array('product_id'=>$product_id));
		if($product_info->row()->user_id == $this->session->userdata('user_id')){
			$images = json_decode($this->db->get_where('product',array('product_id'=>$product_id))->row()->images);
			foreach($images as $row){
				if(file_exists('uploads/product_image/'.$row)){
					unlink('uploads/product_image/'.$row);
				}
				if(file_exists('uploads/product_image/thumbnail/'.$row)){
					unlink('uploads/product_image/thumbnail/'.$row);
				}
			}
            $this->db->where('product_id', $product_id);
            $this->db->delete('product');
		}
	}
	
	function advance_search(){
		$text 			= '0';
		$location 		= '0';
		$category 		= '0';
		$min 			= '0';
		$max 			= '0'; 
		$type 			= '0'; 
		if($this->input->post('text')){
			$text 		= urlencode($this->input->post('text'));
		}
		if($this->input->post('location')){
			$location 	= urlencode($this->input->post('location'));
		}	
		if($this->input->post('category')){
			$category 	= $this->input->post('category');
		}
		if($this->input->post('min')){	
			$min 		= $this->input->post('min');	
			$max 		= $this->input->post('max');
		}
		if($this->input->post('use_type')){
			$type 		= $this->input->post('use_type');
		}
		redirect(base_url().'index.php/home/categories/'.$category.'/0/'.$min.'/'.$max.'/'.$text.'/'.$location.'/'.$type);	
	}
	
	function categories($category='',$sub_category='',$min='',$max='',$text='',$location='',$type='')
	{
		if($category == '0'){
			$category = '';
		}
		if($sub_category == '0'){
			$sub_category = '';
		}
		if($min == '0'){
			$min = '';
		}
		if($max == '0'){
			$max = '';
		}
		if($text == '0'){
			$text = '';
		}
		if($location == '0'){
			$location = '';
		}
		if($type == '0'){
			$type = '';
		}
		$page_data['category'] 		= $category;
		$page_data['sub_category'] 	= $sub_category;
		$page_data['text'] 			= $text;
		$page_data['location'] 		= $location;
		$page_data['min'] 			= $min;
		$page_data['max'] 			= $max;
		$page_data['condition'] 	= $type;
		$page_data['page_title']    = 'category';
		$page_data['page_type'] 	= "product_list";
		$page_data['page_name'] 	= "product_list";
		$this->load->view('front/index',$page_data);
		
	}
	
	
	function listed($para2='')
	{
		$this->load->library('Ajax_pagination');
		$limit 				= $this->Crud_model->get_type_name_by_id('ui_settings','23','value');	
	    $page_data['type']  = $this->input->post('show_type');
	    $sort 				= $this->input->post('sort');
		$page_data['sort'] 	= $this->input->post('sort');
	    $category 			= $this->input->post('category');
	    $sub_category 		= $this->input->post('sub_category');
	    $min 				= $this->input->post('min');
	    $max 				= $this->input->post('max');
	    $text 				= $this->input->post('text');
	    $location 			= $this->input->post('location');
	    $type 				= $this->input->post('type');
		
		if($category != '' && $category != '0'){
			$this->db->where('category_id', $category);	
		}
		if($sub_category != '' && $sub_category != '0'){
			$this->db->where('sub_category_id', $sub_category);	
		}
		if($min != '' && $min != '0'){
			$this->db->where('price >=', $min);	
		}
		if($max != '' && $max != '0'){
			$this->db->where('price <=', $max);	
		}
		if($type != '' && $type != '0'){
			$this->db->where('condition', $type);	
		}
		if($text != '' && $text != '0'){
			$this->db->like('title', $text, 'both');	
		}
		if($location != '' && $location != '0'){
			$this->db->like('address', $location, 'both');
		}
		
			
		$this->db->where('status', 'approved');	
		$this->db->where('shown', 'ok');
		$config['total_rows'] 	= $this->db->count_all_results('product');
		$config['base_url']   	= base_url() . 'index.php/home/listed/';
		$config['per_page'] 	= $limit;
		$config['uri_segment']  = 5;
		$config['cur_page_giv'] = $para2;
		
		$function                  = "filter('0')";
		$config['first_link']      = '&laquo;';
		$config['first_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['first_tag_close'] = '</a></li>';
		
		$rr                       = ($config['total_rows'] - 1) / $config['per_page'];
		$last_start               = floor($rr) * $config['per_page'];
		$function                 = "filter('" . $last_start . "')";
		$config['last_link']      = '&raquo;';
		$config['last_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['last_tag_close'] = '</a></li>';
		
		$function                 = "filter('" . ($para2 - $config['per_page']) . "')";
		$config['prev_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['prev_tag_close'] = '</a></li>';
		
		$function                 = "filter('" . ($para2 + $config['per_page']) . "')";
		$config['next_link']      = '&rsaquo;';
		$config['next_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['next_tag_close'] = '</a></li>';
		
		$config['full_tag_open']  = '<ul class="pagination pagination pull-right" > ';
		$config['full_tag_close'] = '</ul>';
		
		$config['cur_tag_open']  = '<li class="active"><a rel="grow" class="btn-u btn-u-red grow" class="active">';
		$config['cur_tag_close'] = '</a></li>';
		
		$function                = "filter(((this.innerHTML-1)*" . $config['per_page'] . "))";
		$config['num_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['num_tag_close'] = '</a></li>';
		$this->ajax_pagination->initialize($config);
		
		
		if($category != '' && $category != '0'){
			$this->db->where('category_id', $category);	
		}
		if($sub_category != '' && $sub_category != '0'){
			$this->db->where('sub_category_id', $sub_category);	
		}
		if($min != '' && $min != '0'){
			$this->db->where('price >=', $min);	
		}
		if($max != '' && $max != '0'){
			$this->db->where('price <=', $max);	
		}
		if($type != '' && $type != '0'){
			$this->db->where('condition', $type);	
		}
		if($text != '' && $text != '0'){
			$this->db->like('title', $text, 'both');	
		}
		if($location != '' && $location != '0'){
			$this->db->like('address', $location, 'both');
		}
		if($sort== 'most_viewed'){
			$this->db->order_by('number_of_view', 'desc');
		}
		if($sort== 'condition_old'){
			$this->db->order_by('product_id', 'asc');
		}
		if($sort== 'condition_new'){
			$this->db->order_by('product_id', 'desc');
		}
		if($sort== 'price_low'){
			$this->db->order_by('price', 'asc');
		}
		if($sort== 'price_high'){
			$this->db->order_by('price', 'desc');
		}
		else{
			$this->db->order_by('product_id', 'desc');
		}
		$this->db->where('status', 'approved');
		$this->db->where('shown', 'ok');
        $page_data['selected_product'] = $this->db->get('product', $config['per_page'], $para2)->result_array();
		$this->load->view('front/list',$page_data);
	}
	
	function sub_by_cat($cat=''){
		echo $this->Crud_model->select_html('sub_category', 'sub_category', 'name', 'add', 'demo-chosen-select required', '', 'parent_category_id', $cat, '');
	}
	
	function contact($para1 = "")
    {
        $this->load->library('recaptcha');
        $this->load->library('form_validation');
        if ($para1 == 'send') {
            $safe = 'yes';
            $char = '';
            foreach($_POST as $row){
                if (preg_match('/[\'^":()}{#~><>|=+¬]/', $row,$match))
                {
                    $safe = 'no';
                    $char = $match[0];
                }
            }

            $this->form_validation->set_rules('name', 'Name', 'required');
            $this->form_validation->set_rules('subject', 'Subject', 'required');
            $this->form_validation->set_rules('message', 'Message', 'required');
            $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
			

            if ($this->form_validation->run() == FALSE)
            {
                echo validation_errors();
            }
            else
            {
                if($safe == 'yes'){
                    $this->recaptcha->recaptcha_check_answer();
                    if ($this->recaptcha->getIsValid()) {
                        $data['name']      = $this->input->post('name',true);
                        $data['subject']   = $this->input->post('subject');
                        $data['email']     = $this->input->post('email');
                        $data['message']   = $this->security->xss_clean(($this->input->post('message')));
                        $data['view']      = 'no';
                        $data['timestamp'] = time();
                        $this->db->insert('contact_message', $data);
                        echo 'sent';
                    } else {
                        echo 'incor';
                    }
                } else {
                    echo 'Disallowed charecter : " '.$char.' " in the POST';
                }
            }
        } else {
            $page_data['recaptcha_html'] = $this->recaptcha->recaptcha_get_html();
            $page_data['page_name']      = "contact";
            $page_data['page_title']     = translate('contact');
            $this->load->view('front/index', $page_data);
        }
    }
	
	function akiba_image_upload()
	{
		error_reporting(E_ALL | E_STRICT);
		require_once(APPPATH . 'libraries/UploadHandler.php');
		$upload_handler = new UploadHandler();
	}
	
	function akiba_image_edit_delete($filename='',$product_id='',$key=''){
		$product_info = $this->db->get_where('product',array('product_id'=>$product_id));
		if($product_info->row()->user_id == $this->session->userdata('user_id')
			|| $product_info->row()->product_trace_key == $key){
			if(file_exists('uploads/product_image/'.$filename)){
				unlink('uploads/product_image/'.$filename);
			}
			if(file_exists('uploads/product_image/thumbnail/'.$filename)){
				unlink('uploads/product_image/thumbnail/'.$filename);
			}
			$files = json_decode($this->db->get_where('product',array('product_id'=>$product_id))->row()->images,true);
			$new_files = array();
			foreach($files as $row){
				if($row !== $filename){
					$new_files[] = $row;
				}
			}
			$data['images'] = json_encode($new_files);
			$this->db->where('product_id',$product_id);
			$this->db->update('product',$data);
			
			echo json_encode(array($filename=>'true'));
		}
	}
	
	function akiba_image_delete($filename)
	{
		if(file_exists('uploads/product_image/temp/'.rawurldecode($filename))){
			unlink('uploads/product_image/temp/'.rawurldecode($filename));
			$return = array(rawurldecode($filename)=>'true');
			echo json_encode($return);
		}
		if(file_exists('uploads/product_image/temp/thumbnail/'.rawurldecode($filename))){
			unlink('uploads/product_image/temp/thumbnail/'.rawurldecode($filename));
		} 
	}
	
	function sign($sign_typ="",$id='')
	{
		if($sign_typ=="signin")
		{
			$signin_data=$this->db->get_where('user',array('email'=>$this->input->post('email'),'password'=>sha1($this->input->post('password'))));
			if($signin_data->num_rows()>0)
			{
				foreach($signin_data->result_array() as $row)
				{
					$this->session->set_userdata('user_login','yes');
					$this->session->set_userdata('user_id',$row['user_id']);
					$this->session->set_userdata('user_name',$row['name']);
					$this->session->set_userdata('user_email',$row['email']);
					$this->session->set_userdata('user_phone',$row['phone']);
					$this->session->set_userdata('user_address',$row['address']);
					
					redirect(base_url().'index.php/home/profile/','refresh');	
				}
			}
			else
			{
				redirect(base_url().'index.php/home/sign/','refresh');
			}
			
		}
		elseif($sign_typ=="update_info")
		{
        	$this->load->library('form_validation');
            $safe = 'yes';
            $char = '';
            foreach($_POST as $row){
                if (preg_match('/[\'^":()}{#~><>|=+¬]/', $row,$match))
                {
                    $safe = 'no';
                    $char = $match[0];
                }
            }

            $this->form_validation->set_rules('name', 'Username', 'required');
            $this->form_validation->set_rules('surname', 'Surname', 'required');
            $this->form_validation->set_rules('address', 'Address', 'required');
			

            if ($this->form_validation->run() == FALSE)
            {
                echo validation_errors();
            }
            else
            {
                if($safe == 'yes'){
					$data['username']=$this->input->post('name');
					$data['surname']=$this->input->post('surname');
					$data['address1']=$this->input->post('address');
					$data['phone']=$this->input->post('phone');
					$this->db->where('user_id',$this->session->userdata('user_id'));
					$this->db->update('user',$data);
					echo 'done';
				} else {
                    echo 'Disallowed charecter : " '.$char.' " in the POST';
                }
            }
		}
		elseif($sign_typ=="update_pass")
		{
        	$this->load->library('form_validation');
            $this->form_validation->set_rules('opassword', 'Old Password', 'required');
            $this->form_validation->set_rules('password1', 'New Password', 'required|matches[password2]');
            $this->form_validation->set_rules('password2', 'New Password Confirm', 'required');
            if ($this->form_validation->run() == FALSE)
            {
                echo validation_errors();
            }
            else
            {
            	$opas = $this->Crud_model->get_type_name_by_id('user',$this->session->userdata('user_id'),'password');
            	if($opas == sha1($this->input->post('opassword'))){
					$data['password']=sha1($this->input->post('password1'));
					$this->db->where('user_id',$this->session->userdata('user_id'));
					$this->db->update('user',$data);
					echo 'done';
            	} else {
            		echo translate('wrong_existing_password!');
            	}
			}
		}
		elseif($sign_typ=="change_picture")
		{
			$this->Crud_model->file_up('img','user',$id,'','','.jpg');	
			echo 'done';
		}
	}
	
	function page($parmalink = '')
    {
        $pagef                   = $this->db->get_where('page', array(
            'parmalink' => $parmalink
        ));
        $page_data['page_name']  = "page";
        $page_data['page_title'] = $parmalink;
        $page_data['page_items'] = $pagef->result_array();
        if ($this->session->userdata('admin_login') !== 'yes' && $pagef->row()->status !== 'ok') {
            redirect(base_url() . 'index.php/home/', 'refresh');
        }
        $this->load->view('front/index', $page_data);
    }
	
	/* FUNCTION: Concerning Compare*/
    function compare($para1 = "", $para2 = "")
    {
        if ($para1 == 'add') {
            echo $this->Crud_model->add_compare($para2);
        } else if ($para1 == 'remove') {
            $this->Crud_model->remove_compare($para2);
        } else if ($para1 == 'num') {
            echo $this->Crud_model->compared_num();
        } else if ($para1 == 'clear') {
            $this->session->set_userdata('compare','');
            redirect(base_url().'index.php/home', 'refresh');
        } else if ($para1 == 'get_detail') {
            $product = $this->db->get_where('product',array('product_id'=>$para2));
            $return = array();
            $return += array('image' => '<img src="'.$this->Crud_model->product_image($para2,'thumb').'" width="100" />');
            $return += array('price' => currency().$product->row()->price);
            $return += array('description' => $product->row()->description);
            $return += array('address' => $product->row()->address);
			$langlat = $product->row()->langlat;
			$loc 	 = '<div class="btn btn-xs btn-base btn-icon fa-map-marker pull-right"><span onclick='."'".'get_distance("'.$para2.'");'."'".'>'.translate("distance").'</span></div><div style="width:100%; height:300px;" class="mapd" data-loc="'.$langlat.'"></div>';
            $return += array('map' => $loc);
            if($product->row()->brand){
                $return += array('brand' => $this->db->get_where('brand',array('brand_id'=>$product->row()->brand))->row()->name);
            }
            if($product->row()->sub_category_id){
                $return += array('sub' => $this->db->get_where('sub_category',array('sub_category_id'=>$product->row()->sub_category_id))->row()->name);
            }
            echo json_encode($return);
        } else {
            if($this->session->userdata('compare') == '[]'){
                redirect(base_url() . 'index.php/home/', 'refresh');
            }
            $page_data['page_name']  = "compare";
            $page_data['page_title'] = 'compare';
            $this->load->view('front/index', $page_data);
        }
        
    }
	
    /* FUNCTION: Concerning wishlist*/
    function wishlist($para1 = "", $para2 = "")
    {
        if ($para1 == 'add') {
            $this->Crud_model->add_wish($para2);
        } else if ($para1 == 'remove') {
            $this->Crud_model->remove_wish($para2);
        } else if ($para1 == 'num') {
            echo $this->Crud_model->wished_num();
        }
        
    }
	
	function get_my_distance($product_id = ''){
        echo "<iframe src='".base_url()."index.php/home/get_my_distance_d/".$product_id."' style='width:100%; height:400px;'  scrolling='no' ></iframe>";
	}
	
	function get_my_distance_d($product_id = ''){
        $page_data['latlan']  = $this->db->get_where('product',array('product_id'=>$product_id))->row()->langlat;
        $page_data['page_name']  = "get_distance";
		$this->load->view('front/get_distance', $page_data);
	}
	
	function set_location($lat,$lan){
		$this->session->set_userdata('location','('.$lat.','.$lan.')');
		$this->session->set_userdata('lat',$lat);
		$this->session->set_userdata('lan',$lan);
	}
	
	function set_location_otherwise(){
		$surfer_info = $this->session->userdata('surfer_info');
		$s = json_decode($surfer_info,true);
		$lat =  $s['lat'];
		$lan =  $s['lon'];
		$this->session->set_userdata('location','('.$lat.','.$lan.')');
		$this->session->set_userdata('lat',$lat);
		$this->session->set_userdata('lan',$lan);
		echo $lat.'--'.$lan;
	}
	
    /* FUNCTION: Concerning Login */
    function login($para1 = "", $para2 = "")
    {
        $page_data['page_name'] = "login";
        $this->load->library('form_validation');
        if ($para1 == "do_login") {
			$this->form_validation->set_rules('email', 'Email', 'required');
            $this->form_validation->set_rules('password', 'Password', 'required');

            if ($this->form_validation->run() == FALSE)
            {
                echo validation_errors();
            }
            else
            {
				$signin_data = $this->db->get_where('user', array(
					'email' => $this->input->post('email'),
					'password' => sha1($this->input->post('password'))
				));
				if ($signin_data->num_rows() > 0) {
					foreach ($signin_data->result_array() as $row) {
						$this->session->set_userdata('user_login', 'yes');
						$this->session->set_userdata('user_id', $row['user_id']);
						$this->session->set_userdata('user_name', $row['username']);
						$this->session->set_flashdata('alert', 'successful_signin');
						$this->db->where('user_id', $row['user_id']);
						$this->db->update('user', array(
							'last_login' => time()
						));
						recache();
						echo 'done';
					}
				} else {
					echo 'failed';
				}
			}
        } else if ($para1 == 'forget') {
        	$this->load->library('form_validation');
			$this->form_validation->set_rules('email', 'Email', 'required');
			
            if ($this->form_validation->run() == FALSE)
            {
                echo validation_errors();
            }
            else
            {
				$query = $this->db->get_where('user', array(
					'email' => $this->input->post('email')
				));
				if ($query->num_rows() > 0) {
					$user_id          = $query->row()->user_id;
					$password         = substr(hash('sha512', rand()), 0, 12);
					$data['password'] = sha1($password);
					$this->db->where('user_id', $user_id);
					$this->db->update('user', $data);
					if ($this->Email_model->password_reset_email('user', $user_id, $password)) {
						echo 'email_sent';
					} else {
						echo 'email_not_sent';
					}
				} else {
					echo 'email_nay';
				}
			}
        }
    }
	
    /* FUNCTION: Setting login page with facebook and google */
    function login_set($para1 = '', $para2 = '')
    {
        $fb_login_set = $this->Crud_model->get_type_name_by_id('general_settings', '51', 'value');
        $g_login_set  = $this->Crud_model->get_type_name_by_id('general_settings', '52', 'value');
        $page_data    = array();
        $appid        = $this->db->get_where('general_settings', array(
            'type' => 'fb_appid'
        ))->row()->value;
        $secret       = $this->db->get_where('general_settings', array(
            'type' => 'fb_secret'
        ))->row()->value;
        $config       = array(
            'appId' => $appid,
            'secret' => $secret
        );
        $this->load->library('Facebook', $config);
        
        if ($fb_login_set == 'ok') {
            // Try to get the user's id on Facebook
            $userId = $this->facebook->getUser();
            
            // If user is not yet authenticated, the id will be zero
            if ($userId == 0) {
                // Generate a login url
                //$page_data['url'] = $this->facebook->getLoginUrl(array('scope'=>'email')); 
                $page_data['url'] = $this->facebook->getLoginUrl(array(
                    'redirect_uri' => site_url('home/login_set/back/' . $para2),
                    'scope' => array(
                        "email"
                    ) // permissions here
                ));
                //redirect($data['url']);
            } else {
                // Get user's data and print it
                $page_data['user'] = $this->facebook->api('/me');
                $page_data['url']  = site_url('home/login_set/back/' . $para2); // Logs off application
                //print_r($user);
            }

            if ($para1 == 'back') {
                $user = $this->facebook->api('/me');
                if ($user_id = $this->Crud_model->exists_in_table('user', 'fb_id', $user['id'])) {
                    
                } else {
                    $data['username']      = $user['name'];
                    $data['email']         = '';
                    $data['fb_id']         = $user['id'];
                    $data['wishlist']      = '[]';
                    $data['creation_date'] = time();
                    $data['password']      = substr(hash('sha512', rand()), 0, 12);
                    
                    $this->db->insert('user', $data);
                    $user_id = $this->db->insert_id();
                }
                $this->session->set_userdata('user_login', 'yes');
                $this->session->set_userdata('user_id', $user_id);
                $this->session->set_userdata('user_name', $this->db->get_where('user', array(
                    'user_id' => $user_id
                ))->row()->username);
                $this->session->set_flashdata('alert', 'successful_signin');
                
                $this->db->where('user_id', $user_id);
                $this->db->update('user', array(
                    'last_login' => time()
                ));
                
                if ($para2 == 'cart') {
        			recache();
                    redirect(base_url() . 'index.php/home/cart_checkout', 'refresh');
                } else {
        			recache();
                    redirect(base_url() . 'index.php/home', 'refresh');
                }
            }
        }
        
        
        if ($g_login_set == 'ok') {
            $this->load->library('googleplus');
            if (isset($_GET['code'])) { //just_logged in
                $this->googleplus->client->authenticate();
                $_SESSION['token'] = $this->googleplus->client->getAccessToken();
                $g_user            = $this->googleplus->people->get('me');
                if ($user_id = $this->Crud_model->exists_in_table('user', 'g_id', $g_user['id'])) {
                    
                } else {
                    $data['username']      = $g_user['displayName'];
                    $data['email']         = 'required';
                    $data['wishlist']      = '[]';
                    $data['g_id']          = $g_user['id'];
                    $data['g_photo']       = $g_user['image']['url'];
                    $data['creation_date'] = time();
                    $data['password']      = substr(hash('sha512', rand()), 0, 12);
                    $this->db->insert('user', $data);
                    $user_id = $this->db->insert_id();
                }
                $this->session->set_userdata('user_login', 'yes');
                $this->session->set_userdata('user_id', $user_id);
                $this->session->set_userdata('user_name', $this->db->get_where('user', array(
                    'user_id' => $user_id
                ))->row()->username);
                $this->session->set_flashdata('alert', 'successful_signin');
                
                $this->db->where('user_id', $user_id);
                $this->db->update('user', array(
                    'last_login' => time()
                ));
                
                if ($para2 == 'cart') {
        			recache();
                    redirect(base_url() . 'index.php/home/cart_checkout', 'refresh');
                } else {
        			recache();
                    redirect(base_url() . 'index.php/home', 'refresh');
                }
            }
            if (@$_SESSION['token']) {
                $this->googleplus->client->setAccessToken($_SESSION['token']);
            }
            if ($this->googleplus->client->getAccessToken()) //already_logged_in
                {
                $page_data['g_user'] = $this->googleplus->people->get('me');
                $page_data['g_url']  = $this->googleplus->client->createAuthUrl();
                $_SESSION['token']   = $this->googleplus->client->getAccessToken();
            } else {
                $page_data['g_url'] = $this->googleplus->client->createAuthUrl();
            }
        }
        
        if ($para1 == 'login') {
            $this->load->view('front/login', $page_data);
        } elseif ($para1 == 'registration') {
            $this->load->view('front/signup', $page_data);
        }
    }
    
    
    /* FUNCTION: Customer Registration*/
    function registration($para1 = "", $para2 = "")
    {
        $safe = 'yes';
        $char = '';
        foreach($_POST as $k=>$row){
            if (preg_match('/[\'^":()}{#~><>|=+¬]/', $row,$match))
            {
                if($k !== 'password1' && $k !== 'password2')
                {
                    $safe = 'no';
                    $char = $match[0];
                }
            }
        }

        $this->load->library('form_validation');
        $page_data['page_name'] = "registration";
        if ($para1 == "add_info") {
			$this->form_validation->set_rules('username', 'Your Name', 'required');
            $this->form_validation->set_rules('email', 'Email', 'required|is_unique[user.email]|valid_email',array('required' => 'You have not provided %s.', 'is_unique' => 'This %s already exists.'));
            $this->form_validation->set_rules('password1', 'Password', 'required|matches[password2]');
            $this->form_validation->set_rules('password2', 'Confirm Password', 'required|matches[password1]');
            $this->form_validation->set_rules('address1', 'Address Line 1', 'required');
            $this->form_validation->set_rules('address2', 'Address Line 2', 'required');
            $this->form_validation->set_rules('phone', 'Phone', 'required');
			$this->form_validation->set_rules('terms', translate('terms'), 'required',
				array('required' => translate('you_must_accept_terms_and_conditions'))
			);

            if ($this->form_validation->run() == FALSE)
            {
                echo validation_errors();
            }
            else
            {
                if($safe == 'yes'){
    				$data['username']      = $this->input->post('username');
    				$data['email']         = $this->input->post('email');
    				$data['address1']      = $this->input->post('address1');
    				$data['address2']      = $this->input->post('address2');
    				$data['phone']         = $this->input->post('phone');
    				$data['langlat']       = '(0,0)';
    				$data['wishlist']      = '[]';
    				$data['creation_date'] = time();
    				
    				if ($this->input->post('password1') == $this->input->post('password2')) {
    					$password         = $this->input->post('password1');
    					$data['password'] = sha1($password);
    					$this->db->insert('user', $data);
    					$this->Email_model->account_opening('user', $data['email'], $password);
    					echo 'done';
    				}
                } else {
                    echo 'Disallowed charecter : " '.$char.' " in the POST';
                }
			}
        }
        else if ($para1 == "update_info") {
            $id                  = $this->session->userdata('user_id');
            $data['username']    = $this->input->post('username');
            $data['surname']     = $this->input->post('surname');
            $data['address1']    = $this->input->post('address1');
            $data['address2']    = $this->input->post('address2');
            $data['phone']       = $this->input->post('phone');
            $data['city']        = $this->input->post('city');
            $data['skype']       = $this->input->post('skype');
            $data['google_plus'] = $this->input->post('google_plus');
            $data['facebook']    = $this->input->post('facebook');
            $data['zip']         = $this->input->post('zip');
            
            $this->Crud_model->file_up('image', 'user', $id);
            
            $this->db->where('user_id', $id);
            $this->db->update('user', $data);
			echo 'done';
        }
        else if ($para1 == "update_password") {
            $user_data['password'] = $this->input->post('password');
            $account_data          = $this->db->get_where('user', array(
                'user_id' => $this->session->userdata('user_id')
            ))->result_array();
            foreach ($account_data as $row) {
                if (sha1($user_data['password']) == $row['password']) {
                    if ($this->input->post('password1') == $this->input->post('password2')) {
                        $data['password'] = sha1($this->input->post('password1'));
                        $this->db->where('user_id', $this->session->userdata('user_id'));
                        $this->db->update('user', $data);
						echo 'done';
                    }
                } else {
                    echo 'pass_prb';
                }
            }
        } else {
            $this->load->view('front/registration', $page_data);
        }
    }
    
    /* FUNCTION: Logout set */
    function logout()
    {
        $fb_login_set = $this->Crud_model->get_type_name_by_id('general_settings', '51', 'value');
        if ($fb_login_set == 'ok') {
	        $appid  = $this->db->get_where('general_settings', array(
	            'type' => 'fb_appid'
	        ))->row()->value;
	        $secret = $this->db->get_where('general_settings', array(
	            'type' => 'fb_secret'
	        ))->row()->value;
	        $config = array(
	            'appId' => $appid,
	            'secret' => $secret
	        );
	        $this->load->library('Facebook', $config);
        	$this->facebook->destroySession();
        }
        recache();
        $this->session->sess_destroy();
        redirect(base_url() . 'index.php/home/logged_out', 'refresh');
    }
    
    /* FUNCTION: Logout */
    function logged_out()
    {
        $this->session->set_flashdata('alert', 'successful_signout');
        redirect(base_url() . 'index.php/home/', 'refresh');
    }
	function gmap($param1='')
	{
		if($param1='contact'){
			$this->db->where('type', "contact_lat_lang");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('lat_lang')
            ));
			echo 'success';
		}
	}
	
    
    /* FUNCTION: Legal pages load - terms & conditions / privacy policy*/
    function legal($type = "")
    {
        $page_data['type']       = $type;
        $page_data['page_name']  = "legal";
        $page_data['page_title'] = translate($type);
        $this->load->view('front/index', $page_data);
    }
	
	function message($para1=''){
        $page_data['page_name']  = "message";
		$message = $this->db->get_where('email_tracing',array('email_tracing_id'=>$para1))->row();
		$page_data['msg']  = $message->massage;
		$page_data['email']  = $message->email;
		$page_data['phone']  = $message->phone;
		$page_data['product']  = $message->product;
		$page_data['date']  = $this->db->get_where('email_tracing',array('email_tracing_id'=>$para1))->row()->date;
		$this->load->view('front/message', $page_data);
	}
	function ticket_message($para1=''){
        $page_data['page_name']  = "ticket_message";
        $page_data['ticket']  = $para1;
		$page_data['message_data'] = $this->db->get_where('ticket', array(
			'ticket_id' => $para1
		))->result_array();
		$this->Crud_model->ticket_message_viewed($para1,'user');
		$page_data['msgs']  = $this->db->get_where('ticket_message',array('ticket_id'=>$para1))->result_array();
		$page_data['ticket_id']  = $para1;
        $page_data['page_name']  = "ticket_message";
        $page_data['page_title'] = translate('ticket_message');
		$this->load->view('front/index', $page_data);
	}
	function ticket_message_add(){
		$this->load->library('form_validation');
		$safe = 'yes';
		$char = '';
		foreach($_POST as $row){
			if (preg_match('/[\^}{#~|+¬]/', $row,$match))
			{
				$safe = 'no';
				$char = $match[0];
			}
		}

		$this->form_validation->set_rules('sub', 'Subject', 'required');
		$this->form_validation->set_rules('reply', 'Message', 'required');

		if ($this->form_validation->run() == FALSE)
		{
			echo validation_errors();
		}
		else
		{
			if($safe == 'yes'){
				$data['time'] 			= time();
				$data['subject'] 		= $this->input->post('sub');
				$id              		= $this->session->userdata('user_id');
				$data['from_where'] 	= json_encode(array('type'=>'user','id'=>$id));
				$data['to_where'] 		= json_encode(array('type'=>'admin','id'=>''));
				$data['view_status'] 	= 'ok';
				$this->db->insert('ticket',$data);
				$ticket_id = $this->db->insert_id();	
				$data1['message'] = $this->input->post('reply');
				$data1['time'] = time();
				if(!empty($this->db->get_where('ticket_message',array('ticket_id'=>$ticket_id))->row()->ticket_id))
				{ 
					$data1['from_where'] = $this->db->get_where('ticket_message',array('ticket_id'=>$ticket_id))->row()->from_where;
					$data1['to_where'] = $this->db->get_where('ticket_message',array('ticket_id'=>$ticket_id))->row()->to_where;
				} else {
					$data1['from_where'] = $this->db->get_where('ticket',array('ticket_id'=>$ticket_id))->row()->from_where;
					$data1['to_where'] = $this->db->get_where('ticket',array('ticket_id'=>$ticket_id))->row()->to_where;
				}
				$data1['ticket_id']= $ticket_id;
				$data1['view_status']= json_encode(array('user_show'=>'ok','admin_show'=>'no'));
				$data1['subject']  = $this->db->get_where('ticket',array('ticket_id'=>$ticket_id))->row()->subject;
				$this->db->insert('ticket_message',$data1);
			echo 'done';
		} else {
				echo 'Disallowed charecter : " '.$char.' " in the POST';
		}
		}
	}
	 function ticket_reply($para1='') {
		 $this->load->library('form_validation');
		$safe = 'yes';
		$char = '';
		foreach($_POST as $row){
			if (preg_match('/[\^}{#~|+¬]/', $row,$match))
			{
				$safe = 'no';
				$char = $match[0];
			}
		}

		$this->form_validation->set_rules('reply', 'Message', 'required');

		if ($this->form_validation->run() == FALSE)
		{
			echo validation_errors();
		}
		else
		{
			if($safe == 'yes'){
				$data['message'] = $this->input->post('reply');
				$data['time'] = time();
				if(!empty($this->db->get_where('ticket_message',array('ticket_id'=>$para1))->row()->ticket_id))
				{ 
					$data['from_where'] = $this->db->get_where('ticket_message',array('ticket_id'=>$para1))->row()->from_where;
					$data['to_where'] = $this->db->get_where('ticket_message',array('ticket_id'=>$para1))->row()->to_where;
				} else {
					$data['from_where'] = $this->db->get_where('ticket',array('ticket_id'=>$para1))->row()->from_where;
					$data['to_where'] = $this->db->get_where('ticket',array('ticket_id'=>$para1))->row()->to_where;
				}
				$data['ticket_id']= $para1;
				$data['view_status'] = json_encode(array('user_show'=>'ok','admin_show'=>'no'));
				$data['subject']  = $this->db->get_where('ticket',array('ticket_id'=>$para1))->row()->subject;
				$this->db->insert('ticket_message',$data);
				echo 'done';
			} else {
				echo 'Disallowed charecter : " '.$char.' " in the POST';
			}
		}
	} 
	function blog($param1=''){
		$page_data['blog_category']=$param1;
		$page_data['page_title']='blog';
		$page_data['page_name']='blog_list';
		$this->load->view('front/index', $page_data);
	}
	function blog_listed($para2='')
	{
		$this->load->library('Ajax_pagination');
				
	    $page_data['type'] = 'blog';
	    $blog_category = $this->input->post('blog_category');
		
		if($blog_category !== ''){
			if($blog_category !== 'all'){
				$this->db->where('blog_category', $blog_category);
			}	
		}

		$this->db->where('status', 'ok');
		
		$this->db->order_by('blog_id', 'desc');	
		
		$config['total_rows'] 	= $this->db->count_all_results('blog');
		$config['base_url']   	= base_url() . 'index.php/home/blog_listed/';
		$config['per_page'] 	= 6;
		$config['uri_segment']  = 5;
		$config['cur_page_giv'] = $para2;
		
		$function                  = "filter_blog('0')";
		$config['first_link']      = '&laquo;';
		$config['first_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['first_tag_close'] = '</a></li>';
		
		$rr                       = ($config['total_rows'] - 1) / $config['per_page'];
		$last_start               = floor($rr) * $config['per_page'];
		$function                 = "filter_blog('" . $last_start . "')";
		$config['last_link']      = '&raquo;';
		$config['last_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['last_tag_close'] = '</a></li>';
		
		$function                 = "filter_blog('" . ($para2 - $config['per_page']) . "')";
		$config['prev_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['prev_tag_close'] = '</a></li>';
		
		$function                 = "filter_blog('" . ($para2 + $config['per_page']) . "')";
		$config['next_link']      = '&rsaquo;';
		$config['next_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['next_tag_close'] = '</a></li>';
		
		$config['full_tag_open']  = '<ul class="pagination pagination-style-2 pagination-lg">';
		$config['full_tag_close'] = '</ul>';
		
		$config['cur_tag_open']  = '<li class="active"><a rel="grow" class="btn-u btn-u-red grow" class="active">';
		$config['cur_tag_close'] = '</a></li>';
		
		$function                = "filter_blog(((this.innerHTML-1)*" . $config['per_page'] . "))";
		$config['num_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['num_tag_close'] = '</a></li>';
		$this->ajax_pagination->initialize($config);
		
		
		if($blog_category !== ''){
			if($blog_category !== 'all'){
				$this->db->where('blog_category', $blog_category);
			}	
		}
		
		$this->db->where('status', 'ok');
		$this->db->order_by('blog_id', 'desc');
        $page_data['blog_category'] = $blog_category;
		
		$page_data['blog'] = $this->db->get('blog', $config['per_page'], $para2)->result_array();
		$this->load->view('front/blog_listed',$page_data);
	}
	
	function blog_view($para1='')
	{
		$page_data['blog_id'] 		= 	$para1;
		$page_data['page_title']      = "blog_view";
		$page_data['page_name']		=	"blog_view";
		$page_data['blog_info']		=	$this->db->get_where('blog',array('blog_id'=>$para1))->result_array();
		$this->load->view('front/index',$page_data);
	}
	
	function email_tracing($para1=''){
		$this->load->library('form_validation');
		$this->form_validation->set_rules('email', translate('e-mail'), 'required|valid_email');
		$this->form_validation->set_rules('phone', translate('phone_number'), 'required');
		$this->form_validation->set_rules('message', translate('message'), 'required');
		$this->form_validation->set_rules('terms', translate('terms'), 'required',
        	array('required' => translate('you_must_accept_terms_and_conditions'))
		);

		if ($this->form_validation->run() == FALSE)
		{
			echo validation_errors();
		}
		else 
		{
			$this->load->helper('date');	
			$datestring = " %d/%m/%Y  ";
			$time = time();
			$data['date']=mdate($datestring, $time);
			$data['product']      		= $para1;
			$data['product_owner']      = $this->db->get_where('product',array('product_id'=>$para1))->row()->user_id;
			$data['email']     = $this->input->post('email');
			$data['phone']		= $this->input->post('phone');
			$data['sender_info']		= $this->session->userdata('surfer_info');
			$data['massage']			= $this->input->post('message');
			$this->db->insert('email_tracing',$data);
			echo 'success';
		} 
		
	}
	function featured($para1='')
	{
		$page_data['page_name']		=	"featured";
		$page_data['page_title']    =  'featured';
		$this->load->view('front/index',$page_data);
	}
	
	function featured_item($para2='')
	{
		$this->load->library('Ajax_pagination');
		$page_data['type'] = $this->input->post('show_type');
	    
	    $sort = $this->input->post('sort');

	    $text 				= $this->input->post('text');

		if($text != '' && $text != '0'){
			$this->db->like('title', $text, 'both');	
		}
		$this->db->where('shown', 'ok');
		$this->db->where('featured', 'ok');
		$this->db->where('status', 'approved');
	
		$config['total_rows'] 	= $this->db->count_all_results('product');
		$config['base_url']   	= base_url() . 'index.php/home/listed/';
		$config['per_page'] 	= 6;
		$config['uri_segment']  = 5;
		$config['cur_page_giv'] = $para2;
		
		$function                  = "filter('0')";
		$config['first_link']      = '&laquo;';
		$config['first_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['first_tag_close'] = '</a></li>';
		
		$rr                       = ($config['total_rows'] - 1) / $config['per_page'];
		$last_start               = floor($rr) * $config['per_page'];
		$function                 = "filter('" . $last_start . "')";
		$config['last_link']      = '&raquo;';
		$config['last_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['last_tag_close'] = '</a></li>';
		
		$function                 = "filter('" . ($para2 - $config['per_page']) . "')";
		$config['prev_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['prev_tag_close'] = '</a></li>';
		
		$function                 = "filter('" . ($para2 + $config['per_page']) . "')";
		$config['next_link']      = '&rsaquo;';
		$config['next_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['next_tag_close'] = '</a></li>';
		
		$config['full_tag_open']  = '<ul class="pagination pagination pull-right" > ';
		$config['full_tag_close'] = '</ul>';
		
		$config['cur_tag_open']  = '<li class="active"><a rel="grow" class="btn-u btn-u-red grow" class="active">';
		$config['cur_tag_close'] = '</a></li>';
		
		$function                = "filter(((this.innerHTML-1)*" . $config['per_page'] . "))";
		$config['num_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['num_tag_close'] = '</a></li>';
		$this->ajax_pagination->initialize($config);
		$this->db->select('*');
		$this->db->from('product');
		$this->db->where('featured', 'ok');
		$this->db->where('status', 'approved');
		$this->db->where('shown', 'ok');
		if($text != '' && $text != '0'){
			$this->db->like('title', $text, 'both');	
		}
		if($sort == 'condition_old'){
			$this->db->where('condition','used');	
		}
		elseif($sort == 'condition_new'){
			$this->db->where('condition','new');	
		}
		elseif($sort == 'price_low'){
			$this->db->order_by('price', 'asc');
		}
		elseif($sort == 'price_high'){
			$this->db->order_by('price', 'desc');
		}
		else if($sort == 'most_viewed'){
			$this->db->order_by('number_of_view', 'desc');
		}else{
			$this->db->order_by('product_id', 'asc');
		}	
		$page_data['selected_product'] = $this->db->get()->result_array();
		$page_data['page_type']='featured';
		$this->load->view('front/list',$page_data);
	}
    
    /* FUNCTION: Setting Frontend Language */
    function set_language($lang)
    {
        $this->session->set_userdata('language', $lang);
        $page_data['page_name'] = "home";
		recache();
        redirect(base_url() . 'index.php/home/', 'refresh');
    }
	
	function latest()
	{
        $page_data['page_name']		='latest';
		$page_data['page_title']    =  'latest';
		$this->load->view('front/index',$page_data);
	}
	function latest_item($para2='')
	{
		$this->load->library('Ajax_pagination');
		$page_data['type'] = $this->input->post('show_type');
	    
	    $sort = $this->input->post('sort');

	    $text 				= $this->input->post('text');
		if($text != '' && $text != '0'){
			$this->db->like('title', $text, 'both');	
		}
		$this->db->where('status', 'approved');
		$this->db->where('shown', 'ok');
		$config['total_rows'] 	= $this->db->count_all_results('product');
		$config['base_url']   	= base_url() . 'index.php/home/listed/';
		$config['per_page'] 	= 6;
		$config['uri_segment']  = 5;
		$config['cur_page_giv'] = $para2;
		
		$function                  = "filter('0')";
		$config['first_link']      = '&laquo;';
		$config['first_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['first_tag_close'] = '</a></li>';
		
		$rr                       = ($config['total_rows'] - 1) / $config['per_page'];
		$last_start               = floor($rr) * $config['per_page'];
		$function                 = "filter('" . $last_start . "')";
		$config['last_link']      = '&raquo;';
		$config['last_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['last_tag_close'] = '</a></li>';
		
		$function                 = "filter('" . ($para2 - $config['per_page']) . "')";
		$config['prev_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['prev_tag_close'] = '</a></li>';
		
		$function                 = "filter('" . ($para2 + $config['per_page']) . "')";
		$config['next_link']      = '&rsaquo;';
		$config['next_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['next_tag_close'] = '</a></li>';
		
		$config['full_tag_open']  = '<ul class="pagination pagination pull-right" > ';
		$config['full_tag_close'] = '</ul>';
		
		$config['cur_tag_open']  = '<li class="active"><a rel="grow" class="btn-u btn-u-red grow" class="active">';
		$config['cur_tag_close'] = '</a></li>';
		
		$function                = "filter(((this.innerHTML-1)*" . $config['per_page'] . "))";
		$config['num_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['num_tag_close'] = '</a></li>';
		$this->ajax_pagination->initialize($config);
		$this->db->select('*');
		$this->db->from('product');
		$this->db->where('shown', 'ok');
		$this->db->where('status', 'approved');
		if($text != '' && $text != '0'){
			$this->db->like('title', $text, 'both');	
		}
		if($sort == ''){
			$this->db->order_by('product_id', 'desc');	
		}	
		else if($sort == 'condition_old'){
			$this->db->where('condition','used');	
		}
		elseif($sort == 'condition_new'){
			$this->db->where('condition','new');	
		}
		elseif($sort == 'price_low'){
			$this->db->order_by('price', 'asc');
		}
		elseif($sort == 'price_high'){
			$this->db->order_by('price', 'desc');
		}
		else if($sort == 'most_viewed'){
			$this->db->order_by('number_of_view', 'desc');
		}	
		$page_data['selected_product'] = $this->db->get()->result_array();
		$page_data['page_type']='featured';
		$this->load->view('front/list',$page_data);
	}
    
    /* FUNCTION: Check if Customer is logged in*/
    function check_login($para1 = "")
    {
        if ($para1 == 'state') {
            if ($this->session->userdata('user_login') == 'yes') {
                echo 'hypass';
            }
            if ($this->session->userdata('user_login') !== 'yes') {
                echo 'nypose';
            }
        } else if ($para1 == 'id') {
            echo $this->session->userdata('user_id');
        } else {
            echo $this->Crud_model->get_type_name_by_id('user', $this->session->userdata('user_id'), $para1);
        }
    }
    
    /* FUNCTION: Check if Email user exists */
    function exists()
    {
        $email  = $this->input->post('email');
        $user   = $this->db->get('user')->result_array();
        $exists = 'no';
        foreach ($user as $row) {
            if ($row['email'] == $email) {
                $exists = 'yes';
            }
        }
        echo $exists;
    }
	
	function preloader(){
		$page_data['page_name'] = "two";
		$this->load->view('front/preloader/two', $page_data);
	}
	function email_listed($para2='')
	{
		$this->load->library('Ajax_pagination');
		
		$id= $this->session->userdata('user_id');
		$this->db->where('product_owner', $id);
		$config['total_rows'] 	= $this->db->count_all_results('email_tracing');
		$config['base_url']   	= base_url() . 'index.php/home/profile_listed/';
		$config['per_page'] 	= 8;
		$config['uri_segment']  = 5;
		$config['cur_page_giv'] = $para2;
		
		$function                  = "email_listed('0')";
		$config['first_link']      = '&laquo;';
		$config['first_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['first_tag_close'] = '</a></li>';
		
		$rr                       = ($config['total_rows'] - 1) / $config['per_page'];
		$last_start               = floor($rr) * $config['per_page'];
		$function                 = "email_listed('" . $last_start . "')";
		$config['last_link']      = '&raquo;';
		$config['last_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['last_tag_close'] = '</a></li>';
		
		$function                 = "email_listed('" . ($para2 - $config['per_page']) . "')";
		$config['prev_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['prev_tag_close'] = '</a></li>';
		
		$function                 = "email_listed('" . ($para2 + $config['per_page']) . "')";
		$config['next_link']      = '&rsaquo;';
		$config['next_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['next_tag_close'] = '</a></li>';
		
		$config['full_tag_open']  = '<ul class="pagination pagination-style-2 pagination-sm">';
		$config['full_tag_close'] = '</ul>';
		
		$config['cur_tag_open']  = '<li class="active"><a rel="grow" class="btn-u btn-u-red grow" class="active">';
		$config['cur_tag_close'] = '</a></li>';
		
		$function                = "email_listed(((this.innerHTML-1)*" . $config['per_page'] . "))";
		$config['num_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['num_tag_close'] = '</a></li>';
		$this->ajax_pagination->initialize($config);
		$this->db->where('product_owner', $id);
		$page_data['email'] = $this->db->get('email_tracing', $config['per_page'], $para2)->result_array();
		$this->load->view('front/email_listed',$page_data);
	}
	function product_listed($para2='')
	{
		$this->load->library('Ajax_pagination');
		
		$id= $this->session->userdata('user_id');
		$this->db->where('user_id', $id);
		$config['total_rows'] 	= $this->db->count_all_results('product');
		$config['base_url']   	= base_url() . 'index.php/home/product_listed/';
		$config['per_page'] 	= 10;
		$config['uri_segment']  = 5;
		$config['cur_page_giv'] = $para2;
		
		$function                  = "product_listed('0')";
		$config['first_link']      = '&laquo;';
		$config['first_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['first_tag_close'] = '</a></li>';
		
		$rr                       = ($config['total_rows'] - 1) / $config['per_page'];
		$last_start               = floor($rr) * $config['per_page'];
		$function                 = "product_listed('" . $last_start . "')";
		$config['last_link']      = '&raquo;';
		$config['last_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['last_tag_close'] = '</a></li>';
		
		$function                 = "product_listed('" . ($para2 - $config['per_page']) . "')";
		$config['prev_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['prev_tag_close'] = '</a></li>';
		
		$function                 = "product_listed('" . ($para2 + $config['per_page']) . "')";
		$config['next_link']      = '&rsaquo;';
		$config['next_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['next_tag_close'] = '</a></li>';
		
		$config['full_tag_open']  = '<ul class="pagination pagination-style-2 pagination-sm">';
		$config['full_tag_close'] = '</ul>';
		
		$config['cur_tag_open']  = '<li class="active"><a rel="grow" class="btn-u btn-u-red grow" class="active">';
		$config['cur_tag_close'] = '</a></li>';
		
		$function                = "product_listed(((this.innerHTML-1)*" . $config['per_page'] . "))";
		$config['num_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['num_tag_close'] = '</a></li>';
		$this->ajax_pagination->initialize($config);
		$this->db->where('user_id', $id);
		$page_data['products'] = $this->db->get('product', $config['per_page'], $para2)->result_array();
		$this->load->view('front/product_listed',$page_data);
	}
	function ticket_listed($para2='')
	{
		$this->load->library('Ajax_pagination');
		
		$id= $this->session->userdata('user_id');
        $this->db->where('from_where','{"type":"user","id":"'.$id.'"}');
		$this->db->or_where('to_where','{"type":"user","id":"'.$id.'"}');
		$config['total_rows'] 	= $this->db->count_all_results('ticket');
		$config['base_url']   	= base_url() . 'index.php/home/ticket_listed/';
		$config['per_page'] 	= 5;
		$config['uri_segment']  = 5;
		$config['cur_page_giv'] = $para2;
		
		$function                  = "ticket_listed('0')";
		$config['first_link']      = '&laquo;';
		$config['first_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['first_tag_close'] = '</a></li>';
		
		$rr                       = ($config['total_rows'] - 1) / $config['per_page'];
		$last_start               = floor($rr) * $config['per_page'];
		$function                 = "ticket_listed('" . $last_start . "')";
		$config['last_link']      = '&raquo;';
		$config['last_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['last_tag_close'] = '</a></li>';
		
		$function                 = "ticket_listed('" . ($para2 - $config['per_page']) . "')";
		$config['prev_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['prev_tag_close'] = '</a></li>';
		
		$function                 = "ticket_listed('" . ($para2 + $config['per_page']) . "')";
		$config['next_link']      = '&rsaquo;';
		$config['next_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['next_tag_close'] = '</a></li>';
		
		$config['full_tag_open']  = '<ul class="pagination pagination-style-2 pagination-lg">';
		$config['full_tag_close'] = '</ul>';
		
		$config['cur_tag_open']  = '<li class="active"><a rel="grow" class="btn-u btn-u-red grow" class="active">';
		$config['cur_tag_close'] = '</a></li>';
		
		$function                = "ticket_listed(((this.innerHTML-1)*" . $config['per_page'] . "))";
		$config['num_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['num_tag_close'] = '</a></li>';
		$this->ajax_pagination->initialize($config);
        $this->db->where('from_where','{"type":"user","id":"'.$id.'"}');
		$this->db->or_where('to_where','{"type":"user","id":"'.$id.'"}');
		$page_data['tickets'] = $this->db->get('ticket', $config['per_page'], $para2)->result_array();
		$this->load->view('front/ticket_listed',$page_data);
	}
	
	function wish_listed($para2='')
	{
		$this->load->library('Ajax_pagination');
		
		$id= $this->session->userdata('user_id');
		$ids = json_decode($this->db->get_where('user',array('user_id'=>$id))->row()->wishlist,true);
		$this->db->where_in('product_id', $ids);
        
		$config['total_rows'] 	= $this->db->count_all_results('product');;
		$config['base_url']   	= base_url() . 'index.php/home/wish_listed/';
		$config['per_page'] 	= 5;
		$config['uri_segment']  = 5;
		$config['cur_page_giv'] = $para2;
		
		$function                  = "wish_listed('0')";
		$config['first_link']      = '&laquo;';
		$config['first_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['first_tag_close'] = '</a></li>';
		
		$rr                       = ($config['total_rows'] - 1) / $config['per_page'];
		$last_start               = floor($rr) * $config['per_page'];
		$function                 = "wish_listed('" . $last_start . "')";
		$config['last_link']      = '&raquo;';
		$config['last_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['last_tag_close'] = '</a></li>';
		
		$function                 = "wish_listed('" . ($para2 - $config['per_page']) . "')";
		$config['prev_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['prev_tag_close'] = '</a></li>';
		
		$function                 = "wish_listed('" . ($para2 + $config['per_page']) . "')";
		$config['next_link']      = '&rsaquo;';
		$config['next_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['next_tag_close'] = '</a></li>';
		
		$config['full_tag_open']  = '<ul class="pagination pagination-style-2 ">';
		$config['full_tag_close'] = '</ul>';
		
		$config['cur_tag_open']  = '<li class="active"><a rel="grow" class="btn-u btn-u-red grow" class="active">';
		$config['cur_tag_close'] = '</a></li>';
		
		$function                = "wish_listed(((this.innerHTML-1)*" . $config['per_page'] . "))";
		$config['num_tag_open']  = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
		$config['num_tag_close'] = '</a></li>';
		$this->ajax_pagination->initialize($config);
		$ids = json_decode($this->db->get_where('user',array('user_id'=>$id))->row()->wishlist,true);
		$this->db->where_in('product_id', $ids);
		$page_data['query'] = $this->db->get('product', $config['per_page'], $para2)->result_array();
		$this->load->view('front/wish_listed',$page_data);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */