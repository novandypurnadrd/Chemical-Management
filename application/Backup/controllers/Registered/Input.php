
<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Input extends CI_Controller {

	public function Input(){
		parent::__construct();
		$this->load->helper(array('url','form'));
		$this->load->model('Registered_model');
		$this->load->library('session');
	}

	public function Index(){
    if ($this->session->userdata('role')) {
			$data['Category'] = $this->Registered_model->getCategory();
	    $this->load->view('Registered/Input', $data);
    }else {
      redirect(base_url());
    }
	}

	public function InputRegistered()
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
							'No' => $this->input->post('No'),
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

					 $this->Registered_model->addRegistered($data);

					 redirect('Registered/Table');
			}
		}else {
			redirect(base_url());
		}
	}

}
?>
