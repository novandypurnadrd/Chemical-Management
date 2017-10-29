<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function Dashboard(){
		parent::__construct();
		$this->load->helper(array('url','form'));
		$this->load->model('User_model');
		$this->load->library('session');
	}

	public function Index(){
    if ($this->session->userdata('role')) {
		    $this->load->view('Dashboard');
    }else {
      redirect(base_url());
    }
	}

	public function Logout()
	{
		$this->session->sess_destroy();
		$this->index();
	}
}
?>
