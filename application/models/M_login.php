<?php if(!defined('BASEPATH')) exit('No direct script acceess allowed');

class M_login extends CI_Model{

	function aksi_login($user,$pass){
		$query = $this->db->query("select * from user where username='$user' and password='$pass'");
		return $query->result_array();
	}

	function wk($nip ,$pass){
		$query = $this->db->query("select * from tb_walikelas where nip='$nip' and password='$pass'");
		return $query->result_array();
	}

	function siswa($nisn ,$pass){
		$query = $this->db->query("select * from tb_siswa where id_siswa='$nisn' and password='$pass'");
		return $query->result_array();
	}
}
