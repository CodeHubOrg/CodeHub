<!Doctype html>
<html>
<head>
  <?php Loader::element('header_required'); ?>
  <?php $this->inc('elements/head.php'); ?>
</head>
<body class="index">
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
  
    <!--  end logo + nav -->

   
    <div class="inner margins-vert">
  
    <?php 
    $at = new Area('Intro');
    $at->display($c);  
    ?>
  
    </div>
  </header>

<div class="container cf">

  <div class="about">
      <section class="about section">
        
          <div class="for-you" >
            <h2><?php $at = new Area('Heading For-you'); $at->display($c); ?></h2>
              <div class="inner margins-vert">
                 <?php 
                 $at = new Area('For-you');
                 $at->display($c);
                 ?>
              </div>
          </div>

          <div class="learnings" >
            <h2><?php $at = new Area('Heading Learnings'); $at->display($c); ?></h2>
            <div class="inner margins-vert" >
               <?php 
               $at = new Area('Learnings');
               $at->display($c);
              ?>
            </div>
          </div>

          <div class="meet">
          <h2><?php $at = new Area('Heading Meeting'); $at->display($c); ?></h2>
            <div class="inner margins-vert">
               <?php 
                 $at = new Area('Meeting');
                 $at->display($c);
                ?>
            </div>
          </div>
          
      </section>
  </div>  
</div><!-- container -->

<div class="container">
    <section class="organisers section">
       <h2><?php $at = new Area('Heading Organisers'); $at->display($c); ?></h2>
      <div class="inner">
        <div class="margins-vert">
           <?php 
             $at = new Area('Gicela');
             $at->display($c);
            ?>
        </div>
        <div class="margins-vert">
           <?php 
             $at = new Area('Katja');
             $at->display($c);
            ?>
        </div>
      </div><!-- inner -->
      
      <h2><?php $at = new Area('Heading This-site'); $at->display($c); ?></h2>
          <div class="margins-vert inner">
              <?php 
               $at = new Area('This-site');
               $at->display($c);
              ?>
          </div>
          
          <div class="inner">
            
             <?php 
                 $at = new Area('Contact');
                 $at->display($c);
             ?>
          </div>
     </section>

</div><!-- container -->

<footer id="footer">
  <div class="inner">Codehub 2013</div>
</footer>
  
  
  
 
  
  
  <?php Loader::element('footer_required'); ?>
</body>
</html>