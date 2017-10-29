
<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Detail extends CI_Controller {

	public function Detail(){
		parent::__construct();
		$this->load->helper(array('url','form'));
		$this->load->model('Registered_model');
		$this->load->library('session');
	}

	public function Index(){
    if ($this->session->userdata('role')) {
				$data['no'] = $this->session->userdata('detail');
				$data['Category'] = $this->Registered_model->getCategory();
				$data['Registered'] = $this->Registered_model->getRegisteredByNo($data['no']);

		    $this->load->view('Registered/Detail', $data);
    }else {
      redirect(base_url());
    }
	}
}
?>
