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
	public function view()
	{
		
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
