<?php
	if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	class Registered_model extends CI_Model {

		function __construct(){
			parent::__construct();
			$this->load->database();
		}

		function getRegistered(){
      $view = $this->db->query('SELECT * FROM `chemlist`');
	    return $view->result();
		}

    function getCategory(){
      $view = $this->db->query('SELECT * FROM `hazard_category`');
	    return $view->result();
		}

		function getRegisteredByNo($no){
      $view = $this->db->get_where('chemlist', array('No'=>$no));
	    return $view->result();
		}

    function addRegistered($data){
      $this->db->insert('chemlist',$data);
    }

    function deleteRegistered($no){
			$this->db->delete('chemlist',array('No'=>$no));
		}

    function updateRegistered($data, $no){
			$this->db->where('No', $no);
			$this->db->update('chemlist',$data);
		}

	}

?>
