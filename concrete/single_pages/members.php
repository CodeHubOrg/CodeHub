<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>

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
      <?php 
        $at = new Area('Profile heading');
        $at->display($c);
      ?>
      
    </div>
  </header>  
 <div class="container cf">

	  <div class="about">
	      <section class="about section">
	        <div class="inner margins-vert">
            
            <?php 
                $a = new Area('Profiles intro');
                $a->display($c);
            ?>
	     <!--     <form method="get" action="<?php echo DIR_REL?>/<?php echo DISPATCHER_FILENAME?>">
							<?php  echo t('Search');?>  		
							<input type="hidden" name="cID" value="<?php echo $c->getCollectionID()?>" />
							<input name="keywords" type="text" value="<?php echo $keywords?>" size="20" />		
							<input name="submit" type="submit" value="<?php echo t('Search')?>" />
					  </form>
	        </div> -->
	      </section>
	  </div> 
	  
  </div> 
   
	<div class="container">
    <section class="organisers section">
    
      <div class="inner">
            <!--	<h2><?php  echo t('Profiles');?></h2> -->	
	
	<?php  if ($userList->getTotal() == 0) { ?>
	
		<div><?php echo t('No users found.')?></div>
	
	<?php  } else { ?>
	
		<div class="ccm-profile-member-list">
		<?php   
		$av = Loader::helper('concrete/avatar');
		$u = new User();
		
		foreach($users as $user) { 		  
		  if(!$user->getAttribute('notlisted')){		
      ?>	
			<div class="ccm-profile-member">
				<div class="ccm-profile-member-avatar">
       
          
          <a href="<?php echo $this->url('/profile','view', $user->getUserID())?>"><?php echo $av->outputUserAvatar($user)?></a></div>
				<div class="ccm-profile-member-detail">
					<!-- <div class="ccm-profile-member-username"><a href="<?php echo $this->url('/profile','view', $user->getUserID())?>"><?php echo $user->getUserName()?></a></div> -->
					<div class="ccm-profile-member-fields">
					<?php 
					//foreach($attribs as $ak) { ?>
						<div>
							<a href="<?php echo $this->url('/profile','view', $user->getUserID())?>"><?php echo $user->getAttribute('full_name', 'displaySanitized', 'display'); ?></a>
						</div>
					<?php // } ?>
					</div>					
				</div>
				<div class="ccm-spacer"></div>
			</div>	
    
		
		
	
	<?php 
      } 
    } 
  ?>
		    </div>
      </div><!-- inner -->      
    </section>
		
		
		<?php echo $userList->displayPagingV2()?>
		
	<?php  
	
	} ?>
 
      

</div><!-- container --> 
  <?php $this->inc('elements/footer_profile.php'); ?>


	

