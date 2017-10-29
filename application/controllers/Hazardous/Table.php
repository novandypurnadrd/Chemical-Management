
<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Table extends CI_Controller {

	public function Table(){
		parent::__construct();
		$this->load->helper(array('url','form'));
		$this->load->model('Hazardous_model');
		$this->load->library('session');
	}

	public function Index(){
    if ($this->session->userdata('rolechemical')) {
      $data['Hazardous'] = $this->Hazardous_model->getHazardous();
	    $this->load->view('Hazardous/Table', $data);
    }else {
      redirect(base_url());
    }
	}

	public function DeleteHazardous($no)
	{
		if ($this->session->userdata('rolechemical')) {
			$this->Hazardous_model->deleteHazardous($no);
			redirect('Hazardous/Table');
		}
		else {
			redirect(base_url());
		}
	}

	public function Update($no)
	{
		if ($this->session->userdata('rolechemical')) {
			$this->session->set_userdata('update', $no);
			redirect('Hazardous/Update');
		}
		else {
			redirect(base_url());
		}
	}

  public function Detail($no)
	{
		if ($this->session->userdata('rolechemical')) {
			$this->session->set_userdata('detail', $no);
			redirect('Hazardous/Detail');
		}
		else {
			redirect(base_url());
		}
	}

}
?>
