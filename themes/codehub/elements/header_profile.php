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
    </div>
  </header>