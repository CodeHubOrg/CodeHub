<!Doctype html>
<html>
<head>
  <?php Loader::element('header_required'); ?>
  <?php $this->inc('elements/head.php'); ?>
</head>
<body class="index">
  <header id="header">
<div class="inner heading">
  
     <?php /*  echo '<pre>';
      echo var_dump($c);
      echo '</pre>'; */?>    
  
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
  
</header>

<div class="container cf">

  <div class="about">
      <section class="about section">
        <div class="inner margins-vert">
          <?php $a = new Area('Main');
            $a->display($c); ?>
        </div>
      </section>
  </div> 
  
</div> 

<div class="container">
    <section class="organisers section">
    
      <div class="inner">
            <?php $a = new Area('Secondary Content');
            $a->display($c); ?>
 
       </div><!-- inner -->
      
    </section>

</div><!-- container -->


<footer id="footer">
  <div class="inner">Codehub 2013</div>
</footer>
  
  
  
 
  
  
  <?php Loader::element('footer_required'); ?>
</body>
</html>