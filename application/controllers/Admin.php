<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

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
		/*cache control*/
		$this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
		$this->output->set_header('Pragma: no-cache');
	}
	public function index()
	{
		if($this->session->userdata('admin_login')=='yes')
		{
			$page_data['page_name']="dashboard";
			$this->load->view('back/index',$page_data);
		}
		else
		{
			$this->load->view('back/login');
		}
	}
	
	function email_tracing($para1 = '', $para2 = '')
    {
        if (!$this->Crud_model->admin_permission('email_tracing')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'view') {
            $page_data['email_tracing_data'] = $this->db->get_where('email_tracing', array(
                'email_tracing_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/email_tracing_view', $page_data);
        } elseif ($para1 == 'delete') {
            $this->db->where('user_id', $para2);
            $this->db->delete('user');
            recache();
        } elseif ($para1 == 'list') {
            $this->db->order_by('email_tracing_id', 'desc');
            $page_data['all_email_tracings'] = $this->db->get('email_tracing')->result_array();
            $this->load->view('back/admin/email_tracing_list', $page_data);
        } else {
            $page_data['page_name']      = "email_tracing";
            $page_data['all_email_tracings'] = $this->db->get('email_tracing')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }
	
    //DDDDDDDDD
    function blog_category($para1 = '', $para2 = '')
    {
        if (!$this->Crud_model->admin_permission('blog_category')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'do_add') {
            $data['name'] = $this->input->post('name');
            $this->db->insert('blog_category', $data);
            recache();
        } else if ($para1 == 'edit') {
            $page_data['blog_category_data'] = $this->db->get_where('blog_category', array(
                'blog_category_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/blog_category_edit', $page_data);
        } elseif ($para1 == "update") {
            $data['name'] = $this->input->post('name');
            $this->db->where('blog_category_id', $para2);
            $this->db->update('blog_category', $data);
            recache();
        } elseif ($para1 == 'delete') {
            $this->db->where('blog_category_id', $para2);
            $this->db->delete('blog_category');
            recache();
        } elseif ($para1 == 'list') {
            $this->db->order_by('blog_category_id', 'desc');
            $page_data['all_blog_categories'] = $this->db->get('blog_category')->result_array();
            $this->load->view('back/admin/blog_category_list', $page_data);
        } elseif ($para1 == 'add') {
            $this->load->view('back/admin/blog_category_add');
        } else {
            $page_data['page_name']      = "blog_category";
            $page_data['all_blog_categories'] = $this->db->get('blog_category')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }
	function blog($para1 = '', $para2 = '',$para3 = '')
    {
        if (!$this->Crud_model->admin_permission('blog')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'do_add') {
            $data['title'] = $this->input->post('title');
			$data['date'] = $this->input->post('dt');
			$data['description'] = $this->input->post('description');
			$data['summery'] = $this->input->post('summery');
			$data['author'] = $this->input->post('author');
			$data['blog_category'] = $this->input->post('blog_category');
			$data['number_of_view'] = $this->input->post('number_of_view');
            $this->db->insert('blog', $data);
			$id = $this->db->insert_id();
            $this->Crud_model->file_up("img", "blog", $id, '', '', '.jpg');
            recache();
        } else if ($para1 == 'edit') {
            $page_data['blog_data'] = $this->db->get_where('blog', array(
                'blog_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/blog_edit', $page_data);
        } elseif ($para1 == "update") {
            $data['title'] = $this->input->post('title');
			$data['date'] = $this->input->post('dt');
			$data['description'] = $this->input->post('description');
			$data['summery'] = $this->input->post('summery');
			$data['author'] = $this->input->post('author');
			$data['blog_category'] = $this->input->post('blog_category');
			$data['number_of_view'] = $this->input->post('number_of_view');
            $this->db->where('blog_id', $para2);
            $this->db->update('blog', $data);
            $this->Crud_model->file_up("img", "blog", $para2, '', '', '.jpg');
            recache();
        } elseif ($para1 == 'delete') {
            $this->db->where('blog_id', $para2);
            $this->db->delete('blog');
            recache();
        } elseif ($para1 == 'list') {
            $this->db->order_by('blog_id', 'desc');
            $page_data['all_blogs'] = $this->db->get('blog')->result_array();
            $this->load->view('back/admin/blog_list', $page_data);
        } elseif ($para1 == 'add') {
            $this->load->view('back/admin/blog_add');
        } elseif ($para1 == "status") {
            $val = '';
            if ($para3 == 'true') {
                $val = 'ok';
            } else if ($para3 == 'false') {
                $val = 'no';
            }
            $this->db->where('blog_id', $para2);
            $this->db->update('blog', array(
                'status' => $val
            ));
		} else {
			$page_data['page_title']      = "blog";
            $page_data['page_name']      = "blog";
            $page_data['all_blogs'] = $this->db->get('blog')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }
	
    /*Product Category add, edit, view, delete */
    function category($para1 = '', $para2 = '')
    {
        if (!$this->Crud_model->admin_permission('category')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'do_add') {
            $data['name'] = $this->input->post('name');
            $this->db->insert('category', $data);
            recache();
        } else if ($para1 == 'edit') {
            $page_data['category_data'] = $this->db->get_where('category', array(
                'category_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/category_edit', $page_data);
        } elseif ($para1 == "update") {
            $data['name'] = $this->input->post('name');
            $this->db->where('category_id', $para2);
            $this->db->update('category', $data);
            recache();
        } elseif ($para1 == 'delete') {
            $this->db->where('category_id', $para2);
            $this->db->delete('category');
            recache();
        } elseif ($para1 == 'list') {
            $this->db->order_by('category_id', 'desc');
            $page_data['all_categories'] = $this->db->get('category')->result_array();
            $this->load->view('back/admin/category_list', $page_data);
        } elseif ($para1 == 'add') {
            $this->load->view('back/admin/category_add');
        } else {
            $page_data['page_name']      = "category";
            $page_data['all_categories'] = $this->db->get('category')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }
  

    /*Product user add, edit, view, delete */
   function user($para1 = '', $para2 = '')
    {
        if (!$this->Crud_model->admin_permission('user')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'do_add') {
            $data['username'] = $this->input->post('username');
			$data['surname'] = $this->input->post('surname');
			$data['email'] = $this->input->post('email');
			$data['phone'] = $this->input->post('phone');
			$data['address1'] = $this->input->post('address1');
			$data['address2'] = $this->input->post('address2');
			$data['city'] = $this->input->post('city');
			$data['zip'] = $this->input->post('zip');
			$data['password'] = $this->input->post('password');
			$data['google_plus'] = $this->input->post('google_plus');
			$data['skype'] = $this->input->post('skype');
			$data['facebook'] = $this->input->post('facebook');
            $this->db->insert('user', $data);
			$id = $this->db->insert_id();
            $this->Crud_model->file_up("img", "user", $id, '', '');
            recache();
			
        } else if ($para1 == 'edit') {
            $page_data['user_data'] = $this->db->get_where('user', array(
                'user_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/user_edit', $page_data);
        } else if ($para1 == 'view') {
            $page_data['user_data'] = $this->db->get_where('user', array(
                'user_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/user_view', $page_data);
        } else if ($para1 == 'products') {
            $page_data['user_id'] = $para2;
            $page_data['products'] = $this->db->get_where('product', array(
                'user_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/user_products', $page_data);
        } elseif ($para1 == "update") {
            $data['username'] = $this->input->post('username');
			$data['surname'] = $this->input->post('surname');
			$data['email'] = $this->input->post('email');
			$data['phone'] = $this->input->post('phone');
			$data['address1'] = $this->input->post('address1');
			$data['address2'] = $this->input->post('address2');
			$data['city'] = $this->input->post('city');
			$data['zip'] = $this->input->post('zip');
			$data['password'] = $this->input->post('password');
			$data['google_plus'] = $this->input->post('google_plus');
			$data['skype'] = $this->input->post('skype');
			$data['facebook'] = $this->input->post('facebook');
            $this->db->where('user_id', $para2);
            $this->db->update('user', $data);
			$this->Crud_model->file_up("img", "user", $para2, '', '');
            recache();
        } elseif ($para1 == 'delete') {
            $this->db->where('user_id', $para2);
            $this->db->delete('user');
            recache();
        } elseif ($para1 == 'list') {
            $this->db->order_by('user_id', 'desc');
            $page_data['all_users'] = $this->db->get('user')->result_array();
            $this->load->view('back/admin/user_list', $page_data);
        } elseif ($para1 == 'add') {
            $this->load->view('back/admin/user_add');
        } else {
            $page_data['page_name']      = "user";
            $page_data['all_users'] = $this->db->get('user')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }
	/*-----------------user type add edit delete*/
	function user_type($para1 = '', $para2 = '',$para3 = '')
    {
        if (!$this->Crud_model->admin_permission('user_type')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'do_add') {
            $data['name'] = $this->input->post('name');
			$data['price'] = $this->input->post('price');
			$dtl = $this->input->post('details');
			$tym = $this->input->post('tym');
			$dtls = $dtl.'-'.$tym;
			$chk = $this->input->post('status');
			
			if($chk !='unlimited'){
				$data['details']=json_encode($dtl.'-'.$tym);	
			}
			else{
				$data['details']='unlimited';	
			}
			$product_type = array();
			$p_type = $this->db->get('product_type')->result_array();
			foreach($p_type as $row){
				$product_type[] = array('product_type'=>$row['product_type_id'],'piece'=>$this->input->post('piece_'.$row['product_type_id']));
			}
			$data['product_type'] = json_encode($product_type);
			
			$data['price'] = $this->input->post('price');
			$data['status'] = 'no';
            $this->db->insert('user_type', $data);
			$id = $this->db->insert_id();
            $this->Crud_model->file_up("logo", "user_type", $id, '', '');
            recache();
        } else if ($para1 == 'edit') {
            $page_data['user_type_data'] = $this->db->get_where('user_type', array(
                'user_type_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/user_type_edit', $page_data);
        } elseif ($para1 == "update") {
            $data['name'] = $this->input->post('name');
			$data['price'] = $this->input->post('price');
			$dtl = $this->input->post('details');
			$tym = $this->input->post('tym');
			$dtls = $dtl.'-'.$tym;
			$chk = $this->input->post('status');
			
			if($chk !='unlimited'){
				$data['details']=json_encode($dtl.'-'.$tym);	
			}
			else{
				$data['details']='unlimited';	
			}
			$product_type = array();
			$p_type = $this->db->get('product_type')->result_array();
			foreach($p_type as $row){
				$product_type[] = array('product_type'=>$row['product_type_id'],'piece'=>$this->input->post('piece_'.$row['product_type_id']));
			}
			$data['product_type'] = json_encode($product_type);
            $this->db->where('user_type_id', $para2);
            $this->db->update('user_type', $data);
			$this->Crud_model->file_up("logo", "user_type", $para2, '', '');
            recache();
        } elseif ($para1 == 'delete') {
            $this->db->where('user_type_id', $para2);
            $this->db->delete('user_type');
            recache();
        } elseif ($para1 == 'list') {
            $this->db->order_by('user_type_id', 'desc');
            $page_data['all_user_types'] = $this->db->get('user_type')->result_array();
            $this->load->view('back/admin/user_type_list', $page_data);
        } elseif ($para1 == 'add') {
            $this->load->view('back/admin/user_type_add');
        } elseif ($para1 == "status") {
            $val = '';
            if ($para3 == 'true') {
                $val = 'ok';
            } else if ($para3 == 'false') {
                $val = 'no';
            }
            $this->db->where('user_type_id', $para2);
            $this->db->update('user_type', array(
                'status' => $val
            ));
		} elseif ($para1 == "unlimited_status") {
            $val = '';
            if ($para3 == 'true') {
                $val = 'ok';
            } else if ($para3 == 'false') {
                $val = 'no';
            }
            $this->db->where('user_type_id', $para2);
            $this->db->update('user_type', array(
                'status' => $val
            ));
		} else {
            $page_data['page_name']      = "user_type";
            $page_data['all_user_types'] = $this->db->get('user_type')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }
	
	function product_type($para1 = '', $para2 = '',$para3 = '')
    {
        if (!$this->Crud_model->admin_permission('product_type')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'do_add') {
            $data['name'] = $this->input->post('name');
			$data['price'] = $this->input->post('price');
			$data['status'] = 'no';
			$f_tym=$this->input->post('tym');
			$s_tym=$this->input->post('tym1');
			$f_tym_type=$this->input->post('tym_typ');
			$s_tym_type=$this->input->post('tym_typ1');
			$f_for= $f_tym.'-'.$f_tym_type;
			$s_for= $s_tym.'-'.$s_tym_type;
			$details = array('s_for'=>$s_for,'f_for'=>$f_for);
			//var_dump($details);
			$data['details']= json_encode($details);
            $this->db->insert('product_type', $data);
			$id = $this->db->insert_id();
            $this->Crud_model->file_up("img", "product_type", $id, '', '');
            recache();
			
        } else if ($para1 == 'edit') {
            $page_data['product_type_data'] = $this->db->get_where('product_type', array(
                'product_type_id' => $para2
            ))->result_array();
			
            $this->load->view('back/admin/product_type_edit', $page_data);
        } else if ($para1 == 'view') {
            $page_data['product_type_data'] = $this->db->get_where('product_type', array(
                'product_type_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/product_type_view', $page_data);
        } elseif ($para1 == "update") {
            $data['name'] = $this->input->post('name');
			$data['price'] = $this->input->post('price');
			$data['status'] = $this->input->post('status');
			$f_tym=$this->input->post('tym');
			$s_tym=$this->input->post('tym1');
			$f_tym_type=$this->input->post('tym_typ');
			$s_tym_type=$this->input->post('tym_typ1');
			$f_for= $f_tym.'-'.$f_tym_type;
			$s_for= $s_tym.'-'.$s_tym_type;
			$details = array('s_for'=>$s_for,'f_for'=>$f_for);
			//var_dump($details);
			$data['details']= json_encode($details);
            $this->db->where('product_type_id', $para2);
            $this->db->update('product_type', $data);
			$this->Crud_model->file_up("img", "product_type", $para2, '', '');
            recache();
        } elseif ($para1 == 'delete') {
            $this->db->where('product_type_id', $para2);
            $this->db->delete('product_type');
            recache();
        } elseif ($para1 == 'list') {
            $this->db->order_by('product_type_id', 'desc');
            $page_data['all_product_types'] = $this->db->get('product_type')->result_array();
            $this->load->view('back/admin/product_type_list', $page_data);
        } elseif ($para1 == 'add') {
            $this->load->view('back/admin/product_type_add');
        } elseif ($para1 == "status") {
            $val = '';
            if ($para3 == 'true') {
                $val = 'ok';
            } else if ($para3 == 'false') {
                $val = 'no';
            }
            $this->db->where('product_type_id', $para2);
            $this->db->update('product_type', array(
                'status' => $val
            ));
		} else {
            $page_data['page_name']      = "product_type";
            $page_data['all_product_types'] = $this->db->get('product_type')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }
    function sub_category($para1 = '', $para2 = '')
    {
        if (!$this->Crud_model->admin_permission('sub_category')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'do_add') {
            $data['parent_category_id'] = $this->input->post('parent_category_id');
			$data['name'] = $this->input->post('name');
            $this->db->insert('sub_category', $data);
            recache();
        } else if ($para1 == 'edit') {
            $page_data['sub_category_data'] = $this->db->get_where('sub_category', array(
                'sub_category_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/sub_category_edit', $page_data);
        } elseif ($para1 == "update") {
            $data['parent_category_id'] = $this->input->post('parent_category_id');
			$data['name'] = $this->input->post('name');
            $this->db->where('sub_category_id', $para2);
            $this->db->update('sub_category', $data);
            recache();
        } elseif ($para1 == 'delete') {
            $this->db->where('sub_category_id', $para2);
            $this->db->delete('sub_category');
            recache();
        } elseif ($para1 == 'list') {
            $this->db->order_by('sub_category_id', 'desc');
            $page_data['all_sub_categories']=$this->db->get('sub_category')->result_array();
			$page_data['all_categories']=$this->db->get('category')->result_array();
            $this->load->view('back/admin/sub_category_list', $page_data);
        } elseif ($para1 == 'add') {
            $this->load->view('back/admin/sub_category_add');
        } else {
            $page_data['page_name']      = "sub_category";
            $page_data['all_categories']=$this->db->get('category')->result_array();
			$page_data['all_sub_categories']=$this->db->get('sub_category')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }

    function payments($para1 = '', $para2 = '', $para3 = '')
    {
        if (!$this->Crud_model->admin_permission('payments')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'view') {
            $page_data['payments_data'] = $this->db->get_where('payments', array(
                'payments_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/payments_view', $page_data);
        } elseif ($para1 == 'list') {
            $this->db->order_by('payments_id', 'desc');
            $page_data['all_payments'] = $this->db->get('payments')->result_array();
            $this->load->view('back/admin/payments_list', $page_data);
        } else {
            $page_data['page_name']      = "payments";
            $page_data['all_payments'] = $this->db->get('payments')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }


	function product($para1 = '', $para2 = '', $para3 = '')
    {
        if (!$this->Crud_model->admin_permission('product')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'do_add') {
            $data['title'] = $this->input->post('name');
			$data['description'] = $this->input->post('description');
			$data['price'] = $this->input->post('price');
			$data['category_id'] = $this->input->post('category');
			$data['sub_category_id'] = $this->input->post('sub_category');
			$data['user'] = $this->input->post('user');
			$data['featured'] = $this->input->post('featured');
			$data['status'] = $this->input->post('status');
			$data['condition'] = $this->input->post('condition');
			$data['tag'] = $this->input->post('tag');
			$data['address'] = $this->input->post('address');
            $this->db->insert('product', $data);
			$id = $this->db->insert_id();
            $this->Crud_model->file_up("img", "product", $id, '', '');
            recache();
			
        } else if ($para1 == 'edit') {
            $page_data['product_data'] = $this->db->get_where('product', array(
                'product_id' => $para2
            ))->result_array();
			$page_data['category_data']=$this->Crud_model->get_table('category');
			$page_data['sub_category_data']=$this->Crud_model->get_table('sub_category');
			$page_data['user_data']=$this->Crud_model->get_table('user');
            $this->load->view('back/admin/product_edit', $page_data);
        } else if ($para1 == 'view') {
            $page_data['product_data'] = $this->db->get_where('product', array(
                'product_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/product_view', $page_data);
        } elseif ($para1 == "update") {
            $data['title'] = $this->input->post('name');
			$data['description'] = $this->input->post('description');
			$data['price'] = $this->input->post('price');
			$data['category_id'] = $this->input->post('category_id');
			$data['sub_category_id'] = $this->input->post('sub_category_id');
			$data['user'] = $this->input->post('user');
			$data['featured'] = $this->input->post('featured');
			$data['status'] = $this->input->post('status');
			$data['condition'] = $this->input->post('condition');
			$data['tag'] = $this->input->post('tag');
			$data['address'] = $this->input->post('address');
            $this->db->where('product_id', $para2);
            $this->db->update('product', $data);
			$this->Crud_model->file_up("img", "product", $para2, '', '');
            recache();
        } elseif ($para1 == 'delete') {
			$images = json_decode($this->db->get_where('product',array('product_id'=>$para2))->row()->images);
			foreach($images as $row){
				if(file_exists('uploads/product_image/'.$row)){
					unlink('uploads/product_image/'.$row);
				}
				if(file_exists('uploads/product_image/thumbnail/'.$row)){
					unlink('uploads/product_image/thumbnail/'.$row);
				}
			}
            $this->db->where('product_id', $para2);
            $this->db->delete('product');
            recache();
        } elseif ($para1 == 'list') {
            $this->db->order_by('product_id', 'desc');
            $page_data['all_products'] = $this->db->get('product')->result_array();
            $this->load->view('back/admin/product_list', $page_data);
        } elseif ($para1 == 'list_data') {
            $limit      = $this->input->get('limit');
            $search     = $this->input->get('search');
            $order      = $this->input->get('order');
            $offset     = $this->input->get('offset');
            $sort       = $this->input->get('sort');
            if($search){
                $this->db->like('title', $search, 'both');
            }
            $total      = $this->db->get('product')->num_rows();
            $this->db->limit($limit);
			if($sort == ''){
				$sort = 'product_id';
				$order = 'DESC';
			}
            $this->db->order_by($sort,$order);
            if($search){
                $this->db->like('title', $search, 'both');
            }
            $products   = $this->db->get('product', $limit, $offset)->result_array();
            $data       = array();
            foreach ($products as $row) {

                $res    = array(
                             'image' => '',
                             'title' => '',
                             'current_stock' => '',
                             'deal' => '',
                             'publish' => '',
                             'featured' => '',
                             'options' => ''
                          );

                $res['image']  = '<img class="img-sm" style="height:auto !important; border:1px solid #ddd;padding:2px; border-radius:2px !important;" src="'.$this->Crud_model->product_image($row['product_id']).'"  />';
                $res['title']  = $row['title'];
                if($row['status'] == 'approved'){
                    $res['publish']  = '<input id="pub_'.$row['product_id'].'" class="sw1" type="checkbox" data-id="'.$row['product_id'].'" checked />';
                } else {
                    $res['publish']  = '<input id="pub_'.$row['product_id'].'" class="sw1" type="checkbox" data-id="'.$row['product_id'].'" />';
                }
				
                if($row['featured'] == 'ok'){
                    $res['featured'] = '<input id="fet_'.$row['product_id'].'" class="sw2" type="checkbox" data-id="'.$row['product_id'].'" checked />';
                } else {
                    $res['featured'] = '<input id="fet_'.$row['product_id'].'" class="sw2" type="checkbox" data-id="'.$row['product_id'].'" />';
                }

                //add html for action
                $res['options'] = "  <a class=\"btn btn-info btn-xs btn-labeled fa fa-location-arrow\" data-toggle=\"tooltip\" 
                                onclick=\"ajax_set_full('view','".translate('view_product')."','".translate('successfully_viewed!')."','product_view','".$row['product_id']."');proceed('to_list');\" data-original-title=\"View\" data-container=\"body\">
                                    ".translate('view')."
                            </a>
							
                            <a class=\"btn btn-success btn-xs btn-labeled fa fa-wrench\" target=\"_blank\" 
                                href=\"".base_url()."index.php/home/product_edit/".$row['product_id']."/".$row['product_trace_key']."\" data-original-title=\"Edit\" data-container=\"body\">
                                    ".translate('edit')."
                            </a>
                            
                            <a onclick=\"delete_confirm('".$row['product_id']."','".translate('really_want_to_delete_this?')."')\" 
                                class=\"btn btn-danger btn-xs btn-labeled fa fa-trash\" data-toggle=\"tooltip\" data-original-title=\"Delete\" data-container=\"body\">
                                    ".translate('delete')."
                            </a>";
                $data[] = $res;
            }
            $result = array(
                             'total' => $total,
                             'rows' => $data
                           );

            echo json_encode($result);

        } elseif ($para1 == 'add') {
            $this->load->view('back/admin/product_add');
        } elseif ($para1 == 'product_featured_set') {
            $product = $para2;
            if ($para3 == 'true') {
                $data['featured'] 		= 'ok';
                $data['admin_featured'] = 'ok';
            } else {
                $data['featured'] 		= '0';
                $data['admin_featured'] = '0';
            }
            $this->db->where('product_id', $product);
            $this->db->update('product', $data);
            recache();
        } elseif ($para1 == 'product_publish_set') {
            $product = $para2;
            if ($para3 == 'true') {
                $data['status'] = 'approved';
            } else {
                $data['status'] = 'pending';
            }
            $this->db->where('product_id', $product);
            $this->db->update('product', $data);
            recache();
        } else {
            $page_data['page_name']      = "product";
            $page_data['all_products'] = $this->db->get('product')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }
	
    /* Login into Admin panel */
    function login($para1 = '')
    {
        if ($para1 == 'forget_form') {
            $page_data['control'] = 'admin';
            $this->load->view('back/forget_password',$page_data);
        } else if ($para1 == 'forget') {
			
        	$this->load->library('form_validation');
			$this->form_validation->set_rules('email', 'Email', 'required|valid_email');			
            if ($this->form_validation->run() == FALSE)
            {
                echo validation_errors();
            }
            else
            {
				$query = $this->db->get_where('admin', array(
					'email' => $this->input->post('email')
				));
				if ($query->num_rows() > 0) {
					$admin_id         = $query->row()->admin_id;
					$password         = substr(hash('sha512', rand()), 0, 12);
					$data['password'] = sha1($password);
					$this->db->where('admin_id', $admin_id);
					$this->db->update('admin', $data);
					if ($this->Email_model->password_reset_email('admin', $admin_id, $password)) {
						echo 'email_sent'; 
					} else {
						echo 'email_not_sent';
					}
				} else {
					echo 'email_nay';
				}
			}

        } else {
        	$this->load->library('form_validation');
			$this->form_validation->set_rules('email', 'Email', 'required|valid_email');
			$this->form_validation->set_rules('password', 'Password', 'required');
			
            if ($this->form_validation->run() == FALSE)
            {
                echo validation_errors();
            }
            else
            {
				$login_data = $this->db->get_where('admin', array(
					'email' => $this->input->post('email'),
					'password' => sha1($this->input->post('password'))
				));
				if ($login_data->num_rows() > 0) {
					foreach ($login_data->result_array() as $row) {
						$this->session->set_userdata('login', 'yes');
						$this->session->set_userdata('admin_login', 'yes');
						$this->session->set_userdata('admin_id', $row['admin_id']);
						$this->session->set_userdata('admin_name', $row['name']);
						$this->session->set_userdata('title', 'admin');
						echo 'lets_login';
					}
				} else {
					echo 'login_failed';
				}
			}
        }
    }

	function logout(){
		$this->session->sess_destroy();
		redirect(base_url().'index.php/admin','refresh');
	
	}
	
    /* Checking Login Stat */
    function is_logged()
    {
        if ($this->session->userdata('admin_login') == 'yes') {
            echo 'yah!good';
        } else {
            echo 'nope!bad';
        }
    }
    
    /* Manage Frontend User Interface */
    
    
    /* Manage Frontend User Messages */
    function contact_message($para1 = "", $para2 = "")
    {
        if (!$this->Crud_model->admin_permission('contact_message')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'delete') {
            $this->db->where('contact_message_id', $para2);
            $this->db->delete('contact_message');
        } elseif ($para1 == 'list') {
            $this->db->order_by('contact_message_id', 'desc');
            $page_data['contact_messages'] = $this->db->get('contact_message')->result_array();
            $this->load->view('back/admin/contact_message_list', $page_data);
        } elseif ($para1 == 'reply') {
            $data['reply'] = $this->input->post('reply');
            $this->db->where('contact_message_id', $para2);
            $this->db->update('contact_message', $data);
            $this->db->order_by('contact_message_id', 'desc');
            $query = $this->db->get_where('contact_message', array(
                'contact_message_id' => $para2
            ))->row();
            $this->Email_model->do_email($data['reply'], 'RE: ' . $query->subject, $query->email);
        } elseif ($para1 == 'view') {
            $page_data['message_data'] = $this->db->get_where('contact_message', array(
                'contact_message_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/contact_message_view', $page_data);
        } elseif ($para1 == 'reply_form') {
            $page_data['message_data'] = $this->db->get_where('contact_message', array(
                'contact_message_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/contact_message_reply', $page_data);
        } else {
            $page_data['page_name']        = "contact_message";
            $page_data['contact_messages'] = $this->db->get('contact_message')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }
    
    
    
    /* Manage Frontend Facebook Login Credentials */
    function product_comment($para1 = "")
    {
        if (!$this->Crud_model->admin_permission('site_settings')) {
            redirect(base_url() . 'index.php/admin');
        }
        $this->db->where('type', "discus_id");
        $this->db->update('general_settings', array(
            'value' => $this->input->post('discus_id')
        ));
        $this->db->where('type', "comment_type");
        $this->db->update('general_settings', array(
            'value' => $this->input->post('type')
        ));
        $this->db->where('type', "fb_comment_api");
        $this->db->update('general_settings', array(
            'value' => $this->input->post('fb_comment_api')
        ));
    }
    /* Manage Frontend User Interface */
    
    
    /* Manage Languages */
    function language_settings($para1 = "", $para2 = "", $para3 = "")
    {
        if (!$this->Crud_model->admin_permission('language')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'add_lang') {
            $this->load->view('back/admin/language_add');
        } elseif ($para1 == 'lang_list') {
            //if($para2 !== ''){
            $this->db->order_by('word_id', 'desc');
            $page_data['words'] = $this->db->get('language')->result_array();
            $page_data['lang']  = $para2;
            $this->load->view('back/admin/language_list', $page_data);
            //}
        } elseif ($para1 == 'add_word') {
            $page_data['lang'] = $para2;
            $this->load->view('back/admin/language_word_add', $page_data);
            recache();
        } elseif ($para1 == 'upd_trn') {
            $word_id     = $para2;
            $translation = $this->input->post('translation');
            $language    = $this->input->post('lang');
            $word        = $this->db->get_where('language', array(
                'word_id' => $word_id
            ))->row()->word;
            add_translation($word, $language, $translation);
            recache();
        } elseif ($para1 == 'do_add_word') {
            $language = $para2;
            $word     = $this->input->post('word');
            add_lang_word($word);
            recache();
        } elseif ($para1 == 'do_add_lang') {
            $language = $this->input->post('language');
            add_language($language);
            recache();
        } elseif ($para1 == 'check_existed') {
            echo lang_check_exists($para2);
        } elseif ($para1 == 'lang_select') {
            $this->load->view('back/admin/language_select');
        } elseif ($para1 == 'dlt_lang') {
            $this->load->dbforge();
            $this->dbforge->drop_column('language', $para2);
            recache();
        } elseif ($para1 == 'dlt_word') {
            $this->db->where('word_id', $para2);
            $this->db->delete('language');
            recache();
        } else {
            $page_data['page_name'] = "language";
            $this->load->view('back/index', $page_data);
        }
    }
    
    /* Manage Business Settings */
    
    
    /* Manage Admin Settings */
    function manage_admin($para1 = "")
    {
        if ($this->session->userdata('admin_login') != 'yes') {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'update_password') {
            $user_data['password'] = $this->input->post('password');
            $account_data          = $this->db->get_where('admin', array(
                'admin_id' => $this->session->userdata('admin_id')
            ))->result_array();
            foreach ($account_data as $row) {
                if (sha1($user_data['password']) == $row['password']) {
                    if ($this->input->post('password1') == $this->input->post('password2')) {
                        $data['password'] = sha1($this->input->post('password1'));
                        $this->db->where('admin_id', $this->session->userdata('admin_id'));
                        $this->db->update('admin', $data);
                        echo 'updated';
                    }
                } else {
                    echo 'pass_prb';
                }
            }
        } else if ($para1 == 'update_profile') {
            $this->db->where('admin_id', $this->session->userdata('admin_id'));
            $this->db->update('admin', array(
                'name' => $this->input->post('name'),
                'email' => $this->input->post('email'),
                'address' => $this->input->post('address'),
                'phone' => $this->input->post('phone')
            ));
        } else {
            $page_data['page_name'] = "manage_admin";
            $this->load->view('back/index', $page_data);
        }
    }
    
    /*Page Management */
    function page($para1 = '', $para2 = '', $para3 = '')
    {
        if (!$this->Crud_model->admin_permission('page')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'do_add') {
            $parts             = array();
            $data['page_name'] = $this->input->post('page_name');
            $data['parmalink'] = $this->input->post('parmalink');
            $size              = $this->input->post('part_size');
            $type              = $this->input->post('part_content_type');
            $content           = $this->input->post('part_content');
            $widget            = $this->input->post('part_widget');
            var_dump($widget);
            foreach ($size as $in => $row) {
                $parts[] = array(
                    'size' => $size[$in],
                    'type' => $type[$in],
                    'content' => $content[$in],
                    'widget' => $widget[$in]
                );
            }
            $data['parts']  = json_encode($parts);
            $data['status'] = 'ok';
            $this->db->insert('page', $data);
            recache();
        } else if ($para1 == 'edit') {
            $page_data['page_data'] = $this->db->get_where('page', array(
                'page_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/page_edit', $page_data);
        } elseif ($para1 == "update") {
            $parts             = array();
            $data['page_name'] = $this->input->post('page_name');
            $data['parmalink'] = $this->input->post('parmalink');
            $size              = $this->input->post('part_size');
            $type              = $this->input->post('part_content_type');
            $content           = $this->input->post('part_content');
            $widget            = $this->input->post('part_widget');
            var_dump($widget);
            foreach ($size as $in => $row) {
                $parts[] = array(
                    'size' => $size[$in],
                    'type' => $type[$in],
                    'content' => $content[$in],
                    'widget' => $widget[$in]
                );
            }
            $data['parts'] = json_encode($parts);
            $this->db->where('page_id', $para2);
            $this->db->update('page', $data);
            recache();
        } elseif ($para1 == 'delete') {
            $this->db->where('page_id', $para2);
            $this->db->delete('page');
            recache();
        } elseif ($para1 == 'list') {
            
            $page_data['all_page'] = $this->db->get('page')->result_array();
            $this->load->view('back/admin/page_list', $page_data);
        } else if ($para1 == 'page_publish_set') {
            $page = $para2;
            if ($para3 == 'true') {
                $data['status'] = 'ok';
            } else {
                $data['status'] = '0';
            }
            $this->db->where('page_id', $page);
            $this->db->update('page', $data);
            recache();
        } elseif ($para1 == 'view') {
            $page_data['page_data'] = $this->db->get_where('page', array(
                'page_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/page_view', $page_data);
        } elseif ($para1 == 'serial'){
			$page_data['all_widget'] = $this->db->get_where('widget', array(
                'status' => 'ok'
            ))->result_array();
			$page_data['widget'] = json_decode($this->db->get_where('page', array(
                'page_id' => $para2
            ))->row()->parts, true);
			$page_data['page_id'] =$para2; 
            $this->load->view('back/admin/page_widget_serial', $page_data);
        } else if ($para1 == 'do_serial') {
            $input  = json_decode($this->input->post('serial'),true);
			$status = $this->input->post('status');
			$result = array();
			
			foreach($input as $row){
				$result[] = array('id'=>$row['id'],'status'=>$status[$row['id']]);	
			}
			
			$result = json_encode($result);
			$this->db->where('page_id', $para2);
			$this->db->update('page', array(
				'parts' => $result
			));
            recache();
			
		} elseif ($para1 == 'add') {
            $this->load->view('back/admin/page_add');
        } else {
            $page_data['page_name'] = "page";
            $page_data['all_pages'] = $this->db->get('page')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }
    
	function admins($para1 = '', $para2 = '')
    {
        if (!$this->Crud_model->admin_permission('admin')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'do_add') {
            $data['name']      = $this->input->post('name');
            $data['email']     = $this->input->post('email');
            $data['phone']     = $this->input->post('phone');
            $data['address']   = $this->input->post('address');
            $password          = substr(hash('sha512', rand()), 0, 12);
            $data['password']  = sha1($password);
            $data['role']      = $this->input->post('role');
            $data['timestamp'] = time();
            $this->db->insert('admin', $data);
            $this->Email_model->account_opening('admin', $data['email'], $password);
        } else if ($para1 == 'edit') {
            $page_data['admin_data'] = $this->db->get_where('admin', array(
                'admin_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/admin_edit', $page_data);
        } elseif ($para1 == "update") {
            $data['name']    = $this->input->post('name');
            $data['email']   = $this->input->post('email');
            $data['phone']   = $this->input->post('phone');
            $data['address'] = $this->input->post('address');
            $data['role']    = $this->input->post('role');
            $this->db->where('admin_id', $para2);
            $this->db->update('admin', $data);
        } elseif ($para1 == 'delete') {
            $this->db->where('admin_id', $para2);
            $this->db->delete('admin');
        } elseif ($para1 == 'list') {
            $this->db->order_by('admin_id', 'desc');
            $page_data['all_admins'] = $this->db->get('admin')->result_array();
            $this->load->view('back/admin/admin_list', $page_data);
        } elseif ($para1 == 'view') {
            $page_data['admin_data'] = $this->db->get_where('admin', array(
                'admin_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/admin_view', $page_data);
        } elseif ($para1 == 'add') {
            $this->load->view('back/admin/admin_add');
        } else {
            $page_data['page_name']  = "admin";
            $page_data['all_admins'] = $this->db->get('admin')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }


	function role($para1 = '', $para2 = '')
    {
        if (!$this->Crud_model->admin_permission('role')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'do_add') {
            $data['name']        = $this->input->post('name');
            $data['permission']  = json_encode($this->input->post('permission'));
            $data['description'] = $this->input->post('description');
            $this->db->insert('role', $data);
        } elseif ($para1 == "update") {
            $data['name']        = $this->input->post('name');
            $data['permission']  = json_encode($this->input->post('permission'));
            $data['description'] = $this->input->post('description');
            $this->db->where('role_id', $para2);
            $this->db->update('role', $data);
        } elseif ($para1 == 'delete') {
            $this->db->where('role_id', $para2);
            $this->db->delete('role');
        } elseif ($para1 == 'list') {
            $this->db->order_by('role_id', 'desc');
            $page_data['all_roles'] = $this->db->get('role')->result_array();
            $this->load->view('back/admin/role_list', $page_data);
        } elseif ($para1 == 'view') {
            $page_data['role_data'] = $this->db->get_where('role', array(
                'role_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/role_view', $page_data);
        } elseif ($para1 == 'add') {
            $page_data['all_permissions'] = $this->db->get('permission')->result_array();
            $this->load->view('back/admin/role_add', $page_data);
        } else if ($para1 == 'edit') {
            $page_data['all_permissions'] = $this->db->get('permission')->result_array();
            $page_data['role_data']       = $this->db->get_where('role', array(
                'role_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/role_edit', $page_data);
        } else {
            $page_data['page_name'] = "role";
            $page_data['all_roles'] = $this->db->get('role')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }


	/* Sending Newsletters */
    function newsletter($para1 = "")
    {
        if (!$this->Crud_model->admin_permission('newsletter')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == "send") {
            $users       = explode(',', $this->input->post('users'));
            $subscribers = explode(',', $this->input->post('subscribers'));
            $text        = $this->input->post('text');
            $title       = $this->input->post('title');
            $from        = $this->input->post('from');
            foreach ($users as $key => $user) {
                if ($user !== '') {
                    $this->Email_model->newsletter($title, $text, $user, $from);
                }
            }
            foreach ($subscribers as $key => $subscriber) {
                if ($subscriber !== '') {
                    $this->Email_model->newsletter($title, $text, $subscriber, $from);
                }
            }
        } else {
            $page_data['users']       = $this->db->get('user')->result_array();
            $page_data['subscribers'] = $this->db->get('subscribe')->result_array();
            $page_data['page_name']   = "newsletter";
            $this->load->view('back/index', $page_data);
        }
    }


	function widget($para1 = '', $para2 = '', $para3 = '')
    {
        if (!$this->Crud_model->admin_permission('widget')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'do_add') {
            $type               = 'widget';
            $data['title']      = translate($this->input->post('title'));
            $data['code']    	= $this->input->post('code');
            $this->db->insert('widget', $data);
            recache();
        } elseif ($para1 == "update") {
            $data['title']   = translate($this->input->post('title'));
            $data['code']    = $this->input->post('code');
            $this->db->where('widget_id', $para2);
            $this->db->update('widget', $data);
            $this->Crud_model->file_up("img", "widget", $para2, '', '', '.png');
            recache();
        } elseif ($para1 == "status") {
			if($para3 == 'true'){
            	$data['status']    = 'ok';
			} else {
				$data['status']    = 'no';
			}
            $this->db->where('widget_id', $para2);
            $this->db->update('widget', $data);
            recache();
        } elseif ($para1 == 'delete') {
            
            $this->db->where('widget_id', $para2);
            $this->db->delete('widget');
            recache();
        } else if ($para1 == 'edit') {
            $page_data['widget_data'] = $this->db->get_where('widget', array(
                'widget_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/widget_edit', $page_data);
        } elseif ($para1 == 'list') {
            
            $page_data['all_widgets'] = $this->db->get('widget')->result_array();
            $this->load->view('back/admin/widget_list', $page_data);
        } elseif ($para1 == 'serial'){
			$page_data['all_widget'] = $this->db->get_where('widget', array(
                'status' => 'ok'
            ))->result_array();
            $this->load->view('back/admin/widget_all_page_serial', $page_data);
        } else if ($para1 == 'do_serial') {
            $input  = json_decode($this->input->post('serial'),true);
			$status = $this->input->post('status');
			$result = array();
			
			foreach($input as $row){
				$result[] = array('id'=>$row['id'],'status'=>$status[$row['id']]);	
			}
			
			$result = json_encode($result);
			$this->db->where('page_id', $para2);
			$this->db->update('page', array(
				'parts' => $result
			));
            recache();
			
		} elseif ($para1 == 'add') {
            $this->load->view('back/admin/widget_add');
        } else {
            $page_data['page_name']  = "widget";
            $page_data['all_widgets'] = $this->db->get('widget')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }


	function menu($para1 = '', $para2 = '',$para3='')
    {
        if (!$this->Crud_model->admin_permission('menu')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'do_add') {
            $data['title'] = translate($this->input->post('title'));
			$data['page_name'] = $this->input->post('page_name');
			$data['link'] = $this->input->post('link');
			$data['status'] = 'ok';
            $this->db->insert('menu', $data);
            recache();
        } else if ($para1 == 'edit') {
            $page_data['menu_data'] = $this->db->get_where('menu', array(
                'menu_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/menu_edit', $page_data);
        } elseif ($para1 == "update") {
            $data['title'] = $this->input->post('title');
			$data['page_name'] = $this->input->post('page_name');
			$data['link'] = $this->input->post('link');
            $this->db->where('menu_id', $para2);
            $this->db->update('menu', $data);
            recache();
        } elseif ($para1 == 'delete') {
            $this->db->where('menu_id', $para2);
            $this->db->delete('menu');
            recache();
        } elseif ($para1 == 'list') {
            
            $page_data['all_menus'] = $this->db->get('menu')->result_array();
            $this->load->view('back/admin/menu_list', $page_data);
        } else if ($para1 == 'serial') {
            $page_data['menu'] = json_decode($this->db->get_where('ui_settings', array(
                'type' => 'menu_serial'
            ))->row()->value, true);
            $this->load->view('back/admin/menu_serial', $page_data);
        } else if ($para1 == 'do_serial') {
            $input  = $this->input->post('serial');
			$this->db->where('type', "menu_serial");
			$this->db->update('ui_settings', array(
				'value' => $input
			));
            recache();
		}else if ($para1 == 'menu_publish_set') {
            $menu = $para2;
            if ($para3 == 'true') {
                $data['status'] = 'ok';
            } else {
                $data['status'] = '0';
            }
            $this->db->where('menu_id', $menu);
            $this->db->update('menu', $data);
            recache();
		} elseif ($para1 == 'add') {
            $this->load->view('back/admin/menu_add');
        } else {
            $page_data['page_name']      = "menu";
            $page_data['all_menus'] = $this->db->get('menu')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }


	function page_settings($para1 = "")
    {
        if (!$this->Crud_model->admin_permission('site_settings')) {
            redirect(base_url() . 'index.php/admin');
        }
        $page_data['page_name'] = "page_settings";
        $page_data['tab_name']  = $para1;
        $this->load->view('back/index', $page_data);
    }


	/* Manage Logos */
    function logo_settings($para1 = "", $para2 = "", $para3 = "")
    {
        if (!$this->Crud_model->admin_permission('site_settings')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == "select_logo") {
            $page_data['page_name'] = "select_logo";
        } elseif ($para1 == "delete_logo") {
            if (file_exists("uploads/logo_image/logo_" . $para2 . ".png")) {
                unlink("uploads/logo_image/logo_" . $para2 . ".png");
            }
            $this->db->where('logo_id', $para2);
            $this->db->delete('logo');
            recache();
        } elseif ($para1 == "set_logo") {
            $type    = $this->input->post('type');
            $logo_id = $this->input->post('logo_id');
            $this->db->where('type', $type);
            $this->db->update('ui_settings', array(
                'value' => $logo_id
            ));
            recache();
        } elseif ($para1 == "show_all") {
            $page_data['logo'] = $this->db->get('logo')->result_array();
            if ($para2 == "") {
                $this->load->view('back/admin/all_logo', $page_data);
            }
            if ($para2 == "selectable") {
                $page_data['logo_type'] = $para3;
                $this->load->view('back/admin/select_logo', $page_data);
            }
        } elseif ($para1 == "upload_logo") {
            foreach ($_FILES["file"]['name'] as $i => $row) {
                $data['name'] = '';
                $this->db->insert("logo", $data);
                $id = $this->db->insert_id();
                move_uploaded_file($_FILES["file"]['tmp_name'][$i], 'uploads/logo_image/logo_' . $id . '.png');
            }
            return;
        } else {
            $this->load->view('back/index', $page_data);
        }
    }
    

    /* Checking if email exists*/
    function exists()
    {
        $email  = $this->input->post('email');
        $admin  = $this->db->get('admin')->result_array();
        $exists = 'no';
        foreach ($admin as $row) {
            if ($row['email'] == $email) {
                $exists = 'yes';
            }
        }
        echo $exists;
    }

    /* Manage Favicons */
    function favicon_settings($para1 = "")
    {
        if (!$this->Crud_model->admin_permission('site_settings')) {
            redirect(base_url() . 'index.php/admin');
        }
        $name = $_FILES["fav"]["name"];
        $ext  = end((explode(".", $name)));
        move_uploaded_file($_FILES["fav"]['tmp_name'], 'uploads/others/favicon.' . $ext);
        $this->db->where('type', "fav_ext");
        $this->db->update('ui_settings', array(
            'value' => $ext
        ));
        recache();
    }
    
    /* Manage Frontend Facebook Login Credentials */
    function social_login_settings($para1 = "")
    {
        if (!$this->Crud_model->admin_permission('site_settings')) {
            redirect(base_url() . 'index.php/admin');
        }
        $this->db->where('type', "fb_appid");
        $this->db->update('general_settings', array(
            'value' => $this->input->post('appid')
        ));
        $this->db->where('type', "fb_secret");
        $this->db->update('general_settings', array(
            'value' => $this->input->post('secret')
        ));
        $this->db->where('type', "application_name");
        $this->db->update('general_settings', array(
            'value' => $this->input->post('application_name')
        ));
        $this->db->where('type', "client_id");
        $this->db->update('general_settings', array(
            'value' => $this->input->post('client_id')
        ));
        $this->db->where('type', "client_secret");
        $this->db->update('general_settings', array(
            'value' => $this->input->post('client_secret')
        ));
        $this->db->where('type', "redirect_uri");
        $this->db->update('general_settings', array(
            'value' => $this->input->post('redirect_uri')
        ));
        $this->db->where('type', "api_key");
        $this->db->update('general_settings', array(
            'value' => $this->input->post('api_key')
        ));
    }
	function ui_settings($para1 = '', $para2 = '')
    {
        if (!$this->Crud_model->admin_permission('site_settings')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == "ui_home") {
            if ($para2 == 'update') {
                $this->db->where('type', "latest_item_div");
                $this->db->update('ui_settings', array(
                    'value' => $this->input->post('latest_item_div')
                ));
                $this->db->where('type', "most_popular_div");
                $this->db->update('ui_settings', array(
                    'value' => $this->input->post('most_popular_div')
                ));
                $this->db->where('type', "most_view_div");
                $this->db->update('ui_settings', array(
                    'value' => $this->input->post('most_view_div')
                ));
				$this->db->where('type', "parallax_title");
                $this->db->update('ui_settings', array(
                    'value' => $this->input->post('p_title')
                ));
				$this->db->where('type', "blog_count");
                $this->db->update('ui_settings', array(
                    'value' => $this->input->post('blog_count')
                ));
				$this->db->where('type',"side_bar_pos");
                $this->db->update('ui_settings', array(
                    'value' => $this->input->post('sidebar_home_pos')
                ));
                $this->db->where('type',"home_featured_count");
                $this->db->update('ui_settings', array(
                    'value' => $this->input->post('home_featured_count')
                ));
                $this->db->where('type',"map_api");
                $this->db->update('general_settings', array(
                    'value' => $this->input->post('map_api')
                ));
				move_uploaded_file($_FILES["par"]['tmp_name'], 'uploads/others/parralax.jpg');
                recache();
                redirect(base_url() . 'index.php/admin/page_settings/home/', 'refresh');
            }
        }
        $this->load->view('back/index', $page_data);
    }
    
	
	
	
    /* Manage Frontend Captcha Settings Credentials */
    function captcha_settings($para1 = "")
    {
        if (!$this->Crud_model->admin_permission('site_settings')) {
            redirect(base_url() . 'index.php/admin');
        }
        $this->db->where('type', "captcha_public");
        $this->db->update('general_settings', array(
            'value' => $this->input->post('cpub')
        ));
        $this->db->where('type', "captcha_private");
        $this->db->update('general_settings', array(
            'value' => $this->input->post('cprv')
        ));
    }
    
    /* Manage Site Settings */
    function site_settings($para1 = "")
    {
        if (!$this->Crud_model->admin_permission('site_settings')) {
            redirect(base_url() . 'index.php/admin');
        }
        $page_data['page_name'] = "site_settings";
        $page_data['tab_name']  = $para1;
        $this->load->view('back/index', $page_data);
    }
    
    /* Manage Preloader View */
    function preloader_view($para1 = "")
    {
        if (!$this->Crud_model->admin_permission('site_settings')) {
            redirect(base_url() . 'index.php/admin');
        }
        $page_data['from_admin'] = true;
        $page_data['preloader']  = $para1;
        $this->load->view('front/preloader', $page_data);
    }
	
	function business_settings($para1 = "", $para2 = "")
    {
        if (!$this->Crud_model->admin_permission('business_settings')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == "cash_set") {
            $val = '';
            if ($para2 == 'true') {
                $val = 'ok';
            } else if ($para2 == 'false') {
                $val = 'no';
            }
            echo $val;
            $this->db->where('type', "cash_set");
            $this->db->update('business_settings', array(
                'value' => $val
            ));
            recache();
        }
        if ($para1 == "paypal_set") {
            $val = '';
            if ($para2 == 'true') {
                $val = 'ok';
            } else if ($para2 == 'false') {
                $val = 'no';
            }
            echo $val;
            $this->db->where('type', "paypal_set");
            $this->db->update('business_settings', array(
                'value' => $val
            ));
            recache();
        }
        if ($para1 == "stripe_set") {
            $val = '';
            if ($para2 == 'true') {
                $val = 'ok';
            } else if ($para2 == 'false') {
                $val = 'no';
            }
            echo $val;
            $this->db->where('type', "stripe_set");
            $this->db->update('business_settings', array(
                'value' => $val
            ));
            recache();
        }
        if ($para1 == 'set') {
            $this->db->where('type', "paypal_email");
            $this->db->update('business_settings', array(
                'value' => $this->input->post('paypal_email')
            ));
            $this->db->where('type', "paypal_type");
            $this->db->update('business_settings', array(
                'value' => $this->input->post('paypal_type')
            ));
            $this->db->where('type', "stripe_secret");
            $this->db->update('business_settings', array(
                'value' => $this->input->post('stripe_secret')
            ));
            $this->db->where('type', "stripe_publishable");
            $this->db->update('business_settings', array(
                'value' => $this->input->post('stripe_publishable')
            ));
            $this->db->where('type', "currency");
            $this->db->update('business_settings', array(
                'value' => $this->input->post('currency')
            ));
            $this->db->where('type', "currency_name");
            $this->db->update('business_settings', array(
                'value' => $this->input->post('currency_name')
            ));
            $this->db->where('type', "exchange");
            $this->db->update('business_settings', array(
                'value' => $this->input->post('exchange')
            ));
            $this->db->where('type', "post_without_login");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('post_without_login')
            ));
            $this->db->where('type', "initial_upload");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('initial_upload')
            ));
            $this->db->where('type', "currency_format");
            $this->db->update('business_settings', array(
                'value' => $this->input->post('currency_format')
            ));
            $faqs = array();
            $f_q  = $this->input->post('f_q');
            $f_a  = $this->input->post('f_a');
            foreach ($f_q as $i => $r) {
                $faqs[] = array(
                    'question' => $f_q[$i],
                    'answer' => $f_a[$i]
                );
            }
            $this->db->where('type', "faqs");
            $this->db->update('business_settings', array(
                'value' => json_encode($faqs)
            ));
            recache();
        } else {
            $page_data['page_name'] = "business_settings";
            $this->load->view('back/index', $page_data);
        }
    }
    /* Manage General Settings */
    function general_settings($para1 = "", $para2 = "")
    {
        if (!$this->Crud_model->admin_permission('site_settings')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == "terms") {
            $this->db->where('type', "terms_conditions");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('terms')
            ));
        }
        if ($para1 == "preloader") {
            $this->db->where('type', "preloader_bg");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('preloader_bg')
            ));
            $this->db->where('type', "preloader_obj");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('preloader_obj')
            ));
            $this->db->where('type', "preloader");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('preloader')
            ));
        }
        if ($para1 == "privacy_policy") {
            $this->db->where('type', "privacy_policy");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('privacy_policy')
            ));
        }
        if ($para1 == "set_slider") {
            $val = '';
            if ($para2 == 'true') {
                $val = 'ok';
            } else if ($para2 == 'false') {
                $val = 'no';
            }
            $this->db->where('type', "slider");
            $this->db->update('general_settings', array(
                'value' => $val
            ));
        }
        if ($para1 == "set_map") {
            $val = '';
            if ($para2 == 'true') {
                $val = 'ok';
            } else if ($para2 == 'false') {
                $val = 'no';
            }
            $this->db->where('type', "map");
            $this->db->update('general_settings', array(
                'value' => $val
            ));
        }
        if ($para1 == "set_admin_notification_sound") {
            $val = '';
            if ($para2 == 'true') {
                $val = 'ok';
            } else if ($para2 == 'false') {
                $val = 'no';
            }            $this->db->where('type', "admin_notification_sound");
            $this->db->update('general_settings', array(
                'value' => $val
            ));
        }
        if ($para1 == "set_home_notification_sound") {
            $val = '';
            if ($para2 == 'true') {
                $val = 'ok';
            } else if ($para2 == 'false') {
                $val = 'no';
            }
            $this->db->where('type', "home_notification_sound");
            $this->db->update('general_settings', array(
                'value' => $val
            ));
        }
        if ($para1 == "fb_login_set") {
            $val = '';
            if ($para2 == 'true') {
                $val = 'ok';
            } else if ($para2 == 'false') {
                $val = 'no';
            }
            echo $val;
            $this->db->where('type', "fb_login_set");
            $this->db->update('general_settings', array(
                'value' => $val
            ));
        }
        if ($para1 == "g_login_set") {
            $val = '';
            if ($para2 == 'true') {
                $val = 'ok';
            } else if ($para2 == 'false') {
                $val = 'no';
            }
            echo $val;
            $this->db->where('type', "g_login_set");
            $this->db->update('general_settings', array(
                'value' => $val
            ));
        }
        if ($para1 == "set") {
            $this->db->where('type', "system_name");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('system_name')
            ));
            $this->db->where('type', "system_email");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('system_email')
            ));        

            $this->db->where('type', "system_title");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('system_title')
            ));
            $this->db->where('type', "cache_time");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('cache_time')
            ));
            $this->db->where('type', "language");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('language')
            ));
            $this->db->where('type', "list_product_count");
            $this->db->update('ui_settings', array(
                'value' => $this->input->post('list_product_count')
            ));
			
        }
        if ($para1 == "contact") {
            $this->db->where('type', "contact_address");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('contact_address')
            ));
            $this->db->where('type', "contact_email");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('contact_email')
            ));
            $this->db->where('type', "contact_phone");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('contact_phone')
            ));
            $this->db->where('type', "contact_website");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('contact_website')
            ));
            $this->db->where('type', "contact_about");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('contact_about')
            ));
            $this->db->where('type', "contact_lat_lang");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('lat_lang')
            ));
        }
        if ($para1 == "footer") {
            $this->db->where('type', "footer_text");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('footer_text', 'chaira_de')
            ));
        }
        if ($para1 == "font") {
            $this->db->where('type', "font");
            $this->db->update('ui_settings', array(
                'value' => $this->input->post('font')
            ));
        }
		if ($para1 == "color") {
            $this->db->where('type', "header_color");
            $this->db->update('ui_settings', array(
                'value' => $this->input->post('header_color')
            ));
			$this->db->where('type', "footer_color");
            $this->db->update('ui_settings', array(
                'value' => $this->input->post('header_color')
            ));
        }
        recache();
    }
    
    /* Manage Social Links */
    function social_links($para1 = "")
    {
        if (!$this->Crud_model->admin_permission('site_settings')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == "set") {
            $this->db->where('type', "facebook");
            $this->db->update('social_links', array(
                'value' => $this->input->post('facebook')
            ));
            $this->db->where('type', "google-plus");
            $this->db->update('social_links', array(
                'value' => $this->input->post('google-plus')
            ));
            $this->db->where('type', "twitter");
            $this->db->update('social_links', array(
                'value' => $this->input->post('twitter')
            ));
            $this->db->where('type', "skype");
            $this->db->update('social_links', array(
                'value' => $this->input->post('skype')
            ));
            $this->db->where('type', "pinterest");
            $this->db->update('social_links', array(
                'value' => $this->input->post('pinterest')
            ));
            $this->db->where('type', "youtube");
            $this->db->update('social_links', array(
                'value' => $this->input->post('youtube')
            ));
            redirect(base_url() . 'index.php/admin/site_settings/social_links/', 'refresh');
        }
        recache();
    }
    /* Manage SEO relateds */
    function seo_settings($para1 = "")
    {
        if (!$this->Crud_model->admin_permission('seo')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == "set") {
            $this->db->where('type', "meta_description");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('description')
            ));
            $this->db->where('type', "meta_keywords");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('keywords')
            ));
            $this->db->where('type', "meta_author");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('author')
            ));

            $this->db->where('type', "revisit_after");
            $this->db->update('general_settings', array(
                'value' => $this->input->post('revisit_after')
            ));
            recache();
        }
        else {
            require_once (APPPATH . 'libraries/SEOstats/bootstrap.php');
            $page_data['page_name'] = "seo";
            $this->load->view('back/index', $page_data);
        }
    }
	function report($para1 = "")
    {
        if (!$this->Crud_model->admin_permission('report')) {
            redirect(base_url() . 'index.php/admin');
        }
        $page_data['page_name'] = "report";
        $page_data['tab_name']  = $para1;
        $this->load->view('back/index', $page_data);
    }
	/*Product Wish Comparison Reports*/
    function report_wish($para1 = '', $para2 = '')
    {
        if (!$this->Crud_model->admin_permission('report')) {
            redirect(base_url() . 'index.php/admin');
        }
        $page_data['page_name'] = "report_wish";
        $this->load->view('back/index', $page_data);
    }
	function report_most_viewed($para1 = "")
    {
        if (!$this->Crud_model->admin_permission('report')) {
            redirect(base_url() . 'index.php/admin');
        }
        $page_data['page_name'] = "report_most_viewed";
        $page_data['tab_name']  = $para1;
        $this->load->view('back/index', $page_data);
	}
	function ticket($para1 = "", $para2 = "", $para3 = "")
    {
        if (!$this->Crud_model->admin_permission('ticket')) {
            redirect(base_url() . 'index.php/admin');
        }
        if ($para1 == 'delete') {
            $this->db->where('ticket_id', $para2);
            $this->db->delete('ticket');
        } elseif ($para1 == 'list') {
            $this->db->order_by('ticket_id', 'desc');
            $page_data['tickets'] = $this->db->get('ticket')->result_array();
            $this->load->view('back/admin/ticket_list', $page_data);
        } elseif ($para1 == 'reply') {
            $data['message'] = $this->input->post('reply');
			$data['time'] = time();
			$data['from_where'] = json_encode(array('type'=>'admin','id'=>''));
			$data['to_where'] = $this->db->get_where('ticket_message',array('ticket_id'=>$para2))->row()->from_where;
			$data['ticket_id']= $para2;
			$data['view_status']= json_encode(array('user_show'=>'no','admin_show'=>'ok'));
			$data['subject']  = $this->db->get_where('ticket_message',array('ticket_id'=>$para2))->row()->subject;
            $this->db->insert('ticket_message',$data);
        } elseif ($para1 == 'view') {
            $page_data['message_data'] = $this->db->get_where('ticket', array(
                'ticket_id' => $para2
            ))->result_array();
			$this->Crud_model->ticket_message_viewed($para2,'admin');
			$page_data['tic']=$para2;
            $this->load->view('back/admin/ticket_view', $page_data);
        } else if ($para1 == 'view_user') {
            $page_data['user_data'] = $this->db->get_where('user', array(
                'user_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/user_view', $page_data);
        } elseif ($para1 == 'reply_form') {
            $page_data['message_data'] = $this->db->get_where('ticket', array(
                'ticket_id' => $para2
            ))->result_array();
            $this->load->view('back/admin/ticket_reply', $page_data);
        } else {
            $page_data['page_name']        = "ticket";
            $page_data['tickets'] = $this->db->get('ticket')->result_array();
            $this->load->view('back/index', $page_data);
        }
    }
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */