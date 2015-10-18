<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {
     
	 public function __construct()
     {
		parent::__construct();
		$this->load->library('session');
        $this->load->helper('url');
        $this->load->database();
		$this->load->model('UsersModel');

	 }
	 public function registration()
	 {
		  $ret=array();
		  
		  $username	=	$this->input->post('username');
		  $email	=	$this->input->post('email');
		  $password	=	$this->input->post('password');
		  
		  if(empty($username) || empty($email) || empty($password))
		  {
			   $ret['error']=true;
			   $ret['msg']='Email, Password or Username is missing.';
			   $this->output
					->set_content_type('application/json')
					->set_output(json_encode($ret));
			   return;
		  }

		  if($this->UsersModel->exists_byuserdata('username',$username)===true)
		  {
			   $ret['error']=true;
			   $ret['msg']='Username already registered';
			   $this->output
					->set_content_type('application/json')
					->set_output(json_encode($ret));
			   return;
		  }
		  if($this->UsersModel->exists_byuserdata('email',$email)===true)
		  {
			   $ret['error']=true;
			   $ret['msg']='Email already registered';
			   $this->output
					->set_content_type('application/json')
					->set_output(json_encode($ret));
			   return;
		  }
		  
		  $error=$this->UsersModel->new_verification(array(
											 'username' => $username,
											 'email' 	=> $email,
											 'password' => sha1($password),
											 'type' 	=> 1,
											 'status'	=> 3));

		  if($error!==true)
		  {
			   $ret['error']=true;
			   $ret['msg']='There was an error registering: '.implode('=',$error);
			   $this->output
					->set_content_type('application/json')
					->set_output(json_encode($ret));
			   return;
		  }
		  $ret['error']=false;
		  $this->output
			   ->set_content_type('application/json')
			   ->set_output(json_encode($ret));		  
	 }
	 public function verification($hash)
	 {
		  $this->load->library('parser');
		  
		  if($this->UsersModel->activate_verification($hash)==false)
		  {
			   $data = array(
					'message' => 'There was an error activating your account',
			   );
		  }
		  else
		  {
			   $data = array(
					'message' => 'Your account was activated successfully',
			   );
		  }
		  $data_index = array(
			  'loggin_nav_var' 	=> $this->parser->parse('index_notloggedin',array(),true),
			  'login_modal'	 	=> $this->parser->parse('index_login_modal',array(),true),
			  'content'			=> $this->parser->parse('users_verification',$data,true)
		  );
		  $this->parser->parse('index',$data_index);
		  
	 }
	 public function login()
	 {
		  $ret = array();
		  
		  $username	=	$this->input->post('username');
		  $email	=	$this->input->post('email');
		  $password	=	$this->input->post('password');
		  
		  if(empty($username) || empty($password))
		  {
			   $ret['error']=true;
			   $ret['msg']='Password or Username is missing.';
			   $this->output
					->set_content_type('application/json')
					->set_output(json_encode($ret));
			   return;
		  }
		  
		  if($this->UsersModel->login($username,$password)==false)
		  {
			   $ret['error']=true;
			   $ret['msg']='Password or Username is wrong.';
			   $this->output
					->set_content_type('application/json')
					->set_output(json_encode($ret));
			   return;
			   
		  }
		  $ret['error']=false;
		  $this->output
			   ->set_content_type('application/json')
			   ->set_output(json_encode($ret));			  
		  return true;
	 }
	 public function logout()
	 {
		   $this->load->library('session');
		   $this->load->helper('url');
		   
		   $this->session->sess_destroy();
		   
		    redirect('/', 'refresh');
	 }
}