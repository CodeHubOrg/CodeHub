 <header id="header">
    <div class="inner heading">
      <?php 
      $a = new GlobalArea('Site Logo');
      $a->display();
      ?>
            
      <?php 
      $a = new GlobalArea('Header nav');
      $a->display();
      ?>
    </div>
    <div class="inner heading">
      <h2><a href="<?php echo View::url('/profile',$profile->getUserID()); ?>">Profile: <?php echo $profile->getAttribute('full_name'); ?></a></h2>
      <?php  
    $u = new User();
    if($u->getUserID() == $profile->getUserID()) {
      echo '<p><em>Editing your profile:</em></p>';
      $nc = Page::getByPath('/profile');
      $bt = BlockType::getByHandle('autonav');
      $bt->controller->displayPages = 'custom';
      $bt->controller->displayPagesCID = $nc->getCollectionID();
      $bt->controller->orderBy = 'display_asc';
      $bt->controller->displaySubPages = 'all';
      $bt->controller->displaySubPageLevels = '1';
      $bt->controller->displaySystemPages = true;
      $bt->render('view');
      echo '<p><em>Some content on this page can be edited by clicking on "Edit" in the top left of the page. Don\'t forget to approve the changes!</em></p>';
    }
    ?>
    </div>
    
  </header>