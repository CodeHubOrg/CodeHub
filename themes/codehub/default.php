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
        
          <?php $a = new Area('Main');
            $a->display($c); ?>
       
      </section>
  </div> 
  
</div> 

<div class="container">
    <section class="organisers section">
    
            <?php $a = new Area('Secondary Content');
            $a->display($c); ?>
 

      
    </section>
<footer id="footer">
  <div class="inner">Codehub 2014</div>
</footer>
</div><!-- container -->
  <?php Loader::element('footer_required'); ?>
</body>
</html>