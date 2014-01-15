<!Doctype html>
<html>

<head>
  <?php Loader::element('header_required'); ?>
  <?php $this->inc('elements/head.php'); ?>
</head>
<body>
          <?php print $innerContent; ?>
          <?php Loader::element('footer_required'); ?>
</body>  
</html>