<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends Admin_Controller {
    public function __construct()
    {
        parent::__construct();
        $this->load->model('model_products');


    }
	public function index()
	{


        $product_data = $this->model_products->getProductData();

        $result = array();
        foreach ($product_data as $k => $v) {

            $result[$k]['product_info'] = $v;

        }

        $this->data['product_data'] = $result;


        $this->render_template('home', $this->data);

    }


}
