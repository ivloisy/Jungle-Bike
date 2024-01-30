<?php $title = "Edit bike"; ?>

<?php ob_start(); ?>

<?php include_once('views/header.php'); ?>

<h2>Bike ID: <?= $bikeId ?></h2>

<?php if (!empty($successMessage)) : ?>
    <div class="success-message"><?= $successMessage ?></div>
<?php endif; ?>

<form method="post" action="">
    <?php foreach ($bikeData as $row) : // Pour chaque information presente dans la table 'bike_data', j'ajoute un champ
    ?>
    <label for="<?= $row['bike_column'] ?>">
        <?= $row['id'] ?>
        <?= $bikeModel->getFormattedColumnName($row['bike_column']) // Je transforme la valeur contenu dans 'bike_column' pour qu'elle soit pus lisible (majuscule + espace)
        ?>:
    </label>
        <?php
        $bikeDetail = $bikeModel->getBikeDetailById($bikeId, $row['id']);
        // var_dump($bikeDetail);
        // var_dump($bikeDetail['data_value']);
        $preFilledValue = isset($bikeDetail[0]['data_value']) ? $bikeDetail[0]['data_value'] : '';
        // $preFilledValue = 'caca';
        ?>
        <input type="text" id="<?= $row['bike_column'] ?>" name="<?= $row['bike_column'] ?>" data-id="<?= $row['id'] ?>" value="<?= $preFilledValue ?>"> <!-- Le champ est deja prerempli si une information est deja existante dans la table 'bike_detail' -->
    </br>
    <?php endforeach; ?>

    <button type="submit">Modifier</button>
</form>

<?php $content = ob_get_clean(); ?>

<?php require('views/layout.php') ?>

