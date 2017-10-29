
<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Table extends CI_Controller {

	public function Table(){
		parent::__construct();
		$this->load->helper(array('url','form'));
		$this->load->model('Registered_model');
		$this->load->library('session');
	}

	public function Index(){
    if ($this->session->userdata('role')) {
      $data['Registered'] = $this->Registered_model->getRegistered();
	    $this->load->view('Registered/Table', $data);
    }else {
      redirect(base_url());
    }
	}

	public function DeleteRegistered($no)
	{
		if ($this->session->userdata('role')) {
			$Registered = $this->Registered_model->GetRegisteredByNo($no);

			$this->load->helper('file');
			foreach ($Registered as $registered) {
				unlink($registered->file);
			}

			$this->Registered_model->deleteRegistered($no);
			redirect('Registered/Table');
		}
		else {
			redirect(base_url());
		}
	}

	public function Update($no)
	{
		if ($this->session->userdata('role')) {
			$this->session->set_userdata('update', $no);
			redirect('Registered/Update');
		}
		else {
			redirect(base_url());
		}
	}

  public function Detail($no)
	{
		if ($this->session->userdata('role')) {
			$this->session->set_userdata('detail', $no);
			redirect('Registered/Detail');
		}
		else {
			redirect(base_url());
		}
	}

}
?>
