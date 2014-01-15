<?php
defined('C5_EXECUTE') or die(_("Access Denied."));

class MemberformController extends Controller{
  
  

  public function saveFormData(){
    $db = Loader::db();
    $mh = Loader::helper('members');
    Loader::library('file/importer');
        
    $data = array(
        'uID' => $this->post('userID'), 
        'name' => $this->post('name'),
        'website' => $this->post('website'),
        'email' => $this->post('email'),
        'twitter' => $this->post('twitter'),
        'github' => $this->post('github'),
        'about' => $this->post('about')
      );
    $importer = new FileImporter();
    $file = $_FILES['photo'];
    $name = $file['name'];
    $path = $file['tmp_name'];
    $newFile = $importer->import($path, $name);
    if(is_numeric($newFile)){
      die(FileImporter::getErrorMessage($newFile));
    }
     
    $uID = $this->post('userID');
    if(!$mh->hasMemberdata($uID)){
      $db->AutoExecute('UserMemberform', $data, 'INSERT');
       //$this->redirect('/');
    } else {
       $db->AutoExecute('UserMemberform', $data, 'UPDATE', 'uID='.$uID);
    }
  }
  
  public function view(){
 
    $u = new User();
    if($u->isLoggedIn()){
      $uID = $u->uID;
      $this->set('uID', $uID);
      $m = Loader::helper('members');
      $results = $m->getMemberdata($uID);
      
      foreach($results as $key=>$value){
        $this->set($key, $value);
      }
      
    }
  }
  
  
  
}