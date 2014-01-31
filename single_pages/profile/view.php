<?php  defined('C5_EXECUTE') or die("Access Denied."); ?>
<?php $page = Page::getCurrentpage(); ?>
  <div class="profile">
  <?php $this->inc('elements/header_profile.php'); ?>
  
  <?php $this->inc('elements/profile_wrapper_top.php'); ?>
    <div class="main cf"> <!-- id="ccm-profile-body-attributes" -->
      <!-- div class="ccm-profile-body-item"> -->
  
      <section class="main-data media margins-vert section">
        <div class="inner">
          <div itemscope itemtype="http://data-vocabulary.org/Person">
            <div class="img">
              <!-- <img itemprop="photo" src="/img/gicela150.jpg" height="150" width="150" /> -->
              <?php echo  $av->outputUserAvatar($profile)?>
            </div>
          
            <div class="imgExt left margins-vert cf">
              <h3><span itemprop="name"><?php echo $profile->getAttribute('full_name'); ?></span></h3>
              <a href="<?php echo 'http://'.$profile->getAttribute('website'); ?>" itemprop="url"><?php echo $profile->getAttribute('website'); ?></a><br />
              <span itemprop="email"><a href="mailto:<?php echo $profile->uEmail; ?>"><?php echo $profile->uEmail; ?></a></span>
            </div>
          </div>
        </div>
      </section> 
       <section class="experience margins-vert section cf">
        <h3>Experience</h3>
        <div class="inner margins-vert">
          <ul class="inline-list skills">
            <?php 
               $areaname = 'experience-'.$profile->getUserName();
               $a = new Area($areaname); 
               $a->setAttribute('profile', $profile);
               $a->display($c);
            ?>
          </ul>
        </div>
      </section>

      <section class="learning section cf">
        <h3>I want to learn more about</h3>  
        <div class="inner margins-vert">
          <ul class="inline-list skills">
            <?php 
              $areaname = 'learning-'.$profile->getUserName();
              $a = new Area($areaname);
              $a->setAttribute('profile', $profile);
              $a->display($c);
            ?>
          </ul>
          <p>&nbsp;</p>
        </div>
      </section>
    </div><!-- main --> <!-- ccm-profile-body-attributes  -->


    <div class="sidebar cf">
      <section class="about-me section">
        <h3>About me</h3>
        <div class="inner margins-vert">
          <?php  
            $areaname = 'Main-'.$profile->getUserName();
            $a = new Area($areaname); 
            $a->setAttribute('profile', $profile); 
            //$a->setBlockWrapperStart('<div class="ccm-profile-body-item">');
            //$a->setBlockWrapperEnd('</div>');
            $a->display($c); 
          ?>
        </div>
    </section>
      <section class="elsewhere section">
        <h3>Elsewhere on the web</h3>
        <div class="inner margins-vert">
          <ul id="social-networking" class="inline-list">
            <?php if($twitter = $profile->getAttribute('twitter')){ ?>
            <li class="twitter"><a href="http://twitter.com/<?php echo $twitter; ?>"></a></li>
            <? } ?>
            <?php if($linkedin = $profile->getAttribute('linkedin')){ ?>
            <li class="linkedin"><a href="http://www.linkedin.com/<?php echo $linkedin; ?>"></a></li>
            <? } ?>
            <?php if($google = $profile->getAttribute('googleplus')){ ?>
            <li class="google-plus"><a href="https://plus.google.com/<?php echo $google; ?>"></a></li>
            <? } ?>
            <?php if($github = $profile->getAttribute('github')){ ?>
            <li class="github"><a href="http://github.com/<?php echo $github; ?>"></a></li>
            <? } ?>
          </ul>
        </div>
      </section>
    </div><!-- end sidebar -->
    
      <!-- 
        <h2><?php echo $profile->getUserName()?></h2>
        <?php 
        $uaks = UserAttributeKey::getPublicProfileList();
        foreach($uaks as $ua) { ?>
            <div>
                <label><?php echo tc('AttributeKeyName', $ua->getAttributeKeyName())?></label>
                <?php echo $profile->getAttribute($ua, 'displaySanitized', 'display'); ?>
            </div>
        <?php  } ?>   -->

  <?php $this->inc('elements/profile_wrapper_bottom.php'); ?>
  <?php $this->inc('elements/footer_profile.php'); ?>
    </div>
  