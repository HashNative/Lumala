<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends Admin_Controller {
    public function __construct()
    {
        parent::__construct();

    }
	public function index()
	{
        $this->data['page_title'] = 'Home';

        $this->render_template('home', $this->data);
	}


	public function test(){
	    echo 'test';
    }
}
