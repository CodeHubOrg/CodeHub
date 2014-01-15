<?php  defined('C5_EXECUTE') or die("Access Denied.");
class User extends Concrete5_Model_User {

  public function getMemberdata($uID){
    $db = Loader::db();
    $query = 'SELECT * FROM UserMemberform WHERE uID='.$uID;
    $results = $db->getAll($query);
    return $results[0];
  }
  
  public function hasMemberdata($uID){
    $results = $this->getMemberdata($uID);
    if(!empty($results)){
      return true;
    }
  } 
  
  
  
  
  
}