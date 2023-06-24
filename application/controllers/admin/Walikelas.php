<?php if(!defined('BASEPATH')) exit('No direct script acces allowed');

class Walikelas extends CI_Controller{
	function __construct(){
		parent::__construct();
		$password = $this->session->userdata('pass');
		$level = $this->session->userdata('level');
		if($this->session->userdata('status') != "logged"){
			redirect('Login');
		}

		$this->load->model('M_user');
	}

	function index(){
		$data_wk= $this->db->get('tb_walikelas')->result();

		$data=array('mainheader'	=> 'template/mainheader',
								'mainpage'		=> 'admin/menejemen_walikelas',
								'navbar'			=> 'admin/template/navbar',
								'data_wk'		=> $data_wk
								);

                // print_r($data);die();

		$this->load->view('index-dashboard',$data);
	}

	function registrasi_user(){
		$data=array(
								'nama'			=> $this->input->post('nama'),
                'nip'			=> $this->input->post('nip'),
								'password'			=> $this->input->post('password'),
								);

    $this->db->insert('tb_walikelas', $data);
		redirect('admin/walikelas/');
	}

	function hapus($id){
		$this->db->delete('tb_walikelas', array('id_walikelas' => $id));;
		redirect('admin/walikelas/');
	}


}