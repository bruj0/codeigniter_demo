<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Articles extends CI_Controller {
     
	 public function __construct()
     {
		parent::__construct();
		$this->load->library('session');
        $this->load->helper('url');
        $this->load->database();
		$this->load->model('ArticlesModel');

	 }
	/**
	 */
	public function index()
	{
		$this->load->library('parser');
		$this->load->library('session');
		
		if($this->session->iduser)
			$navbar= $this->parser->parse('index_loggedin',array('username' => $this->session->username),true);
		else
			$navbar=$this->parser->parse('index_notloggedin',array(),true);
		
		$data = array(
			'articles_entries'  => $this->get_articles(),
			'featured_article' 	=> $this->parser->parse('index_featured',$this->get_featured_article(1),true),
			
		);
		$data_index = array(
			'loggin_nav_var' 	=> $navbar,
			'login_modal'	 	=> $this->parser->parse('index_login_modal',array(),true),
			'content'			=> $this->parser->parse('index_article_listing',$data,true)
		);
		$this->parser->parse('index',$data_index);
	}
	public function myview()
	{
		$this->load->library('parser');
		$this->load->library('session');
		
		if($this->session->iduser)
			$navbar= $this->parser->parse('index_loggedin',array('username' => $this->session->username),true);
		else
		{
		   $this->load->helper('url');
		   $this->session->sess_destroy();
		   redirect('/', 'refresh');			
		}
		
		$data = array(
			'articles_entries'  => $this->get_articles($this->session->iduser),
			'featured_article' 	=> $this->parser->parse('index_featured',$this->get_featured_article(1),true),
			
		);
		$data_index = array(
			'loggin_nav_var' 	=> $navbar,
			'login_modal'	 	=> $this->parser->parse('index_login_modal',array(),true),
			'content'			=> $this->parser->parse('index_article_listing_byuser',$data,true)
		);
		$this->parser->parse('index',$data_index);		
	}
	public function mydelete($id)
	{
		$this->load->helper('url');
		$this->ArticlesModel->delete($id);
	    redirect('/articles/myview', 'refresh');
	}
	public function submit($file=array(),$uploading=false)
	{
		$this->load->library('parser');
		$this->load->library('session');
		
		if($this->session->iduser)
			$navbar= $this->parser->parse('index_loggedin',array('username' => $this->session->username),true);
		else
		{
		   $this->load->helper('url');
		   $this->session->sess_destroy();
		   redirect('/', 'refresh');			
		}
		
		if($this->input->method()=='post')
		{
			if($uploading==true)
			{
				$data = array(
					'article_title' 	=> $this->input->post('article_title'),
					'article_summary' 	=> $this->input->post('article_summary'),
					'article_content'	=> $this->input->post('article_content'),
				);				
				if(!isset($file['error']))
				{
					$data['error']		= '';
					$data['photo'] 		= '/assets/img/'.$file['file_name'];
					$data['photo_img']  = "<img src='{$data['photo']}' {$file['image_size_str']}>";
				}
				else
				{
					$data['error']=$file['error'];
					$data['photo']='';
					$data['photo_img']='';
				}
			}
			else
			{
				$article = array(
					'title' 	=> $this->input->post('title'),
					'summary' 	=> $this->input->post('summary'),
					'text' 		=> $this->input->post('text'),
					'photo' 	=> $this->input->post('photo')
				);
				$this->ArticlesModel->newArticle($article);
				$this->load->helper('url');
				redirect('/articles/myview', 'refresh');				
			}
		}
		else
		{
			$data=array();
			$data['error']='';
			$data['photo']='';
			$data['photo_img']='';
			$data['article_title']='';
			$data['article_summary']='';
			$data['article_content']='';
			
		}
		
		$data_index = array(
			'loggin_nav_var' 	=> $navbar,
			'login_modal'	 	=> $this->parser->parse('index_login_modal',array(),true),
			'content'			=> $this->parser->parse('articles_new',$data,true)
		);
		$this->parser->parse('index',$data_index);	
	}
	public function upload()
	{
		$this->load->library('session');
		if(!($this->session->iduser))
		{
			echo "iduser empty";
			return;
		}
		
		$config['upload_path'] = FCPATH.'/assets/img/';
		$config['allowed_types'] = 'gif|jpg|png';
		$config['max_size']     = '900';
		$config['max_width'] = '1024';
		$config['max_height'] = '768';
		
		$this->load->library('upload', $config);

		if ( ! $this->upload->do_upload('file'))
				$data = array('error' => $this->upload->display_errors());
		else
				$data = $this->upload->data();

		$this->submit($data,true);
	}
	
	public function get_articles($iduser=false)
	{
		$ret=$this->ArticlesModel->get_last_ten_entries($iduser);
		foreach($ret as &$v)
		{
			$v['posted_ts']=date('r',$v['posted_ts']);
		}
		return $ret;
	
	}
	public function get_featured_article($id)
	{
		return $this->ArticlesModel->get_article($id);
	}
	
		
}
