
<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Update extends CI_Controller {

	public function Update(){
		parent::__construct();
		$this->load->helper(array('url','form'));
		$this->load->model('Hazardous_model');
		$this->load->model('Registered_model');
		$this->load->library('session');
	}

	public function Index(){
    if ($this->session->userdata('role')) {
				$data['no'] = $this->session->userdata('update');
	      $data['Registered'] = $this->Registered_model->getRegistered();
				$data['Hazardous'] = $this->Hazardous_model->getHazardousByNo($data['no']);
		    $this->load->view('Hazardous/Update', $data);
    }else {
      redirect(base_url());
    }
	}

	public function UpdateHazardous($no)
	{
		if ($this->session->userdata('role')) {
				if ($this->input->post('Storing_Other') == "N/R") {
					$Storing_Other = "N/R";
				}
				else {
					$Storing_Other = $this->input->post('Other_Value');
				}

				$temp = sizeof($this->input->post('Incompabilities_Reg_Chemlist'));
				$Incompabilities_Reg_Chemlist = "";
				for ($i=0; $i < $temp ; $i++) {
					if ( $i == ($temp-1) ) {
						$Incompabilities_Reg_Chemlist = $Incompabilities_Reg_Chemlist.$this->input->post('Incompabilities_Reg_Chemlist')[$i];
					}
					else {
						$Incompabilities_Reg_Chemlist = $Incompabilities_Reg_Chemlist.$this->input->post('Incompabilities_Reg_Chemlist')[$i].' ';
					}
				}

				$data = array(
					'No' => $this->input->post('No'),
					'Name' => $this->input->post('Name'),
					'Storing_Tightly_Closed' => $this->input->post('Storing_Tightly_Closed'),
					'Storing_Locked_Up' => $this->input->post('Storing_Locked_Up'),
					'Storing_Authorized_Personnel' => $this->input->post('Storing_Authorized_Personnel'),
					'Storing_Well_Ventilated' => $this->input->post('Storing_Well_Ventilated'),
					'Storing_Dry_Cool' => $this->input->post('Storing_Dry_Cool'),
					'Storing_Protect_Light' => $this->input->post('Storing_Protect_Light'),
					'Storing_Away_Ignition' => $this->input->post('Storing_Away_Ignition'),
					'Storing_Other' => $Storing_Other,
					'Incompabilities_Reg_Chemlist' => $Incompabilities_Reg_Chemlist,
					'Incompabilities_Other_Chemical' => $this->input->post('Incompabilities_Other_Chemical'),
					'usrid' => $this->session->userdata('username'),
			 );

			 $this->Hazardous_model->updateHazardous($data, $no);

			 redirect('Hazardous/Table');
		}else {
			redirect(base_url());
		}
	}

}
?>
