
<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Update extends CI_Controller {

	public function Update(){
		parent::__construct();
		$this->load->helper(array('url','form'));
		$this->load->model('Registered_model');
		$this->load->library('session');
	}

	public function Index(){
    if ($this->session->userdata('role')) {
				$data['no'] = $this->session->userdata('update');
				$data['Category'] = $this->Registered_model->getCategory();
				$data['Registered'] = $this->Registered_model->getRegisteredByNo($data['no']);
		    $this->load->view('Registered/Update', $data);
    }else {
      redirect(base_url());
    }
	}

	public function UpdateRegistered($no)
	{
		if ($this->session->userdata('role')) {

      $fileName = $this->input->post('No');
			$config['upload_path'] = './pdf/'; //buat folder dengan nama assets di root folder
			$config['file_name'] = $fileName;
			$config['allowed_types'] = 'pdf';
			$config['max_size'] = 10000;
			$this->load->library('upload');
			$this->upload->initialize($config);
			$this->upload->overwrite = true;

			if(! $this->upload->do_upload('file') ){

			}else {
				$media = $this->upload->data('file');
        $fileName = str_replace(" ","-",$fileName);
				$inputFileName = './pdf/'.$fileName.'.pdf';

						// Sesuaikan sama nama kolom tabel di database
						$data = array(
							'Name' => $this->input->post('Name'),
							'Synonim' => $this->input->post('Synonim'),
							'Local_name' => $this->input->post('Local_name'),
							'Original_form' => $this->input->post('Original_form'),
							'Chemical_formula' => $this->input->post('Chemical_formula'),
							'Packing' => $this->input->post('Packing'),
							'Grade_concentration' => $this->input->post('Grade_concentration'),
						 	'Location' => $this->input->post('Location'),
							'Hazard_Identification' => $this->input->post('Hazard_Identification'),
							'Hazard_category' => $this->input->post('Hazard_category'),
							'Hazard_Remarks' => $this->input->post('Hazard_Remarks'),
							'file' => $inputFileName,
							'MSDS' => 'Available',
						 	'usrid' => $this->session->userdata('username'),
					 );

					 $this->Registered_model->updateRegistered($data, $no);

					 redirect('Registered/Table');
			}
		}else {
			redirect(base_url());
		}
	}

}
?>
