<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); class User extends CI_Controller { var $tablefunc = 'user'; var $fields = array('username','email','realname','sex','tel','mobile','fax','address'); var $funcarr = array('add'); function __construct(){ parent::__construct(); $this->Lang_model->loadLang('admin'); $this->load->helper('array'); $this->Data_model->setTable($this->tablefunc); } public function index(){ $data=$this->input->post('username'); $this->load->vars($data); $this->load->view('reg.php'); } public function add(){ $post = $this->input->post(NULL,TRUE); if($this->Data_model->getSingle(array('username'=>$post['username']))){ echo "Register Failed"; exit(); } $time = time(); $userip = $this->input->ip_address(); $this->load->helper('string'); $salt = ""; $data = elements($this->fields,$post); $data['usergroup'] = "12345"; $data['status'] = "1"; $data['createtime'] = $time; $data['updatetime'] = $time; $lang['lasttime'] = $time; $data['regip'] = $userip; $data['lastip'] = $userip; $data['salt'] = $salt; $data['password'] = md5pass($post['password'],$salt); $id=$this->Data_model->addData($data); echo "Register Success"; exit(); } }
