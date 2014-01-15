<?php

$form = Loader::helper('form');
//Loader::element('editor_init');
//Loader::element('editor_config');

?>



<form method="post" action="<?php echo $this->action('saveFormData'); ?>" enctype="multipart/form-data" >
  <fieldset legend="ontheweb">
    <label for="name">Name:<br />
      <?php print $form->text('name', $name); ?>
    </label><br />
    <label for="website">Website:<br />
      <?php print $form->text('website', $website); ?>
    </label><br />
    <label for="email">Email:<br />
      <?php print $form->text('email', $email); ?>
    </label> <br />     
    <label for="twitter">Twitter:<br />
      <?php print $form->text('twitter', $twitter); ?>
    </label><br />
    <label for="github">Github:<br />
      <?php print $form->text('github', $github); ?>
    </label><br />
    <label for="photo">Please upload a photo:
    <?php echo $form->file('photo', $photo); ?>
    </label>
  </fieldset>
  
  <fieldset legend="interests" >
    <label for="about">About me:<br />
      <?php print $form->textarea('about', $about, array('cols'=>30, 'rows'=>10)); ?>
    </label><br />
    <label for="experience" >Experience:<br />
      <?php print $form->text('experience'); ?>
    </label><br />
    <label for="learning" >I want to learn more about:<br />
      <?php print $form->text('learning'); ?>
    </label> 
    <?php print $form->hidden('userID', $uID) ?>
  </fieldset> 
    <?php print $form->submit('submit', 'Save'); ?>
</form>

