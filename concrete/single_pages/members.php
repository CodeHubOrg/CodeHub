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
    </div>
  </header>  
 <div class="container cf">

	  <div class="about">
	      <section class="about section">
	        <div class="inner margins-vert">
	          <form method="get" action="<?php echo DIR_REL?>/<?php echo DISPATCHER_FILENAME?>">
							<?php  echo t('Search');?>  		
							<input type="hidden" name="cID" value="<?php echo $c->getCollectionID()?>" />
							<input name="keywords" type="text" value="<?php echo $keywords?>" size="20" />		
							<input name="submit" type="submit" value="<?php echo t('Search')?>" />
					  </form>
	        </div>
	      </section>
	  </div> 
	  
  </div> 
   
	<div class="container">
    <section class="organisers section">
    
      <div class="inner">
            	<h2><?php  echo t('Profiles');?></h2> 	
	
	<?php  if ($userList->getTotal() == 0) { ?>
	
		<div><?php echo t('No users found.')?></div>
	
	<?php  } else { ?>
	
		<div class="ccm-profile-member-list">
		<?php   
		$av = Loader::helper('concrete/avatar');
		$u = new User();
		
		foreach($users as $user) { 
		
			?>				
			<div class="ccm-profile-member">
				<div class="ccm-profile-member-avatar"><a href="<?php echo $this->url('/profile','view', $user->getUserID())?>"><?php echo $av->outputUserAvatar($user)?></a></div>
				<div class="ccm-profile-member-detail">
					<!-- <div class="ccm-profile-member-username"><a href="<?php echo $this->url('/profile','view', $user->getUserID())?>"><?php echo $user->getUserName()?></a></div> -->
					<div class="ccm-profile-member-fields">
					<?php 
					foreach($attribs as $ak) { ?>
						<div>
							<?php echo $user->getAttribute($ak, 'displaySanitized', 'display'); ?>
						</div>
					<?php  } ?>
					</div>					
				</div>
				<div class="ccm-spacer"></div>
			</div>	
		
		
	
	<?php  } ?>
		
		
		
		<?php echo $userList->displayPagingV2()?>
		
	<?php  
	
	} ?>
 
       </div><!-- inner -->
      
    </section>

</div><!-- container --> 
  <?php $this->inc('elements/footer_profile.php'); ?>


	

