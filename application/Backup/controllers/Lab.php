<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Lab extends CI_Controller {

	public function Lab(){
		parent::__construct();
		$this->load->helper(array('url','form'));
		$this->load->model('User_model');
		$this->load->library('session');
	}

	public function Index(){
		if ($this->session->userdata('role')) {
			redirect('Registered/Table');
		}
		else {
			$data['message'] = '';
			$this->load->view('Index', $data);
		}
	}

	public function Logout()
	{
		$this->session->sess_destroy();
		redirect(base_url());
	}
}
?>
