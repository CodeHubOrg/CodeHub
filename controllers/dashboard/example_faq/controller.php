<?php
class DashboardExampleFaqController extends Controller {
 
  public $helpers = array('html','form');
 
  public function on_start() {
    Loader::model('page_list');
    $this->error = Loader::helper('validation/error');
  }
 
 
}