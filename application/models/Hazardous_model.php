<?php
	if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	class Hazardous_model extends CI_Model {

		function __construct(){
			parent::__construct();
			$this->load->database();
		}

		function getHazardous(){
      $view = $this->db->query('SELECT * FROM `hazardous_chemical`');
	    return $view->result();
		}

		function getHazardousByNo($no){
      $view = $this->db->get_where('hazardous_chemical', array('No'=>$no));
	    return $view->result();
		}

    function addHazardous($data){
      $this->db->insert('hazardous_chemical',$data);
    }

    function deleteHazardous($no){
			$this->db->delete('hazardous_chemical',array('No'=>$no));
		}

    function updateHazardous($data, $no){
			$this->db->where('No', $no);
			$this->db->update('hazardous_chemical',$data);
		}

	}

?>
