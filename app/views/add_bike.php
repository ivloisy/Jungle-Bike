<?php $title = "Jungle Bike - Add Bike"; ?>

<?php ob_start(); ?>

<?php include_once('views/header.php'); ?>

<h1>Add Bike</h1>

<form action="index.php?action=addBike" method="post">
<?php foreach ($bikeData as $row) :  // Pour chaque information presente dans la table 'bike_data', j'ajoute un champ
?>
    <label for="<?= $row['bike_column'] ?>">
        <?= $bikeModel->getFormattedColumnName($row['bike_column']) ?>:
    </label>
    <input type="text" id="<?= $row['bike_column'] ?>" name="<?= $row['bike_column'] ?>" data-id="<?= $row['id'] ?>">
    </br>
<?php endforeach; ?>

  <button type="submit">Add Bike</button>

<?php $content = ob_get_clean(); ?>

<?php require('views/layout.php') ?>

