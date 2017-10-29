<?php
	if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	class User_model extends CI_Model {

		function __construct(){
			parent::__construct();
			$this->load->database();
		}

		function GetUser($username, $password){
      $d = $this->db->get_where('chemicals_users',array('username'=>$username, 'password'=>$password));
	    return $d->result();
		}

		function updateProfile($data){
			$this->db->where('username', $this->session->userdata('username'));
			$this->db->update('chemicals_users',$data);
		}

	}

?>
