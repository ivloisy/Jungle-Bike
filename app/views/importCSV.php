<?php $title = "Jungle Bike - Import CSV"; ?>

<?php ob_start(); ?>

<h1>Import CSV</h1>

<form action="" method="post" enctype="multipart/form-data">
  <label for="csv">Select CSV file :</label>
  <input type="file" name="csv" id="csv" accept=".csv" required>
  <br>
  <button type="submit">Import</button>
</form>

<?php $content = ob_get_clean(); ?>

<?php require('layout.php') ?>
