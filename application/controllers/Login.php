<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	function __construct(){
		parent::__construct();

		$this->load->model('M_login');
	}

	function index(){
		$this->load->view('login_siswa');
	}

	function login_siswa(){
		$nisn = $this->input->post('nisn');
		$pass = $this->input->post('password');

		$cek = $this->M_login->siswa($nisn,$pass);

		if($cek){
			$data_session = array(
				'nisn' 		=> $nisn,
				'pass'		=> $cek[0]['password'],
				'status' 	=> "logged",
				'role' => '2'
				);
			$this->session->set_userdata($data_session);
			redirect("admin/siswa/detail_siswa/".$nisn);


		}else{
			//$data=array('galon' => "Username dan Password Anda Salah");
			//$this->load->view('login',$data);
			echo "anda galon, gagal login";
		}
	}
	

	function admin(){
		$this->load->view('login_admin');
	}

	function login_admin(){
		$user = $this->input->post('username');
		$pass = $this->input->post('password');

		$cek = $this->M_login->aksi_login($user,$pass);

		if($cek){
			$data_session = array(
				'user' 		=> $user,
				'id'			=> $cek[0]['username'],
				'pass'		=> $cek[0]['password'],
				'status' 	=> "logged",
				'role' => '0'
				);
			$this->session->set_userdata($data_session);
			redirect("admin/Siswa");


		}else{
			//$data=array('galon' => "Username dan Password Anda Salah");
			//$this->load->view('login',$data);
			echo "anda galon, gagal login";
		}
	}

	function walikelas(){
		$this->load->view('login_walikelas');
	}

	function login_wk(){
		$nip = $this->input->post('username');
		$pass = $this->input->post('password');

		$cek = $this->M_login->wk($nip,$pass);

		if($cek){
			$data_session = array(
				'nip' 		=> $nip,
				'id'			=> $cek[0]['id_walikelas'],
				'pass'		=> $cek[0]['password'],
				'status' 	=> "logged",
				'role' => '1'
				);
			$this->session->set_userdata($data_session);
			redirect("admin/kelas");


		}else{
			//$data=array('galon' => "Username dan Password Anda Salah");
			//$this->load->view('login',$data);
			echo "anda galon, gagal login";
		}
	}

	function logout(){
		$this->session->sess_destroy();
		redirect('Login');
	}

}