<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Profile extends CI_Controller {

	public function Profile(){
		parent::__construct();
		$this->load->helper(array('url','form'));
		$this->load->model('User_model');
		$this->load->library('session');
	}

	public function Index(){
    if ($this->session->userdata('rolechemical')) {
      $this->User_model->GetUser($this->session->userdata('usernamechemical'), $this->session->userdata('passwordchemical'));
      $data['User'] = '';
      $data['main'] = "";
      $data['sub'] = "";
      $data['subsub'] = "";
			$this->load->view('Profile', $data);
		}
		else {
			redirect(base_url());
		}
	}

	public function UpdateProfile()
	{
		if ($this->session->userdata('rolechemical')) {
			if ($this->input->post('new') == '') {
				$data = array(
					'name' => $this->input->post('name'),
				);
				$this->User_model->updateProfile($data);
				$data_session = array(
					'username'=> $this->session->userdata('usernamechemical'),
					'password'=> $this->session->userdata('passwordchemical'),
					'role'=> $this->session->userdata('rolechemical'),
					'name'=> $this->input->post('name'),
				);
			}
			else {
				$data = array(
					'name' => $this->input->post('name'),
					'password' => $this->input->post('new'),
				);
				$this->User_model->updateProfile($data);
				$data_session = array(
					'username'=> $this->session->userdata('usernamechemical'),
					'password'=> $this->input->post('new'),
					'role'=> $this->session->userdata('rolechemical'),
					'name'=> $this->input->post('name'),
				);
			}

			$this->session->set_userdata($data_session);


			redirect('Profile');

		}
		else {
			redirect(base_url());
		}
	}

}
?>
