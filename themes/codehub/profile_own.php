<!DOCTYPE html>
<html>
<head>
   <head>
  <?php Loader::element('header_required'); ?>
  <?php $this->inc('elements/head.php'); ?>
</head>

<body class="profile">

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
  $at = new Area('Profile nav');
  $at->display($c);
  ?>
</div>

<div class="inner heading"><h2>Profile: Gicela Morales</h2></div>
</header>

<div class="profile-wrap">
  <div class="container cf">
    <div class="main cf">
      <section class="main-data media margins-vert section">
        <div class="inner">
            <div itemscope itemtype="http://data-vocabulary.org/Person">
            <div class="img">
              <img itemprop="photo" src="<?php echo $this->getThemePath(); ?>/img/gicela150.jpg" height="150" width="150" />
            </div>
          
            <div class="imgExt left margins-vert cf">
              <h3><span itemprop="name">Gicela Morales</span></h3>
              <a href="http://www.gicelamorales.com" itemprop="url">www.gicelamorales.com</a><br />
              <span itemprop="email">gicela@mexicanwave.com</span>
            </div>
          </div>
        </div>
      </section>
        
      <section class="experience margins-vert section cf">
        <h3>Experience</h3>
        <div class="inner margins-vert">
          <ul class="inline-list skills"><li>HTML,</li><li>CSS,</li><li>Javascript,</li><li> PHP,</li><li> Wordpress,</li><li> Mobile Development</li>
          </ul>
        </div>
      </section>

      <section class="learning section cf">
        <h3>I want to learn more about</h3>  
        <div class="inner margins-vert">
          <ul class="inline-list skills"><li>Javascript,</li><li>Python,</li><li>Java </li></ul>
          <p>&nbsp;</p>
        </div>
      </section>
    </div><!-- main -->

    <div class="sidebar cf">
      <section class="about-me section">
        <h3>About me</h3>
        <div class="inner margins-vert">
          <p>I've been developing web sites since the mid 1990's and have never stopped learning. Pretty much everything I know I have learnt it from other people. I feel we need to create a hub of learners where we can meet, share knowledge and collaborate with each other. </p>
        </div>
      </section>


      <section class="elsewhere section">
        <h3>Elsewhere on the web</h3>
        <div class="inner margins-vert">
          <ul id="social-networking" class="inline-list">
            <li class="twitter"><a href="http://twitter.com/gicela"></a></li>
            <li class="linkedin"><a href="http://www.linkedin.com/in/gicela"></a></li>
            <li class="google-plus"><a href="https://plus.google.com/u/0/102657572303151942871/posts"></a></li>
          </ul>
        </div>
      </section>
    </div><!-- end sidebar -->
    
  </div><!-- container -->
</div><!-- profile-wrap -->
<footer id="footer">
<div class="inner heading">CodeHub 2013</div>
</footer>
<?php Loader::element('footer_required'); ?>
</body>
</html>
